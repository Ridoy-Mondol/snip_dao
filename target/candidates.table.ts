import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class CandidatesTableDB extends _chain.MultiIndex<CandidatesTable> {

}

@table('candidates', nocodegen)

export class CandidatesTable implements _chain.MultiIndexValue {
    

    constructor(
        public account: Name = new Name(),
        public electionName: string = "",
        public totalVotes: u64 = 0,
        public description: string = "",
        public status: string = "active", // Status: active, withdrawn
        public registrationTime: u64 = 0,
    ) {
        
    }

    @primary
    get by_account_and_election(): u64 {
        return this.account.N + Name.fromString(this.electionName).N;
    }

    set by_account_and_election(value: u64) {
        this.account = Name.fromU64(value);
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packString(this.electionName);
        enc.packNumber<u64>(this.totalVotes);
        enc.packString(this.description);
        enc.packString(this.status);
        enc.packNumber<u64>(this.registrationTime);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        this.electionName = dec.unpackString();
        this.totalVotes = dec.unpackNumber<u64>();
        this.description = dec.unpackString();
        this.status = dec.unpackString();
        this.registrationTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.description);
        size += _chain.Utils.calcPackedStringLength(this.status);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x41A69724D9560000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return CandidatesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return CandidatesTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_account_and_election
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): CandidatesTableDB {
        return new CandidatesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}