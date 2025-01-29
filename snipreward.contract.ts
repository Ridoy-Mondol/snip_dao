import { ERROR_ACCOUNT_NOT_EXISTS, ERROR_CONFIG_ENTRY_NOT_FOUND,ERROR_REWARD_SOURCE_ACCOUNT_NOT_FOUND,ERROR_REWARDS_UNAVAILABLE } from "./errors";
import { AccountsTable, ConfigTable} from "./tables";
import { Asset, check, Contract, Name, requireAuth, TableStore } from "proton-tsc";
import { Account, sendTransferToken } from "proton-tsc/token";

@contract
export class SnipReward extends Contract {

  private accountTable: TableStore<AccountsTable> = new TableStore<AccountsTable>(Name.fromString('snipstk'));
  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(Name.fromString('snipstk'))

  @action('reward.pay')
  payReward(account: Name, amount: u64): void {
    requireAuth(this.receiver);
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return;
    const existingAccount = this.accountTable.requireGet(account.N, ERROR_ACCOUNT_NOT_EXISTS(account));
    const balanceTable = new TableStore<Account>(lastConfig.config.rewardSourceContract, this.receiver);
    const currentBalance = balanceTable.last();
    check(!!currentBalance,ERROR_REWARD_SOURCE_ACCOUNT_NOT_FOUND(this.receiver))
    if (!currentBalance) return;
    check(u64(currentBalance.balance.amount) > amount,ERROR_REWARDS_UNAVAILABLE())

    sendTransferToken(
      lastConfig.config.rewardSourceContract,
      this.receiver,
      existingAccount.account,
      new Asset(amount,lastConfig.config.restrictToSymbol),
      'Reward'
    )
  }

}