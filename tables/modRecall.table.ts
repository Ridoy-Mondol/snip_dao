import { Name, Table } from "proton-tsc";

@table("modrecall")
export class ModRecallTable extends Table {
    constructor(
        public recallId: u64 = 0,
        public moderator: Name = new Name(),
        public userId: string = "",
        public reason: string = "",
        public yesVotes: u64 = 0,
        public noVotes: u64 = 0,
        public status: string = "pending", // pending, failed, removed
    ) {
        super();
    }

    @primary
    get by_id(): u64 {
        return this.recallId;
    }

    set by_id(value: u64) {
        this.recallId = value;
    }

    @secondary
    get by_moderator(): u64 {
      return this.moderator.N;
    }

    set by_moderator(value: u64) {
      this.moderator = Name.fromU64(value);
    }
}