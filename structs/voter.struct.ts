import { Struct } from "@greymass/eosio";
import { Name, TimePointSec } from "proton-tsc";

export class VoterStruct extends Struct {
  constructor(
    public account: Name = new Name(),
    public candidate: Name = new Name(),
    public voteTime: TimePointSec = new TimePointSec()
  ) {
    super({});
  }
}
