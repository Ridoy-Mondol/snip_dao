import { Name, Table } from "proton-tsc";

@table('winners')
export class WinnersTable extends Table {

    constructor (
        public winner: Name = new Name(),
        public userId: string = "",
        public totalVotes: u64 = 0,
        public electionName: string = "",
        public rank: u8 = 0,
        public isFoundingMember: boolean = false
    ) {
        super()
    }

    @primary
    get by_winner_and_election(): u64 {
        return this.winner.N + Name.fromString(this.electionName).N;
    }

    set by_winner_and_election(value: u64) {
        this.winner = Name.fromU64(value);
    }
} 