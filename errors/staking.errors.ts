import {Name} from "proton-tsc";

export function ERROR_STAKING_ENTRY_NOT_FOUND(account: Name): string {
  return `Stake entry not found for ${account}. . #E_STK_ENF `;
}

export function ERROR_STAKING_NOT_FOUND(): string {
  return `Stake entry not found. #E_STK_SNF`;
}

export function ERROR_WRONG_TOKEN_INPUT(token:string): string {
  return `Stake is only allowed in ${token}. #E_STK_WTI`;
}

export function ERROR_NO_STAKE_TO_LOCK(): string {
  return `No stake found for locking. #E_STK_NSL`;
}

export function ERROR_STAKE_LOCKED(): string {
  return `Stake is locked. #E_STK_SL`;
}

export function ERROR_IRREDUCIBLE_LOCK_PERIOD(currentLockPeriod:u8): string {
  return `You can't lower lock period under or equal to ${currentLockPeriod} month. #E_STK_ILP`;
}

export function ERROR_RESTAKE_IS_WITHIN_LIMIT(remainingTime: u64,restakeTimeLimit:u64): string {
  return `You cannot restake more than once within ${restakeTimeLimit/1000/60/60} hours. Wait ${remainingTime/1000/60/60} hours. #E_STK_RIWL`;
}
