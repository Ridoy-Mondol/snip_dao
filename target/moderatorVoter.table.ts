import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ModeratorVotersTableDB extends _chain.MultiIndex<ModeratorVotersTable> {

}

@table('modvoters', nocodegen)

export class ModeratorVotersTable implements _chain.MultiIndexValue {
    

    constructor(
        public voter: Name = new Name(),
        public votedCandidate: Name = new Name(),
        public vote: string = "", // 'approve' | 'reject'
        public voteTime: u64 = 0,
    ) {
        
    }

    @primary
    get by_voter_and_candidate(): u64 {
        return (this.voter.N << 32) | (this.votedCandidate.N & 0xFFFFFFFF);
    }

    set by_voter_and_candidate(value: u64) {
        this.voter = Name.fromU64(value >> 32);
        this.votedCandidate = Name.fromU64(value & 0xFFFFFFFF);
    }


    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.voter);
        enc.pack(this.votedCandidate);
        enc.packString(this.vote);
        enc.packNumber<u64>(this.voteTime);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.voter = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.votedCandidate = obj;
        }
        this.vote = dec.unpackString();
        this.voteTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.voter.getSize();
        size += this.votedCandidate.getSize();
        size += _chain.Utils.calcPackedStringLength(this.vote);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x9513BA6557C00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModeratorVotersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModeratorVotersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_voter_and_candidate
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModeratorVotersTableDB {
        return new ModeratorVotersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}