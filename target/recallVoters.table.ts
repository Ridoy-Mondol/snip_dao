import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';



export class RecallVotersTableDB extends _chain.MultiIndex<RecallVotersTable> {

}

@table("recallvoters", nocodegen)

export class RecallVotersTable implements _chain.MultiIndexValue {
    

    constructor (
        public voter: Name = new Name(),
        public userName: string = "",
        public councilMember: Name = new Name(),
        public electionName: string = "",
        public votedToReplace: boolean = true,
        public voteTime: u64 = 0,
    ) {
        
    }

    @primary
    get by_voter_and_election(): u64 {
        return this.voter.N + stringToU64(this.electionName);
    }

    set by_voter_and_election(value: u64) {
        
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.voter);
        enc.packString(this.userName);
        enc.pack(this.councilMember);
        enc.packString(this.electionName);
        enc.packNumber<boolean>(this.votedToReplace);
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
        this.userName = dec.unpackString();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.councilMember = obj;
        }
        this.electionName = dec.unpackString();
        this.votedToReplace = dec.unpackNumber<boolean>();
        this.voteTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.voter.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userName);
        size += this.councilMember.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<boolean>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xBA9068C774CAAF80);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return RecallVotersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return RecallVotersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_voter_and_election
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): RecallVotersTableDB {
        return new RecallVotersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}