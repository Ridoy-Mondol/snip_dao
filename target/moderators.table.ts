import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ModeratorsTableDB extends _chain.MultiIndex<ModeratorsTable> {

}

@table('moderators', nocodegen)

export class ModeratorsTable implements _chain.MultiIndexValue {
    

    constructor (
        public account: Name = new Name(),
        public userName: string = "",
        public approvedAt: u64 = 0, 
    ) {
        
    }

    @primary
    get by_account(): u64 {
        return this.account.N;
    }

    set by_account(value: u64) {
        this.account = Name.fromU64(value);
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packString(this.userName);
        enc.packNumber<u64>(this.approvedAt);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        this.userName = dec.unpackString();
        this.approvedAt = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userName);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x9512AB9B34BE0000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModeratorsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModeratorsTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_account
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModeratorsTableDB {
        return new ModeratorsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
} 