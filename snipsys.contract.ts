import {Contract, Name, TableStore} from "proton-tsc";

import { ArchiveStakesTable } from "./tables";

@contract
export class snipstake extends Contract {
  @action("stake.arch")
  archiveStake(
    account: Name,
    start: u64 = 0,
    amount: u64 = 0,
    reward: u64 = 0,
    lastUpdate: u64 = 0,
    
  ): void {
    const stakeTable = new TableStore<ArchiveStakesTable>(
      this.receiver,
      account
    );
    const archivedStake = new ArchiveStakesTable(
      start,
      amount,
      reward,
      lastUpdate,
    );
    stakeTable.store(archivedStake, this.receiver);
  }
}
