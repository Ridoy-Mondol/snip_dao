import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";



export class ElectionsTableDB extends _chain.MultiIndex<ElectionsTable> {

}

@table('elections', nocodegen)

export class ElectionsTable implements _chain.MultiIndexValue {
    

    constructor (
        public electionName: string = "",
        public startTime: u64 = 0,
        public endTime: u64 = 0,
        public registrationStartTime: u64 = 0,
        public registrationEndTime: u64 = 0,
        public candidateStakeAmount: u64 = 0,
        public voterStakeAmount: u64 = 0,
        public status: string = "upcoming", // Status: upcoming, ongoing, completed
    ) {
        
    }

    @primary
    get by_electionName(): u64 {
        return Name.fromString(this.electionName).N;
    }

    set by_electionName(value: u64) {
        this.electionName = Name.fromU64(value).toString();
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.electionName);
        enc.packNumber<u64>(this.startTime);
        enc.packNumber<u64>(this.endTime);
        enc.packNumber<u64>(this.registrationStartTime);
        enc.packNumber<u64>(this.registrationEndTime);
        enc.packNumber<u64>(this.candidateStakeAmount);
        enc.packNumber<u64>(this.voterStakeAmount);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.electionName = dec.unpackString();
        this.startTime = dec.unpackNumber<u64>();
        this.endTime = dec.unpackNumber<u64>();
        this.registrationStartTime = dec.unpackNumber<u64>();
        this.registrationEndTime = dec.unpackNumber<u64>();
        this.candidateStakeAmount = dec.unpackNumber<u64>();
        this.voterStakeAmount = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x54548CBA93C00000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ElectionsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ElectionsTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_electionName
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ElectionsTableDB {
        return new ElectionsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}