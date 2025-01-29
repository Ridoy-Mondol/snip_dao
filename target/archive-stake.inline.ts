import * as _chain from "as-chain";
import { ActionData, currentTimeMs, InlineAction, Name, PermissionLevel } from "proton-tsc";
import { StakesTable } from "../tables";


@packer(nocodegen)
export class ArchiveStakeActionData implements _chain.Packer {
    
  constructor(
    public account: Name,
    public start: u64 = 0,
    public amount: u64 = 0,
    public reward: u64 = 0,
    public lastUpdate: u64 = 0,
  ) {
    
  }
    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packNumber<u64>(this.start);
        enc.packNumber<u64>(this.amount);
        enc.packNumber<u64>(this.reward);
        enc.packNumber<u64>(this.lastUpdate);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        this.start = dec.unpackNumber<u64>();
        this.amount = dec.unpackNumber<u64>();
        this.reward = dec.unpackNumber<u64>();
        this.lastUpdate = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

export function sendArchiveStake(contract: Name, account: Name, stake: StakesTable): void {
  const archiveStakeActionData = new ArchiveStakeActionData(
    account,
    stake.start,
    stake.amount,
    stake.reward,
    stake.lastUpdate
  );
  const archiveStakeInline = new InlineAction<ArchiveStakeActionData>("stake.arch");
  const ArchiveStakeAction = archiveStakeInline.act(
    Name.fromU64(0xC4DD5C7B00000000),
    new PermissionLevel(contract,Name.fromU64(0x3232EDA800000000))
  );
  ArchiveStakeAction.send(archiveStakeActionData);
}