import { Name, Table } from "proton-tsc";

@table("mrecallv")
export class ModRecallVotersTable extends Table {

    constructor (
        public voter: Name = new Name(),
        public moderator: Name = new Name(),
        public recallId: u64 = 0,
        public vote: string = "", // yes, no
        public voteTime: u64 = 0,
    ) {
        super();
    }

    @primary
    get by_voter_and_id(): u64 {
        return this.voter.N + this.recallId;
    }

    set by_voter_and_moderator(value: u64) {
        this.voter = Name.fromU64(value);
    }
}