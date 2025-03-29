import { Struct } from "@greymass/eosio";
import { Name, TimePointSec } from "proton-tsc";

export class CandidatesStruct extends Struct{
    constructor (
       public account: Name = new Name(),
       public totalVotes: u64 = 0,
       public description: string = "",
       public status: string = "active",
       public registrationTime: TimePointSec = new TimePointSec()
    ) {
        super({});
    }
}