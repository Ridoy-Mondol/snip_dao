type snipstk_Actions = {
  "apy.add": {
    apy:number
  },
  "gov.chgcfg": {
    config:{
  lockingPeriods:{
    
}[];
levelsDef:{
    
}[];
rewardSourceAccount:string;
rewardSourceContract:string;
distributedRewardsForYear:string;
yearStart:number;
isPaused:boolean;
userStakeLimit:number;
restakeTimeLimit:number;
restrictToSymbol:string  
}
  },
  "rwrds.claim": {
    account:string
  },
  "rwrds.rstk": {
    account:string;
    lockPeriod:number
  },
  "stake.lck": {
    account:string;
    stakeKey:number;
    lockPeriod:number
  },
  "stake.lcklst": {
    account:string;
    lockPeriod:number
  },
  "stake.restk": {
    account:string;
    stakeKey:number;
    newLockingPeriod:number
  },
  "stake.unstk": {
    account:string;
    stakeKey:number
  },
  "stake.updt": {
    account:string;
    stakeKey:number
  }
}

export const snipstk = {
  apy_add:(authorization:Authorization[],data:snipstk_Actions['apy.add']):XPRAction<'apy.add'>=>({
	account:'snipstk',
	name:'apy.add',
	authorization,
data}),
 gov_chgcfg:(authorization:Authorization[],data:snipstk_Actions['gov.chgcfg']):XPRAction<'gov.chgcfg'>=>({
	account:'snipstk',
	name:'gov.chgcfg',
	authorization,
data}),
 rwrds_claim:(authorization:Authorization[],data:snipstk_Actions['rwrds.claim']):XPRAction<'rwrds.claim'>=>({
	account:'snipstk',
	name:'rwrds.claim',
	authorization,
data}),
 rwrds_rstk:(authorization:Authorization[],data:snipstk_Actions['rwrds.rstk']):XPRAction<'rwrds.rstk'>=>({
	account:'snipstk',
	name:'rwrds.rstk',
	authorization,
data}),
 stake_lck:(authorization:Authorization[],data:snipstk_Actions['stake.lck']):XPRAction<'stake.lck'>=>({
	account:'snipstk',
	name:'stake.lck',
	authorization,
data}),
 stake_lcklst:(authorization:Authorization[],data:snipstk_Actions['stake.lcklst']):XPRAction<'stake.lcklst'>=>({
	account:'snipstk',
	name:'stake.lcklst',
	authorization,
data}),
 stake_restk:(authorization:Authorization[],data:snipstk_Actions['stake.restk']):XPRAction<'stake.restk'>=>({
	account:'snipstk',
	name:'stake.restk',
	authorization,
data}),
 stake_unstk:(authorization:Authorization[],data:snipstk_Actions['stake.unstk']):XPRAction<'stake.unstk'>=>({
	account:'snipstk',
	name:'stake.unstk',
	authorization,
data}),
 stake_updt:(authorization:Authorization[],data:snipstk_Actions['stake.updt']):XPRAction<'stake.updt'>=>({
	account:'snipstk',
	name:'stake.updt',
	authorization,
data}) 
} 
type snipstk_Tables = {
  "AccountsTable": {
    account:string;
    lockedStake:number;
    totalStaked:number;
    level:number;
    lastRestake:number
  },
  "APYTable": {
    start:number;
    end:number;
    percent:number
  },
  "Balance": {
    account:string;
    tokens:{
    
}[];
    nfts:number[]
  },
  "ConfigTable": {
    key:number;
    config:{
  lockingPeriods:{
    
}[];
levelsDef:{
    
}[];
rewardSourceAccount:string;
rewardSourceContract:string;
distributedRewardsForYear:string;
yearStart:number;
isPaused:boolean;
userStakeLimit:number;
restakeTimeLimit:number;
restrictToSymbol:string  
}
  },
  "StakesTable": {
    start:number;
    amount:number;
    reward:number;
    lastUpdate:number;
    lockedStart:number;
    lockedTill:number;
    lockingPeriod:number;
    multiplier:number
  }
}


    export type Authorization = {
      actor: string;
      permission: "active"|"owner"|string;
  }

    export type XPRAction<A extends keyof (snipstk_Actions)>={
      account: 'snipstk';
      name: A;
      authorization: Authorization[];
      data: snipstk_Actions[A]; 
    }
  
export type Tables<TableName extends keyof (snipstk_Tables)> = snipstk_Tables[TableName];
export type Actions<ActionName extends keyof (snipstk_Actions)> = snipstk_Actions[ActionName];
export function snipstk_actionParams<ActionName extends keyof (snipstk_Actions)>(actionPrams: snipstk_Actions[ActionName]):(object|number|string |number[]|string[])[]{return Object.values(actionPrams)}
