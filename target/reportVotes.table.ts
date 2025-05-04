import * as _chain from "as-chain";
import { Table } from "proton-tsc";
import { stringToU64 } from '../utils';



export class ReportVotesTableDB extends _chain.MultiIndex<ReportVotesTable> {

}

@table('reportvotes', nocodegen)

export class ReportVotesTable implements _chain.MultiIndexValue {
    
  constructor(
    public postId: string = '',
    public deletionVotes: u64 = 0,
    public restorationVotes: u64 = 0,
    public status: string = 'voting', // 'voting', 'restored', 'deleted'
    public createdAt: u64 = 0,
  ) {
    
  }

  @primary
  get by_postId(): u64 {
    return stringToU64(this.postId);
  }

  set by_postId(value: u64) {}

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.postId);
        enc.packNumber<u64>(this.deletionVotes);
        enc.packNumber<u64>(this.restorationVotes);
        enc.packString(this.status);
        enc.packNumber<u64>(this.createdAt);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.postId = dec.unpackString();
        this.deletionVotes = dec.unpackNumber<u64>();
        this.restorationVotes = dec.unpackNumber<u64>();
        this.status = dec.unpackString();
        this.createdAt = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.postId);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xBAAB4BE774CAB000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ReportVotesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ReportVotesTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_postId
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ReportVotesTableDB {
        return new ReportVotesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
