import * as _chain from "as-chain";
import { Asset, EMPTY_NAME, Name, Symbol, Table } from "proton-tsc";



export class AccountsTableDB extends _chain.MultiIndex<AccountsTable> {

}

@table('accounts', nocodegen)

export class AccountsTable implements _chain.MultiIndexValue {
    

  constructor(
    public account: Name = EMPTY_NAME,
    public lockedStake: u64 = 0,
    public totalStaked: u64 = 0,
    public level: u8 = 0,
    public lastRestake:u64 = 0
  ) {
    
  }

  @primary
  get by_account(): u64 {
    return this.account.N
  }
  
  set by_account(value:u64) {
    this.account = Name.fromU64(value)
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account);
        enc.packNumber<u64>(this.lockedStake);
        enc.packNumber<u64>(this.totalStaked);
        enc.packNumber<u8>(this.level);
        enc.packNumber<u64>(this.lastRestake);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.account = obj;
        }
        this.lockedStake = dec.unpackNumber<u64>();
        this.totalStaked = dec.unpackNumber<u64>();
        this.level = dec.unpackNumber<u8>();
        this.lastRestake = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account.getSize();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u8>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x32114D4F38000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return AccountsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return AccountsTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): AccountsTableDB {
        return new AccountsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}