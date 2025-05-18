import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ModeratorPerformanceTableDB extends _chain.MultiIndex<ModeratorPerformanceTable> {

}

@table('modperf', nocodegen)

export class ModeratorPerformanceTable implements _chain.MultiIndexValue {
    
  constructor(
    public moderator: Name = new Name(),
    public year: u16 = 0,
    public month: u8 = 0,
    public reportCount: u64 = 0,
    public proposalCount: u64 = 0,
    public votesCast: u64 = 0,
    public performanceScore: u64 = 0
  ) {
    
  }

  @primary
  get by_mod_month(): u64 {
    return (u64(this.moderator.N) << 32) | (u64(this.year) << 8) | u64(this.month);
  }

  set by_mod_month(value: u64) {}

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.moderator);
        enc.packNumber<u16>(this.year);
        enc.packNumber<u8>(this.month);
        enc.packNumber<u64>(this.reportCount);
        enc.packNumber<u64>(this.proposalCount);
        enc.packNumber<u64>(this.votesCast);
        enc.packNumber<u64>(this.performanceScore);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.moderator = obj;
        }
        this.year = dec.unpackNumber<u16>();
        this.month = dec.unpackNumber<u8>();
        this.reportCount = dec.unpackNumber<u64>();
        this.proposalCount = dec.unpackNumber<u64>();
        this.votesCast = dec.unpackNumber<u64>();
        this.performanceScore = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.moderator.getSize();
        size += sizeof<u16>();
        size += sizeof<u8>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x9513555D60000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ModeratorPerformanceTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ModeratorPerformanceTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_mod_month
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ModeratorPerformanceTableDB {
        return new ModeratorPerformanceTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
