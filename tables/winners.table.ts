import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table('winners')
export class WinnersTable extends Table {

    constructor (
        public winner: Name = new Name(),
        public userName: string = "", 
        public totalVotes: u64 = 0,
        public electionName: string = "",
        public rank: u8 = 0,
        public isFoundingMember: boolean = false,
        public status: string = "active" // "active", "expired"
    ) {
        super()
    }

    @primary
    get by_winner_and_election(): u64 {
        return this.winner.N + stringToU64(this.electionName);
    }

    set by_winner_and_election(value: u64) {
        
    }
} 