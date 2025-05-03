import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';

@table('modreports')
export class ModReportsTable extends Table {

    constructor (
        public postId: string = '',
        public moderators: Name[] = [],
        public reportCount: u64 = 0,
        public status: string = "pending", // "pending", "hidden", "deleted" etc.
        public reasons: string[] = [],
        public categories: string[] = [],  // e.g., "spam", "abuse", "violence", etc.
        public timestamp: u64 = 0
    ) {
        super()
    }

    @primary
    get by_postId(): u64 {
        return stringToU64(this.postId);
    }

    set by_postId(value: u64) {
        
    }
    
}
