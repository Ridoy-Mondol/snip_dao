import { ActionData, currentTimeMs, InlineAction, Name, PermissionLevel } from "proton-tsc";
import { StakesTable } from "../tables";

@packer
export class PayRewardActionData extends ActionData {
  constructor(
    public account: Name,
    public amount: u64 = 0
  ) {
    super()
  }
}

export function sendPayReward(contract: Name,executer:Name, account: Name, amount:u64): void {
  const payRewardActionData = new PayRewardActionData(
    account,
    amount,
  );
  const payRewardInline = new InlineAction<PayRewardActionData>("reward.pay");
  const payRewardAction = payRewardInline.act(
    contract,
    new PermissionLevel(contract,Name.fromString('stake'))
  );
  payRewardAction.send(payRewardActionData);
}