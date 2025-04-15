import { Name, Table } from "proton-tsc";

@table('moderators')
export class ModeratorsTable extends Table {

    constructor (
        public account: Name = new Name(),
        public userName: string = "",
        public approvedAt: u64 = 0, 
    ) {
        super()
    }

    @primary
    get by_account(): u64 {
        return this.account.N;
    }

    set by_account(value: u64) {
        this.account = Name.fromU64(value);
    }
} 