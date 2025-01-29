import {expect} from "chai";
import {
  blockchain,
  stakerA,
  initToken,
  snipstk,
  YEAR_IN_MS,
} from "../../../utils";

import {nameToBigInt} from "@proton/vert";

import {snipstk_actionParams} from "../../../interfaces/snipstk.contract";
import {TimePoint, TimePointSec} from "@greymass/eosio";
import {pushConfig} from "../../config/config";
import {stake, updateStakeReward} from "../stake";

const stakedAmount = ["1000000.0000 SNIPS"];
const apy = 1.32;

describe("LIQUID STAKING:: Stakes 1000000.0000 SNIPS for a year", () => {
  before(async () => {
    blockchain.resetTables();
    const timePoint = TimePointSec.fromMilliseconds(YEAR_IN_MS);
    await blockchain.setTime(timePoint);
    await pushConfig();
    await initToken();
    const tp2 = TimePointSec.fromMilliseconds(0);
    await blockchain.setTime(tp2);
  });

  it(`Should stake ${stakedAmount} row after transfer`, async () => {
    const row = await stake(stakerA.name.toString(), stakedAmount[0]);
    expect(row.amount).to.be.equal("10000000000");
  });

  it('should StakeA account have 10000000000 as totalStaked', async () => {
    const account = await snipstk.tables.accounts().getTableRow(nameToBigInt(stakerA.name));
    expect(account.totalStaked).to.be.equal("10000000000");
  })

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
    expect(blockchain.timestamp.toMilliseconds()).to.be.equal(YEAR_IN_MS);
  });

  it("Reward should be 0.0000 Snips cuz not locked", async () => {
    const row = await updateStakeReward(stakerA.name.toString(), 0);
    expect(row.lastUpdate).to.be.equal(YEAR_IN_MS.toString());
    expect(row.reward).to.be.approximately(0, 100);
  });
});
