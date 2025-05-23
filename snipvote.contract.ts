import { Name, TableStore, requireAuth, check, Contract, currentTimeSec, Asset, PermissionLevel, ActionData, InlineAction, isAccount } from "proton-tsc";

import { AccountsTable, ElectionsTable, CandidatesTable, VotersTable, WinnersTable, RecallVotesTable, RecallVotersTable, ModeratorCandTable, ModeratorsTable, ModeratorVotersTable, ModRecallTable, ModRecallVotersTable, ProposalsTable, PropVotersTable, PropConfigTable, ModReportsTable, ReportVotesTable, ReportVotersTable, FundConfigTable, FundProposalTable, FundVoteTable, RevenueRecordTable, MemberPerformanceTable, ModeratorPerformanceTable } from "./tables";
import {stringToU64} from './utils'
import {authorizedAccounts} from './utils/accounts';
import {getYearFromTimestamp, getMonthFromTimestamp} from './utils/date';

@packer
export class TokenTransfer extends ActionData {
  constructor(
    public from: Name = new Name(),
    public to: Name = new Name(),
    public quantity: Asset = new Asset(),
    public memo: string = "",
  ) {
    super();
  }
}

@contract
export class snipvoting extends Contract {

  private electionsTable: TableStore<ElectionsTable> = new TableStore<ElectionsTable>(this.receiver, this.receiver);

  private candidatesTable: TableStore<CandidatesTable> = new TableStore<CandidatesTable>(this.receiver, this.receiver);

  private votersTable: TableStore<VotersTable> = new TableStore<VotersTable>(this.receiver, this.receiver);

  private winnersTable: TableStore<WinnersTable> = new TableStore<WinnersTable>(this.receiver, this.receiver);

  private recallVoteTable: TableStore<RecallVotesTable> = new TableStore<RecallVotesTable>(this.receiver, this.receiver);

  private recallVotersTable: TableStore<RecallVotersTable> = new TableStore<RecallVotersTable>(this.receiver, this.receiver);

  private moderatorCandTable: TableStore<ModeratorCandTable> = new TableStore<ModeratorCandTable>(this.receiver, this.receiver);

  private moderatorsTable: TableStore<ModeratorsTable> = new TableStore<ModeratorsTable>(this.receiver, this.receiver);

  private moderatorVotersTable: TableStore<ModeratorVotersTable> = new TableStore<ModeratorVotersTable>(this.receiver, this.receiver);

  private modRecallTable: TableStore<ModRecallTable> = new TableStore<ModRecallTable>(this.receiver, this.receiver);

  private modRecallVotersTable: TableStore<ModRecallVotersTable> = new TableStore<ModRecallVotersTable>(this.receiver, this.receiver);

  private proposalsTable: TableStore<ProposalsTable> = new TableStore<ProposalsTable>(this.receiver, this.receiver);

  private propVotersTable: TableStore<PropVotersTable> = new TableStore<PropVotersTable>(this.receiver, this.receiver);

  private propConfigTable: TableStore<PropConfigTable> = new TableStore<PropConfigTable>(this.receiver, this.receiver);

  private modReportsTable: TableStore<ModReportsTable> = new TableStore<ModReportsTable>(this.receiver, this.receiver);

  private reportVotesTable: TableStore<ReportVotesTable> = new TableStore<ReportVotesTable>(this.receiver, this.receiver);

  private reportVotersTable: TableStore<ReportVotersTable> = new TableStore<ReportVotersTable>(this.receiver, this.receiver);
  
  private fundConfigTable: TableStore<FundConfigTable> = new TableStore<FundConfigTable>(this.receiver, this.receiver);

  private fundPropTable: TableStore<FundProposalTable> = new TableStore<FundProposalTable>(this.receiver, this.receiver);

  private fundVoteTable: TableStore<FundVoteTable> = new TableStore<FundVoteTable>(this.receiver, this.receiver);

  private revenueTable: TableStore<RevenueRecordTable> = new TableStore<RevenueRecordTable>(this.receiver, this.receiver);

  private memberPerfTable: TableStore<MemberPerformanceTable> = new TableStore<MemberPerformanceTable>(this.receiver, this.receiver);

  private moderatorPerfTable: TableStore<ModeratorPerformanceTable> = new TableStore<ModeratorPerformanceTable>(this.receiver, this.receiver);

  private accountTable: TableStore<AccountsTable> = new TableStore<AccountsTable>(Name.fromString('snipstk'));

  // action to create election by founding members
  @action("createelect")
  createElection(electionName: string, startTime: u64, endTime: u64, registrationStartTime: u64, registrationEndTime: u64, candidateStakeAmount: u64, voterStakeAmount: u64): void {

    //  let allowedUser1 = Name.fromString("admin1");
    //  let allowedUser2 = Name.fromString("admin2");

    //  requireAuth(this.receiver);

    let existingElection = this.electionsTable.get(stringToU64(electionName));

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
  
  // this action is for clearing table data. before changing table structure I use this to clear table data
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

  @action("clearrecall")
  clearRecall(): void {

    // Clear Recall Votes Table
    let cursor5 = this.recallVoteTable.first();
    while (cursor5 !== null) {
        let nextCursor = this.recallVoteTable.next(cursor5);
        this.recallVoteTable.remove(cursor5);
        cursor5 = nextCursor;
    }

  }

  @action("clearrevote")
  clearReVote(): void {
    let cursor6 = this.recallVotersTable.first();
    while (cursor6 !== null) {
        let nextCursor = this.recallVotersTable.next(cursor6);
        this.recallVotersTable.remove(cursor6);
        cursor6 = nextCursor;
    }
  }


  @action("clrmodcand")
  clrModCand(): void {
    let cursor7 = this.moderatorCandTable.first();
    while (cursor7 !== null) {
        let nextCursor = this.moderatorCandTable.next(cursor7);
        this.moderatorCandTable.remove(cursor7);
        cursor7 = nextCursor;
    }
  }

  @action("clrmodvoter")
  clrModVoter(): void {
    let cursor8 = this.moderatorVotersTable.first();
    while (cursor8 !== null) {
        let nextCursor = this.moderatorVotersTable.next(cursor8);
        this.moderatorVotersTable.remove(cursor8);
        cursor8 = nextCursor;
    }
  }

  @action("clrmodrecall")
  clrModRecall(): void {
    let cursor9 = this.modRecallTable.first();
    while (cursor9 !== null) {
        let nextCursor = this.modRecallTable.next(cursor9);
        this.modRecallTable.remove(cursor9);
        cursor9 = nextCursor;
    }
  }

  @action("clrmodreport")
  clrModReport(): void {
    let cursor9 = this.modReportsTable.first();
    while (cursor9 !== null) {
        let nextCursor = this.modReportsTable.next(cursor9);
        this.modReportsTable.remove(cursor9);
        cursor9 = nextCursor;
    }
  }

  @action("clrfundprop")
  clrFundProp(): void {
    let cursor9 = this.fundPropTable.first();
    while (cursor9 !== null) {
        let nextCursor = this.fundPropTable.next(cursor9);
        this.fundPropTable.remove(cursor9);
        cursor9 = nextCursor;
    }
  }

  @action("clrfundvote")
  clrFundVote(): void {
    let cursor9 = this.fundVoteTable.first();
    while (cursor9 !== null) {
        let nextCursor = this.fundVoteTable.next(cursor9);
        this.fundVoteTable.remove(cursor9);
        cursor9 = nextCursor;
    }
  }


   
  // action to register candidates for election
   @action("registercand")
   registerCandidate(account: Name, userName: string, electionName: string): void {
      requireAuth(account);
      
      let election = this.electionsTable.get(stringToU64(electionName));
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
      
      let existingCandidate = this.candidatesTable.get(account.N + stringToU64(electionName));

      check(existingCandidate === null, "Candidate is already registered");
      
      let newCandidate = new CandidatesTable(
        account,
        userName,
        electionName,
        0,
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

      let election = this.electionsTable.get(stringToU64(electionName));
      check(election !== null, "Election not found");

      let candidate = this.candidatesTable.get(account.N + stringToU64(electionName));
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
   vote(voter: Name, userName: string, candidate: Name, electionName: string): void {
      requireAuth(voter);

      let election = this.electionsTable.get(stringToU64(electionName));
      check(election !== null, "Election not found");

      let currentTime = currentTimeSec();
      if (election) {
        check(currentTime >= election.startTime, "Voting period has not started yet");
        check(currentTime <= election.endTime, "Voting period is closed");
      }

      let voterExist = this.votersTable.get(voter.N + stringToU64(electionName));
      check(voterExist === null, "You have already voted in this election");

      if (election && election.voterStakeAmount > 0) {
        let voterStake = this.accountTable.get(voter.N);
        check(voterStake !== null, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
    
        check(voterStake!.totalStaked >= election.voterStakeAmount, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
      }
    
      let candidateData = this.candidatesTable.get(candidate.N + stringToU64(electionName));
      check(candidateData !== null, "Candidate not found");
      
      if (candidateData) {
        candidateData.totalVotes += 1;
        this.candidatesTable.update(candidateData, this.receiver);
      }

      let voterData = new VotersTable(
        voter,
        userName,
        electionName,
        candidate,
        currentTime,
      )

      this.votersTable.store(voterData, this.receiver);
      
      if(election) {
        election.status = "ongoing";
        election.totalVote += 1;
        this.electionsTable.update(election, this.receiver);
      }
   }
   
   // action to declareWinners by founding members
   @action("winner")
   declareWinners(electionName: string, signer: string): void {
      const authorizedAccounts = [
        this.receiver.toString(),
        "ahatashamul",
        "ahatashamul1",
      ];
  
      check(
        authorizedAccounts.includes(signer),
        "You are not authorized to perform this action"
      );

      let election = this.electionsTable.get(stringToU64(electionName));
      check(election !== null, "Election not found");

      let currentTime = currentTimeSec();
      check(currentTime > election!.endTime, "Election is still ongoing");
      
      // expire all previous elections
      let electionCursor = this.electionsTable.first();
      while (electionCursor !== null) {
        if (stringToU64(electionCursor.electionName) !== stringToU64(electionName) && stringToU64(electionCursor.status) !== stringToU64("expired") && electionCursor.	
        endTime < currentTime) {
          electionCursor.status = "expired";
          this.electionsTable.update(electionCursor, this.receiver);
        }
        electionCursor = this.electionsTable.next(electionCursor);
      }

      // expire all previous winners
      let winnerCursor = this.winnersTable.first();
      while (winnerCursor !== null) {
        if (stringToU64(winnerCursor.status) === stringToU64("active")) {
          winnerCursor.status = "expired";
          this.winnersTable.update(winnerCursor, this.receiver);
        }
        winnerCursor = this.winnersTable.next(winnerCursor);
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
       if (stringToU64(candidate.electionName) === stringToU64(electionName)) {
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
          candidate.userName,
          candidate.totalVotes,
          electionName,
          rank,
          false,
          "active"
        );
        this.winnersTable.store(winnerEntry, this.receiver);
        rank++;
      }      
      
      let foundingMembers: Name[] = [
        Name.fromString("founder1"),
        Name.fromString("founder2"),
      ];

      let founderUsernames = new Map<string, string>();
      founderUsernames.set("founder1", "Founder1");
      founderUsernames.set("founder2", "Founder2");

      for (let i = 0; i < foundingMembers.length; i++) {
        let founder = foundingMembers[i];
        let userName = founderUsernames.get(founder.toString()) || "";
        let founderEntry = new WinnersTable(
          founder,
          userName,
          0,
          electionName,
          rank,
          true,
          "active"
        );
        this.winnersTable.store(founderEntry, this.receiver);
        rank++;
      }      

      election!.status = "ended";
      this.electionsTable.update(election!, this.receiver);
   }
   
  // action to create recall vote by founding member
   @action("createrecall")
   createRecallVoting ( councilMember: Name, electionName: string, reason: string, startTime: u64, endTime: u64, signer: string ): void {
  
      check(
        authorizedAccounts.includes(signer),
        "You are not authorized to perform this action"
      );

      let election = this.electionsTable.get(stringToU64(electionName));
      check(election !== null, "Election not found");

      let member = this.winnersTable.get(councilMember.N + stringToU64(electionName));
      check(member !== null, "Council member not found");
      check(member!.isFoundingMember === false, "Founding members can't be replaced");

      let recallExist = this.recallVoteTable.get(councilMember.N + stringToU64(electionName));
      check(recallExist === null, "Recall vote already created");

      let currentTime = currentTimeSec();
      check(startTime > currentTime, "Vote start time must be in the future");
      check(endTime > currentTime, "Vote end time must be in the future");
      check(endTime > startTime, "Start time must be before end time");

      let recallEntry = new RecallVotesTable(
        councilMember,
        electionName,
        reason,
        0, 
        0,
        startTime,
        endTime,
        "upcoming",
      );

      this.recallVoteTable.store(recallEntry, this.receiver);
   }
   
  // recall vote action
   @action("recall")
   recallVote(voter: Name, userName: string, councilMember: Name, electionName: string, voteToReplace: boolean): void {
    requireAuth(voter);

    let election = this.electionsTable.get(stringToU64(electionName));
    check(election !== null, "Election names do not match");

    let member = this.winnersTable.get(councilMember.N + stringToU64(electionName));
    check(member !== null, "Council member not found");

    if (election && election.voterStakeAmount > 0) {
      let voterStake = this.accountTable.get(voter.N);
      check(voterStake !== null, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
  
      check(voterStake!.totalStaked >= election.voterStakeAmount, `Minimum ${election.voterStakeAmount} tokens required to participate in voting`);
    } 

    let recallEntry = this.recallVoteTable.get(councilMember.N + stringToU64(electionName));
    check(recallEntry !== null, "Recall vote not started for this member");

    let currentTime = currentTimeSec();
    if (recallEntry) {
      check(currentTime >= recallEntry.startTime, "Voting period has not started yet");
      check(currentTime <= recallEntry.endTime, "Voting period has ended");
    }
    
    let existingVote = this.recallVotersTable.get(voter.N + stringToU64(electionName));
    check(existingVote === null, "You have already voted in this recall election");
    
    if (recallEntry) {
      if (voteToReplace) {
        recallEntry.replaceVotes += 1;
      } else {
        recallEntry.keepVotes += 1;
      }
      recallEntry.status = "ongoing";
      this.recallVoteTable.update(recallEntry, this.receiver);
    }

    let recallVoter = new RecallVotersTable(
      voter,
      userName,
      councilMember,
      electionName,
      voteToReplace,
    )
    this.recallVotersTable.store(recallVoter, this.receiver);
   }

  // action to determine candidates replaced or not
  @action("recallresult")
  recallResult(electionName: string, signer: string): void {

    check(
      authorizedAccounts.includes(signer),
      "You are not authorized to perform this action"
    );

    let election = this.electionsTable.get(stringToU64(electionName));
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

      let councilMemberEntry = this.winnersTable.get(recallVote.councilMember.N + stringToU64(electionName));
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

        let isAlreadyCouncil = this.winnersTable.get(candidate.account.N + stringToU64(electionName));

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
          highestVotedCandidate.userName,
					highestVotedCandidate.totalVotes,
					electionName,
					removedRank
				);
				this.winnersTable.update(newCouncilMember, this.receiver);
			}

      recallVote.status = "ended";
      this.recallVoteTable.update(recallVote, this.receiver);
	   }
    }
  }

  // action to apply as moderator role
  @action("modapply")
  moderatorApply(account: Name, userName: string): void {
     requireAuth(account);

     let currentTime = currentTimeSec();

    //  let userStake = this.accountTable.get(account.N);
    //  check(userStake !== null, `Minimum 1,000,000 tokens required to apply as a moderator`);
    //  check(userStake!.totalStaked >= 1000000, `Minimum 1,000,000 tokens required to apply as a moderator`);
     
     let existingCandidate = this.moderatorCandTable.get(account.N);

     check(existingCandidate === null, "Candidate already applied");
     
     let newCandidate = new ModeratorCandTable(
       account,
       userName,
       0,
       0,
       "pending",
       currentTime,
     );

     this.moderatorCandTable.store(newCandidate, this.receiver);

  }

  // action to vote in moderator application
  @action("modvote")
  moderatorVote(voter: Name, candidate: Name, vote: string ): void {
     requireAuth(voter);

     let currentTime = currentTimeSec();

     let winnerCursor = this.winnersTable.first();
     let isValidVoter = false;
     while (winnerCursor !== null) {
       if (winnerCursor.winner.N === voter.N && stringToU64(winnerCursor.status) === stringToU64("active")) {
         isValidVoter = true;
         break;
       }
       winnerCursor = this.winnersTable.next(winnerCursor);
     }

     check(isValidVoter === true, "Only council members can vote");

     let voterExist = this.moderatorVotersTable.get((voter.N << 32) | (candidate.N & 0xFFFFFFFF));
     check(voterExist === null, "You have already voted for this candidate");

   
     let candidateData = this.moderatorCandTable.get(candidate.N);
     check(candidateData !== null, "Candidate not found");
     check(stringToU64(candidateData!.status.toString().toLowerCase().trim()) === stringToU64("pending"), "Voting has ended for this candidate");

     check(stringToU64(vote) === stringToU64("approve") || stringToU64(vote) === stringToU64("reject"), "Vote must be 'approve' or 'reject'");
     if (candidateData) {
       if (stringToU64(vote) === stringToU64("approve")) {
         candidateData.approvedBy += 1;
       } else {
         candidateData.rejectedBy += 1;
       }
     }

     let voterData = new ModeratorVotersTable(
       voter,
       candidate,
       vote,
       currentTime,
     )

     this.moderatorVotersTable.store(voterData, this.receiver);
     
     let moderatorData: ModeratorsTable | null = null;
     if (candidateData) {
      if (candidateData.approvedBy >= 5) {
        candidateData.status = "approved";

        moderatorData = new ModeratorsTable(
          candidate,
          candidateData.userName,
          currentTime,
        );

         this.moderatorsTable.store(moderatorData, this.receiver);
      } else if (candidateData.rejectedBy > 2 ) {
        candidateData.status = "rejected";
      }

      this.moderatorCandTable.update(candidateData, this.receiver);
     }

     this.updatePerformance(voter, 0, 0, 1, 0);

  }
  
  // action to initiate moderator recall
  @action("modrecall")
  initModRecall(moderator: Name, reason: string, signer: Name): void {
    requireAuth(signer);

    let winnerCursor = this.winnersTable.first();
     let isCouncil = false;
     while (winnerCursor !== null) {
       if (winnerCursor.winner.N === signer.N && stringToU64(winnerCursor.status) === stringToU64("active")) {
        isCouncil = true;
         break;
       }
       winnerCursor = this.winnersTable.next(winnerCursor);
     }

    check(isCouncil === true, "Only council members can recall moderator");

    let moderatorExist = this.moderatorsTable.get(moderator.N);
    check(moderatorExist !== null, "Moderator not found");

    let recallEntry: ModRecallTable[] = [];
    let cursor = this.modRecallTable.first();
    while (cursor !== null) {
	    recallEntry.push(cursor);
	    cursor = this.modRecallTable.next(cursor);
    }

    for (let i = 0; i < recallEntry.length; i++) {
      if (
        recallEntry[i].moderator.N === moderator.N &&
        stringToU64(recallEntry[i].status) !== stringToU64("failed")
      ) {
        check(false, "Cannot create a new recall while another is in progress or already completed.");
      }
    }

    const newRecallId = currentTimeSec();
    const newRecall = new ModRecallTable(
      newRecallId,
      moderator,
      moderatorExist!.userName,
      reason,
      0,
      0,
      "pending",
    );

    this.modRecallTable.store(newRecall, this.receiver);
  }
  
  // vote on moderator recall
  @action('modrecalvote')
  modRecallVote(voter: Name, recallId: u64, vote: string): void {
    requireAuth(voter);

    let currentTime = currentTimeSec();

    let recall = this.modRecallTable.get(recallId);
    check(recall !== null, "Recall vote not found for this moderator");
    check(stringToU64(recall!.status) === stringToU64("pending"), "This recall vote is no longer active");

    // only council members can vote
    let winnerCursor = this.winnersTable.first();
    let isValidVoter = false;
    while (winnerCursor !== null) {
      if (winnerCursor.winner.N === voter.N && stringToU64(winnerCursor.status) === stringToU64("active")) {
        isValidVoter = true;
        break;
      }
      winnerCursor = this.winnersTable.next(winnerCursor);
    }

    check(isValidVoter === true, "Only council members can vote");

    const alreadyVoted = this.modRecallVotersTable.get(voter.N + recallId);
    check(alreadyVoted === null, "You have already voted in this recall");

    check(stringToU64(vote) === stringToU64("yes") || stringToU64(vote) === stringToU64("no"), "Vote must be 'yes' or 'no'");

    if (stringToU64(vote) === stringToU64("yes")) {
      recall!.yesVotes += 1;
    } else {
      recall!.noVotes += 1;
    }

    const voteData = new ModRecallVotersTable(
      voter, 
      recall!.moderator,
      recallId, 
      vote,
      currentTime,
    );
    this.modRecallVotersTable.store(voteData, this.receiver);

    if (recall!.yesVotes >= 4) {
      recall!.status = "removed";
  
      const moderator = this.moderatorsTable.get(recall!.moderator.N);
      if (moderator !== null) {
        this.moderatorsTable.remove(moderator);
      }

      const modCand = this.moderatorCandTable.get(recall!.moderator.N);
      modCand!.status = "recalled";
      this.moderatorCandTable.update(modCand!, this.receiver);
  
    } else if (recall!.noVotes >= 4) {
      recall!.status = "failed";
    }

    this.modRecallTable.update(recall!, this.receiver);

    this.updatePerformance(voter, 0, 0, 1, 0);

  }
  
  // action to update staking requirement for proposal
  @action("updateconfig")
  updateConfig(admin: string, proposalStake: u64,   voteStake: u64): void {

    check(
      authorizedAccounts.includes(admin),
      "You are not authorized to perform this action"
    );

    const existing = this.propConfigTable.get(0);
    if (existing !== null) {
      existing.proposalStake = proposalStake;
      existing.voteStake = voteStake;
      this.propConfigTable.update(existing, this.receiver);
    } else {
      const newConfig = new PropConfigTable(0, proposalStake, voteStake);
      this.propConfigTable.store(newConfig, this.receiver);
    }
  }

  // action to create proposal
  @action("submitprop")
  submitProposal(proposer: Name, userName: string, title: string, description: string, category: string, deadline: u64): void {
    requireAuth(proposer);

    const config = this.propConfigTable.get(0);
    check(config !== null, "Proposal config not found. Please initialize the config first.");
    
    if (config!.proposalStake > 0) {
      let userStake = this.accountTable.get(proposer.N);
      check(userStake !== null, `Minimum ${config!.proposalStake} tokens required to submit proposal`);
      check(userStake!.totalStaked >= config!.proposalStake, `Minimum ${config!.proposalStake} tokens required to submit proposal`);
    }

    check(deadline > currentTimeSec(), "Deadline must be in the future");

    const newProposalId = currentTimeSec();
    const newProposal = new ProposalsTable(
      newProposalId,
      proposer,
      userName,
      title,
      description,
      category,
      0,
      0,
      deadline,
      "open",
    );

    this.proposalsTable.store(newProposal, this.receiver);

    let winnerCursor = this.winnersTable.first();
    let isMember = false;
    while (winnerCursor !== null) {
      if (winnerCursor.winner.N === proposer.N && stringToU64(winnerCursor.status) === stringToU64("active")) {
        isMember = true;
        break;
      }
      winnerCursor = this.winnersTable.next(winnerCursor);
    }
    if (isMember) {
      this.updatePerformance(proposer, 1, 0, 0, 0);
    }

    const isModerator = this.moderatorsTable.get(proposer.N);
    if (isModerator) {
      this.updateModeratorPerformance( proposer, 0, 1, 0 );
    }

  }
  
  // action to vote on proposal
  @action("voteprop")
  voteProposal(voter: Name, proposalId: u64, vote: string): void {
    requireAuth(voter);

    const proposal = this.proposalsTable.get(proposalId);
    check(proposal !== null, "Proposal not found");
    
    const config = this.propConfigTable.get(0);
    check(config !== null, "Proposal config not found. Please initialize the config first.");
    
    if (config!.voteStake > 0) {
      let userStake = this.accountTable.get(voter.N);
      check(userStake !== null, `Minimum ${config!.voteStake} tokens required to vote in proposal`);
      check(userStake!.totalStaked >= config!.voteStake, `Minimum ${config!.voteStake} tokens required to vote in proposal`);
    }

    const now = currentTimeSec();
    check(now < proposal!.deadline, "Voting deadline has passed");

    let voterExist = this.propVotersTable.get(voter.N + proposalId);
    check (voterExist === null, "You already voted in this proposal");

    check (stringToU64(vote) === stringToU64("yes") || stringToU64(vote) === stringToU64("no"), "Vote must be 'yes' or 'no'");

    if (stringToU64(vote) === stringToU64("yes")) {
      proposal!.yesCount += 1;
    } else if (stringToU64(vote) === stringToU64("no")) {
      proposal!.noCount += 1;
    }
    this.proposalsTable.update(proposal!, this.receiver);    

    const newVoter = new PropVotersTable(
      voter,
      proposalId,
      vote,
    );

    this.propVotersTable.store(newVoter, this.receiver);

    let winnerCursor = this.winnersTable.first();
    let isMember = false;
    while (winnerCursor !== null) {
      if (winnerCursor.winner.N === voter.N && stringToU64(winnerCursor.status) === stringToU64("active")) {
        isMember = true;
        break;
      }
      winnerCursor = this.winnersTable.next(winnerCursor);
    }

    if (isMember) {
      this.updatePerformance(voter, 0, 0, 1, 0);
    }

    const isModerator = this.moderatorsTable.get(voter.N);
    if (isModerator) {
      this.updateModeratorPerformance( voter, 0, 0, 1 );
    }

  }
  
  // action to declare proposal result after deadline passed
  @action("closeprop")
  closeProposal(sender: Name): void {
    requireAuth(sender);

    check(
      authorizedAccounts.includes(sender.toString()),
      "You are not authorized to perform this action"
    );

    const config = this.propConfigTable.get(0);
    check(config !== null, "Proposal config not found");

    let processedCount = 0;
    const MAX_PROCESS = 10; 

    let proposal = this.proposalsTable.first();
    while (proposal !== null) {
      const isOpen = stringToU64(proposal.status) == stringToU64("open");
      const isExpired = proposal.deadline < currentTimeSec();

      if (isOpen && isExpired) {
        // Step 1: Count eligible voters
        let totalEligible = 0;
        let account = this.accountTable.first();
        while (account !== null) {
          if (account.totalStaked >= config!.voteStake) {
            totalEligible++;
          }
          account = this.accountTable.next(account);
        }
        check(totalEligible > 0, "No eligible voters found");

        // Step 2: Get total votes
        let totalVotes = proposal.yesCount + proposal.noCount;

        // Step 3: Check participation percentage
        let participation = (totalVotes * 100) / totalEligible;
        if (participation < 90) {
          proposal.status = "failed";
        } else {
          // Step 4: Evaluate outcome
          if (proposal.yesCount > proposal.noCount) {
            proposal.status = "passed";
          } else {
            proposal.status = "failed";
          }
        }

        // Update the proposal
        this.proposalsTable.update(proposal, this.receiver);

        processedCount++;

        if (processedCount >= MAX_PROCESS) {
          break;
        }
      }

      proposal = this.proposalsTable.next(proposal);
    }

    check(processedCount > 0, "No proposals were closed. Try again later.");
  }

  // action to moderator reports on post
  @action("reportpost")
  reportPost( moderator: Name, postId: string, reason: string, category: string): void {
    requireAuth(moderator);

    let correctMod = this.moderatorsTable.get(moderator.N);
    check (correctMod !== null, "Only Moderators can Report");
  
    let report = this.modReportsTable.get(stringToU64(postId));

    const now = currentTimeSec();

    if (report === null) {
      const newReport = new ModReportsTable(
        postId,
        [moderator],
        1,
        "pending",
        [reason],
        [category],
        now
      );
      this.modReportsTable.store(newReport, this.receiver);
    } else {
      for (let i = 0; i < report.moderators.length; i++) {
        check(report.moderators[i].N != moderator.N, "Moderator has already reported this post");
      }
 
      report.moderators.push(moderator);
      report.reasons.push(reason);
      report.categories.push(category);
      report.reportCount += 1;
      report.timestamp = now;

      if (report.reportCount >= 3 && stringToU64(report.status) == stringToU64("pending")) {
        report.status = "hidden";
      }

      if (report.reportCount >= 3) {
        let vote = this.reportVotesTable.get(stringToU64(postId));
        if (vote === null) {
          let newVote = new ReportVotesTable (
            postId,
            0,
            0,
            'voting',
            now
          )
          this.reportVotesTable.store(newVote, this.receiver);
        }
      }

      this.modReportsTable.update(report, this.receiver);
    }

    this.updateModeratorPerformance( moderator, 1, 0, 0 );

  }

  // action to vote on report to permanently delete or restore post
  @action("reportvote")
  reportVote(voter: Name, postId: string, decision: string): void {
    requireAuth(voter);

    const now = currentTimeSec();

    let winnerCursor = this.winnersTable.first();
    let isValidVoter = false;
    while (winnerCursor !== null) {
      if (winnerCursor.winner.N === voter.N && stringToU64(winnerCursor.status) === stringToU64("active")) {
        isValidVoter = true;
        break;
      }
      winnerCursor = this.winnersTable.next(winnerCursor);
    }

    check(isValidVoter === true, "Only council members can vote");

    const voterKey = stringToU64(postId) + voter.N;
    const existingVote = this.reportVotersTable.get(voterKey);
    check(existingVote === null, "You have already voted on this post");

    check(stringToU64(decision) === stringToU64("delete") || stringToU64(decision) === stringToU64("restore"), "Decision must be 'delete' or 'restore'");

    let vote = this.reportVotesTable.get(stringToU64(postId));
    check(vote !== null, "No vote session found for this post");

    let report = this.modReportsTable.get(stringToU64(postId));
    check(report !== null, "No report found for this post");

    if (vote) {
      if (stringToU64(decision) === stringToU64("delete")) {
        vote.deletionVotes += 1;
      } else {
        vote.restorationVotes += 1;
      }

      if (vote.deletionVotes >= 4) {
        vote.status = "deleted";
        report!.status = "deleted"; 
      } else if (vote.restorationVotes >= 4) {
        vote.status = "restored";
        report!.status = "restored";
      }

      this.reportVotesTable.update(vote, this.receiver);

      this.modReportsTable.update(report!, this.receiver);
    }

    const voterData = new ReportVotersTable(
      postId,
      voter,
      decision,
      now
    );
    this.reportVotersTable.store(voterData, this.receiver);

    this.updatePerformance(voter, 0, 0, 1, 0);
  }
  
  // fund transfer configuration
  @action("updtfundcfg")
  updateFundConfig(
    admin: Name,
    communityWallet: Name,
    maxSharePercent: u8,
    tokenContract: Name
  ): void {
    requireAuth(admin);

    let isCouncil = false;
    let cursor = this.winnersTable.first();
    while (cursor !== null) {
      if (
        cursor.winner.N == admin.N &&
        stringToU64(cursor.status) == stringToU64("active")
      ) {
        isCouncil = true;
        break;
      }
      cursor = this.winnersTable.next(cursor);
    }
    check(isCouncil, "Only council members can update configuration");

    check(maxSharePercent > 0 && maxSharePercent <= 100, "Percentage must be between 1 and 100");

    const existing = this.fundConfigTable.get(0);
    if (existing !== null) {
      existing.communityWallet = communityWallet;
      existing.maxSharePercent = maxSharePercent;
      existing.tokenContract = tokenContract;
      this.fundConfigTable.update(existing, this.receiver);
    } else {
      const newConfig = new FundConfigTable(0, communityWallet, tokenContract, maxSharePercent);
      this.fundConfigTable.store(newConfig, this.receiver);
    }
  }

  // proposal for fund transfer
  @action("createfprop")
  createFundProposal(
    proposer: Name,
    recipient: Name,
    amount: u64,
    available: u64,
    memo: string,
    category: string,
  ): void {
    requireAuth(proposer);

    let isCouncil = false;
    let cursor = this.winnersTable.first();
    while (cursor !== null) {
      if (
        cursor.winner.N == proposer.N &&
        stringToU64(cursor.status) == stringToU64("active")
      ) {
        isCouncil = true;
        break;
      }
      cursor = this.winnersTable.next(cursor);
    }
    check(isCouncil, "Only council members can propose");

    check(isAccount(recipient), "Recipient account does not exist");

    const fundConfig = this.fundConfigTable.get(0);
    check(fundConfig !== null, "Fund configuration not found");

    check(isAccount(fundConfig!.communityWallet), "Community Wallet account does not exist");

    const maxSharePercent = fundConfig!.maxSharePercent;

    check(available > 0, "No available balance in Community Wallet");
    check(amount > 0, "Amount must be greater than 0");

    const allowedAmount = (available * maxSharePercent) / 100;
    check(amount <= allowedAmount, `Maximum ${maxSharePercent}% of total amount can be send per proposal`);

    const newId = this.fundPropTable.availablePrimaryKey;
    const now = currentTimeSec();

    const proposal = new FundProposalTable(
      newId,
      proposer,
      recipient,
      amount,
      memo,
      category,
      0, 
      0, 
      "open",
      now,
      0
    );

    this.fundPropTable.store(proposal, this.receiver);

    this.updatePerformance(proposer, 0, 1, 0, 0);

  }
  
  // action for vote on fund transfer proposal and transfer fund
  @action("votefprop")
  voteFundProposal(voter: Name, proposalId: u64, vote: string): void {
    requireAuth(voter);

    const now = currentTimeSec();

    let isCouncil = false;
    let winnerCursor = this.winnersTable.first();
    while (winnerCursor !== null) {
      if (
        winnerCursor.winner.N === voter.N &&
        stringToU64(winnerCursor.status) === stringToU64("active")
      ) {
        isCouncil = true;
        break;
      }
      winnerCursor = this.winnersTable.next(winnerCursor);
    }
    check(isCouncil, "Only council members can vote on fund proposals");

    check(
    stringToU64(vote) === stringToU64("approve") || stringToU64(vote) === stringToU64("reject"),
    "Vote must be 'approve' or 'reject'"
    );

    const proposal = this.fundPropTable.get(proposalId);
    check(proposal !== null, "Fund proposal not found");
    check(stringToU64(proposal!.status) === stringToU64("open"), "Voting closed for this proposal");

    const voteKey = voter.N + proposalId;
    const existingVote = this.fundVoteTable.get(voteKey);
    check(existingVote === null, "You have already voted on this proposal");

    if (stringToU64(vote) === stringToU64("approve")) {
      proposal!.approvedBy += 1;
    } else {
      proposal!.rejectedBy += 1;
    }

    if (proposal!.approvedBy >= 3) {
      proposal!.status = "approved";
      proposal!.approvedAt = now;

      const config = this.fundConfigTable.get(0);
      check(config !== null, "Fund configuration not found");

      const amountInt: u64 = proposal!.amount;
      const integerPart = amountInt / 10000;
      const decimalPart = amountInt % 10000;
      const decimalPartStr = decimalPart.toString().padStart(4, '0');
      const quantityStr = integerPart.toString() + "." + decimalPartStr + " SNIPX";
      const quantity = Asset.fromString(quantityStr);

      const transfer = new InlineAction<TokenTransfer>("transfer");
      const action = transfer.act(
        config!.tokenContract, 
        new PermissionLevel(Name.fromString(config!.communityWallet.toString()), Name.fromString("fund"))
      );

      const params = new TokenTransfer(
        config!.communityWallet,
        proposal!.recipient,
        quantity,
        proposal!.memo,
      );

      action.send(params);
      
    } else if (proposal!.rejectedBy >= 3) {
      proposal!.status = "rejected";
    }

    this.fundPropTable.update(proposal!, this.receiver);

    const voteRecord = new FundVoteTable(
      voter,
      proposalId,
      vote,
      now
    );
    this.fundVoteTable.store(voteRecord, this.receiver);

    this.updatePerformance(voter, 0, 0, 1, 0);

  }
  
  // action for pause and resume fund distribution
  @action("setfstatus")
  setFundStatus(
    actor: Name,
    proposalId: u64,
    newStatus: string
  ): void {
    requireAuth(actor);

    let isCouncil = false;
    let cursor = this.winnersTable.first();
    while (cursor !== null) {
      if (
        cursor.winner.N == actor.N &&
        stringToU64(cursor.status) == stringToU64("active")
      ) {
        isCouncil = true;
        break;
      }
      cursor = this.winnersTable.next(cursor);
    }
    check(isCouncil, "Only council members can pause or resume fund distribution");

    check(
      stringToU64(newStatus) == stringToU64("paused") || stringToU64(newStatus) == stringToU64("open"),
      "Status must be either 'paused' or 'open'"
    );

    const proposal = this.fundPropTable.get(proposalId);
    check(proposal !== null, "Proposal not found");

    check(
      stringToU64(proposal!.status) != stringToU64("approved") && stringToU64(proposal!.status) != stringToU64("rejected"),
      "Cannot pause or resume fund distribution of an approved or rejected proposal"
    );

    proposal!.status = newStatus;
    this.fundPropTable.update(proposal!, this.receiver);
  }

  // action for revenue sharing
  @action("sendrevenue")
  submitRevenue(
    founder: Name,
    totalRevenue: u64,
    percent: u8,
    available: u64
  ): void {
    requireAuth(founder);

    // --- check role ---
    // const isFounder = this.foundersTable.exists(founder.N);
    // check(isFounder, "Only founders can submit revenue");

    check(totalRevenue > 0, "Total revenue must be greater than 0");
    check(percent > 0 && percent <= 100, "Percent must be between 1 and 100");
    check(available >= totalRevenue * percent / 100, "Insufficient wallet balance to distribute revenue");

    // --- get elected members ---
    const elected: Name[] = [];

    let cursor = this.winnersTable.first();
    while (cursor !== null) {
      if (
        stringToU64(cursor.status) === stringToU64("active") &&
        cursor.isFoundingMember === false
      ) {
        elected.push(cursor.winner);
      }
      cursor = this.winnersTable.next(cursor);
    }

    check(elected.length > 0, "No active elected members found");

    // --- Check time gap since last submission (1 month = 30 * 24 * 60 * 60 seconds) ---
    let lastRecord = this.revenueTable.last();

    while (lastRecord !== null) {
      const now = currentTimeSec();
      const oneMonthInSeconds = 1 * 1 * 5 * 60;

      check(
        now - lastRecord.timestamp >= oneMonthInSeconds, "Revenue can only be distributed once every 30 days"
      );
      lastRecord = null;
    }

    // --- calculate share ---
    const amountToDistribute = totalRevenue / 100 * percent;
    const amountPerMember = amountToDistribute / u64(elected.length);

    check(amountPerMember > 0, "Calculated share is too small to distribute");
    check(available >= totalRevenue * percent / 100, "Insufficient wallet balance to distribute revenue");

    // --- format asset string ---
    const intPart = amountPerMember / 10000;
    const decPart = amountPerMember % 10000;
    const assetStr = intPart.toString() + "." + decPart.toString().padStart(4, "0") + " SNIPX";
    const quantity = Asset.fromString(assetStr);

    // --- config for wallet and token contract ---
    const config = this.fundConfigTable.get(0);
    check(config !== null, "Config missing");
    const communityWallet = config!.communityWallet;
    const tokenContract = config!.tokenContract;

    // --- loop transfer ---
    const transfer = new InlineAction<TokenTransfer>("transfer");
    const perm = new PermissionLevel(communityWallet, Name.fromString("fund"));
    const action = transfer.act(tokenContract, perm);
    
    for (let i = 0; i < elected.length; i++) {
      const recipient = elected[i];
      const transferParams = new TokenTransfer(
        communityWallet,
        recipient,
        quantity,
        `Revenue share`
      );

      action.send(transferParams);

      this.updatePerformance(recipient, 0, 0, 0, u64(amountPerMember));
    }

    // --- Store revenue record ---
    const newId = this.revenueTable.availablePrimaryKey;
    const record = new RevenueRecordTable(
      newId,
      founder,
      totalRevenue,
      percent,
      amountPerMember,
      currentTimeSec(),
      "distributed"
    );
    this.revenueTable.store(record, founder);
  }

  // action to track member performance
  @action("updateperf")
  updatePerformance(
    member: Name,
    addProposals: u64 = 0,
    addTokenAllocProposals: u64 = 0,
    addVotes: u64 = 0,
    addRevenueShare: u64 = 0
  ): void {

    let currentTime = currentTimeSec(); 
    let currentYear: u16 = getYearFromTimestamp(currentTime);
    let currentMonth: u8 = getMonthFromTimestamp(currentTime);

    let recordKey = (u64(member.N) << 32) | (u64(currentYear) << 8) | u64(currentMonth);
    let perfRecord = this.memberPerfTable.get(recordKey);

    // Calculate the performance impact
    let performanceIncrement: u64 = (
      addProposals * 10 +
      addTokenAllocProposals * 15 +
      addVotes * 5 +
      (addRevenueShare / 10_000_000) // 1 point per 1000 token shared
    );

    if (perfRecord === null) {
      // No record yet this month — create new
      perfRecord = new MemberPerformanceTable(
        member,
        currentYear,
        currentMonth,
        addProposals,
        addTokenAllocProposals,
        addVotes,
        addRevenueShare,
        performanceIncrement
      );
      this.memberPerfTable.store(perfRecord, this.receiver);
    } else {
      // Update existing record by incrementing counts
      perfRecord.proposalCount += addProposals;
      perfRecord.tokenAllocProposalCount +=   addTokenAllocProposals;
      perfRecord.votesCast += addVotes;
      perfRecord.revenueShare += addRevenueShare;
      perfRecord.performanceScore += performanceIncrement;
      this.memberPerfTable.update(perfRecord, this.receiver);
    }
  }

  // action to track moderator performance
  @action("updtmodperf")
  updateModeratorPerformance(
    moderator: Name,
    addReports: u64 = 0,
    addProposals: u64 = 0,
    addVotes: u64 = 0
  ): void {
    requireAuth(moderator);

    let currentTime = currentTimeSec(); 
    let currentYear: u16 = getYearFromTimestamp(currentTime);
    let currentMonth: u8 = getMonthFromTimestamp(currentTime);

    let recordKey = (u64(moderator.N) << 32) | (u64(currentYear) << 8) | u64(currentMonth);
    let modPerfRecord = this.moderatorPerfTable.get(recordKey);

    // Scoring logic
    let performanceIncrement: u64 = (
      addReports * 5 +
      addProposals * 10 +
      addVotes * 5
    );

    if (modPerfRecord === null) {
      modPerfRecord = new ModeratorPerformanceTable(
        moderator,
        currentYear,
        currentMonth,
        addReports,
        addProposals,
        addVotes,
        performanceIncrement
      );
      this.moderatorPerfTable.store(modPerfRecord, this.receiver);
    } else {
      modPerfRecord.reportCount += addReports;
      modPerfRecord.proposalCount += addProposals;
      modPerfRecord.votesCast += addVotes;
      modPerfRecord.performanceScore += performanceIncrement;
      this.moderatorPerfTable.update(modPerfRecord, this.receiver);
    }
  }








  

 








}