import {TimePointSec} from "@greymass/eosio";
import {nameToBigInt} from "@proton/vert";
import {snipstk_actionParams, Tables} from "../../interfaces/snipstk.contract";
import {blockchain, snipstk} from "../../utils";

export async function setApy(
  apyValue: number,
  startTime: number
): Promise<Tables<"APYTable">> {
  const timePoint = TimePointSec.fromMilliseconds(startTime);
  await blockchain.setTime(timePoint);
  const addApyActionData = snipstk_actionParams<"apy.add">({apy: apyValue});
  await snipstk.actions["apy.add"](addApyActionData).send(
    `${snipstk.name.toString()}@active`
  );
  const row = await snipstk.tables
    .apy(nameToBigInt(snipstk.name))
    .getTableRow(BigInt(startTime));
  return row;
}
