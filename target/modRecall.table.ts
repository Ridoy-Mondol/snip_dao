import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ModRecallTableDB extends _chain.MultiIndex<ModRecallTable> {
    get by_moderatorDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }

    
    updateBy_moderator(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("modrecall", nocodegen)

export class ModRecallTable implements _chain.MultiIndexValue {
    
    constructor(
        public recallId: u64 = 0,
        public moderator: Name = new Name(),
        public reason: string = "",
        public yesVotes: u64 = 0,
        public noVotes: u64 = 0,
        public status: string = "pending", // pending, failed, removed
    ) {
        
    }

    @primary
    get by_id(): u64 {
        return this.recallId;
    }

    set by_id(value: u64) {
        this.recallId = value;
    }

    @secondary
    get by_moderator(): u64 {
      return this.moderator.N;
    }

    set by_moderator(value: u64) {
      this.moderator = Name.fromU64(value);
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.recallId);
        enc.pack(this.moderator);
        enc.packString(this.reason);
        enc.packNumber<u64>(this.yesVotes);
        enc.packNumber<u64>(this.noVotes);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.recallId = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.moderator = obj;
        }
        this.reason = dec.unpackString();
        this.yesVotes = dec.unpackNumber<u64>();
        this.noVotes = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.moderator.getSize();
        size += _chain.Utils.calcPackedStringLength(this.reason);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x95137520D1880000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModRecallTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModRecallTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_id
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.by_moderator);
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
                return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
        }
    }

    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        switch (i) {
            case 0: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.by_moderator = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModRecallTableDB {
        return new ModRecallTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}