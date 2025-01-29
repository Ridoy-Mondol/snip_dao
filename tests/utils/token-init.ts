import {Blockchain, mintTokens} from "@proton/vert";
import {xtokens_actionParams} from "../interfaces/xtokens";
import { wait } from "./wait";

// create blockchain
export const blockchain = new Blockchain();

export const xtokens = blockchain.createContract(
  "xtokens",
  "tests/xtokens/xtokens",
  true
);
export const snipstk = blockchain.createContract(
  "snipstk",
  "target/snipstk.contract",
  true
);

export const DAYS_IN_MS = 86_400_000;
export const MONTH_IN_MS = 2629746000;
export const YEAR_IN_MS = MONTH_IN_MS * 12;


// create accounts
export const [
  stakerA,
  stakerB,
  stakerC,
  stakerD,
  stakerE,
  stakerF,
  stakerG,
  stakerH,
  snipsrewards
  
] = blockchain.createAccounts(
  "stakera",
  "stakerb",
  "stakerc",
  "stakerd",
  "stakere",
  "stakerf",
  "stakerg",
  "stakerh",
  "snipsrewards"
  );

export const stakers = [stakerA,
  stakerB,
  stakerC,
  stakerD,
  stakerE,
  stakerF,
  stakerG,
  stakerH,]

export async function initToken() {
  await wait(5)
  await mintTokens(xtokens, "SNIPS", 4, 1_000_000_000_000.0000, 10_000_000_000.0000, [
    stakerA,
    stakerB,
    stakerC,
    stakerD,
    stakerE,
    stakerF,
    stakerG,
    stakerH,
    snipsrewards,
    snipstk
  ]);
  
}


