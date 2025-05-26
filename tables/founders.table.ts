import { Name, Table, currentTimeSec } from "proton-tsc";

@table("founders")
export class FoundersTable extends Table {
  constructor(
    public account: Name = new Name(),
    public userName: string = "",
    public addedAt: u64 = currentTimeSec()
  ) {
    super();
  }

  @primary
  get by_account(): u64 {
    return this.account.N;
  }

  set by_account(value: u64) {
    this.account = Name.fromU64(value);
  }
}
