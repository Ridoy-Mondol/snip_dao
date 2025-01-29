import { nameToBigInt } from "@proton/vert";
import { snipstk_actionParams, Tables } from "../../interfaces/snipstk.contract";
import { DAYS_IN_MS, snipstk } from "../../utils";



export const defaultLockingPeriods = [
  {
    months: 0, // Mean liquid
    multiplier: "0.0000000",
  },
  {
    months: 1,
    multiplier: "1.0000000",
  },
  {
    months: 3,
    multiplier: "1.5000000",
  },
  {
    months: 6,
    multiplier: "2.0000000",
  },
  {
    months: 9,
    multiplier: "3.0000000",
  },
  {
    months: 12,
    multiplier: "4.0000000",
  },
];

export const levelDefs = [
  {
    index: 1,
    minAmount:10000000000
  },
  {
    index: 2,
    minAmount:100000000000
  },
  {
    index: 3,
    minAmount:1000000000000
  },
  {
    index: 4,
    minAmount:10000000000000
  }
]

export async function pushConfig():Promise<Tables<'ConfigTable'>> {
  {
    const configChangeActionParams = snipstk_actionParams<'gov.chgcfg'>({
      config: {
        lockingPeriods: defaultLockingPeriods,
        levelsDef: levelDefs,
        rewardSourceAccount: 'sniprewards',
        rewardSourceContract: 'xtokens',
        distributedRewardsForYear: '0.0000 SNIPS',
        yearStart:0,
        isPaused: false,
        userStakeLimit: 2_000_000_000_0000,
        restakeTimeLimit: DAYS_IN_MS,
        restrictToSymbol:"4,SNIPS"
      }
    });
    await snipstk.actions['gov.chgcfg'](configChangeActionParams).send(`${snipstk.name}@active`)
    const row: Tables<'ConfigTable'> = snipstk.tables.config(nameToBigInt(snipstk.name)).getTableRow(BigInt(0));
    
    return row;
    
  }
}


const cfg = {"config":{
  "lockingPeriods": [
    {
      "months": 0,
      "multiplier": 0.0
    },
    {
      "months": 1,
      "multiplier": 1.0
    },
    {
      "months": 3,
      "multiplier": 1.5
    },
    {
      "months": 6,
      "multiplier": 2.0
    },
    {
      "months": 9,
      "multiplier": 3.0
    },
    {
      "months": 12,
      "multiplier": 4.0
    }
  ],
  "levelsDef": [
    {
      "index": 1,
      "minAmount":10000000000
    },
    {
      "index": 2,
      "minAmount":100000000000
    },
    {
      "index": 3,
      "minAmount":1000000000000
    },
    {
      "index": 4,
      "minAmount":10000000000000
    }
  ],
  "rewardSourceAccount": "sniprewards",
  "rewardSourceContract": "xtokens",
  "distributedRewardsForYear": "0.0000 SNIPS",
  "yearStart":0,
  "isPaused": false,
  "userStakeLimit": 20000000000000,
  "restakeTimeLimit": 86400000,
  "restrictToSymbol":"4,SNIPS"
}}