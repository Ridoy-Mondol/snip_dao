import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  YEAR_IN_MS,
} from "../../utils";

import {nameToBigInt} from "@proton/vert";

import {snipstk_actionParams} from "../../interfaces/snipstk.contract";
import {TimePoint, TimePointSec} from "@greymass/eosio";
import {pushConfig} from "../config/config";
import {lockLast, lockStake, stake, updateStakeReward} from "../stakes/stake";
import { xtokens, xtokens_actionParams } from "tests/interfaces/xtokens";

const stakedAmount = ["1000000.0000 SNIPS"];
const apy = 1.32;

describe("ACCOUNT FLOW:: Test level", () => {
  before(async () => {
    blockchain.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });

  it(`Should stake 999999.9999 row after transfer`, async () => {
    const tp = TimePoint.fromMilliseconds(0);
    blockchain.setTime(tp);
    await stake(stakerA.name.toString(), '999999.9999 SNIPS');
    console.log(snipstk.bc.console)
    await lockLast(stakerA.name.toString(), 1)
    
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));

    expect(row.lockedStake).to.be.equal("9999999999");
  });
  
  it(`Should level of stakerA should be 0`, async () => {
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.level).to.be.equal(0);
  });
  
  it(`Should stake 1 SNIPS row after transfer`, async () => {
    const tp = TimePoint.fromMilliseconds(1);
    blockchain.setTime(tp);
    await stake(stakerA.name.toString(), '1.0000 SNIPS');
    await lockLast(stakerA.name.toString(), 1)
    
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.lockedStake).to.be.equal("10000009999");
  });
  
  it(`Should level of stakerA should be 1`, async () => {
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.level).to.be.equal(1);
  });
  
  
  it(`Should stake 9900000.0001 SNIPS row after transfer`, async () => {
    const tp = TimePoint.fromMilliseconds(2);
    blockchain.setTime(tp);
    await stake(stakerA.name.toString(), '8999999.0001 SNIPS');
    await lockLast(stakerA.name.toString(), 1)
    
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.lockedStake).to.be.equal("100000000000");
  });
  
  it(`Should level of stakerA should be 2`, async () => {
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.level).to.be.equal(2);
  });
  
  it(`Should stake 90000000.0000 SNIPS row after transfer`, async () => {
    const tp = TimePoint.fromMilliseconds(3);
    blockchain.setTime(tp);
    await stake(stakerA.name.toString(), '90000000.0000 SNIPS');
    await lockLast(stakerA.name.toString(), 1)
    
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.lockedStake).to.be.equal("1000000000000");
  });
  
  it(`Should level of stakerA should be 3`, async () => {
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.level).to.be.equal(3);
  });
  
  it(`Should stake 900000000.0000 SNIPS but still at previous staked total from account`, async () => {
    const tp = TimePoint.fromMilliseconds(4);
    blockchain.setTime(tp);
    await stake(stakerA.name.toString(), '900000000.0000 SNIPS');
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.lockedStake).to.be.equal("1000000000000");
  });
  
  it(`Should level of stakerA still be 3 cuz not locked`, async () => {
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.level).to.be.equal(3);
  });
 
  it(`Should lock last stake`, async () => {
    const tp = TimePoint.fromMilliseconds(4);
    blockchain.setTime(tp);
    await lockLast(stakerA.name.toString(), 1)
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.lockedStake).to.be.equal("10000000000000");
  });

  it(`Should level of stakerA should now 4 after lock`, async () => {
    const row = await snipstk.tables.accounts(nameToBigInt(snipstk.name)).getTableRow(nameToBigInt(stakerA.name));
    expect(row.level).to.be.equal(4);
  });

  
});
