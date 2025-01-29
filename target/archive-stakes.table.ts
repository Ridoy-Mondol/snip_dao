import * as _chain from "as-chain";
import { Table } from "proton-tsc";



export class ArchiveStakesTableDB extends _chain.MultiIndex<ArchiveStakesTable> {

}

@table("archstk", nocodegen)

export class ArchiveStakesTable implements _chain.MultiIndexValue {
    
  constructor(
    public start: u64 = 0,
    public amount: u64 = 0,
    public reward: u64 = 0,
    public lastUpdate: u64 = 0,
    

  ) {
    
  }
  
  @primary
  get by_start(): u64 {
    return this.start;
  }
  
  set by_start(value:u64){
    this.start = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.start);
        enc.packNumber<u64>(this.amount);
        enc.packNumber<u64>(this.reward);
        enc.packNumber<u64>(this.lastUpdate);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.start = dec.unpackNumber<u64>();
        this.amount = dec.unpackNumber<u64>();
        this.reward = dec.unpackNumber<u64>();
        this.lastUpdate = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x35D0DC6600000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ArchiveStakesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ArchiveStakesTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_start
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ArchiveStakesTableDB {
        return new ArchiveStakesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}