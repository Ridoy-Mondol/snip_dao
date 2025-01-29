import { Asset, EMPTY_NAME, Name, Symbol, Table } from "proton-tsc";

@table('accounts')
export class AccountsTable extends Table {

  constructor(
    public account: Name = EMPTY_NAME,
    public lockedStake: u64 = 0,
    public totalStaked: u64 = 0,
    public level: u8 = 0,
    public lastRestake:u64 = 0
  ) {
    super()
  }

  @primary
  get by_account(): u64 {
    return this.account.N
  }
  
  set by_account(value:u64) {
    this.account = Name.fromU64(value)
  }
}