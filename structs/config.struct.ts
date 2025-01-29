import {Asset, Decoder, EMPTY_NAME, Encoder, Name, Packer, Symbol} from "proton-tsc";
import {LockingPeriod} from "./locking.struct";
import { AccountLevel } from "./stake-level.struct";

export class StakingConfig implements Packer {
  constructor(
    public lockingPeriods: LockingPeriod[] = [],
    public levelsDef:AccountLevel[] = [],
    public rewardSourceAccount: Name = EMPTY_NAME,
    public rewardSourceContract: Name = EMPTY_NAME,
    public distributedRewardsForYear: Asset = new Asset(
      0,
      new Symbol("SNIPS", 4)
    ),
    public yearStart: u64 = 0, // set at the init call of course this is based on YEAR_IN_MS
    public isPaused: boolean = false,
    public userStakeLimit:u64 = 0,
    public restakeTimeLimit: u64 = 0,
    public restrictToSymbol:Symbol = new Symbol("SNIPS",4)
  ) {}

  pack(): u8[] {
    const enc = new Encoder(this.getSize());
    enc.packLength(this.lockingPeriods.length);
    for (let i:u32 = 0; i < u32(this.lockingPeriods.length); i++) {
      enc.packBytes(this.lockingPeriods[i].pack());
    }
    enc.packLength(this.levelsDef.length);
    for (let i:u32 = 0; i < u32(this.levelsDef.length); i++) {
      enc.packBytes(this.levelsDef[i].pack());
    }

    enc.packName(this.rewardSourceAccount);
    enc.packName(this.rewardSourceContract);
    


    enc.packNumber<u64>(this.distributedRewardsForYear.amount);
    enc.packNumber<u64>(this.distributedRewardsForYear.symbol.value);
    enc.packNumber<u64>(this.yearStart);
    enc.packNumber<boolean>(this.isPaused);
    enc.packNumber<u64>(this.userStakeLimit);
    enc.packNumber<u64>(this.restakeTimeLimit);
    enc.packNumber<u64>(this.restrictToSymbol.value)
    return enc.getBytes();
  }

  unpack(data: u8[]): usize {
    const dec = new Decoder(data);
    const lockPeriodLength = dec.unpackLength();
    const lockingArray:LockingPeriod[] = []; //new Array(lockPeriodLength);
    for (let i:u32 = 0; i < u32(lockPeriodLength); i++) {
      const locking = new LockingPeriod();
      locking.unpack(dec.unpackBytes(locking.getSize()));
      lockingArray.push(locking);
    }
    this.lockingPeriods = lockingArray;
    
    const levelsDefLength = dec.unpackLength();
    const levelsDef:AccountLevel[] = []; //new Array(lockPeriodLength);
    for (let i: u32 = 0; i < u32(levelsDefLength); i++) {
      const level = new AccountLevel();
      level.unpack(dec.unpackBytes(level.getSize()));
      levelsDef.push(level);
    }
    this.levelsDef = levelsDef;

    this.rewardSourceAccount = dec.unpackName();
    this.rewardSourceContract = dec.unpackName();

    const distributedRewardAssetAmount = dec.unpackNumber<u64>();
    const distributedRewardSymbol = Symbol.fromU64(dec.unpackNumber<u64>());
    this.distributedRewardsForYear = new Asset(
      distributedRewardAssetAmount,
      distributedRewardSymbol
    );
    this.yearStart = dec.unpackNumber<u64>();
    this.isPaused = dec.unpackNumber<boolean>();
    this.userStakeLimit = dec.unpackNumber<u64>();
    this.restakeTimeLimit = dec.unpackNumber<u64>();
    const symbol = dec.unpackNumber<u64>()
    this.restrictToSymbol = Symbol.fromU64(symbol);
    return dec.getPos();
  }

  getSize(): usize {
    
    let size: usize = 4;
    
    for (let i = 0; i < this.lockingPeriods.length ; i++) {
      size += LockingPeriod.GetSize();
    }
    
    for (let i = 0; i < this.levelsDef.length; i++) {
      size += AccountLevel.GetSize();
    }
    size += 65;
    return size;
  }
}
