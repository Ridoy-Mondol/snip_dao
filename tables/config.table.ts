import {EMPTY_NAME, Symbol, Table} from "proton-tsc";
import {Asset} from "proton-tsc/chain";
import {StakingConfig} from "../structs";

@table("config")
export class ConfigTable extends Table {
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
    super();
  }

  @primary
  get by_key(): u64 {
    return this.key;
  }

  set by_key(value: u64) {
    this.key = value;
  }
}
