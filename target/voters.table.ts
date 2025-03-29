import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class VotersTableDB extends _chain.MultiIndex<VotersTable> {

}

@table('voters', nocodegen)

export class VotersTable implements _chain.MultiIndexValue {
    

    constructor(
        public account: Name = new Name(),
        public electionName: string = "",
        public votedCandidate: Name = new Name(),
        public voteTime: u64 = 0,
    ) {
        
    }

    @primary
    get by_account_and_election(): u64 {
        return this.account.N + Name.fromString(this.electionName).N
    }

    set by_account_and_election(value: u64) {
        this.account = Name.fromU64(value)
    }


    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packString(this.electionName);
        enc.pack(this.votedCandidate);
        enc.packNumber<u64>(this.voteTime);
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
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.votedCandidate = obj;
        }
        this.voteTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += this.votedCandidate.getSize();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xDD32ABE000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return VotersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return VotersTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): VotersTableDB {
        return new VotersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}