import * as _chain from "as-chain";
import { Name, Table } from "proton-tsc";
import { stringToU64 } from '../utils';



export class ReportVotersTableDB extends _chain.MultiIndex<ReportVotersTable> {

}

@table('reportvoters', nocodegen)

export class ReportVotersTable implements _chain.MultiIndexValue {
    
  constructor(
    public postId: string = '',
    public voter: Name = new Name(),
    public decision: string = '', // 'delete' or 'restore'
    public votedAt: u64 = 0
  ) {
    
  }

  @primary
  get by_postId_and_voter(): u64 {
    return stringToU64(this.postId) + this.voter.N;
  }

  set by_postId_and_voter(value: u64) {}

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.postId);
        enc.pack(this.voter);
        enc.packString(this.decision);
        enc.packNumber<u64>(this.votedAt);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.postId = dec.unpackString();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.voter = obj;
        }
        this.decision = dec.unpackString();
        this.votedAt = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.postId);
        size += this.voter.getSize();
        size += _chain.Utils.calcPackedStringLength(this.decision);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xBAAB4BE774CAAF80);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ReportVotersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ReportVotersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.by_postId_and_voter
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ReportVotersTableDB {
        return new ReportVotersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
