import { Name, Table } from "proton-tsc";

@table('modcandidate')
export class ModeratorCandTable extends Table {

    constructor(
        public account: Name = new Name(),
        public userName: string = "",  // this is snipverse account userName
        public approvedBy: u64 = 0, // total votes to accept
        public rejectedBy: u64 = 0, // total votes to reject
        public status: string = "pending", // Status: pending, approved, rejected, recalled
        public registrationTime: u64 = 0,
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