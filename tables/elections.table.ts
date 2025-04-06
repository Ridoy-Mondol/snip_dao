import { Name, Table } from "proton-tsc";

@table('elections')
export class ElectionsTable extends Table {

    constructor (
        public electionName: string = "",
        public startTime: u64 = 0,
        public endTime: u64 = 0,
        public registrationStartTime: u64 = 0,
        public registrationEndTime: u64 = 0,
        public candidateStakeAmount: u64 = 0,
        public voterStakeAmount: u64 = 0,
        public status: string = "upcoming", // Status: upcoming, ongoing, completed
        public totalVote: u64 = 0,
        public candidates: Name[] = [],
    ) {
        super()
    }

    @primary
    get by_electionName(): u64 {
        return Name.fromString(this.electionName).N;
    }

    set by_electionName(value: u64) {
        this.electionName = Name.fromU64(value).toString();
    }
}