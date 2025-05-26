import { Name, Table } from "proton-tsc";

@table('council')
export class CouncilTable extends Table {

    constructor (
        public account: Name = new Name(),
        public userName: string = "",
        public isFoundingMember: boolean = false,
        public rank: u8 = 0,
        public startedAt: u64 = 0, 
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
