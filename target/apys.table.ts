import * as _chain from "as-chain";
import { Table } from "proton-tsc";



export class APYTableDB extends _chain.MultiIndex<APYTable> {
    get by_endDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }

    
    updateBy_end(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("apy", nocodegen)

export class APYTable implements _chain.MultiIndexValue {
    
  constructor(
    public start: u64 = 0,
    public end: u64 = 0,
    public percent:f32 = 0
  ) {
    
  }
  
  @primary
  get by_start(): u64 {
    return this.start;
  }
  
  set by_start(value:u64){
    this.start = value;
  }
  @secondary
  get by_end(): u64 {
    return this.end;
  }
  
  set by_end(value:u64){
    this.end = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.start);
        enc.packNumber<u64>(this.end);
        enc.packNumber<f32>(this.percent);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.start = dec.unpackNumber<u64>();
        this.end = dec.unpackNumber<u64>();
        this.percent = dec.unpackNumber<f32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<f32>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x357C000000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return APYTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return APYTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_start
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.by_end);
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
                this.by_end = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): APYTableDB {
        return new APYTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}