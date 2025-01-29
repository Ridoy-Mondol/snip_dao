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
import { setApy } from "../apy";
import { stake, updateStakeReward } from "../stake";
import { pushConfig } from "../../config/config";
import { nameToBigInt } from "@proton/vert";

const stakedAmount = "1000000.0000 SNIPS";

  describe(`LIQUID STAKING:: ${stakedAmount} stakes on 2 APY over a year`, () => {
  before(async () => {
    await snipstk.bc.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });
    it('should stake 1000000.0000 SNIPS', async () => {
      
      const row = await stake(stakerA.name.toString(), stakedAmount);
      expect(row.amount).to.be.equal(Number(10000000000).toString());

    })

    it('should StakeA account have 10000000000 as totalStaked', async () => {
      const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
      expect(account.totalStaked).to.be.equal("10000000000");
    })

    it(`Should register 4.3% apy at time 0`, async () => {
      
      const apy = 4.3;
      const row = await setApy(apy, 0);
      expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
      expect(parseFloat(row.start.toString())).to.be.equal(0);
    });

    it(`Should register 5.2% apy at 6 month`, async () => {
      const halfYearMS = MONTH_IN_MS * 6;
      const apy = 5.2;
      const row = await setApy(apy, halfYearMS);
      expect(parseFloat(row.percent.toString())).to.be.approximately(apy, 0.0001);
      expect(parseFloat(row.start.toString())).to.be.equal(halfYearMS);
    });

    
    it("Should compute 0 reward for APY structure for a 1000000.0000 SNIPS stake.", async () => {
    
      const tp = TimePoint.fromMilliseconds(YEAR_IN_MS);
      blockchain.setTime(tp);

      const row = await updateStakeReward(stakerA.name.toString(),0)
      
      expect(parseInt(row.lastUpdate.toString())).to.be.equal(YEAR_IN_MS);
      expect(parseFloat(row.reward.toString())).to.be.approximately(0, 100);
    });
  });

