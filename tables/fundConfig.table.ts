import { Table, Name } from "proton-tsc";

@table("fundconfig")
export class FundConfigTable extends Table {
  constructor(
    public id: u8 = 0,
    public communityWallet: Name = new Name(),
    public tokenContract: Name = new Name(),
    public maxSharePercent: u8 = 5,
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
