import * as _chain from "as-chain";
import { Table } from "proton-tsc";



export class PropConfigTableDB extends _chain.MultiIndex<PropConfigTable> {

}

@table("propconfig", nocodegen)

export class PropConfigTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u8 = 0,
    public proposalStake: u64 = 10000000,
    public voteStake: u64 = 10000000
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
        enc.packNumber<u64>(this.proposalStake);
        enc.packNumber<u64>(this.voteStake);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u8>();
        this.proposalStake = dec.unpackNumber<u64>();
        this.voteStake = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u8>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xADE954526B730000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PropConfigTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PropConfigTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PropConfigTableDB {
        return new PropConfigTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
