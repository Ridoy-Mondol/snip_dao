import { Name, Table } from "proton-tsc";

@table('propvoters')
export class PropVotersTable extends Table {

    constructor(
        public voter: Name = new Name(),
        public proposalId: u64 = 0,
        public vote: string = "", // "yes" or "no"
    ) {
        super()
    }

    @primary
    get by_voter_and_proposalId(): u64 {
        return this.voter.N + this.proposalId;
    }

    set by_voter_and_proposalId(value: u64) {
        this.voter = Name.fromU64(value)
    }

}