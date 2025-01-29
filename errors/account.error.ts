import { Name } from "proton-tsc";

export function ERROR_ACCOUNT_NOT_EXISTS(account:Name): string {
  return `${account} account not exists`;
 }

export function ERROR_REWARD_SOURCE_ACCOUNT_NOT_FOUND(account: Name): string {
  return `${account} reward source not found`;
 }