import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ModRecallVotersTableDB extends _chain.MultiIndex<ModRecallVotersTable> {

}

@table("mrecallv", nocodegen)

export class ModRecallVotersTable implements _chain.MultiIndexValue {
    

    constructor (
        public voter: Name = new Name(),
        public moderator: Name = new Name(),
        public recallId: u64 = 0,
        public vote: string = "", // yes, no
        public voteTime: u64 = 0,
    ) {
        
    }

    @primary
    get by_voter_and_id(): u64 {
        return this.voter.N + this.recallId;
    }

    set by_voter_and_moderator(value: u64) {
        this.voter = Name.fromU64(value);
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.voter);
        enc.pack(this.moderator);
        enc.packNumber<u64>(this.recallId);
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
            this.moderator = obj;
        }
        this.recallId = dec.unpackNumber<u64>();
        this.vote = dec.unpackString();
        this.voteTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.voter.getSize();
        size += this.moderator.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.vote);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x95D483463B000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModRecallVotersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModRecallVotersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_voter_and_id
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModRecallVotersTableDB {
        return new ModRecallVotersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}