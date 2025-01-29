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
import { stake, unstake, updateStakeReward } from "../stake";
import { setApy } from "../apy";
import { nameToBigInt } from "@proton/vert";

const stakedAmount ="1000000.0000 SNIPS";


describe(`LOCKED/LIQUID STAKING:: 1000000.0000 SNIPS check totalStaked value`, () => {
  before(async () => {
    await snipstk.bc.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });

  
    it(`Should transfer ${stakedAmount} as stake`, async () => {
      
      const row = await stake(stakerA.name.toString(), stakedAmount)
      expect(row.amount).to.be.equal("10000000000");
    });
  
    it('should StakeA account have 10000000000 as totalStaked', async () => {
      const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
      expect(account.totalStaked).to.be.equal("10000000000");
    })
   
  it(`Should stake 10000.0000 SNIPS`, async () => {
      
    const timePoint = TimePointSec.fromMilliseconds(1000);
    await blockchain.setTime(timePoint);
      const row = await stake(stakerA.name.toString(), "10000.0000 SNIPS",1000)
      expect(row.amount).to.be.equal(100000000);
  });
  
  it('should StakeA account have 10100000000 as totalStaked', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.totalStaked).to.be.equal("10100000000");
  })

  it(`Should unstake ${stakedAmount}`, async () => {
      
    const timePoint = TimePointSec.fromMilliseconds(1000);
    await blockchain.setTime(timePoint);
    const row = await unstake(stakerA.name.toString(), 0);
    expect(row).to.be.equal(undefined);
  });

  it('should StakeA account have 10000000000 as totalStaked', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.totalStaked).to.be.equal(100000000);
  })
    
});
