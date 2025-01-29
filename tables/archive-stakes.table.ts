import { Table } from "proton-tsc";

@table("archstk")
export class ArchiveStakesTable extends Table {
  constructor(
    public start: u64 = 0,
    public amount: u64 = 0,
    public reward: u64 = 0,
    public lastUpdate: u64 = 0,
    

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
}