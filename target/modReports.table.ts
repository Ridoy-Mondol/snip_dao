import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';



export class ModReportsTableDB extends _chain.MultiIndex<ModReportsTable> {

}

@table('modreports', nocodegen)

export class ModReportsTable implements _chain.MultiIndexValue {
    

    constructor (
        public postId: string = '',
        public moderators: Name[] = [],
        public reportCount: u64 = 0,
        public status: string = "pending", // "pending", "hidden", "deleted" etc.
        public reasons: string[] = [],
        public categories: string[] = [],  // e.g., "spam", "abuse", "violence", etc.
        public timestamp: u64 = 0
    ) {
        
    }

    @primary
    get by_postId(): u64 {
        return stringToU64(this.postId);
    }

    set by_postId(value: u64) {
        
    }
    

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.postId);
        enc.packObjectArray(this.moderators);
        enc.packNumber<u64>(this.reportCount);
        enc.packString(this.status);
        enc.packStringArray(this.reasons)
        enc.packStringArray(this.categories)
        enc.packNumber<u64>(this.timestamp);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.postId = dec.unpackString();
        
    {
        let length = <i32>dec.unpackLength();
        this.moderators = new Array<Name>(length)
        for (let i=0; i<length; i++) {
            let obj = new Name();
            this.moderators[i] = obj;
            dec.unpack(obj);
        }
    }

        this.reportCount = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        this.reasons = dec.unpackStringArray();
        this.categories = dec.unpackStringArray();
        this.timestamp = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.postId);
        size += _chain.calcPackedVarUint32Length(this.moderators.length);
        for (let i=0; i<this.moderators.length; i++) {
            size += this.moderators[i].getSize();
        }

        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        size += _chain.calcPackedVarUint32Length(this.reasons.length);
        for (let i=0; i<this.reasons.length; i++) {
            size += _chain.Utils.calcPackedStringLength(this.reasons[i]);
        }

        size += _chain.calcPackedVarUint32Length(this.categories.length);
        for (let i=0; i<this.categories.length; i++) {
            size += _chain.Utils.calcPackedStringLength(this.categories[i]);
        }

        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x9513755697CE0000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModReportsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModReportsTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_postId
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModReportsTableDB {
        return new ModReportsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
