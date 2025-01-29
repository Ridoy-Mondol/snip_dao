import { nameToBigInt } from "@proton/vert";
import { expect } from "chai";
import { snipstk_actionParams, Tables } from "../../interfaces/snipstk.contract";
import { xtokens_actionParams } from "../../interfaces/xtokens";
import { getAccountBalance, snipstk, xtokens } from "../../utils";

export async function stake(from:string,quantity:string,start:number=0):Promise<Tables<'StakesTable'>> { 

  const transferActionParams = xtokens_actionParams<"transfer">({
    from,
    to:snipstk.name.toString(),
    quantity,
    memo: "",
  });

  await xtokens.actions
    .transfer(transferActionParams)
    .send(`${from}@active`);
 
  
  const row = snipstk.tables
    .stakes(nameToBigInt(from))
    .getTableRow(BigInt(start));
  return row;

}

export async function updateStakeReward(account: string, stakeKey: number):Promise<Tables<'StakesTable'>> { 
  
  const updateStakeActionParams = snipstk_actionParams<"stake.updt">({
    account,
    stakeKey: stakeKey,
  });
  await snipstk.actions["stake.updt"](updateStakeActionParams).send(
    `${account}@active`
  );
  const row = await snipstk.tables
    .stakes(nameToBigInt(account))
    .getTableRow(BigInt(stakeKey));
  
  return row
  
}

export async function lockStake(account: string, stakeKey: number,lockPeriod:number): Promise<Tables<'StakesTable'>> { 
  
  const updateStakeActionParams = snipstk_actionParams<"stake.lck">({
    account,
    stakeKey,
    lockPeriod
  });
  await snipstk.actions["stake.lck"](updateStakeActionParams).send(
    `${account}@active`
  );
  const row = await snipstk.tables
    .stakes(nameToBigInt(account))
    .getTableRow(BigInt(stakeKey));
  
  return row;
  
}

export async function lockLast(account: string, lockPeriod: number): Promise<Tables<'StakesTable'>> { 
  
  const updateStakeActionParams = snipstk_actionParams<"stake.lcklst">({
    account,
    lockPeriod
  });
  await snipstk.actions["stake.lcklst"](updateStakeActionParams).send(
    `${account}@active`
  );


  const rows = await snipstk.tables
    .stakes(nameToBigInt(account))
    .getTableRows();
  
  const last = rows.reverse()[0];
  return last;
  
}

export async function restake(account: string, stakeKey: number, newLockingPeriod: number): Promise<Tables<'StakesTable'>> { 

  const restakeActionParams = snipstk_actionParams<"stake.restk">({
    account,
    stakeKey,
    newLockingPeriod
  });
  await snipstk.actions["stake.restk"](restakeActionParams).send(
    `${account}@active`
  );
  const row = await snipstk.tables
    .stakes(nameToBigInt(account))
    .getTableRow(BigInt(stakeKey));
  
  return row;

}


export async function unstake(account: string, stakeKey: number): Promise<Tables<'StakesTable'>> { 
  
  const unstakeActionParams = snipstk_actionParams<"stake.unstk">({
    account,
    stakeKey,
  });
  await snipstk.actions["stake.unstk"](unstakeActionParams).send(
    `${account}@active`
  );
  const row = await snipstk.tables
    .stakes(nameToBigInt(account))
    .getTableRow(BigInt(0));
  
  return row;
  
}

export async function claimRewards(account: string): Promise<Tables<'StakesTable'>[]> { 
  
  const unstakeActionParams = snipstk_actionParams<"rwrds.claim">({
    account
  });
  await snipstk.actions["rwrds.claim"](unstakeActionParams).send(
    `${account}@active`
  );
  const row = await snipstk.tables
    .stakes(nameToBigInt(account))
    .getTableRows();
  
  return row;
  
}