import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ModeratorCandTableDB extends _chain.MultiIndex<ModeratorCandTable> {

}

@table('modcandidate', nocodegen)

export class ModeratorCandTable implements _chain.MultiIndexValue {
    

    constructor(
        public account: Name = new Name(),
        public userName: string = "",  // this is snipverse account userName
        public approvedBy: u64 = 0, // total votes to accept
        public rejectedBy: u64 = 0, // total votes to reject
        public status: string = "pending", // Status: pending, approved, rejected
        public registrationTime: u64 = 0,
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
        enc.packNumber<u64>(this.approvedBy);
        enc.packNumber<u64>(this.rejectedBy);
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
        this.userName = dec.unpackString();
        this.approvedBy = dec.unpackNumber<u64>();
        this.rejectedBy = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        this.registrationTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userName);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x9512834D2E49B2A0);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModeratorCandTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModeratorCandTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModeratorCandTableDB {
        return new ModeratorCandTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}