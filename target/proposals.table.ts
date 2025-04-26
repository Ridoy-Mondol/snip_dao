import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ProposalsTableDB extends _chain.MultiIndex<ProposalsTable> {

}

@table('proposals', nocodegen)

export class ProposalsTable implements _chain.MultiIndexValue {
    

    constructor (
        public id: u64 = 0,
        public proposer: Name = new Name(),
        public userName: string = "",  // this is snipverse account userName
        public title: string = "",
        public description: string = "",
        public category: string = "", // "growth", "funding", "ops"
        public yesCount: u64 = 0,
        public noCount: u64 = 0,
        public deadline: u64 = 0,
        public status: string = "open", // "open", "passed", "failed", "closed"
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
        enc.packString(this.userName);
        enc.packString(this.title);
        enc.packString(this.description);
        enc.packString(this.category);
        enc.packNumber<u64>(this.yesCount);
        enc.packNumber<u64>(this.noCount);
        enc.packNumber<u64>(this.deadline);
        enc.packString(this.status);
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
        this.userName = dec.unpackString();
        this.title = dec.unpackString();
        this.description = dec.unpackString();
        this.category = dec.unpackString();
        this.yesCount = dec.unpackNumber<u64>();
        this.noCount = dec.unpackNumber<u64>();
        this.deadline = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.proposer.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userName);
        size += _chain.Utils.calcPackedStringLength(this.title);
        size += _chain.Utils.calcPackedStringLength(this.description);
        size += _chain.Utils.calcPackedStringLength(this.category);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xADE95A60D1C00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ProposalsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ProposalsTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ProposalsTableDB {
        return new ProposalsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}