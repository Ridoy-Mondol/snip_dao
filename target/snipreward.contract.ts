import * as _chain from "as-chain";
import { ERROR_ACCOUNT_NOT_EXISTS, ERROR_CONFIG_ENTRY_NOT_FOUND,ERROR_REWARD_SOURCE_ACCOUNT_NOT_FOUND,ERROR_REWARDS_UNAVAILABLE } from "./errors";
import { AccountsTable, ConfigTable} from "./tables";
import { Asset, check, Contract, Name, requireAuth, TableStore } from "proton-tsc";
import { Account, sendTransferToken } from "proton-tsc/token";

@contract
export class SnipReward extends Contract {

  private accountTable: TableStore<AccountsTable> = new TableStore<AccountsTable>(Name.fromU64(0xC4DD5C6600000000));
  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(Name.fromU64(0xC4DD5C6600000000))

  @action('reward.pay')
  payReward(account: Name, amount: u64): void {
    requireAuth(this.receiver);
    const lastConfig = this.configTable.last();
    check(!!lastConfig, ERROR_CONFIG_ENTRY_NOT_FOUND());
    if (!lastConfig) return;
    const existingAccount = this.accountTable.requireGet(account.N, ERROR_ACCOUNT_NOT_EXISTS(account));
    const balanceTable = new TableStore<Account>(Name.fromU64(0xC4DD5E8000000000), this.receiver);
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

class payRewardAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public amount: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u64>(this.amount);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.amount = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new SnipReward(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0xBAB86BA415378000) {//reward.pay
            const args = new payRewardAction();
            args.unpack(actionData);
            mycontract.payReward(args.account!,args.amount);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
