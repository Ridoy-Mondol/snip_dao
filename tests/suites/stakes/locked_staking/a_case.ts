import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  YEAR_IN_MS,
  MONTH_IN_MS,
  wait,
} from "../../../utils";

import {TimePointSec} from "@greymass/eosio";
import {pushConfig} from "../../config/config";
import {lockStake, stake, updateStakeReward} from "../stake";
import {setApy} from "../apy";

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

describe("LOCKED STAKING:: 1 month with variable APY", () => {
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
    expect(row.amount).to.be.equal("10000000000");
  });

  it(`Should lock the stake for 1 month`, async () => {
    const row = await lockStake(stakerA.name.toString(), 0, 1);
    expect(row.lockingPeriod).to.be.equal(1);
  });

  // Définition des APY
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

  // On passe directement à 12 mois et on calcule la reward
  it("At 12 months, reward should be ~3788.1940 SNIPS", async () => {
    
    const t12 = YEAR_IN_MS; // 12 mois
    blockchain.setTime(TimePointSec.fromMilliseconds(t12));
    
    const row = await updateStakeReward(stakerA.name.toString(), 0);
    expect(row.lastUpdate).to.be.equal(t12.toString());
    expect(parseInt(row.reward.toString())).to.be.approximately(37881940, 2000);
  });
});
