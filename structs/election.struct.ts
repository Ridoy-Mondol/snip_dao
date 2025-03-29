import { Struct } from "@greymass/eosio";
import { TimePointSec } from "proton-tsc";

export class ElectionStruct extends Struct {
    constructor (
        public electionName: string = "",
        public startTime: TimePointSec = new TimePointSec(),
        public endTime: TimePointSec = new TimePointSec(),
        public registrationStartTime: TimePointSec = new TimePointSec(),
        public registrationEndTime: TimePointSec = new TimePointSec(),
        public status: string = "upcoming"
    ) {
        super({})
    }
}