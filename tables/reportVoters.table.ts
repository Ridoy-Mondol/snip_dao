import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table('reportvoters')
export class ReportVotersTable extends Table {
  constructor(
    public postId: string = '',
    public voter: Name = new Name(),
    public decision: string = '', // 'delete' or 'restore'
    public votedAt: u64 = 0
  ) {
    super();
  }

  @primary
  get by_postId_and_voter(): u64 {
    return stringToU64(this.postId) + this.voter.N;
  }

  set by_postId_and_voter(value: u64) {}
}
