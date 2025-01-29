import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  YEAR_IN_MS,
  MONTH_IN_MS,
} from "../../../utils";

import {TimePoint, TimePointSec} from "@greymass/eosio";
import { pushConfig } from "../../../suites/config/config";
import { stake, updateStakeReward } from "../stake";
import { setApy } from "../apy";

const stakedAmount ="1000000.0000 SNIPS";


describe(`LIQUID STAKING:: 1000000.0000 SNIPS stakes on 6 APY over a year`, () => {
  before(async () => {
    await snipstk.bc.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });

  
    it(`Should stake ${stakedAmount}`, async () => {
      
      const row = await stake(stakerA.name.toString(), stakedAmount)
      expect(row.amount).to.be.equal("10000000000");
    });

    it(`Should register 6.1% apy at time 0`, async () => {
      const apy = 6.1;
      const row = await setApy(apy, 0);
      expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
      expect(parseFloat(row.start.toString())).to.be.equal(0);
    });

    it(`Should register 5.9% apy at 2 month`, async () => {
      const apy = 5.9;
      const startTime = MONTH_IN_MS * 2;
      const row = await setApy(apy, startTime);
      expect(parseFloat(row.start.toString())).to.be.equal(startTime);
      
    });

    it(`Should register 2.2% apy at 3 month`, async () => {
      const apy = 2.2;
      const startTime = MONTH_IN_MS * 3;
      const row = await setApy(apy, startTime);
      expect(parseFloat(row.start.toString())).to.be.equal(startTime);
    });

    it(`Should register 1.45% apy at 5 month`, async () => {
      const apy = 1.45;
      const startTime = MONTH_IN_MS * 5;
      const row = await setApy(apy, startTime);
      expect(parseFloat(row.start.toString())).to.be.equal(startTime);
    });

    it(`Should register 4.49% apy at 6.5 month`, async () => {
      const apy = 4.49;
      const startTime = MONTH_IN_MS * 6.5;
      const row = await setApy(apy, startTime);
      expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
      expect(parseFloat(row.start.toString())).to.be.equal(startTime);
    });

    it(`Should register 3.8% apy at 8.5 month`, async () => {
      const apy = 3.8;
      const startTime = MONTH_IN_MS * 8.5;
      const row = await setApy(apy, startTime);
      expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
      expect(parseFloat(row.start.toString())).to.be.equal(startTime);
    });

    it("Should compute 0 reward for APY structure for a 1000000.0000 SNIPS stake.", async () => {
      const tp = TimePoint.fromMilliseconds(YEAR_IN_MS);
      blockchain.setTime(tp);

      const row = await updateStakeReward(stakerA.name.toString(), 0);
      expect(parseInt(row.lastUpdate.toString())).to.be.equal(YEAR_IN_MS);
      expect(parseInt(row.reward.toString())).to.be.approximately(0, 10000);
      
    });
});
