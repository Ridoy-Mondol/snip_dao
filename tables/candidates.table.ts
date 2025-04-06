import { Name, Table } from "proton-tsc";

@table('candidates')
export class CandidatesTable extends Table {

    constructor(
        public account: Name = new Name(),
        public userId: string = "",
        public electionName: string = "",
        public totalVotes: u64 = 0,
        public description: string = "",
        public status: string = "active", // Status: active, withdrawn
        public registrationTime: u64 = 0,
    ) {
        super()
    }

    @primary
    get by_account_and_election(): u64 {
        return this.account.N + Name.fromString(this.electionName).N;
    }

    set by_account_and_election(value: u64) {
        this.account = Name.fromU64(value);
    }
}