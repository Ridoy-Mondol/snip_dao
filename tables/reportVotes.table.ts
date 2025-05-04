import { Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table('reportvotes')
export class ReportVotesTable extends Table {
  constructor(
    public postId: string = '',
    public deletionVotes: u64 = 0,
    public restorationVotes: u64 = 0,
    public status: string = 'voting', // 'voting', 'restored', 'deleted'
    public createdAt: u64 = 0,
  ) {
    super();
  }

  @primary
  get by_postId(): u64 {
    return stringToU64(this.postId);
  }

  set by_postId(value: u64) {}
}
