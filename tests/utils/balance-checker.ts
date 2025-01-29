import { Asset, Name } from "@greymass/eosio";
import { Account, nameToBigInt, nameTypeToBigInt, symbolCodeToBigInt } from "@proton/vert";

export const getAccountBalance = (contract: Account, accountName: string, symbol: string) => {
  const accountBigInt = nameToBigInt(Name.from(accountName));
  const symcodeBigInt = symbolCodeToBigInt(Asset.SymbolCode.from(symbol));
  const accountRow = contract.tables.accounts(accountBigInt).getTableRows();
  if (!accountRow || !accountRow[0] || !accountRow[0].balance) return 0;
  return accountRow[0].balance;
};

export const getInternalBalance = (contract:Account,accountName: string,symbol:string) => {
  const asset = Asset.fromString(symbol)
  return contract.tables.balances(nameToBigInt(accountName)).getTableRow(BigInt(asset.symbol.value.toString()));

}