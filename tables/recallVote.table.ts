import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table
export class RecallVotesTable extends Table {
    constructor(
        public councilMember: Name = new Name(),
        public electionName: string = "",
        public keepVotes: u64 = 0,
        public replaceVotes: u64 = 0,
        public startTime: u64 = 0,
        public endTime: u64 = 0,
    ) {
        super();
    }

    @primary
    get by_member_and_election(): u64 {
        return this.councilMember.N + stringToU64(this.electionName);
    }

    set by_member_and_election(value: u64) {
        
    }
}