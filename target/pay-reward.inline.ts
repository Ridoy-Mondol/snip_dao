import * as _chain from "as-chain";
import { ActionData, currentTimeMs, InlineAction, Name, PermissionLevel } from "proton-tsc";
import { StakesTable } from "../tables";


@packer(nocodegen)
export class PayRewardActionData implements _chain.Packer {
    
  constructor(
    public account: Name,
    public amount: u64 = 0
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packNumber<u64>(this.amount);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        this.amount = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += sizeof<u64>();
        return size;
    }
}

export function sendPayReward(contract: Name,executrer:Name, account: Name, amount:u64): void {
  const payRewardActionData = new PayRewardActionData(
    account,
    amount,
  );
  const payRewardInline = new InlineAction<PayRewardActionData>("reward.pay");
  const payRewardAction = payRewardInline.act(
    contract,
    new PermissionLevel(contract,Name.fromU64(0xC64D050000000000))
  );
  payRewardAction.send(payRewardActionData);
}