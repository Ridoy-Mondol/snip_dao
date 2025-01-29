import * as _chain from "as-chain";
import {EMPTY_NAME, Symbol, Table} from "proton-tsc";
import {Asset} from "proton-tsc/chain";
import {StakingConfig} from "../structs";



export class ConfigTableDB extends _chain.MultiIndex<ConfigTable> {

}

@table("config", nocodegen)

export class ConfigTable implements _chain.MultiIndexValue {
    
  constructor(
    public key: u64 = 0,
    public config: StakingConfig = new StakingConfig(
      [],
      [],
      EMPTY_NAME,
      EMPTY_NAME,
      new Asset(0, new Symbol("SNIPS", 4)),
      0,
      true,
      0,
      0,
      new Symbol("SNIPS", 4)
    )
  ) {
    
  }

  @primary
  get by_key(): u64 {
    return this.key;
  }

  set by_key(value: u64) {
    this.key = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.key);
        enc.pack(this.config);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.key = dec.unpackNumber<u64>();
        
        {
            let obj = new StakingConfig();
            dec.unpack(obj);
            this.config = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.config.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4526B73000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ConfigTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ConfigTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_key
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ConfigTableDB {
        return new ConfigTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
