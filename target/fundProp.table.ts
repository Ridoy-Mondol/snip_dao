import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class FundProposalTableDB extends _chain.MultiIndex<FundProposalTable> {

}

@table('fundprops', nocodegen)

export class FundProposalTable implements _chain.MultiIndexValue {
    

    constructor(
        public id: u64 = 0,
        public proposer: Name = new Name(),
        public recipient: Name = new Name(), // account to receive funds
        public amount: u64 = 0,              // amount of tokens to transfer
        public memo: string = "",
        public category: string = "",        // "rewards", "dev", "marketing", "ops"
        public approvedBy: u8 = 0,
        public rejectedBy: u8 = 0,
        public status: string = "open",      // "open", "approved", "rejected", "paused"
        public createdAt: u64 = 0,
        public approvedAt: u64 = 0,
    ) {
        
    }

    @primary
    get by_id(): u64 {
        return this.id;
    }

    set by_id(value: u64) {
        this.id = value;
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.proposer);
        enc.pack(this.recipient);
        enc.packNumber<u64>(this.amount);
        enc.packString(this.memo);
        enc.packString(this.category);
        enc.packNumber<u8>(this.approvedBy);
        enc.packNumber<u8>(this.rejectedBy);
        enc.packString(this.status);
        enc.packNumber<u64>(this.createdAt);
        enc.packNumber<u64>(this.approvedAt);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.proposer = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.recipient = obj;
        }
        this.amount = dec.unpackNumber<u64>();
        this.memo = dec.unpackString();
        this.category = dec.unpackString();
        this.approvedBy = dec.unpackNumber<u8>();
        this.rejectedBy = dec.unpackNumber<u8>();
        this.status = dec.unpackString();
        this.createdAt = dec.unpackNumber<u64>();
        this.approvedAt = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.proposer.getSize();
        size += this.recipient.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        size += _chain.Utils.calcPackedStringLength(this.category);
        size += sizeof<u8>();
        size += sizeof<u8>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x5EA69ADE95C00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return FundProposalTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return FundProposalTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_id
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): FundProposalTableDB {
        return new FundProposalTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
