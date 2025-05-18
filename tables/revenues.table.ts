import { Name, Table, currentTimeSec } from "proton-tsc";

@table("revenues")
export class RevenueRecordTable extends Table {
  constructor(
    public id: u64 = 0,
    public submittedBy: Name = new Name(),
    public totalRevenue: u64 = 0,
    public percentToDistribute: u8 = 0,
    public amountPerRecipient: u64 = 0,
    public timestamp: u64 = currentTimeSec(),
    public status: string = "pending", // "pending", "distributed", "failed"
  ) {
    super();
  }

  @primary
  get by_id(): u64 {
    return this.id;
  }

  set by_id(value: u64) {
    this.id = value;
  }
}
