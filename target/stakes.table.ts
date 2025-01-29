import * as _chain from "as-chain";
import { Table } from "proton-tsc";



export class StakesTableDB extends _chain.MultiIndex<StakesTable> {

}

@table("stakes", nocodegen)

export class StakesTable implements _chain.MultiIndexValue {
    
  constructor(
    public start: u64 = 0,
    public amount: u64 = 0,
    public reward: u64 = 0,
    public lastUpdate: u64 = 0,
    public lockedStart: u64 = 0,
    public lockedTill: u64 = 0,
    public lockingPeriod: u8 = 0, // locked period is multiplied by MONTH_IN_MS against the start to allow or not unstaking
    public multiplier: f32 = 0.0 // TODO maybe removed to stick only to 
    /*
    One month locking period base APY = 4 * multiplier (1) for the locking period
    3 month locking period base APY = 4 * multiplier (1.5) for the locking period
    6 month locking period base APY = 4 * multiplier (2) for the locking period
    9 month locking period base APY = 4 * multiplier (3) for the locking period
    12 month locking period base APY = 4 * multiplier (4) for the locking period - 16%
    */

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
        enc.packNumber<u64>(this.lockedStart);
        enc.packNumber<u64>(this.lockedTill);
        enc.packNumber<u8>(this.lockingPeriod);
        enc.packNumber<f32>(this.multiplier);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.start = dec.unpackNumber<u64>();
        this.amount = dec.unpackNumber<u64>();
        this.reward = dec.unpackNumber<u64>();
        this.lastUpdate = dec.unpackNumber<u64>();
        this.lockedStart = dec.unpackNumber<u64>();
        this.lockedTill = dec.unpackNumber<u64>();
        this.lockingPeriod = dec.unpackNumber<u8>();
        this.multiplier = dec.unpackNumber<f32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u8>();
        size += sizeof<f32>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC64D056000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return StakesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return StakesTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): StakesTableDB {
        return new StakesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}