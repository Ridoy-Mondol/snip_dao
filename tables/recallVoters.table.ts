import { Name, Table } from "proton-tsc";

@table("recallvoters")
export class RecallVotersTable extends Table {

    constructor (
        public voter: Name = new Name(),
        public userId: string = "",
        public councilMember: Name = new Name(),
        public electionName: string = "",
        public votedToReplace: boolean = true,
        public voteTime: u64 = 0,
    ) {
        super();
    }

    @primary
    get by_voter_and_election(): u64 {
        return this.voter.N + Name.fromString(this.electionName).N;
    }

    set by_voter_and_election(value: u64) {
        this.voter = Name.fromU64(value);
    }
}