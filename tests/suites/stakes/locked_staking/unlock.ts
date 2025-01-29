import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  YEAR_IN_MS,
} from "../../../utils";

import {nameToBigInt, protonAssert} from "@proton/vert";
import {snipstk_actionParams} from "../../../interfaces/snipstk.contract";
import {TimePoint, TimePointSec} from "@greymass/eosio";
import { pushConfig } from "../../config/config";
import { lockStake, stake, updateStakeReward } from "../stake";

const baseReward = 132000000;
const stakedAmount = "1000000.0000 SNIPS";
const apy = 1.32;

describe("UNLOCK:Locked Staking of 1000000.0000 SNIPS for a year at 1.32% APY",()=>{
  describe("Locked for 1 month: ", () => {
  before(async () => {
    await snipstk.bc.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });
    
 
  
    it(`Should stake ${stakedAmount} row after transfer`, async () => {
      
    const row = await stake(stakerA.name.toString(),stakedAmount)
    expect(row.amount).to.be.equal("10000000000");
    
    });
    
    it(`Should lock the stake`, async () => {
      
      const row = await lockStake(stakerA.name.toString(),0,1)
      expect(row.lockingPeriod).to.be.equal(1);
      
    });

    it(`Should lock the stake`, async () => {
      
      const row = await lockStake(stakerA.name.toString(),0,1)
      expect(row.lockingPeriod).to.be.equal(1);
      
    });

  
    it(`Should register ${apy} apy`, async () => {
      const addApyActionData = snipstk_actionParams<"apy.add">({apy});
      await snipstk.actions["apy.add"](addApyActionData).send(
        `${snipstk.name.toString()}@active`
      );
      const table = await snipstk.tables
        .apy(nameToBigInt(snipstk.name))
        .getTableRow(BigInt(0));
      expect(parseFloat(table.percent)).to.be.approximately(apy, 0.0001);
    });


    it("Blockchain time should be set to end of year", async () => {
      
      const tp = TimePoint.fromMilliseconds(YEAR_IN_MS);
      blockchain.setTime(tp);
      expect(blockchain.timestamp.toMilliseconds()).to.be.equal(YEAR_IN_MS)

    })

    it("Reward should be 13200.0008 Snips", async () => {
      
      const row = await updateStakeReward(stakerA.name.toString(), 0);
      expect(row.lastUpdate).to.be.equal(YEAR_IN_MS.toString());
      expect(row.reward).to.be.approximately(baseReward, 100);
    });
  });
})
