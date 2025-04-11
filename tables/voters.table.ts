import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table('voters')
export class VotersTable extends Table {

    constructor(
        public account: Name = new Name(),
        public userName: string = "", // this is snipverse account userName
        public electionName: string = "",
        public votedCandidate: Name = new Name(),
        public voteTime: u64 = 0,
    ) {
        super()
    }

    @primary
    get by_account_and_election(): u64 {
        return this.account.N + stringToU64(this.electionName);
    }

    set by_account_and_election(value: u64) {
        
    }

}