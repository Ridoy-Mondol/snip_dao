import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class PropVotersTableDB extends _chain.MultiIndex<PropVotersTable> {

}

@table('propvoters', nocodegen)

export class PropVotersTable implements _chain.MultiIndexValue {
    

    constructor(
        public voter: Name = new Name(),
        public proposalId: u64 = 0,
        public vote: string = "", // "yes" or "no"
    ) {
        
    }

    @primary
    get by_voter_and_proposalId(): u64 {
        return this.voter.N + this.proposalId;
    }

    set by_voter_and_proposalId(value: u64) {
        this.voter = Name.fromU64(value)
    }


    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.voter);
        enc.packNumber<u64>(this.proposalId);
        enc.packString(this.vote);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.voter = obj;
        }
        this.proposalId = dec.unpackNumber<u64>();
        this.vote = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.voter.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.vote);
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xADE95DD32ABE0000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PropVotersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PropVotersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_voter_and_proposalId
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PropVotersTableDB {
        return new PropVotersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}