import {expect} from "chai";
import {blockchain, initToken, snipstk, YEAR_IN_MS} from "../../utils";
import {xtokens_actionParams} from "../../interfaces/xtokens";
import {nameToBigInt, protonAssert} from "@proton/vert";

import {snipstk_actionParams, Tables} from "../../interfaces/snipstk.contract";
import {TimePoint} from "@greymass/eosio";
import {defaultLockingPeriods, pushConfig} from "./config";

describe(`Should update the config`, () => {
  before(async () => {
    blockchain.resetTables();
    const tp = TimePoint.fromMilliseconds(YEAR_IN_MS);
    blockchain.setTime(tp);
    await pushConfig();
    await initToken();
  });

  it(`Should set the config `, async () => {
    const row = await pushConfig();
    expect(row.config.lockingPeriods).to.be.deep.equal(defaultLockingPeriods);
  });
});

const conf = {"config":{
  "lockingPeriods": [
    {"months": 0, "multiplier": "0.00000000000000000"},
    {"months": 1, "multiplier": "1.00000000000000000"},
    {"months": 3, "multiplier": "1.50000000000000000"},
    {"months": 6, "multiplier": "2.00000000000000000"},
    {"months": 9, "multiplier": "3.00000000000000000"},
    {"months": 12, "multiplier": "4.00000000000000000"}
  ],
  "levelsDef": [
    {"index": 1, "minAmount": "10000000000"},
    {"index": 2, "minAmount": "100000000000"},
    {"index": 3, "minAmount": "1000000000000"},
    {"index": 4, "minAmount": "10000000000000"}
  ],
  "rewardSourceAccount": "snipx",
  "rewardSourceContract": "snipx",
  "distributedRewardsForYear": "0.0000 SNIPX",
  "yearStart": 0,
  "isPaused": 0,
  "userStakeLimit": "20000000000000",
  "restakeTimeLimit": 86400000,
  "restrictToSymbol": "4,SNIPX"
}};
