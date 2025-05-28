import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

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
        return stringToU64(`[[${this.voter.toString()}]]--::--{{${this.votedCandidate.toString()}}}`);   
        // I did this because here voter and candidate pair should be unique and no hash collision. some issues arises previously so I did this
    }

    set by_voter_and_candidate(value: u64) {

    }

}