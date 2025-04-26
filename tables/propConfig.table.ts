import { Table } from "proton-tsc";

@table("propconfig")
export class PropConfigTable extends Table {
  constructor(
    public id: u8 = 0,
    public proposalStake: u64 = 10000000,
    public voteStake: u64 = 10000000
  ) {
    super();
  }

  @primary
  get by_id(): u8 {
    return this.id;
  }

  set by_id(value: u8) {
    this.id = value;
  }
}
