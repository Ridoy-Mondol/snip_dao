import { Name, Table } from "proton-tsc";

@table('modvoters')
export class ModeratorVotersTable extends Table {

    constructor(
        public voter: Name = new Name(),
        public votedCandidate: Name = new Name(),
        public vote: string = "", // 'approve' | 'reject'
        public voteTime: u64 = 0,
    ) {
        super()
    }

    @primary
    get by_voter_and_candidate(): u64 {
        return this.voter.N + this.votedCandidate.N;
    }

    set by_voter_and_candidate(value: u64) {
        this.voter = Name.fromU64(value)
    }

}