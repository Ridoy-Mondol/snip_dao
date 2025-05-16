import { Name, Table } from "proton-tsc";

@table('fundvotes')
export class FundVoteTable extends Table {

    constructor(
        public voter: Name = new Name(),
        public proposalId: u64 = 0,
        public vote: string = "",   //"approve" or "reject"
        public votedAt: u64 = 0 
    ) {
        super()
    }

    @primary
    get by_voter_and_prop(): u64 {
        return this.voter.N + this.proposalId;
    }

    set by_voter_and_prop(value: u64) {
        this.voter = Name.fromU64(value);
    }
}
