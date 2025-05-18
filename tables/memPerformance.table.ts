import { Name, Table } from "proton-tsc";

@table('memberperf')
export class MemberPerformanceTable extends Table {
  constructor(
    public member: Name = new Name(),
    public year: u16 = 0,
    public month: u8 = 0,
    public proposalCount: u64 = 0,
    public tokenAllocProposalCount: u64 = 0,
    public votesCast: u64 = 0, 
    public revenueShare: u64 = 0,
    public performanceScore: u64 = 0 
  ) {
    super();
  }

  @primary
  get by_member_month(): u64 {
    return (u64(this.member.N) << 32) | (u64(this.year) << 8) | u64(this.month);
  }

  set by_member_month(value: u64) {
    
  }
}
