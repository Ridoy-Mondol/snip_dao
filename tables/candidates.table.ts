import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table('candidates')
export class CandidatesTable extends Table {

    constructor(
        public account: Name = new Name(),
        public userName: string = "",  // this is snipverse account userName
        public electionName: string = "",
        public totalVotes: u64 = 0,
        public status: string = "active", // Status: active, withdrawn
        public registrationTime: u64 = 0,
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