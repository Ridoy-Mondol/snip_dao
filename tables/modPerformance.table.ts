import { Name, Table } from "proton-tsc";

@table('modperf')
export class ModeratorPerformanceTable extends Table {
  constructor(
    public moderator: Name = new Name(),
    public year: u16 = 0,
    public month: u8 = 0,
    public reportCount: u64 = 0,
    public proposalCount: u64 = 0,
    public votesCast: u64 = 0,
    public performanceScore: u64 = 0
  ) {
    super();
  }

  @primary
  get by_mod_month(): u64 {
    return (u64(this.moderator.N) << 32) | (u64(this.year) << 8) | u64(this.month);
  }

  set by_mod_month(value: u64) {}
}
