import * as _chain from "as-chain";
import { Name, TableStore, requireAuth, check, Contract, currentTimeSec } from "proton-tsc";
import { AccountsTable, ElectionsTable, CandidatesTable, VotersTable, WinnersTable, RecallVotesTable, RecallVotersTable } from "./tables";

@contract
export class snipvoting extends Contract {

  private electionsTable: TableStore<ElectionsTable> = new TableStore<ElectionsTable>(this.receiver, this.receiver);

  private candidatesTable: TableStore<CandidatesTable> = new TableStore<CandidatesTable>(this.receiver, this.receiver);

  private votersTable: TableStore<VotersTable> = new TableStore<VotersTable>(this.receiver, this.receiver);

  private winnersTable: TableStore<WinnersTable> = new TableStore<WinnersTable>(this.receiver, this.receiver);

  private recallVoteTable: TableStore<RecallVotesTable> = new TableStore<RecallVotesTable>(this.receiver, this.receiver);

  private recallVotersTable: TableStore<RecallVotersTable> = new TableStore<RecallVotersTable>(this.receiver, this.receiver);

  private accountTable: TableStore<AccountsTable> = new TableStore<AccountsTable>(Name.fromU64(0xC4DD5C6600000000));
  
  // action to create election by founding members
  @action("createelect")
  createElection(electionName: string, startTime: u64, endTime: u64, registrationStartTime: u64, registrationEndTime: u64, candidateStakeAmount: u64, voterStakeAmount: u64): void {

    //  let allowedUser1 = Name.fromU64(0x3264E98400000000);
    //  let allowedUser2 = Name.fromU64(0x3264E98800000000);

    //  requireAuth(this.receiver);

     let existingElection = this.electionsTable.get(Name.fromString(electionName).N);

     check(!existingElection, "Election with this name already exists");

     let currentTime = currentTimeSec();

     check(registrationStartTime > currentTime, "Registration start time must be in the future");
     check(registrationEndTime > currentTime, "Registration end time must be in the future");
     check(registrationStartTime < registrationEndTime, "Registration start time must be before registration end time");
     check(startTime < endTime, "Election start time must be before end time");
     check(registrationEndTime < startTime, "Registration must end before election starts");

     let newElection = new ElectionsTable(
       electionName,
       startTime,
       endTime,
       registrationStartTime,
       registrationEndTime,
       candidateStakeAmount,
       voterStakeAmount,
       "upcoming",
     );

     this.electionsTable.store(newElection, this.receiver);
  }

  @action("cleardata")
  clearAllTables(): void {
    requireAuth(this.receiver);

    // Clear Elections Table
    let cursor1 = this.electionsTable.first();
    while (cursor1 !== null) {
        let nextCursor = this.electionsTable.next(cursor1);
        this.electionsTable.remove(cursor1);
        cursor1 = nextCursor;
    }

    // Clear Candidates Table
    let cursor2 = this.candidatesTable.first();
    while (cursor2 !== null) {
        let nextCursor = this.candidatesTable.next(cursor2);
        this.candidatesTable.remove(cursor2);
        cursor2 = nextCursor;
    }

    // Clear Voters Table
    let cursor3 = this.votersTable.first();
    while (cursor3 !== null) {
        let nextCursor = this.votersTable.next(cursor3);
        this.votersTable.remove(cursor3);
        cursor3 = nextCursor;
    }

    // Clear Winners Table
    let cursor4 = this.winnersTable.first();
    while (cursor4 !== null) {
        let nextCursor = this.winnersTable.next(cursor4);
        this.winnersTable.remove(cursor4);
        cursor4 = nextCursor;
    }

    // Clear Recall Votes Table
    let cursor5 = this.recallVoteTable.first();
    while (cursor5 !== null) {
        let nextCursor = this.recallVoteTable.next(cursor5);
        this.recallVoteTable.remove(cursor5);
        cursor5 = nextCursor;
    }

    // Clear Recall Voters Table
    let cursor6 = this.recallVotersTable.first();
    while (cursor6 !== null) {
        let nextCursor = this.recallVotersTable.next(cursor6);
        this.recallVotersTable.remove(cursor6);
        cursor6 = nextCursor;
    }
  }
   
  // action to register candidates for election
   @action("registercand")
   registerCandidate(account: Name, userId: string, electionName: string, description: string): void {
      requireAuth(account);
      
      let election = this.electionsTable.get(Name.fromString(electionName).N);
      check(election !== null, "Election not found");

      let currentTime = currentTimeSec();
      if(election) {
        check(currentTime >= election.registrationStartTime, "Registration is not started yet");
        check(currentTime <= election.registrationEndTime, "Registration period is closed");
      }

      if (election && election.candidateStakeAmount > 0) {
        let userStake = this.accountTable.get(account.N);
        check(userStake !== null, `Minimum ${election.candidateStakeAmount} tokens required to register as a candidate`);
        check(userStake!.totalStaked >= election.candidateStakeAmount, `Minimum ${election.candidateStakeAmount} tokens required to register as a candidate`);
      }
      
      let existingCandidate = this.candidatesTable.get(account.N + Name.fromString(electionName).N);
      
      check(existingCandidate === null, "Candidate is already registered");
      
      let newCandidate = new CandidatesTable(
        account,
        userId,
        electionName,
        0,
        description,
        "active",
        currentTime,
      );

      this.candidatesTable.store(newCandidate, this.receiver);
      
      if (election) {
        election.candidates.push(account);
        this.electionsTable.update(election, this.receiver);
      }

   }
   
   // action to withdraw candidates from election
   @action("withdrawcand")
   withdrawCandidate(account: Name, electionName: string): void {
      requireAuth(account);

      let election = this.electionsTable.get(Name.fromString(electionName).N);
      check(election !== null, "Election not found");

      let candidate = this.candidatesTable.get(account.N + Name.fromString(electionName).N);
      check(candidate !== null, "Candidate is not registered");

      let currentTime = currentTimeSec();
      if(election) {
        check(currentTime < election.startTime, "Cannot withdraw after voting has started");
      }

      if (candidate) {
        this.candidatesTable.remove(candidate);
      }

      if (election) {
        let filteredCandidates: Name[] = [];
        for (let i = 0; i < election.candidates.length; i++) {
          if (election.candidates[i] != account) {
            filteredCandidates.push(election.candidates[i]);
          }
        }
        election.candidates = filteredCandidates;

        this.electionsTable.update(election, this.receiver);
      }
   }
   
  // action to vote in election
   @action("vote")
   vote(voter: Name, userId: string, candidate: Name, electionName: string): void {
      requireAuth(voter);

      let election = this.electionsTable.get(Name.fromString(electionName).N);
      check(election !== null, "Election not found");

      let currentTime = currentTimeSec();
      if (election) {
        check(currentTime >= election.startTime, "Voting period has not started yet");
        check(currentTime <= election.endTime, "Voting period is closed");
      }

      let voterExist = this.votersTable.get(voter.N + Name.fromString(electionName).N);
      check(voterExist === null, "You have already voted in this election");

      if (election && election.voterStakeAmount > 0) {
        let voterStake = this.accountTable.get(voter.N);
        check(voterStake !== null, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
    
        check(voterStake!.totalStaked >= election.voterStakeAmount, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
      }
    

      let candidateData = this.candidatesTable.get(candidate.N + Name.fromString(electionName).N);
      check(candidateData !== null, "Candidate not found");
      
      if (candidateData) {
        candidateData.totalVotes += 1;
        this.candidatesTable.update(candidateData, this.receiver);
      }

      let voterData = new VotersTable(
        voter,
        userId,
        electionName,
        candidate,
        currentTime,
      )

      this.votersTable.store(voterData, this.receiver);
      
      if(election) {
        election.status = "ongoing",
        election.totalVote += 1;
        this.electionsTable.update(election, this.receiver);
      }
   }
   
   // action to declareWinners by founding members
   @action("winner")
   declareWinners(electionName: string): void {
      requireAuth(this.receiver);

      let election = this.electionsTable.get(Name.fromString(electionName).N);
      check(election !== null, "Election not found");

      let currentTime = currentTimeSec();
      if (election) {
        check(currentTime > election.endTime, "Election is still ongoing");
      }

      let allCandidates: CandidatesTable[] = [];

      let cursor = this.candidatesTable.first();
      while (cursor !== null) {
        allCandidates.push(cursor);
        cursor = this.candidatesTable.next(cursor);
      }

      // Now filter based on electionName
      let filteredCandidates: CandidatesTable[] = [];
      for (let i = 0; i < allCandidates.length; i++) {
       let candidate = allCandidates[i];
       if (candidate.electionName == electionName) {
         filteredCandidates.push(candidate);
       }
      }

      check(filteredCandidates.length > 0, "No candidates found.");

      let sortedCandidates = filteredCandidates.sort((a: CandidatesTable, b: CandidatesTable) => b.totalVotes as i32 - a.totalVotes as i32);

      let topCandidates = sortedCandidates.slice(0, 5);

      check(topCandidates.length > 0, "No winners found.");

      let rank: u8 = 1;
      for (let i = 0; i < topCandidates.length; i++) {
        let candidate = topCandidates[i];
        let winnerEntry = new WinnersTable(
          candidate.account,
          candidate.userId,
          candidate.totalVotes,
          electionName,
          rank,
          false
        );
        this.winnersTable.store(winnerEntry, this.receiver);
        rank++;
      }      
      
      let foundingMembers: Name[] = [
        Name.fromU64(0x5D3534AAE1000000),
        Name.fromU64(0x5D3534AAE2000000),
      ]     

      for (let i = 0; i < foundingMembers.length; i++) {
        let founder = foundingMembers[i];
        let founderEntry = new WinnersTable(
          founder,
          "",
          0,
          electionName,
          rank,
          true
        );
        this.winnersTable.store(founderEntry, this.receiver);
        rank++;
      }      

      if (election) {
        election.status = "completed";
        this.electionsTable.update(election, this.receiver);
      }
   }
   
  // action to create recall vote by founding member
   @action("createrecall")
   createRecallVoting ( councilMember: Name, electionName: string, startTime: u64, endTime: u64 ): void {
      requireAuth(this.receiver);

      let election = this.electionsTable.get(Name.fromString(electionName).N);
      check(election !== null, "Election not found");

      let member = this.winnersTable.get(councilMember.N + Name.fromString(electionName).N);
      check(member !== null, "Council member not found");

      let recallExist = this.recallVoteTable.get(councilMember.N + Name.fromString(electionName).N);
      check(recallExist === null, "Recall vote already created");

      let currentTime = currentTimeSec();
      check(startTime > currentTime, "Vote start time must be in the future");
      check(endTime > currentTime, "Vote end time must be in the future");

      let recallEntry = new RecallVotesTable(
        councilMember,
        electionName,
        0, 
        0,
        startTime,
        endTime,
      );

      this.recallVoteTable.store(recallEntry, this.receiver);
   }
   
  // recall vote action
   @action("recall")
   recallVote(voter: Name, userId: string, councilMember: Name, electionName: string, voteToReplace: boolean): void {
    requireAuth(voter);

    let election = this.electionsTable.get(Name.fromString(electionName).N);
    check(election !== null, "Election names do not match");

    let member = this.winnersTable.get(councilMember.N + Name.fromString(electionName).N);
    check(member !== null, "Council member not found");

    if (election && election.voterStakeAmount > 0) {
      let voterStake = this.accountTable.get(voter.N);
      check(voterStake !== null, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
  
      check(voterStake!.totalStaked >= election.voterStakeAmount, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
    } 

    let recallEntry = this.recallVoteTable.get(councilMember.N + Name.fromString(electionName).N);
    check(recallEntry !== null, "Recall vote not started for this member");

    let currentTime = currentTimeSec();
    if (recallEntry) {
      check(currentTime >= recallEntry.startTime, "Voting period has not started yet");
      check(currentTime <= recallEntry.endTime, "Voting period has ended");
    }
    
    let existingVote = this.recallVotersTable.get(voter.N + Name.fromString(electionName).N);
    check(existingVote === null, "You have already voted in this recall election");
    
    if (recallEntry) {
      if (voteToReplace) {
        recallEntry.replaceVotes += 1;
      } else {
        recallEntry.keepVotes += 1;
      }
      this.recallVoteTable.update(recallEntry, this.receiver);
    }

    let recallVoter = new RecallVotersTable(
      voter,
      userId,
      councilMember,
      electionName,
      voteToReplace,
    )
    this.recallVotersTable.store(recallVoter, this.receiver);
   }
  

  // action to determine candidates replaced or not
  @action("recallresult")
  recallResult(electionName: string): void {
    requireAuth(this.receiver);

    let election = this.electionsTable.get(Name.fromString(electionName).N);
    check(election !== null, "Election not found");

    let currentTime = currentTimeSec();

    // ✅ Step 1: Collect all recall vote records in an array
    let recallVotes: RecallVotesTable[] = [];
    let cursor = this.recallVoteTable.first();
    while (cursor !== null) {
	    recallVotes.push(cursor);
	    cursor = this.recallVoteTable.next(cursor);
    }

    check(recallVotes.length > 0, "No recall votes found for this election");

    // ✅ Step 2: Process each recall vote entry
    for (let i = 0; i < recallVotes.length; i++) {
	   let recallVote = recallVotes[i];

	   if (electionName.toLowerCase().toString() === recallVote.electionName.toLowerCase().toString()) {
		  check(currentTime > recallVote.endTime, "Recall voting period has not ended yet");
      check(currentTime >= recallVote.startTime, "Recall voting period has not started yet");

		  // ✅ Ensure the recall vote supports replacing the member
      check(recallVote.replaceVotes > recallVote.keepVotes, "Not enough votes to replace the council member");

			let councilMemberEntry = this.winnersTable.get(recallVote.councilMember.N + Name.fromString(electionName).N);
      check(councilMemberEntry !== null, "Council member not found for recall");

			let removedRank: u8 = 0;
			if (councilMemberEntry !== null) {
				removedRank = councilMemberEntry.rank;
				this.winnersTable.remove(councilMemberEntry);
			}

			// ✅ Step 3: Collect all candidates in an array
			let candidates: CandidatesTable[] = [];
			let cursor2 = this.candidatesTable.first();
			while (cursor2 !== null) {
				if (cursor2.electionName === electionName) {
					candidates.push(cursor2);
				}
				cursor2 = this.candidatesTable.next(cursor2);
			}

      check(candidates.length > 0, "No candidates found for this election");

			// ✅ Step 4: Find the next highest-voted candidate
			let highestVotedCandidate: CandidatesTable | null = null;
			for (let j = 0; j < candidates.length; j++) {
				let candidate = candidates[j];

        if (candidate.account === recallVote.councilMember) {
          continue;
        }

				let isAlreadyCouncil = this.winnersTable.get(candidate.account.N + Name.fromString(electionName).N);

        if (isAlreadyCouncil !== null) {
          continue;
        }

        if (highestVotedCandidate === null || candidate.totalVotes > highestVotedCandidate.totalVotes) {
          highestVotedCandidate = candidate;
        }
        
			}

      check(highestVotedCandidate !== null, "No valid candidates found to replace the recalled member");

			// ✅ Step 5: Store the new council member with the correct rank
			if (highestVotedCandidate !== null) {
				let newCouncilMember = new WinnersTable(
					highestVotedCandidate.account,
          highestVotedCandidate.userId,
					highestVotedCandidate.totalVotes,
					electionName,
					removedRank
				);
				this.winnersTable.update(newCouncilMember, this.receiver);
			}
	   }
    }
  }



}

class createElectionAction implements _chain.Packer {
    constructor (
        public electionName: string = "",
        public startTime: u64 = 0,
        public endTime: u64 = 0,
        public registrationStartTime: u64 = 0,
        public registrationEndTime: u64 = 0,
        public candidateStakeAmount: u64 = 0,
        public voterStakeAmount: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.electionName);
        enc.packNumber<u64>(this.startTime);
        enc.packNumber<u64>(this.endTime);
        enc.packNumber<u64>(this.registrationStartTime);
        enc.packNumber<u64>(this.registrationEndTime);
        enc.packNumber<u64>(this.candidateStakeAmount);
        enc.packNumber<u64>(this.voterStakeAmount);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.electionName = dec.unpackString();
        this.startTime = dec.unpackNumber<u64>();
        this.endTime = dec.unpackNumber<u64>();
        this.registrationStartTime = dec.unpackNumber<u64>();
        this.registrationEndTime = dec.unpackNumber<u64>();
        this.candidateStakeAmount = dec.unpackNumber<u64>();
        this.voterStakeAmount = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

class clearAllTablesAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

class registerCandidateAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public userId: string = "",
        public electionName: string = "",
        public description: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packString(this.userId);
        enc.packString(this.electionName);
        enc.packString(this.description);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.userId = dec.unpackString();
        this.electionName = dec.unpackString();
        this.description = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userId);
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += _chain.Utils.calcPackedStringLength(this.description);
        return size;
    }
}

class withdrawCandidateAction implements _chain.Packer {
    constructor (
        public account: _chain.Name | null = null,
        public electionName: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.account!);
        enc.packString(this.electionName);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.account! = obj;
        }
        this.electionName = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.account!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        return size;
    }
}

class voteAction implements _chain.Packer {
    constructor (
        public voter: _chain.Name | null = null,
        public userId: string = "",
        public candidate: _chain.Name | null = null,
        public electionName: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.voter!);
        enc.packString(this.userId);
        enc.pack(this.candidate!);
        enc.packString(this.electionName);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.voter! = obj;
        }
        this.userId = dec.unpackString();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.candidate! = obj;
        }
        this.electionName = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.voter!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userId);
        size += this.candidate!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        return size;
    }
}

class declareWinnersAction implements _chain.Packer {
    constructor (
        public electionName: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.electionName);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.electionName = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        return size;
    }
}

class createRecallVotingAction implements _chain.Packer {
    constructor (
        public councilMember: _chain.Name | null = null,
        public electionName: string = "",
        public startTime: u64 = 0,
        public endTime: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.councilMember!);
        enc.packString(this.electionName);
        enc.packNumber<u64>(this.startTime);
        enc.packNumber<u64>(this.endTime);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.councilMember! = obj;
        }
        this.electionName = dec.unpackString();
        this.startTime = dec.unpackNumber<u64>();
        this.endTime = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.councilMember!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }
}

class recallVoteAction implements _chain.Packer {
    constructor (
        public voter: _chain.Name | null = null,
        public userId: string = "",
        public councilMember: _chain.Name | null = null,
        public electionName: string = "",
        public voteToReplace: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.voter!);
        enc.packString(this.userId);
        enc.pack(this.councilMember!);
        enc.packString(this.electionName);
        enc.packNumber<boolean>(this.voteToReplace);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.voter! = obj;
        }
        this.userId = dec.unpackString();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.councilMember! = obj;
        }
        this.electionName = dec.unpackString();
        this.voteToReplace = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.voter!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.userId);
        size += this.councilMember!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        size += sizeof<boolean>();
        return size;
    }
}

class recallResultAction implements _chain.Packer {
    constructor (
        public electionName: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packString(this.electionName);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.electionName = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += _chain.Utils.calcPackedStringLength(this.electionName);
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new snipvoting(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x45D46CA951523200) {//createelect
            const args = new createElectionAction();
            args.unpack(actionData);
            mycontract.createElection(args.electionName,args.startTime,args.endTime,args.registrationStartTime,args.registrationEndTime,args.candidateStakeAmount,args.voterStakeAmount);
        }
		if (action == 0x44546BA4D9300000) {//cleardata
            const args = new clearAllTablesAction();
            args.unpack(actionData);
            mycontract.clearAllTables();
        }
		if (action == 0xBA98EC655741A690) {//registercand
            const args = new registerCandidateAction();
            args.unpack(actionData);
            mycontract.registerCandidate(args.account!,args.userId,args.electionName,args.description);
        }
		if (action == 0xE3B2D4DCDC41A690) {//withdrawcand
            const args = new withdrawCandidateAction();
            args.unpack(actionData);
            mycontract.withdrawCandidate(args.account!,args.electionName);
        }
		if (action == 0xDD32A00000000000) {//vote
            const args = new voteAction();
            args.unpack(actionData);
            mycontract.vote(args.voter!,args.userId,args.candidate!,args.electionName);
        }
		if (action == 0xE3A7355C00000000) {//winner
            const args = new declareWinnersAction();
            args.unpack(actionData);
            mycontract.declareWinners(args.electionName);
        }
		if (action == 0x45D46CAAEA41A310) {//createrecall
            const args = new createRecallVotingAction();
            args.unpack(actionData);
            mycontract.createRecallVoting(args.councilMember!,args.electionName,args.startTime,args.endTime);
        }
		if (action == 0xBA9068C400000000) {//recall
            const args = new recallVoteAction();
            args.unpack(actionData);
            mycontract.recallVote(args.voter!,args.userId,args.councilMember!,args.electionName,args.voteToReplace);
        }
		if (action == 0xBA9068C6EAC6A390) {//recallresult
            const args = new recallResultAction();
            args.unpack(actionData);
            mycontract.recallResult(args.electionName);
        }
	}
  
	if (receiver != firstReceiver) {
		
	}
	return;
}
