import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';



export class RecallVotesTableDB extends _chain.MultiIndex<RecallVotesTable> {

}

@table("recallvotes", nocodegen)

export class RecallVotesTable implements _chain.MultiIndexValue {
    
    constructor(
        public councilMember: Name = new Name(),
        public electionName: string = "",
        public reason: string = "",
        public keepVotes: u64 = 0,
        public replaceVotes: u64 = 0,
        public startTime: u64 = 0,
        public endTime: u64 = 0,
        public status: string = "upcoming", // Status: upcoming, ongoing, ended
    ) {
        
    }

    @primary
    get by_member_and_election(): u64 {
        return this.councilMember.N + stringToU64(this.electionName);
    }

    set by_member_and_election(value: u64) {
        
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.councilMember);
        enc.packString(this.electionName);
        enc.packString(this.reason);
        enc.packNumber<u64>(this.keepVotes);
        enc.packNumber<u64>(this.replaceVotes);
        enc.packNumber<u64>(this.startTime);
        enc.packNumber<u64>(this.endTime);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.councilMember = obj;
        }
        this.electionName = dec.unpackString();
        this.reason = dec.unpackString();
        this.keepVotes = dec.unpackNumber<u64>();
        this.replaceVotes = dec.unpackNumber<u64>();
        this.startTime = dec.unpackNumber<u64>();
        this.endTime = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.councilMember.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += _chain.Utils.calcPackedStringLength(this.reason);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xBA9068C774CAB000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return RecallVotesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return RecallVotesTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_member_and_election
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): RecallVotesTableDB {
        return new RecallVotesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}