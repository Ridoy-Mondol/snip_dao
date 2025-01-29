import { Table } from "proton-tsc";

@table("stakes")
export class StakesTable extends Table {
  constructor(
    public start: u64 = 0,
    public amount: u64 = 0,
    public reward: u64 = 0,
    public lastUpdate: u64 = 0,
    public lockedStart: u64 = 0,
    public lockedTill: u64 = 0,
    public lockingPeriod: u8 = 0, // locked period is multiplied by MONTH_IN_MS against the start to allow or not unstaking
    public multiplier: f32 = 0.0 // TODO maybe removed to stick only to 
    /*
    One month locking period base APY = 4 * multiplier (1) for the locking period
    3 month locking period base APY = 4 * multiplier (1.5) for the locking period
    6 month locking period base APY = 4 * multiplier (2) for the locking period
    9 month locking period base APY = 4 * multiplier (3) for the locking period
    12 month locking period base APY = 4 * multiplier (4) for the locking period - 16%
    */

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