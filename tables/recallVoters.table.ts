import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table("recallvoters")
export class RecallVotersTable extends Table {

    constructor (
        public voter: Name = new Name(),
        public userName: string = "",
        public councilMember: Name = new Name(),
        public electionName: string = "",
        public votedToReplace: boolean = true,
        public voteTime: u64 = 0,
    ) {
        super();
    }

    @primary
    get by_voter_and_election(): u64 {
        return this.voter.N + stringToU64(this.electionName);
    }

    set by_voter_and_election(value: u64) {
        
    }
}