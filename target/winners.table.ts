import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class WinnersTableDB extends _chain.MultiIndex<WinnersTable> {

}

@table('winners', nocodegen)

export class WinnersTable implements _chain.MultiIndexValue {
    

    constructor (
        public winner: Name = new Name(),
        public totalVotes: u64 = 0,
        public electionName: string = "",
        public rank: u8 = 0,
        public isFoundingMember: boolean = false
    ) {
        
    }

    @primary
    get by_winner_and_election(): u64 {
        return this.winner.N + Name.fromString(this.electionName).N;
    }

    set by_winner_and_election(value: u64) {
        this.winner = Name.fromU64(value);
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.winner);
        enc.packNumber<u64>(this.totalVotes);
        enc.packString(this.electionName);
        enc.packNumber<u8>(this.rank);
        enc.packNumber<boolean>(this.isFoundingMember);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.winner = obj;
        }
        this.totalVotes = dec.unpackNumber<u64>();
        this.electionName = dec.unpackString();
        this.rank = dec.unpackNumber<u8>();
        this.isFoundingMember = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.winner.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<u8>();
        size += sizeof<boolean>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xE3A7355F00000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return WinnersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return WinnersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_winner_and_election
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): WinnersTableDB {
        return new WinnersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
} 