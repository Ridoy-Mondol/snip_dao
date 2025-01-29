import { ActionData, currentTimeMs, InlineAction, Name, PermissionLevel } from "proton-tsc";
import { StakesTable } from "../tables";

@packer
export class ArchiveStakeActionData extends ActionData {
  constructor(
    public account: Name,
    public start: u64 = 0,
    public amount: u64 = 0,
    public reward: u64 = 0,
    public lastUpdate: u64 = 0,
  ) {
    super()
  }
}

export function sendArchiveStake(contract: Name, account: Name, stake: StakesTable): void {
  const archiveStakeActionData = new ArchiveStakeActionData(
    account,
    stake.start,
    stake.amount,
    stake.reward,
    stake.lastUpdate
  );
  const archiveStakeInline = new InlineAction<ArchiveStakeActionData>("stake.arch");
  const ArchiveStakeAction = archiveStakeInline.act(
    Name.fromString("snipsys"),
    new PermissionLevel(contract,Name.fromString('active'))
  );
  ArchiveStakeAction.send(archiveStakeActionData);
}