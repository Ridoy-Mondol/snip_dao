import * as _config_struct from './structs/config.struct';
import * as _chain from "as-chain";
import {LockedReward, LockingPeriod, StakingConfig} from "./structs";
import {
  MONTH_IN_MS,
  SNIP_SYMBOL,
  XTOKEN_CONTRACT_NAME,
  YEAR_IN_MS,
} from "./constants";
import {
  ERROR_ACCOUNT_NOT_EXISTS,
  ERROR_CONFIG_ENTRY_NOT_FOUND,
  ERROR_IRREDUCIBLE_LOCK_PERIOD,
  ERROR_MISSING_REWARD_ACCOUNT,
  ERROR_NO_MATCHING_PERIOD_LOCK_FOUND,
  ERROR_NO_STAKE_TO_LOCK,
  ERROR_RESTAKE_IS_WITHIN_LIMIT,
  ERROR_STAKE_LOCKED,
  ERROR_STAKING_ENTRY_NOT_FOUND,
  ERROR_STAKING_NOT_FOUND,
  ERROR_WRONG_TOKEN_INPUT,
} from "./errors";
import {AccountsTable, APYTable, ConfigTable, StakesTable} from "./tables";
import {
  Asset,
  check,
  Contract,
  currentTimeMs,
  ExtendedAsset,
  Name,
  requireAuth,
  Symbol,
  TableStore,
} from "proton-tsc";
import {Account, sendTransferToken, sendTransferTokens} from "proton-tsc/token";
import { Balance } from "proton-tsc/balance/balance.tables";
import { sendArchiveStake, sendPayReward } from "./inlines";


@contract
export class snipstaking extends Contract {
  private APYsTable: TableStore<APYTable> = new TableStore<APYTable>(
    this.receiver,
    this.receiver
  );
  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
    this.receiver,
    this.receiver
  );
  private accountsTable: TableStore<AccountsTable> =
    new TableStore<AccountsTable>(this.receiver, this.receiver);

  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    if (from == this.receiver) return;
    if (memo == "#FUNDING") return;
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return;

    const restrictedSymbolString = lastConfig.config.restrictToSymbol.getSymbolString()
    check(
      quantity.symbol.getSymbolString() == restrictedSymbolString,
      ERROR_WRONG_TOKEN_INPUT(restrictedSymbolString)
    );
    if (quantity.symbol.getSymbolString() != restrictedSymbolString) return;
    const now = currentTimeMs();
    const stakeTable = new TableStore<StakesTable>(this.receiver, from);
    const lockingConfig = this.getLockPeriod(0);
    check(!!lockingConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    const baseMultiplier = lockingConfig ? lockingConfig.multiplier : 1;
    
    let existingAccount = this.accountsTable.get(from.N);
    if (existingAccount) {
      existingAccount.totalStaked += quantity.amount;
    } else {
      existingAccount = new AccountsTable(from, 0, quantity.amount,0);
    }
    
    this.accountsTable.set(existingAccount, this.receiver);
    const newStake = new StakesTable(
      now,
      quantity.amount,
      0,
      now,
      0,
      0,
      0,
      baseMultiplier
    );

    stakeTable.store(newStake, this.receiver);
  }

  // --------------------
  // ********************
  /* STAKE */
  // ********************
  // --------------------

  @action("stake.lcklst")
  lockLastStake(account: Name, lockPeriod: u8): void {

    requireAuth(account);
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    const lastStake = stakeTable.last();
    check(!!lastStake, ERROR_NO_STAKE_TO_LOCK());
    if (!lastStake) return;

    let existingAccount = this.accountsTable.get(account.N);
    if (existingAccount) {
      if (!this.hasBeenLocked(lastStake))existingAccount.lockedStake += lastStake.amount;
    } else {
      existingAccount = new AccountsTable(account, lastStake.amount, 0,0);
    }
    existingAccount.level = this.getAccountLevelByAmount(
      existingAccount.lockedStake
    );
    
    this.accountsTable.set(existingAccount, this.receiver);
    const lockedStake = this.lockStake(lastStake, lockPeriod);

    stakeTable.update(lockedStake, this.receiver);
  }

  @action("stake.lck")
  lockStakeByKey(account: Name, stakeKey: u64, lockPeriod: u8): void {

    requireAuth(account);
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    const existingStake = stakeTable.requireGet(
      stakeKey,
      ERROR_NO_STAKE_TO_LOCK()
    );
    if (!existingStake) return;

    let existingAccount = this.accountsTable.get(account.N);
    if (existingAccount) {
      if (!this.hasBeenLocked(existingStake))existingAccount.lockedStake += existingStake.amount;
    } else {
      existingAccount = new AccountsTable(account, existingStake.amount, 0,0);
    }
    existingAccount.level = this.getAccountLevelByAmount(
      existingAccount.lockedStake
    );
    this.accountsTable.set(existingAccount, this.receiver);
    const lockedStake = this.lockStake(existingStake, lockPeriod);

    stakeTable.update(lockedStake, this.receiver);
  }

  @action("stake.unstk")
  unstake(account: Name, stakeKey: u64): void {

    requireAuth(account);
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    const stake = stakeTable.requireGet(stakeKey, ERROR_STAKING_NOT_FOUND());
    if (!stake) return;
    
    if (!account) return;
    const now = currentTimeMs();
    check(!this.isLocked(stake), ERROR_STAKE_LOCKED());
    if (now < stake.lockedTill) return;

    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return;
    
    const existingAccount = this.accountsTable.requireGet(account.N,ERROR_ACCOUNT_NOT_EXISTS(account));
    if (this.hasBeenLocked(stake))existingAccount.lockedStake -= stake.amount;
    existingAccount.totalStaked -= stake.amount;
    existingAccount.level = this.getAccountLevelByAmount(
      existingAccount.lockedStake
    );
    this.accountsTable.update(existingAccount, this.receiver);

    const updatedStakeReward = this.computeFullRewardForStake(stake);
    stake.reward += updatedStakeReward;
    stakeTable.update(stake, this.receiver);

    const lockedAsset = new Asset(stake.amount, lastConfig.config.restrictToSymbol);
    
 
    sendTransferToken(
      lastConfig.config.rewardSourceContract,
      this.receiver,
      account,
      lockedAsset,
      `Unstake ${stakeKey}`
    );
    //TODO transfer should come from config account (with permission setup)
    if (stake.reward > 0) {
      
      sendPayReward(
        lastConfig.config.rewardSourceAccount,
        this.receiver,
        account,
        stake.reward
      )
    }
    
    //todo move row to the sys.snipstk instead of delete
    sendArchiveStake(this.receiver, account, stake);
    stakeTable.remove(stake);
    //todo move row to the sys.snipstk instead of delete
  }

  @action("stake.restk")
  restakeAmountAndReward(
    account: Name,
    stakeKey: u64,
    newLockingPeriod: u8
  ): void {

    requireAuth(account);
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    const stake = stakeTable.requireGet(stakeKey, ERROR_STAKING_NOT_FOUND());
    if (!stake) return;
    const now = currentTimeMs();
    check(!this.isLocked(stake), ERROR_STAKE_LOCKED());
    if (now < stake.lockedTill) return;
    stake.amount += stake.reward;
    stake.reward = 0;
    const lockedStake = this.lockStake(stake, newLockingPeriod);
    stakeTable.update(lockedStake, this.receiver);
  }

  @action("rwrds.claim")
  claimRewards(account: Name): void {
    
    requireAuth(account);
    //TODO add error message if the snipsrewards account reach 0 (Waiting for next Cycle ...)
    const rewards = this.claimAllRewards(account);
    
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return;
    
    check(!!lastConfig.config.rewardSourceContract, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig.config.rewardSourceContract) return;

    if (rewards == 0) return;
    sendPayReward(
      lastConfig.config.rewardSourceAccount,
      this.receiver,
      account,
      rewards
    )
    this.clearAllRewards(account);
  }

  @action("rwrds.rstk")
  restakeRewards(account: Name, lockPeriod: u8): void {

    requireAuth(account);
    const totalReward = this.claimAllRewards(account);
    if (totalReward == 0) return;
    
    const now = currentTimeMs();
    const existingAccount = this.accountsTable.requireGet(account.N, ERROR_ACCOUNT_NOT_EXISTS(account));
    if (!existingAccount) return;
    
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return;

    const remainingTime = (existingAccount.lastRestake + lastConfig.config.restakeTimeLimit) - now;
    check(now > existingAccount.lastRestake + lastConfig.config.restakeTimeLimit , ERROR_RESTAKE_IS_WITHIN_LIMIT(remainingTime, lastConfig.config.restakeTimeLimit));
    if (existingAccount.lastRestake + lastConfig.config.restakeTimeLimit > now) return;
    
    const lockingPeriod = this.getLockPeriod(lockPeriod);
    check(!!lockingPeriod, ERROR_NO_MATCHING_PERIOD_LOCK_FOUND());
    if (!lockingPeriod) return;
    
    const stake = new StakesTable(now, totalReward, 0, 0, 0, 0, 0, 0);
    this.lockStake(stake, lockPeriod);
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    stakeTable.store(stake, this.receiver);
    this.clearAllRewards(account);
    
  }

  @action("stake.updt")
  updateStakingReward(account: Name, stakeKey: u64): void {
    
    requireAuth(account);
    const stakingTable = new TableStore<StakesTable>(this.receiver, account);
    const existingStaking = stakingTable.requireGet(
      stakeKey,
      ERROR_STAKING_ENTRY_NOT_FOUND(account)
    );
    if (!existingStaking) return;
    const now = currentTimeMs();
    const stakeReward = this.computeFullRewardForStake(existingStaking);
    
    existingStaking.reward += stakeReward;
    existingStaking.lastUpdate = now;
    stakingTable.update(existingStaking, this.receiver);
  }

  // --------------------
  // ********************
  /* APY */
  // ********************
  // --------------------

  @action("apy.add")
  addApy(apy: f32): void {
    
    requireAuth(this.receiver); 
    const now = currentTimeMs();
  
    if (!this.APYsTable.isEmpty()) {
      const lastApy = this.APYsTable.last();
      if (lastApy) {
        lastApy.end = now;
        this.APYsTable.update(lastApy, this.receiver);
      }
    }

    const newApy = new APYTable(now, 0, apy);
    this.APYsTable.store(newApy, this.receiver);
  }

  // --------------------
  // ********************
  /* GOV */
  // ********************
  // --------------------

  @action("gov.chgcfg")
  changeConfig(config: StakingConfig): void {
    
    requireAuth(this.receiver); 
    const newConfig = new ConfigTable(
      this.configTable.availablePrimaryKey,
      config
    );
    this.configTable.store(newConfig, this.receiver);
  }

  // --------------------
  // ********************
  /* PRIVATE */
  // ********************
  // --------------------

  // --------------------
  // **TIME UTILS**
  // --------------------

  getAPYEffectiveStartFromTime(time: u64): u64 {
    const existingLowerAPY = this.APYsTable.lowerBound(time);
    if (!existingLowerAPY) return time;
    return existingLowerAPY.start;
  }

  getAPYEffectiveEndFromTime(time: u64): u64 {
    const existingEndAPY = this.APYsTable.upperBound(time);
    if (existingEndAPY) return existingEndAPY.start;
    return currentTimeMs();
  }

  getAPYEffectiveDurationFromTime(time: u64): u64 {
    const durationStart = this.getAPYEffectiveStartFromTime(time);
    const durationEnd = this.getAPYEffectiveEndFromTime(time + 1);
    return durationEnd - durationStart;
  }

  getAPYDurationAsYearRatioFromTime(time: u64): f32 {
    const APYDuration = this.getAPYEffectiveDurationFromTime(time);
    return f32(APYDuration) / f32(YEAR_IN_MS);
  }

  // --------------------
  // **ACCOUNT LEVEL**
  // --------------------

  getAccountLevelByAmount(amountStaked: u64): u8 {
    // Ensure the configuration table is not empty
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());

    if (!lastConfig) return 0;

    const levelsDef = lastConfig.config.levelsDef;
    let highestLevelIndex: u8 = 0;

    for (let i = 0; i < levelsDef.length; i++) {
      if (amountStaked >= levelsDef[i].minAmount) {
        highestLevelIndex = levelsDef[i].index;
      } else {
        // Since the array is assumed to be sorted, we can break early
        break;
      }
    }

    return highestLevelIndex;
  }

  // --------------------
  // **APY TABLE**
  // --------------------

  getAPYDuration(currentAPY: APYTable, nextAPY: APYTable): u64 {
    return nextAPY.start - currentAPY.start;
  }

  getAPYDurationAsPercentOfYear(
    currentAPY: APYTable,
    nextAPY: APYTable
  ): void {}

  getAPYsListFromDate(lastUpdate: u64): APYTable[] {
    const list: APYTable[] = [];
    let listAPYEntry = this.APYsTable.first();
    if (!listAPYEntry) return list;
    if (listAPYEntry) {
      if (listAPYEntry.end > lastUpdate || listAPYEntry.end == 0)
        list.push(listAPYEntry);
    }

    while (listAPYEntry) {
      listAPYEntry = this.APYsTable.next(listAPYEntry);
      if (listAPYEntry) {
        if (listAPYEntry.end > lastUpdate || listAPYEntry.end == 0)
          list.push(listAPYEntry);
      }
    }
    return list;
  }

  // --------------------
  // **STAKE TIME**
  // --------------------

  getRelativeStakingDateAsAPYDurationRatio(stakingStart: u64): f32 {
    const APYDuration = this.getAPYEffectiveDurationFromTime(stakingStart);
    const APYEnd = this.getAPYEffectiveEndFromTime(stakingStart);
    if (APYEnd > stakingStart) return 0;
    const APRrelativeStakingActivePeriod = APYEnd - stakingStart;
    return f32(APRrelativeStakingActivePeriod) / f32(APYDuration);
  }

  // --------------------
  // **STAKE REWARD **
  // --------------------

  getRewardAccountBalance(): Asset {
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return new Asset(0, new Symbol('XPR', 4));
    check(!!lastConfig.config.rewardSourceAccount, ERROR_MISSING_REWARD_ACCOUNT());
    if (!lastConfig.config.rewardSourceAccount) return new Asset(0, new Symbol('XPR', 4));
    //todo add contract name in config
    const balanceTable = new TableStore<Account>(Name.fromU64(0xEE69054F00000000), lastConfig.config.rewardSourceAccount)
    const lastBalance = balanceTable.last();
    check(!!lastBalance, 'Unable to find reward account balance');
    if (!lastBalance) return new Asset(0, new Symbol('XPR', 4));
    return lastBalance.balance
  }

  claimAllRewards(account: Name): u64 {
    
    let computedReward: u64 = 0;
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    let stake = stakeTable.first();
    if (!stake) return computedReward;
     while (stake) {
       if (!stake) break;
      const stakeReward = this.computeFullRewardForStake(stake);
      
      stake.reward += stakeReward;
      
      stakeTable.update(stake, this.receiver);
      computedReward += stake.reward;
       
      stake = stakeTable.next(stake);
     }
    return computedReward;
  }

  clearAllRewards(account: Name): void {
    const stakeTable = new TableStore<StakesTable>(this.receiver, account);
    let stake = stakeTable.first();
    if (!stake) return;
    while (stake) {
      if (!stake) break;
      stake.reward = 0;
      stakeTable.update(stake, this.receiver);
      stake = stakeTable.next(stake);
    }
  }

  computeFullRewardForStake(stake: StakesTable): u64 {
    const now = currentTimeMs();

    const APYsList = this.getAPYsListFromDate(stake.lastUpdate);
    let totalRawAPYsReward: u64 = 0;

    const defaultLockingPeriods = this.getLockPeriod(0);
    check(!!defaultLockingPeriods, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!defaultLockingPeriods) return 0;

    while (APYsList.length > 0) {
      const currentAPY = APYsList.shift();
      if (!currentAPY) break;

      const apyRawEnd = this.getAPYEffectiveEndFromTime(currentAPY.start + 1);

      let apyStart =
        currentAPY.start < stake.lastUpdate
          ? stake.lastUpdate
          : currentAPY.start;

      const rewardPeriodEnd = apyRawEnd < now ? apyRawEnd : now;

      if (rewardPeriodEnd <= apyStart) {
        continue;
      }

      const totalYeldPeriod: u64 = rewardPeriodEnd - apyStart;
      if (totalYeldPeriod == 0) {
        continue;
      }

      const apyYeld = this.computeStakingRewardForPeriod(
        stake,
        apyStart,
        rewardPeriodEnd,
        currentAPY.percent
      );
      totalRawAPYsReward += apyYeld;
    }

    const lockMultiplier = f32(stake.multiplier);
    const defaultMultiplier = f32(defaultLockingPeriods.multiplier);

    const lockedReward = this.calculateLockingMultipliers(
      stake.lastUpdate,
      stake.lockedStart,
      stake.lockedTill,
      now,
      totalRawAPYsReward,
      lockMultiplier,
      defaultMultiplier
    );

    return lockedReward.lockedReward;
  }

  computeStakingRewardForPeriod(
    stake: StakesTable,
    start: u64,
    end: u64,
    apy: f32
  ): u64 {
    const duration = end > start ? end - start : 0;
    if (duration == 0) {
      return 0; // Pas de durée, pas de reward
    }

    const yearlyReward = u64(f32(stake.amount) * (apy / 100.0));
    const yearRelativeApyRatio = f32(duration) / f32(YEAR_IN_MS);
    const proportionalReward = u64(f32(yearlyReward) * yearRelativeApyRatio);
    return proportionalReward;
  }

  // --------------------
  // **LOCK PERIOD**
  // --------------------

  private lockStake(stake: StakesTable, lockPeriod: u8): StakesTable {
    const now = currentTimeMs();

    if (this.isLocked(stake)) {
      check(
        stake.lockingPeriod < lockPeriod,
        ERROR_IRREDUCIBLE_LOCK_PERIOD(stake.lockingPeriod)
      );
      if (stake.lockingPeriod > lockPeriod) return stake;
    }

    const lockingPeriod = this.getLockPeriod(lockPeriod);
    check(!!lockingPeriod, ERROR_NO_MATCHING_PERIOD_LOCK_FOUND());
     
    if (!lockingPeriod) return stake;
    stake.lockedStart = now;
    stake.lockedTill = now + u64(lockingPeriod.months) * MONTH_IN_MS;
    stake.lockingPeriod = lockingPeriod.months;
    
    stake.multiplier = lockingPeriod.multiplier;
    return stake;
  }

  private getLockPeriod(lockPeriod: u8): LockingPeriod | null {
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return null;
    const lockPeriods = lastConfig.config.lockingPeriods;
    while (lockPeriods.length > 0) {
      const lock = lockPeriods.shift();
      if (lock && lock.months == lockPeriod) return lock;
    }

    return null;
  }

  private isLocked(stake: StakesTable): boolean {
    const now = currentTimeMs();
    return now <= stake.lockedTill;
  }
  
  private hasBeenLocked(stake: StakesTable): boolean {
    return stake.lockedTill>0;
  }

  calculateLockingMultipliers(
    lastUpdate: u64,
    lockingStart: u64,
    lockingEnd: u64,
    currentTime: u64,
    totalReward: u64,
    lockMultiplier: f32,
    defaultMultiplier: f32
  ): LockedReward {
    // Calcul de la période totale depuis la dernière mise à jour jusqu'à maintenant
    if (currentTime <= lastUpdate) {
      // Pas de temps écoulé, donc pas de récompense
      return new LockedReward(0, 0);
    }

    const totalPeriod = currentTime - lastUpdate;
    if (totalPeriod == 0) {
      return new LockedReward(0, 0);
    }

    // Calcul de la période lockée (intersection entre [lastUpdate, currentTime] et [lockingStart, lockingEnd])
    const lockedStartEffective =
      lockingStart > lastUpdate ? lockingStart : lastUpdate;
    const lockedEndEffective =
      lockingEnd < currentTime ? lockingEnd : currentTime;

    let lockedPeriod: u64 = 0;
    if (lockedEndEffective > lockedStartEffective) {
      lockedPeriod = lockedEndEffective - lockedStartEffective;
    }

    // Calcul de la période unlock
    const unlockedPeriod =
      totalPeriod > lockedPeriod ? totalPeriod - lockedPeriod : 0;

    // Ratios
    const lockedRatio =
      totalPeriod > 0 ? f32(lockedPeriod) / f32(totalPeriod) : 0;
    const unlockedRatio =
      totalPeriod > 0 ? f32(unlockedPeriod) / f32(totalPeriod) : 0;
    // Application des multiplicateurs aux portions de reward
    const lockedBase = u64(f32(totalReward) * lockedRatio);
    const unlockedBase = u64(f32(totalReward) * unlockedRatio);

    const lockedReward = u64(f32(lockedBase) * lockMultiplier);
    const unlockedReward = u64(f32(unlockedBase) * defaultMultiplier);
    return new LockedReward(lockedReward, unlockedReward);
  }
}


class onTransferAction implements _chain.Packer {
    constructor (
        public from: _chain.Name | null = null,
        public to: _chain.Name | null = null,
        public quantity: _chain.Asset | null = null,
        public memo: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from!);
        enc.pack(this.to!);
        enc.pack(this.quantity!);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.quantity! = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from!.getSize();
        size += this.to!.getSize();
        size += this.quantity!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}

class lockLastStakeAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public lockPeriod: u8 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u8>(this.lockPeriod);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.lockPeriod = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u8>();
        return size;
    }
}

class lockStakeByKeyAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public stakeKey: u64 = 0,
        public lockPeriod: u8 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u64>(this.stakeKey);
        enc.packNumber<u8>(this.lockPeriod);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.stakeKey = dec.unpackNumber<u64>();
        this.lockPeriod = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u64>();
        size += sizeof<u8>();
        return size;
    }
}

class unstakeAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public stakeKey: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u64>(this.stakeKey);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.stakeKey = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class restakeAmountAndRewardAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public stakeKey: u64 = 0,
        public newLockingPeriod: u8 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u64>(this.stakeKey);
        enc.packNumber<u8>(this.newLockingPeriod);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.stakeKey = dec.unpackNumber<u64>();
        this.newLockingPeriod = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u64>();
        size += sizeof<u8>();
        return size;
    }
}

class claimRewardsAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        return size;
    }
}

class restakeRewardsAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public lockPeriod: u8 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u8>(this.lockPeriod);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.lockPeriod = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u8>();
        return size;
    }
}

class updateStakingRewardAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public stakeKey: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u64>(this.stakeKey);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.stakeKey = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class addApyAction implements _chain.Packer {
    constructor (
        public apy: f32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<f32>(this.apy);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.apy = dec.unpackNumber<f32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<f32>();
        return size;
    }
}

class changeConfigAction implements _chain.Packer {
    constructor (
        public config: _config_struct.StakingConfig | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.config!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _config_struct.StakingConfig();
            dec.unpack(obj);
            this.config! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.config!.getSize();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new snipstaking(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		
		if (action == 0xC64D050228847190) {//stake.lcklst
            const args = new lockLastStakeAction();
            args.unpack(actionData);
            mycontract.lockLastStake(args.account!,args.lockPeriod);
        }
		if (action == 0xC64D050228800000) {//stake.lck
            const args = new lockStakeByKeyAction();
            args.unpack(actionData);
            mycontract.lockStakeByKey(args.account!,args.stakeKey,args.lockPeriod);
        }
		if (action == 0xC64D050353C66000) {//stake.unstk
            const args = new unstakeAction();
            args.unpack(actionData);
            mycontract.unstake(args.account!,args.stakeKey);
        }
		if (action == 0xC64D0502EAC66000) {//stake.restk
            const args = new restakeAmountAndRewardAction();
            args.unpack(actionData);
            mycontract.restakeAmountAndReward(args.account!,args.stakeKey,args.newLockingPeriod);
        }
		if (action == 0xBF2E9C011133A400) {//rwrds.claim
            const args = new claimRewardsAction();
            args.unpack(actionData);
            mycontract.claimRewards(args.account!);
        }
		if (action == 0xBF2E9C02F8CC0000) {//rwrds.rstk
            const args = new restakeRewardsAction();
            args.unpack(actionData);
            mycontract.restakeRewards(args.account!,args.lockPeriod);
        }
		if (action == 0xC64D0503554E4000) {//stake.updt
            const args = new updateStakingRewardAction();
            args.unpack(actionData);
            mycontract.updateStakingReward(args.account!,args.stakeKey);
        }
		if (action == 0x357C032520000000) {//apy.add
            const args = new addApyAction();
            args.unpack(actionData);
            mycontract.addApy(args.apy);
        }
		if (action == 0x65360435885B0000) {//gov.chgcfg
            const args = new changeConfigAction();
            args.unpack(actionData);
            mycontract.changeConfig(args.config!);
        }
	}
  
	if (receiver != firstReceiver) {
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new onTransferAction();
            args.unpack(actionData);
            mycontract.onTransfer(args.from!,args.to!,args.quantity!,args.memo);
        }
	}
	return;
}
