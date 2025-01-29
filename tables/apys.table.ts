import { Table } from "proton-tsc";

@table("apy")
export class APYTable extends Table {
  constructor(
    public start: u64 = 0,
    public end: u64 = 0,
    public percent:f32 = 0
  ) {
    super();
  }
  
  @primary
  get by_start(): u64 {
    return this.start;
  }
  
  set by_start(value:u64){
    this.start = value;
  }
  @secondary
  get by_end(): u64 {
    return this.end;
  }
  
  set by_end(value:u64){
    this.end = value;
  }
}