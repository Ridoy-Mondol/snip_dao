import * as _chain from "as-chain";
import { Name, Table, currentTimeSec } from "proton-tsc";



export class RevenueRecordTableDB extends _chain.MultiIndex<RevenueRecordTable> {

}

@table("revenues", nocodegen)

export class RevenueRecordTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public submittedBy: Name = new Name(),
    public totalRevenue: u64 = 0,
    public percentToDistribute: u8 = 0,
    public amountPerRecipient: u64 = 0,
    public timestamp: u64 = currentTimeSec(),
    public status: string = "pending", // "pending", "distributed", "failed"
  ) {
    
  }

  @primary
  get by_id(): u64 {
    return this.id;
  }

  set by_id(value: u64) {
    this.id = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.submittedBy);
        enc.packNumber<u64>(this.totalRevenue);
        enc.packNumber<u8>(this.percentToDistribute);
        enc.packNumber<u64>(this.amountPerRecipient);
        enc.packNumber<u64>(this.timestamp);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.submittedBy = obj;
        }
        this.totalRevenue = dec.unpackNumber<u64>();
        this.percentToDistribute = dec.unpackNumber<u8>();
        this.amountPerRecipient = dec.unpackNumber<u64>();
        this.timestamp = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.submittedBy.getSize();
        size += sizeof<u64>();
        size += sizeof<u8>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xBAB6A9E958000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return RevenueRecordTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return RevenueRecordTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): RevenueRecordTableDB {
        return new RevenueRecordTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
