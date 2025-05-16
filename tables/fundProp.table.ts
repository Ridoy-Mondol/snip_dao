import { Name, Table } from "proton-tsc";

@table('fundprops')
export class FundProposalTable extends Table {

    constructor(
        public id: u64 = 0,
        public proposer: Name = new Name(),
        public recipient: Name = new Name(), // account to receive funds
        public amount: u64 = 0,              // amount of tokens to transfer
        public memo: string = "",
        public category: string = "",        // "rewards", "dev", "marketing", "ops"
        public approvedBy: u8 = 0,
        public rejectedBy: u8 = 0,
        public status: string = "open",      // "open", "approved", "rejected", "paused"
        public createdAt: u64 = 0,
        public approvedAt: u64 = 0,
    ) {
        super()
    }

    @primary
    get by_id(): u64 {
        return this.id;
    }

    set by_id(value: u64) {
        this.id = value;
    }
}
