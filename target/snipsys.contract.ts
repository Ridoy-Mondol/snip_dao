import * as _chain from "as-chain";
import {Contract, Name, TableStore} from "proton-tsc";

import { ArchiveStakesTable } from "./tables";

@contract
export class snipstake extends Contract {
  @action("stake.arch")
  archiveStake(
    account: Name,
    start: u64 = 0,
    amount: u64 = 0,
    reward: u64 = 0,
    lastUpdate: u64 = 0,
    
  ): void {
    const stakeTable = new TableStore<ArchiveStakesTable>(
      this.receiver,
      account
    );
    const archivedStake = new ArchiveStakesTable(
      start,
      amount,
      reward,
      lastUpdate,
    );
    stakeTable.store(archivedStake, this.receiver);
  }
}


class archiveStakeAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public start: u64 = 0,
        public amount: u64 = 0,
        public reward: u64 = 0,
        public lastUpdate: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packNumber<u64>(this.start);
        enc.packNumber<u64>(this.amount);
        enc.packNumber<u64>(this.reward);
        enc.packNumber<u64>(this.lastUpdate);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.start = dec.unpackNumber<u64>();
        this.amount = dec.unpackNumber<u64>();
        this.reward = dec.unpackNumber<u64>();
        this.lastUpdate = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new snipstake(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0xC64D0500D7434000) {//stake.arch
            const args = new archiveStakeAction();
            args.unpack(actionData);
            mycontract.archiveStake(args.account!,args.start,args.amount,args.reward,args.lastUpdate);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
