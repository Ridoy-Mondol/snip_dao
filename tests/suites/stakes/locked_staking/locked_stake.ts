import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  YEAR_IN_MS,
  MONTH_IN_MS,
} from "../../../utils";

import {TimePointSec} from "@greymass/eosio";
import {pushConfig} from "../../config/config";
import {lockStake, stake, unstake, updateStakeReward} from "../../stakes/stake";
import { nameToBigInt } from "@proton/vert";

const stakeAmount = "1000000.0000 SNIPS"; // 1,000,000 SNIPS * 10^4 = 10,000,000,000 units
// Configuration:
// - Lock 1 month, multiplier lock=1, unlock=0
// - APY timeline:
//   0 -> 1.5 months: 6.2%
//   1.5 -> 7.5 months: 4.8%
//   7.5 -> 9 months: 2.9%
//   9 -> 11 months: 4.3%
//   11 -> 12 months: 3.5%
// Comme le multiplicateur unlock=0, aucune récompense après 1 mois.

describe("LOCKED STAKING:: Test lockedStake", () => {
  before(async () => {
    await snipstk.bc.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });

  it(`Should stake ${stakeAmount} at time 0`, async () => {
    const row = await stake(stakerA.name.toString(), stakeAmount);
    // 1,000,000.0000 SNIPS = 1,000,000 * 10^4 = 10,000,000,000 units
    expect(row.amount).to.be.equal("10000000000");
  });

  it(`Should lock the stake for 1 month`, async () => {
    const row = await lockStake(stakerA.name.toString(), 0, 1);
    
    expect(row.lockingPeriod).to.be.equal(1);
  });

  it('should StakeA account have 10000000000 as totalStaked', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.totalStaked).to.be.equal("10000000000");
  })

  it('should StakeA account have 10000000000 as lockedStake', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.lockedStake).to.be.equal("10000000000");
  })


  it(`Should stake 2000.0000 at time 0`, async () => {

    const timePoint = TimePointSec.fromMilliseconds(MONTH_IN_MS);
    await blockchain.setTime(timePoint);
    const row = await stake(stakerA.name.toString(), '2000.0000 SNIPS',MONTH_IN_MS);
    // 1,000,000.0000 SNIPS = 1,000,000 * 10^4 = 10,000,000,000 units
    expect(row.amount).to.be.equal(20000000);
  });

  it(`Should lock the stake for 1 month`, async () => {
    const row = await lockStake(stakerA.name.toString(), MONTH_IN_MS, 1);
    expect(row.lockingPeriod).to.be.equal(1);
  });

  it('should StakeA account have 10020000000 as totalStaked', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.totalStaked).to.be.equal("10020000000");
  })

  it('should StakeA account have 10020000000 as lockedStake', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.lockedStake).to.be.equal("10020000000");
  })

  

  it(`Should unstake 1000000.0000 SNIPS`, async () => {
      
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    const row = await unstake(stakerA.name.toString(), 0);
    expect(row).to.be.equal(undefined);
  });

  it('should StakeA account have 2000.0000 SNIPS as lockedStake', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.lockedStake).to.be.equal(20000000);
  })

  


});
