import { Name, Table } from "proton-tsc";

@table('proposals')
export class ProposalsTable extends Table {

    constructor (
        public id: u64 = 0,
        public proposer: Name = new Name(),
        public userName: string = "",  // this is snipverse account userName
        public title: string = "",
        public description: string = "",
        public category: string = "", // "growth", "funding", "ops"
        public yesCount: u64 = 0,
        public noCount: u64 = 0,
        public deadline: u64 = 0,
        public status: string = "open", // "open", "passed", "failed", "closed"
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