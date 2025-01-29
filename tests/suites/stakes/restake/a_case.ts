import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  
  MONTH_IN_MS,
  YEAR_IN_MS,
  
} from "../../../utils";

import {TimePoint, TimePointSec} from "@greymass/eosio";
import {pushConfig} from "../../config/config";
import {stake, updateStakeReward, lockStake, restake} from "../stake";
import {setApy} from "../apy";

const stakedAmountA = "1000000.0000 SNIPS"; // 1,000,000 SNIPS
// lock 3 mois, multiplicateur lock = 1.5, unlock = 0

describe(`RESTAKE:: Test restake and reward update`, () => {
  before(async () => {
    await snipstk.bc.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });

  it(`Should stake ${stakedAmountA} by stakerA`, async () => {
    const row = await stake(stakerA.name.toString(), stakedAmountA);
    expect(row.amount).to.be.equal("10000000000");
  });

  it(`Should lock the stake for 3 months by stakerA`, async () => {
    const row = await lockStake(stakerA.name.toString(), 0, 3);
    expect(row.lockingPeriod).to.be.equal(3);
  });

  it(`Should register 6.2% APY at time 0`, async () => {
    const apy = 6.2;
    const row = await setApy(apy, 0);
    expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
    expect(parseFloat(row.start.toString())).to.be.equal(0);
  });

  it(`Should register 4.8% APY at 1.5 months`, async () => {
    const apy = 4.8;
    const startTime = MONTH_IN_MS * 1.5;
    const row = await setApy(apy, startTime);
    expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
    expect(parseFloat(row.start.toString())).to.be.equal(startTime);
  });

  it(`Should register 2.9% APY at 7.5 months`, async () => {
    const apy = 2.9;
    const startTime = MONTH_IN_MS * 7.5;
    const row = await setApy(apy, startTime);
    expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
    expect(parseFloat(row.start.toString())).to.be.equal(startTime);
  });

  it(`Should register 4.3% APY at 9 months`, async () => {
    const apy = 4.3;
    const startTime = MONTH_IN_MS * 9;
    const row = await setApy(apy, startTime);
    expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
    expect(parseFloat(row.start.toString())).to.be.equal(startTime);
  });

  it(`Should register 3.5% APY at 11 months`, async () => {
    const apy = 3.5;
    const startTime = MONTH_IN_MS * 11;
    const row = await setApy(apy, startTime);
    expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
    expect(parseFloat(row.start.toString())).to.be.equal(startTime);
  });

  it("Should compute rewards after 0.1 month ~775 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*0.1);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*0.1,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(7750000,2000);
  });

  it("Should compute rewards after 3 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*3);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*3,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it("Should compute rewards after 4.5 months ~20625 SNIPS (no more rewards after lock ends)", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*4.5);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*4.5,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it("Should compute rewards after 5.3 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*5.3);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*5.3,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });

  it("Should compute rewards after 7 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*7);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*7,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it("Should compute rewards after 9.2 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*9.2);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*9.2,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it("Should compute rewards after 9.21 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*9.21);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*9.21,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it("Should compute rewards after 11 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*11);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);

    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*11,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it("Should compute rewards after 15 months ~20625 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*15);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);
    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS*15,1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(206250000,2000);
  });
  
  it(`Should restake the stake for 3 month, new stake base amount should be 1020625.0000 SNIPS,`, async () => {
    
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*15);
    blockchain.setTime(tp);
    const row = await restake(stakerA.name.toString(), 0, 3);
    expect(row.lockingPeriod).to.be.equal(3);
    expect(parseInt(row.amount)).to.be.approximately(10206250000,2000);
    expect(parseInt(row.reward)).to.be.equal(0);
  });
  
  it("Should compute rewards after 18 months ~13395.7031 SNIPS", async () => {
    const tp = TimePoint.fromMilliseconds(MONTH_IN_MS*18);
    blockchain.setTime(tp);
    const rowA = await updateStakeReward(stakerA.name.toString(), 0);
    expect(parseFloat(rowA.lastUpdate.toString())).to.be.approximately(MONTH_IN_MS * 18, 1);
    expect(parseInt(rowA.reward.toString())).to.be.approximately(133957031,2000);
  });

});



