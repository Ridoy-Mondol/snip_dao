

  Should update the config
    1) "before all" hook for "Should set the config "

  LIQUID STAKING:: Stakes 1000000.0000 SNIPS for a year
    2) "before all" hook for "Should stake 1000000.0000 SNIPS row after transfer"

  LIQUID STAKING:: 1000000.0000 SNIPS stakes on 2 APY over a year
    3) "before all" hook for "should stake 1000000.0000 SNIPS"

  LIQUID STAKING:: 1000000.0000 SNIPS stakes on 6 APY over a year
    4) "before all" hook for "Should stake 1000000.0000 SNIPS"

  LOCKED STAKING:: 1 month with variable APY
    5) "before all" hook for "Should stake 1000000.0000 SNIPS at time 0"

  LOCKED STAKING:: Test lockedStake
    6) "before all" hook for "Should stake 1000000.0000 SNIPS at time 0"

  LOCKED STAKING: Randomized APY changes with multiple stakes over a year
    7) "before all" hook for "Should stake 1000000.0000 SNIPS by stakerA"

  RESTAKE:: Test restake and reward update
    8) "before all" hook for "Should stake 1000000.0000 SNIPS by stakerA"

  LOCKED/LIQUID STAKING:: 1000000.0000 SNIPS check totalStaked value
    9) "before all" hook for "Should transfer 1000000.0000 SNIPS as stake"

  ACCOUNT FLOW:: Test level
    10) "before all" hook for "Should stake 999999.9999 row after transfer"

  REWARDS CLAIM:: 1 month with variable APY
    11) "before all" hook for "Should stake 1000000.0000 SNIPS at time 0"

  UNSTAKE:: 1 month with variable APY
    12) "before all" hook for "Should stake 1000000.0000 SNIPS at time 0"


  0 passing (51ms)
  12 failing

  1) Should update the config
       "before all" hook for "Should set the config ":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/config/config.spec.ts:25:5)

  2) LIQUID STAKING:: Stakes 1000000.0000 SNIPS for a year
       "before all" hook for "Should stake 1000000.0000 SNIPS row after transfer":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/liquid_staking/a_case.ts:25:5)

  3) LIQUID STAKING:: 1000000.0000 SNIPS stakes on 2 APY over a year
       "before all" hook for "should stake 1000000.0000 SNIPS":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/liquid_staking/b_case.ts:23:5)

  4) LIQUID STAKING:: 1000000.0000 SNIPS stakes on 6 APY over a year
       "before all" hook for "Should stake 1000000.0000 SNIPS":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/liquid_staking/c_case.ts:24:5)

  5) LOCKED STAKING:: 1 month with variable APY
       "before all" hook for "Should stake 1000000.0000 SNIPS at time 0":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/locked_staking/a_case.ts:33:5)

  6) LOCKED STAKING:: Test lockedStake
       "before all" hook for "Should stake 1000000.0000 SNIPS at time 0":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/locked_staking/locked_stake.ts:32:5)

  7) LOCKED STAKING: Randomized APY changes with multiple stakes over a year
       "before all" hook for "Should stake 1000000.0000 SNIPS by stakerA":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/complex/d_case.ts:28:5)

  8) RESTAKE:: Test restake and reward update
       "before all" hook for "Should stake 1000000.0000 SNIPS by stakerA":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/restake/a_case.ts:26:5)

  9) LOCKED/LIQUID STAKING:: 1000000.0000 SNIPS check totalStaked value
       "before all" hook for "Should transfer 1000000.0000 SNIPS as stake":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/stakes/total_staked/a_case.ts:25:5)

  10) ACCOUNT FLOW:: Test level
       "before all" hook for "Should stake 999999.9999 row after transfer":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/account/accounts.spec.ts:26:5)

  11) REWARDS CLAIM:: 1 month with variable APY
       "before all" hook for "Should stake 1000000.0000 SNIPS at time 0":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/rewards/claim.spec.ts:37:5)

  12) UNSTAKE:: 1 month with variable APY
       "before all" hook for "Should stake 1000000.0000 SNIPS at time 0":
     Decoding error at root<ConfigTable>.config<StakingConfig>.restrictToSymbol<symbol>: Invalid asset symbol, precision too large
  Error: Invalid asset symbol, precision too large
      at new Symbol (node_modules/@greymass/eosio/src/chain/asset.ts:146:23)
      at Function.fromABI (node_modules/@greymass/eosio/src/chain/asset.ts:139:20)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:170:28)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at decodeInner (node_modules/@greymass/eosio/src/serializer/decoder.ts:186:38)
      at decodeBinary (node_modules/@greymass/eosio/src/serializer/decoder.ts:165:16)
      at Object.abiDecode [as decode] (node_modules/@greymass/eosio/src/serializer/decoder.ts:120:20)
      at TableView.get (node_modules/@proton/vert/src/proton/table.ts:445:25)
      at TableView.getTableRow (node_modules/@proton/vert/src/proton/table.ts:481:24)
      at pushConfig (tests/suites/config/config.ts:70:90)
      at Context.<anonymous> (tests/suites/unstake/unstake.spec.ts:37:5)



