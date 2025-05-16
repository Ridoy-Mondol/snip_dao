import * as _chain from "as-chain";
import { Table, Name } from "proton-tsc";



export class FundConfigTableDB extends _chain.MultiIndex<FundConfigTable> {

}

@table("fundconfig", nocodegen)

export class FundConfigTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u8 = 0,
    public communityWallet: Name = new Name(),
    public tokenContract: Name = new Name(),
    public maxSharePercent: u8 = 5,
  ) {
    
  }

  @primary
  get by_id(): u8 {
    return this.id;
  }

  set by_id(value: u8) {
    this.id = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u8>(this.id);
        enc.pack(this.communityWallet);
        enc.pack(this.tokenContract);
        enc.packNumber<u8>(this.maxSharePercent);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u8>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.communityWallet = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.tokenContract = obj;
        }
        this.maxSharePercent = dec.unpackNumber<u8>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u8>();
        size += this.communityWallet.getSize();
        size += this.tokenContract.getSize();
        size += sizeof<u8>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x5EA694526B730000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return FundConfigTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return FundConfigTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_id
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): FundConfigTableDB {
        return new FundConfigTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
