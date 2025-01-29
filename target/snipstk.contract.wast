(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i32_i64_=>_i64 (func (param i32 i64) (result i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i64_=>_f32 (func (param i32 i64) (result f32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i32_i64_i64_i64_i64_i64_f32_f32_=>_i32 (func (param i32 i64 i64 i64 i64 i64 f32 f32) (result i32)))
 (type $i64_i64_=>_i32 (func (param i64 i64) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i64_i64_i64_f32_=>_i32 (func (param i64 i64 i64 f32) (result i32)))
 (type $i64_f32_=>_i32 (func (param i64 f32) (result i32)))
 (type $i32_i32_i32_=>_i64 (func (param i32 i32 i32) (result i64)))
 (type $i32_i32_i64_i64_f32_=>_i64 (func (param i32 i32 i64 i64 f32) (result i64)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_upperbound_i64" (func $~lib/as-chain/env/db_upperbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_remove" (func $~lib/as-chain/env/db_idx64_remove (param i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $snipstk.contract/snipstaking i32 (i32.const 10))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) ",")
 (data (i32.const 2280) "\01\00\00\00\0e\00\00\00x\00t\00o\00k\00e\00n\00s")
 (data (i32.const 2316) ",")
 (data (i32.const 2328) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\01")
 (data (i32.const 2396) "\1c")
 (data (i32.const 2408) "\07\00\00\00\0c\00\00\00 \t\00\00\00\00\00\00P\t")
 (data (i32.const 2428) ",")
 (data (i32.const 2440) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 2476) "\1c")
 (data (i32.const 2488) "\07\00\00\00\0c\00\00\00\90\t\00\00\00\00\00\00P\t")
 (data (i32.const 2508) "<")
 (data (i32.const 2520) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2572) "<")
 (data (i32.const 2584) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\01\00\00\00\n\00\00\00S\00N\00I\00P\00S")
 (data (i32.const 2668) "\1c")
 (data (i32.const 2700) "\1c")
 (data (i32.const 2732) "\1c")
 (data (i32.const 2764) "\1c")
 (data (i32.const 2796) ",")
 (data (i32.const 2808) "\01\00\00\00\10\00\00\00#\00F\00U\00N\00D\00I\00N\00G")
 (data (i32.const 2844) "\\")
 (data (i32.const 2856) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2940) "\1c")
 (data (i32.const 2972) "\1c")
 (data (i32.const 3004) "L")
 (data (i32.const 3016) "\01\00\00\00.\00\00\00C\00o\00n\00f\00i\00g\00 \00e\00n\00t\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 ")
 (data (i32.const 3084) "L")
 (data (i32.const 3096) "\01\00\00\002\00\00\00S\00t\00a\00k\00e\00 \00i\00s\00 \00o\00n\00l\00y\00 \00a\00l\00l\00o\00w\00e\00d\00 \00i\00n\00 ")
 (data (i32.const 3164) ",")
 (data (i32.const 3176) "\01\00\00\00\18\00\00\00.\00 \00#\00E\00_\00S\00T\00K\00_\00W\00T\00I")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\07\00\00\00\0c\00\00\00 \0c\00\00\00\00\00\00p\0c")
 (data (i32.const 3244) "\1c")
 (data (i32.const 3276) "<")
 (data (i32.const 3288) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3340) "L")
 (data (i32.const 3352) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3420) "<")
 (data (i32.const 3432) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3484) "l")
 (data (i32.const 3496) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3596) "L")
 (data (i32.const 3608) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3676) "L")
 (data (i32.const 3688) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3756) "<")
 (data (i32.const 3768) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3820) "\\")
 (data (i32.const 3832) "\01\00\00\00L\00\00\00N\00o\00 \00s\00t\00a\00k\00e\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00l\00o\00c\00k\00i\00n\00g\00.\00 \00#\00E\00_\00S\00T\00K\00_\00N\00S\00L")
 (data (i32.const 3916) "l")
 (data (i32.const 3928) "\01\00\00\00\\\00\00\00Y\00o\00u\00 \00c\00a\00n\00\'\00t\00 \00l\00o\00w\00e\00r\00 \00l\00o\00c\00k\00 \00p\00e\00r\00i\00o\00d\00 \00u\00n\00d\00e\00r\00 \00o\00r\00 \00e\00q\00u\00a\00l\00 \00t\00o\00 ")
 (data (i32.const 4028) "<")
 (data (i32.const 4040) "\01\00\00\00$\00\00\00 \00m\00o\00n\00t\00h\00.\00 \00#\00E\00_\00S\00T\00K\00_\00I\00L\00P")
 (data (i32.const 4092) "\1c")
 (data (i32.const 4104) "\07\00\00\00\0c\00\00\00`\0f\00\00\00\00\00\00\d0\0f")
 (data (i32.const 4124) "\1c")
 (data (i32.const 4136) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4156) "\\")
 (data (i32.const 4168) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4252) "\\")
 (data (i32.const 4264) "\01\00\00\00J\00\00\00N\00o\00 \00c\00o\00r\00r\00e\00s\00p\00o\00n\00d\00i\00n\00g\00 \00l\00o\00c\00k\00i\00n\00g\00 \00p\00e\00r\00i\00o\00d\00 \00f\00o\00u\00n\00d")
 (data (i32.const 4348) "\\")
 (data (i32.const 4360) "\01\00\00\00B\00\00\00S\00t\00a\00k\00e\00 \00e\00n\00t\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00.\00 \00#\00E\00_\00S\00T\00K\00_\00S\00N\00F")
 (data (i32.const 4444) "L")
 (data (i32.const 4456) "\01\00\00\004\00\00\00S\00t\00a\00k\00e\00 \00i\00s\00 \00l\00o\00c\00k\00e\00d\00.\00 \00#\00E\00_\00S\00T\00K\00_\00S\00L")
 (data (i32.const 4524) "<")
 (data (i32.const 4536) "\01\00\00\00&\00\00\00 \00a\00c\00c\00o\00u\00n\00t\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 4588) "\1c")
 (data (i32.const 4600) "\07\00\00\00\0c\00\00\00P\t\00\00\00\00\00\00\c0\11")
 (data (i32.const 4620) "\1c")
 (data (i32.const 4652) ",")
 (data (i32.const 4664) "\01\00\00\00\10\00\00\00U\00n\00s\00t\00a\00k\00e\00 ")
 (data (i32.const 4700) "\1c")
 (data (i32.const 4712) "\07\00\00\00\0c\00\00\00@\12\00\00\00\00\00\00P\t")
 (data (i32.const 4732) ",")
 (data (i32.const 4744) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 4780) "\1c")
 (data (i32.const 4792) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 4812) ",")
 (data (i32.const 4824) "\01\00\00\00\14\00\00\00r\00e\00w\00a\00r\00d\00.\00p\00a\00y")
 (data (i32.const 4860) ",")
 (data (i32.const 4872) "\01\00\00\00\14\00\00\00s\00t\00a\00k\00e\00.\00a\00r\00c\00h")
 (data (i32.const 4908) "L")
 (data (i32.const 4920) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 4988) "l")
 (data (i32.const 5000) "\01\00\00\00R\00\00\00Y\00o\00u\00 \00c\00a\00n\00n\00o\00t\00 \00r\00e\00s\00t\00a\00k\00e\00 \00m\00o\00r\00e\00 \00t\00h\00a\00n\00 \00o\00n\00c\00e\00 \00w\00i\00t\00h\00i\00n\00 ")
 (data (i32.const 5100) ",")
 (data (i32.const 5112) "\01\00\00\00\1a\00\00\00 \00h\00o\00u\00r\00s\00.\00 \00W\00a\00i\00t\00 ")
 (data (i32.const 5148) "<")
 (data (i32.const 5160) "\01\00\00\00&\00\00\00 \00h\00o\00u\00r\00s\00.\00 \00#\00E\00_\00S\00T\00K\00_\00R\00I\00W\00L")
 (data (i32.const 5212) ",")
 (data (i32.const 5224) "\07\00\00\00\14\00\00\00\90\13\00\00\00\00\00\00\00\14\00\00\00\00\00\000\14")
 (data (i32.const 5260) "L")
 (data (i32.const 5272) "\01\00\00\004\00\00\00S\00t\00a\00k\00e\00 \00e\00n\00t\00r\00y\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 ")
 (data (i32.const 5340) "<")
 (data (i32.const 5352) "\01\00\00\00\1e\00\00\00.\00 \00.\00 \00#\00E\00_\00S\00T\00K\00_\00E\00N\00F\00 ")
 (data (i32.const 5404) "\1c")
 (data (i32.const 5416) "\07\00\00\00\0c\00\00\00\a0\14\00\00\00\00\00\00\f0\14")
 (data (i32.const 5436) ",")
 (data (i32.const 5448) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 5484) "\1c")
 (data (i32.const 5496) "\01\00\00\00\06\00\00\00X\00P\00R")
 (data (i32.const 5516) "<")
 (data (i32.const 5528) "\01\00\00\00,\00\00\00M\00i\00s\00s\00i\00n\00g\00 \00r\00e\00w\00a\00r\00d\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 5580) "\1c")
 (data (i32.const 5612) "\\")
 (data (i32.const 5624) "\01\00\00\00J\00\00\00U\00n\00a\00b\00l\00e\00 \00t\00o\00 \00f\00i\00n\00d\00 \00r\00e\00w\00a\00r\00d\00 \00a\00c\00c\00o\00u\00n\00t\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 5708) "\1c")
 (data (i32.const 5740) "\1c")
 (data (i32.const 5772) ",")
 (data (i32.const 5784) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 5820) ",")
 (data (i32.const 5832) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 5868) "<")
 (data (i32.const 5880) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 5932) "<")
 (data (i32.const 5944) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (table $0 2 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0)
 (export "snipstaking" (global $snipstk.contract/snipstaking))
 (export "snipstaking#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "snipstaking#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "snipstaking#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "snipstaking#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "snipstaking#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "snipstaking#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "snipstaking#constructor" (func $snipstk.contract/snipstaking#constructor))
 (export "snipstaking#onTransfer" (func $snipstk.contract/snipstaking#onTransfer))
 (export "snipstaking#lockLastStake" (func $snipstk.contract/snipstaking#lockLastStake))
 (export "snipstaking#lockStakeByKey" (func $snipstk.contract/snipstaking#lockStakeByKey))
 (export "snipstaking#unstake" (func $snipstk.contract/snipstaking#unstake))
 (export "snipstaking#restakeAmountAndReward" (func $snipstk.contract/snipstaking#restakeAmountAndReward))
 (export "snipstaking#claimRewards" (func $snipstk.contract/snipstaking#claimRewards))
 (export "snipstaking#restakeRewards" (func $snipstk.contract/snipstaking#restakeRewards))
 (export "snipstaking#updateStakingReward" (func $snipstk.contract/snipstaking#updateStakingReward))
 (export "snipstaking#addApy" (func $snipstk.contract/snipstaking#addApy))
 (export "snipstaking#changeConfig" (func $snipstk.contract/snipstaking#changeConfig))
 (export "snipstaking#getAPYEffectiveStartFromTime" (func $snipstk.contract/snipstaking#getAPYEffectiveStartFromTime))
 (export "snipstaking#getAPYEffectiveEndFromTime" (func $snipstk.contract/snipstaking#getAPYEffectiveEndFromTime))
 (export "snipstaking#getAPYEffectiveDurationFromTime" (func $snipstk.contract/snipstaking#getAPYEffectiveDurationFromTime))
 (export "snipstaking#getAPYDurationAsYearRatioFromTime" (func $snipstk.contract/snipstaking#getAPYDurationAsYearRatioFromTime))
 (export "snipstaking#getAccountLevelByAmount" (func $snipstk.contract/snipstaking#getAccountLevelByAmount))
 (export "snipstaking#getAPYDuration" (func $snipstk.contract/snipstaking#getAPYDuration))
 (export "snipstaking#getAPYDurationAsPercentOfYear" (func $~lib/rt/stub/__link))
 (export "snipstaking#getAPYsListFromDate" (func $snipstk.contract/snipstaking#getAPYsListFromDate))
 (export "snipstaking#getRelativeStakingDateAsAPYDurationRatio" (func $snipstk.contract/snipstaking#getRelativeStakingDateAsAPYDurationRatio))
 (export "snipstaking#getRewardAccountBalance" (func $snipstk.contract/snipstaking#getRewardAccountBalance))
 (export "snipstaking#claimAllRewards" (func $snipstk.contract/snipstaking#claimAllRewards))
 (export "snipstaking#clearAllRewards" (func $snipstk.contract/snipstaking#clearAllRewards))
 (export "snipstaking#computeFullRewardForStake" (func $snipstk.contract/snipstaking#computeFullRewardForStake))
 (export "snipstaking#computeStakingRewardForPeriod" (func $snipstk.contract/snipstaking#computeStakingRewardForPeriod))
 (export "snipstaking#calculateLockingMultipliers" (func $snipstk.contract/snipstaking#calculateLockingMultipliers))
 (export "apply" (func $snipstk.contract/apply))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/rt/stub/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (nop)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 2384)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 2384)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 2384)
     )
    )
   )
   (local.set $0
    (i32.const 2384)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2384)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 2384)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $1)
    (i32.const 1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 2416)
   (i32.const 1)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 2416)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 2496)
          (i32.const 1)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 2496)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/as-chain/asset/Symbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 9)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 7)
   )
   (i32.const 2528)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $0)
     )
     (local.get $3)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $4
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (local.get $0)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (local.get $0)
             )
             (i32.const 1)
            )
            (local.get $3)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $4)
        (i64.const 65)
       )
      )
      (i32.const 2592)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.or
       (local.get $4)
       (i64.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.shl
       (i64.load
        (local.get $2)
       )
       (i64.const 8)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.or
    (i64.load
     (local.get $2)
    )
    (i64.extend_i32_u
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
    )
   )
  )
  (local.get $2)
 )
 (func $tables/apys.table/APYTable#set:end (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/apys.table/APYTable#set:percent (param $0 i32) (param $1 f32)
  (f32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/apys.table/APYTable#constructor (param $0 i64) (param $1 f32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 12)
    )
   )
   (local.get $0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (i64.const 0)
  )
  (call $tables/apys.table/APYTable#set:percent
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $tables/apys.table/APYTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3853955381122301952)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/IDXDB#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/apys.table/APYTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 15)
    )
   )
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $4)
   (i64.const -1)
  )
  (drop
   (call $tables/apys.table/APYTable#constructor
    (i64.const 0)
    (f32.const 0)
   )
  )
  (local.set $3
   (local.get $0)
  )
  (local.set $8
   (call $tables/apys.table/APYTable.get:tableName)
  )
  (local.set $5
   (i64.and
    (i64.load
     (call $tables/apys.table/APYTable.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $0
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 19)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 28)
        (i32.const 34)
       )
      )
     )
     (local.set $2
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 18)
      )
     )
    )
    (local.get $2)
   )
   (local.get $6)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $2)
   (local.get $5)
  )
  (i32.store offset=24
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (i64.const -1)
  )
  (local.set $5
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i64.load
    (local.get $1)
   )
  )
  (local.set $7
   (i64.load
    (local.get $8)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 17)
    )
   )
   (local.get $5)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $1)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $2)
  )
  (local.get $4)
 )
 (func $tables/config.table/ConfigTable#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 20)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $structs/config.struct/StakingConfig#set:yearStart (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $structs/config.struct/StakingConfig#set:isPaused (param $0 i32) (param $1 i32)
  (i32.store8 offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $structs/config.struct/StakingConfig#set:userStakeLimit (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $structs/config.struct/StakingConfig#set:restakeTimeLimit (param $0 i32) (param $1 i64)
  (i64.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $structs/config.struct/StakingConfig#set:restrictToSymbol (param $0 i32) (param $1 i32)
  (i32.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $structs/config.struct/StakingConfig#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 60)
     (i32.const 21)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $7)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $7)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $7)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $7)
   (local.get $4)
  )
  (call $structs/config.struct/StakingConfig#set:yearStart
   (local.get $7)
   (i64.const 0)
  )
  (call $structs/config.struct/StakingConfig#set:isPaused
   (local.get $7)
   (local.get $5)
  )
  (call $structs/config.struct/StakingConfig#set:userStakeLimit
   (local.get $7)
   (i64.const 0)
  )
  (call $structs/config.struct/StakingConfig#set:restakeTimeLimit
   (local.get $7)
   (i64.const 0)
  )
  (call $structs/config.struct/StakingConfig#set:restrictToSymbol
   (local.get $7)
   (local.get $6)
  )
  (local.get $7)
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 26)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $tables/config.table/ConfigTable#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $structs/config.struct/StakingConfig#constructor
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 23)
      (i32.const 2688)
     )
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 25)
      (i32.const 2720)
     )
     (global.get $~lib/as-chain/name/EMPTY_NAME)
     (global.get $~lib/as-chain/name/EMPTY_NAME)
     (call $~lib/as-chain/asset/Asset#constructor
      (i64.const 0)
      (call $~lib/as-chain/asset/Symbol#constructor
       (i32.const 2656)
       (i32.const 4)
      )
     )
     (i32.const 1)
     (call $~lib/as-chain/asset/Symbol#constructor
      (i32.const 2656)
      (i32.const 4)
     )
    )
   )
  )
  (call $tables/config.table/ConfigTable#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $tables/config.table/ConfigTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4982871454518345728)
  )
  (local.get $0)
 )
 (func $tables/account.table/AccountsTable#set:level (param $0 i32) (param $1 i32)
  (i32.store8 offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/account.table/AccountsTable#set:lastRestake (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/account.table/AccountsTable#constructor (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 40)
     (i32.const 30)
    )
   )
   (local.get $0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $2)
  )
  (call $tables/account.table/AccountsTable#set:level
   (local.get $3)
   (i32.const 0)
  )
  (call $tables/account.table/AccountsTable#set:lastRestake
   (local.get $3)
   (i64.const 0)
  )
  (local.get $3)
 )
 (func $tables/account.table/AccountsTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3607749779137757184)
  )
  (local.get $0)
 )
 (func $snipstk.contract/snipstaking#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (local.get $0)
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 24)
          (i32.const 10)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 11)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/apys.table/APYTable>#constructor
    (i32.load
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 27)
    )
   )
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/config.table/ConfigTable#constructor@varargs)
  )
  (local.set $5
   (call $tables/config.table/ConfigTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/config.table/ConfigTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 19)
    (i32.const 2752)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 28)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $1)
   (i64.const -1)
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 29)
    )
   )
   (local.get $7)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 31)
    )
   )
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $tables/account.table/AccountsTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (local.set $5
   (call $tables/account.table/AccountsTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/account.table/AccountsTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 19)
    (i32.const 2784)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $1)
   (i64.const -1)
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 33)
    )
   )
   (local.get $7)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=20
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/helpers/Contract#get:receiver (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:firstReceiver (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:action (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (local.get $0)
    (local.get $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.eqz
     (local.get $1)
    )
    (i32.const 1)
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (local.tee $2
     (call $~lib/string/String#get:length
      (local.get $0)
     )
    )
    (call $~lib/string/String#get:length
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (block $__inlined_func$~lib/util/string/compareImpl (result i32)
    (local.set $3
     (local.get $0)
    )
    (local.set $0
     (local.get $2)
    )
    (loop $while-continue|0
     (local.set $0
      (i32.sub
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (if
      (local.get $2)
      (block
       (if
        (i32.ne
         (local.tee $2
          (i32.load16_u
           (local.get $3)
          )
         )
         (local.tee $4
          (i32.load16_u
           (local.get $1)
          )
         )
        )
        (br $__inlined_func$~lib/util/string/compareImpl
         (i32.sub
          (local.get $2)
          (local.get $4)
         )
        )
       )
       (local.set $3
        (i32.add
         (local.get $3)
         (i32.const 2)
        )
       )
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 2)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 36)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#previous (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor
   (local.get $2)
   (call $~lib/as-chain/env/db_previous_i64
    (i32.load offset=4
     (local.get $1)
    )
    (local.get $0)
   )
   (i64.load
    (local.get $0)
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $0
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $2)
      (i32.const 0)
     )
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 37)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2864)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $structs/config.struct/StakingConfig#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $10of10
   (block $9of10
    (block $4of10
     (block $3of10
      (block $2of10
       (block $1of10
        (block $0of10
         (block $outOfRange
          (br_table $0of10 $1of10 $2of10 $3of10 $4of10 $9of10 $9of10 $9of10 $9of10 $9of10 $10of10 $outOfRange
           (global.get $~argumentsLength)
          )
         )
         (unreachable)
        )
        (local.set $5
         (call $~lib/rt/__newArray
          (i32.const 0)
          (i32.const 2)
          (i32.const 23)
          (i32.const 2960)
         )
        )
       )
       (local.set $4
        (call $~lib/rt/__newArray
         (i32.const 0)
         (i32.const 2)
         (i32.const 25)
         (i32.const 2992)
        )
       )
      )
      (local.set $0
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (local.set $1
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $3
     (call $~lib/as-chain/asset/Asset#constructor
      (i64.const 0)
      (call $~lib/as-chain/asset/Symbol#constructor
       (i32.const 2656)
       (i32.const 4)
      )
     )
    )
   )
   (local.set $2
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2656)
     (i32.const 4)
    )
   )
  )
  (call $structs/config.struct/StakingConfig#constructor
   (local.get $5)
   (local.get $4)
   (local.get $0)
   (local.get $1)
   (local.get $3)
   (i32.const 0)
   (local.get $2)
  )
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $tables/config.table/ConfigTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $structs/config.struct/StakingConfig#constructor@varargs
     (global.get $~lib/as-chain/name/EMPTY_NAME)
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/config.table/ConfigTable#unpack
    (local.tee $0
     (call $tables/config.table/ConfigTable#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#end
    (i32.load
     (local.get $0)
    )
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#getValue (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#getValue
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (local.tee $0
        (call $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#previous
         (i32.load
          (local.get $0)
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#getEx
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 38)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 2)
      )
     )
    )
    (local.get $1)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $2
    (call $~lib/rt/stub/__new
     (local.get $0)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#getSymbolString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 7)
   )
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (local.get $3)
        (i64.const 8)
       )
      )
     )
    )
    (block
     (local.set $0
      (i32.wrap_i64
       (i64.and
        (local.get $3)
        (i64.const 255)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $1)
       (i32.load offset=8
        (local.get $2)
       )
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $0)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $4
   (select
    (i32.const 0)
    (local.tee $0
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i32.gt_s
     (local.get $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $1
     (call $~lib/typedarray/Uint8Array#constructor
      (local.tee $0
       (select
        (local.tee $0
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $1)
            (i32.const 0)
           )
           (select
            (local.tee $0
             (i32.add
              (local.get $0)
              (local.get $1)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $0)
             (i32.const 0)
            )
           )
           (select
            (local.get $1)
            (local.get $0)
            (i32.gt_s
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $0)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
   (i32.add
    (local.get $4)
    (i32.load offset=4
     (local.get $2)
    )
   )
   (local.get $0)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 40)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimeMs (result i64)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 39)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $1)
   )
  )
  (i64.div_s
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
   (i64.const 1000)
  )
 )
 (func $tables/stakes.table/StakesTable#set:lockingPeriod (param $0 i32) (param $1 i32)
  (i32.store8 offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/stakes.table/StakesTable#set:multiplier (param $0 i32) (param $1 f32)
  (f32.store offset=52
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/stakes.table/StakesTable#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 f32) (result i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 56)
     (i32.const 41)
    )
   )
   (local.get $0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $structs/config.struct/StakingConfig#set:yearStart
   (local.get $4)
   (local.get $2)
  )
  (call $tables/account.table/AccountsTable#set:lastRestake
   (local.get $4)
   (i64.const 0)
  )
  (call $structs/config.struct/StakingConfig#set:userStakeLimit
   (local.get $4)
   (i64.const 0)
  )
  (call $tables/stakes.table/StakesTable#set:lockingPeriod
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/stakes.table/StakesTable#set:multiplier
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/stakes.table/StakesTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -4157660971118100480)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 42)
    )
   )
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $3)
   (i64.const -1)
  )
  (drop
   (call $tables/stakes.table/StakesTable#constructor
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (f32.const 0)
   )
  )
  (local.set $4
   (call $tables/stakes.table/StakesTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/stakes.table/StakesTable.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 19)
    (i32.const 3264)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 43)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 44)
    )
   )
   (local.get $6)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/array/Array<structs/locking.struct/LockingPeriod>#shift (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (local.tee $1
     (i32.load offset=12
      (local.get $0)
     )
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (local.set $3
   (i32.load
    (local.tee $2
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (local.get $2)
   (i32.add
    (local.get $2)
    (i32.const 4)
   )
   (local.tee $4
    (i32.shl
     (local.tee $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
   )
  )
  (i32.store
   (i32.add
    (local.get $2)
    (local.get $4)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (local.get $3)
 )
 (func $snipstk.contract/snipstaking#getLockPeriod (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $0
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (local.set $0
   (i32.load
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.gt_s
     (i32.load offset=12
      (local.get $0)
     )
     (i32.const 0)
    )
    (block
     (if
      (if (result i32)
       (local.tee $2
        (call $~lib/array/Array<structs/locking.struct/LockingPeriod>#shift
         (local.get $0)
        )
       )
       (i32.eq
        (i32.load8_u
         (local.get $2)
        )
        (i32.and
         (local.get $1)
         (i32.const 255)
        )
       )
       (i32.const 0)
      )
      (return
       (local.get $2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 45)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u8> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $tables/account.table/AccountsTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/account.table/AccountsTable#set:level
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $tables/account.table/AccountsTable#set:lastRestake
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $tables/account.table/AccountsTable#unpack
    (local.tee $0
     (call $tables/account.table/AccountsTable#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i64.const 0)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $tables/account.table/AccountsTable#getPrimaryValue (param $0 i32) (result i64)
  (i64.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3696)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packBytes (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.tee $2
      (i32.load offset=12
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3616)
   )
  )
  (local.set $1
   (i32.load offset=4
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $2)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $1)
    (local.get $2)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packBytes
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#pack@virtual
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u8> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $tables/account.table/AccountsTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 33)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 49)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 50)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $tables/account.table/AccountsTable#getSecondaryValue (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3776)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 3296)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $tables/account.table/AccountsTable#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 3360)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $4)
      (call $tables/account.table/AccountsTable#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 3504)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $tables/account.table/AccountsTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $tables/account.table/AccountsTable#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/account.table/AccountsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local.set $4
   (call $tables/account.table/AccountsTable#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#find
      (i32.load
       (local.get $0)
      )
      (local.get $4)
     )
    )
   )
   (i32.const 1424)
  )
  (call $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
    (local.get $0)
    (call $tables/account.table/AccountsTable#getPrimaryValue
     (local.get $1)
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#update
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
   (block
    (local.set $4
     (call $tables/account.table/AccountsTable#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (call $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#find
        (i32.load
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $7
     (i32.load
      (local.tee $6
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $3
     (call $tables/account.table/AccountsTable#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $8
     (i64.load
      (local.get $2)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $tables/account.table/AccountsTable#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $3)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $3)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $5)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $6)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $6)
         )
         (local.get $5)
        )
        (call $tables/account.table/AccountsTable#getPrimaryValue
         (local.get $1)
        )
        (call $tables/account.table/AccountsTable#getSecondaryValue)
        (i64.load
         (local.get $2)
        )
       )
       (local.set $5
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $3
       (call $tables/account.table/AccountsTable#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $6)
      )
     )
     (call $tables/apys.table/APYTable#set:end
      (local.get $6)
      (select
       (i64.const -2)
       (i64.add
        (local.get $3)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $3)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $4)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $tables/apys.table/APYTable#set:end
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $4)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 51)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<f32> (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (f32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $tables/stakes.table/StakesTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 53)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=52
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $3
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $tables/stakes.table/StakesTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $3)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
      (call $tables/account.table/AccountsTable#getSecondaryValue)
      (i64.load
       (local.get $2)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $snipstk.contract/snipstaking#onTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i64)
  (local $6 f32)
  (if
   (i64.eq
    (i64.load
     (local.get $1)
    )
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
   )
   (return)
  )
  (if
   (call $~lib/string/String.__eq
    (local.get $4)
    (i32.const 2816)
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (return)
  )
  (local.set $2
   (call $~lib/as-chain/asset/Symbol#getSymbolString
    (i32.load offset=56
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/string/String.__eq
    (call $~lib/as-chain/asset/Symbol#getSymbolString
     (i32.load offset=8
      (local.get $3)
     )
    )
    (local.get $2)
   )
   (block (result i32)
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 3232)
     (i32.const 1)
     (local.get $2)
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 3232)
    )
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/as-chain/asset/Symbol#getSymbolString
      (i32.load offset=8
       (local.get $3)
      )
     )
     (local.get $2)
    )
   )
   (return)
  )
  (local.set $5
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (local.set $4
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $2
      (call $snipstk.contract/snipstaking#getLockPeriod
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (i32.const 3024)
  )
  (local.set $6
   (if (result f32)
    (local.get $2)
    (f32.load offset=4
     (local.get $2)
    )
    (f32.const 1)
   )
  )
  (if
   (local.tee $2
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
     (i32.load offset=20
      (local.get $0)
     )
     (i64.load
      (local.get $1)
     )
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:table
    (local.get $2)
    (i64.add
     (i64.load offset=16
      (local.get $2)
     )
     (i64.load
      (local.get $3)
     )
    )
   )
   (local.set $2
    (call $tables/account.table/AccountsTable#constructor
     (local.get $1)
     (i64.const 0)
     (i64.load
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#set
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#store
   (local.get $4)
   (call $tables/stakes.table/StakesTable#constructor
    (local.get $5)
    (i64.load
     (local.get $3)
    )
    (local.get $5)
    (local.get $6)
   )
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<f32> (param $0 i32) (result f32)
  (local $1 f32)
  (local.set $1
   (f32.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (local.get $1)
 )
 (func $tables/stakes.table/StakesTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $structs/config.struct/StakingConfig#set:yearStart
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/account.table/AccountsTable#set:lastRestake
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $structs/config.struct/StakingConfig#set:userStakeLimit
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/stakes.table/StakesTable#set:lockingPeriod
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $tables/stakes.table/StakesTable#set:multiplier
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $tables/stakes.table/StakesTable#unpack
    (local.tee $0
     (call $tables/stakes.table/StakesTable#constructor
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (f32.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $snipstk.contract/snipstaking#hasBeenLocked (param $0 i32) (result i32)
  (i64.ne
   (i64.load offset=40
    (local.get $0)
   )
   (i64.const 0)
  )
 )
 (func $snipstk.contract/snipstaking#getAccountLevelByAmount (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $0
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (local.set $0
   (i32.load offset=4
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (local.get $0)
     )
    )
    (if
     (i64.ge_u
      (local.get $1)
      (i64.load offset=8
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
     (block
      (local.set $3
       (i32.load8_u
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (local.get $0)
         (local.get $2)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $snipstk.contract/snipstaking#isLocked (param $0 i32) (result i32)
  (i64.le_u
   (call $~lib/as-chain/system/currentTimeMs)
   (i64.load offset=40
    (local.get $0)
   )
  )
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  (select
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 10)
     )
     (i32.const 1)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 10000)
      )
      (i32.const 3)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 1000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 100)
    )
   )
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 1000000)
     )
     (i32.const 6)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 1000000000)
      )
      (i32.const 8)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 100000000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 10000000)
    )
   )
   (i32.lt_u
    (local.get $0)
    (i32.const 100000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $1)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $1
     (i32.div_u
      (local.get $1)
      (i32.const 10)
     )
    )
   )
  )
 )
 (func $snipstk.contract/snipstaking#lockStake (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (if
   (call $snipstk.contract/snipstaking#isLocked
    (local.get $1)
   )
   (block
    (local.set $7
     (i32.gt_u
      (local.tee $6
       (i32.and
        (local.get $2)
        (i32.const 255)
       )
      )
      (i32.load8_u offset=48
       (local.get $1)
      )
     )
    )
    (block $__inlined_func$~lib/util/number/utoa32
     (if
      (i32.eqz
       (local.tee $4
        (i32.load8_u offset=48
         (local.get $1)
        )
       )
      )
      (block
       (local.set $5
        (i32.const 4144)
       )
       (br $__inlined_func$~lib/util/number/utoa32)
      )
     )
     (call $~lib/util/number/utoa_dec_simple<u32>
      (local.tee $5
       (call $~lib/rt/stub/__new
        (i32.shl
         (local.tee $8
          (call $~lib/util/number/decimalCount32
           (local.get $4)
          )
         )
         (i32.const 1)
        )
        (i32.const 1)
       )
      )
      (local.get $4)
      (local.get $8)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 4112)
     (i32.const 1)
     (local.get $5)
    )
    (call $~lib/as-chain/system/check
     (local.get $7)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 4112)
     )
    )
    (if
     (i32.lt_u
      (local.get $6)
      (i32.load8_u offset=48
       (local.get $1)
      )
     )
     (return
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $0
      (call $snipstk.contract/snipstaking#getLockPeriod
       (local.get $0)
       (local.get $2)
      )
     )
    )
   )
   (i32.const 4272)
  )
  (if
   (i32.eqz
    (local.get $0)
   )
   (return
    (local.get $1)
   )
  )
  (call $tables/account.table/AccountsTable#set:lastRestake
   (local.get $1)
   (local.get $3)
  )
  (call $structs/config.struct/StakingConfig#set:userStakeLimit
   (local.get $1)
   (i64.add
    (local.get $3)
    (i64.mul
     (i64.extend_i32_u
      (i32.load8_u
       (local.get $0)
      )
     )
     (i64.const 2629746000)
    )
   )
  )
  (call $tables/stakes.table/StakesTable#set:lockingPeriod
   (local.get $1)
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $tables/stakes.table/StakesTable#set:multiplier
   (local.get $1)
   (f32.load offset=4
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 3296)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 3360)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3504)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $tables/stakes.table/StakesTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $tables/account.table/AccountsTable#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/account.table/AccountsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $snipstk.contract/snipstaking#lockLastStake (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (block (result i32)
    (local.set $4
     (local.tee $5
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
       (i32.load
        (local.get $0)
       )
       (local.get $1)
      )
     )
    )
    (local.set $6
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
      (local.tee $3
       (i32.load
        (i32.load
         (local.get $5)
        )
       )
      )
      (call $~lib/as-chain/env/db_end_i64
       (i64.load
        (local.get $3)
       )
       (i64.load offset=8
        (local.get $3)
       )
       (i64.load offset=16
        (local.get $3)
       )
      )
      (i64.const 0)
      (i32.const 0)
     )
    )
    (i32.eqz
     (i32.eqz
      (local.tee $4
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#getValue
        (block (result i32)
         (local.set $4
          (i32.load
           (i32.load
            (local.get $4)
           )
          )
         )
         (local.set $3
          (call $~lib/rt/stub/__alloc
           (i32.const 8)
          )
         )
         (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
          (local.get $4)
          (call $~lib/as-chain/env/db_previous_i64
           (i32.load offset=4
            (local.get $6)
           )
           (local.get $3)
          )
          (i64.load
           (local.get $3)
          )
          (i32.const 1)
         )
        )
       )
      )
     )
    )
   )
   (i32.const 3840)
  )
  (if
   (i32.eqz
    (local.get $4)
   )
   (return)
  )
  (if
   (local.tee $3
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
     (i32.load offset=20
      (local.get $0)
     )
     (i64.load
      (local.get $1)
     )
    )
   )
   (if
    (i32.eqz
     (call $snipstk.contract/snipstaking#hasBeenLocked
      (local.get $4)
     )
    )
    (call $tables/apys.table/APYTable#set:end
     (local.get $3)
     (i64.add
      (i64.load offset=8
       (local.get $3)
      )
      (i64.load offset=8
       (local.get $4)
      )
     )
    )
   )
   (local.set $3
    (call $tables/account.table/AccountsTable#constructor
     (local.get $1)
     (i64.load offset=8
      (local.get $4)
     )
     (i64.const 0)
    )
   )
  )
  (call $tables/account.table/AccountsTable#set:level
   (local.get $3)
   (call $snipstk.contract/snipstaking#getAccountLevelByAmount
    (local.get $0)
    (i64.load offset=8
     (local.get $3)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#set
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
   (local.get $5)
   (call $snipstk.contract/snipstaking#lockStake
    (local.get $0)
    (local.get $4)
    (local.get $2)
   )
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#get (result i32)
   (if
    (local.tee $0
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#get (result i32)
      (local.set $2
       (i32.load
        (i32.load
         (local.get $0)
        )
       )
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#get
        (i32.const 0)
        (i32.eqz
         (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
          (local.tee $0
           (local.get $3)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/dbi64/DBI64<tables/stakes.table/StakesTable>#getEx
       (local.get $2)
       (i32.load offset=4
        (local.get $0)
       )
      )
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#get
     (local.get $0)
    )
   )
   (call $tables/stakes.table/StakesTable#constructor
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (f32.const 0)
   )
  )
 )
 (func $snipstk.contract/snipstaking#lockStakeByKey (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#requireGet
      (local.tee $6
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (local.get $2)
      (i32.const 3840)
     )
    )
   )
   (return)
  )
  (if
   (local.tee $4
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
     (i32.load offset=20
      (local.get $0)
     )
     (i64.load
      (local.get $1)
     )
    )
   )
   (if
    (i32.eqz
     (call $snipstk.contract/snipstaking#hasBeenLocked
      (local.get $5)
     )
    )
    (call $tables/apys.table/APYTable#set:end
     (local.get $4)
     (i64.add
      (i64.load offset=8
       (local.get $4)
      )
      (i64.load offset=8
       (local.get $5)
      )
     )
    )
   )
   (local.set $4
    (call $tables/account.table/AccountsTable#constructor
     (local.get $1)
     (i64.load offset=8
      (local.get $5)
     )
     (i64.const 0)
    )
   )
  )
  (call $tables/account.table/AccountsTable#set:level
   (local.get $4)
   (call $snipstk.contract/snipstaking#getAccountLevelByAmount
    (local.get $0)
    (i64.load offset=8
     (local.get $4)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#set
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $4)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
   (local.get $6)
   (call $snipstk.contract/snipstaking#lockStake
    (local.get $0)
    (local.get $5)
    (local.get $3)
   )
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/as-chain/name/N2S (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
     )
     (local.set $4
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 15)
         )
        )
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.get $2)
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $2)
        (local.tee $5
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $2)
        (local.get $5)
       )
      )
     )
     (i32.store8
      (i32.add
       (local.get $3)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $4)
     )
     (local.set $0
      (select
       (i64.shr_u
        (local.get $0)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (call $~lib/array/Array<u8>#slice
     (local.get $2)
     (i32.const 0)
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/name/Name#toString (param $0 i32) (result i32)
  (call $~lib/as-chain/name/N2S
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $errors/account.error/ERROR_ACCOUNT_NOT_EXISTS (param $0 i32) (result i32)
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 4608)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#join
   (i32.const 4608)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#get (result i32)
   (if
    (local.tee $0
     (call $~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#get
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#get
     (local.get $0)
    )
   )
   (call $tables/account.table/AccountsTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i64.const 0)
    (i64.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 53)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#lowerBound (param $0 i32) (param $1 i64) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (local.get $1)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#lowerBound
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $tables/apys.table/APYTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/apys.table/APYTable#set:percent
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/apys.table/APYTable>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/apys.table/APYTable>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $0)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (drop
    (call $tables/apys.table/APYTable#unpack
     (local.tee $1
      (call $tables/apys.table/APYTable#constructor
       (i64.const 0)
       (f32.const 0)
      )
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/array/Array<tables/apys.table/APYTable>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/array/ensureCapacity
   (local.get $0)
   (local.tee $3
    (i32.add
     (local.tee $2
      (i32.load offset=12
       (local.get $0)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 2)
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $2)
     (i32.const 2)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/apys.table/APYTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/apys.table/APYTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $snipstk.contract/snipstaking#getAPYsListFromDate (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 52)
    (i32.const 4640)
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue
      (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#begin
       (i32.load
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
     )
    )
   )
   (return
    (local.get $3)
   )
  )
  (if
   (local.get $2)
   (if
    (if (result i32)
     (i64.lt_u
      (local.get $1)
      (i64.load offset=8
       (local.get $2)
      )
     )
     (i32.const 1)
     (i64.eqz
      (i64.load offset=8
       (local.get $2)
      )
     )
    )
    (call $~lib/array/Array<tables/apys.table/APYTable>#push
     (local.get $3)
     (local.get $2)
    )
   )
  )
  (loop $while-continue|1
   (if
    (local.get $2)
    (block
     (local.set $5
      (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#requireFind
       (i32.load
        (local.tee $4
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
       (i64.load
        (local.get $2)
       )
       (i32.const 1872)
      )
     )
     (local.set $4
      (i32.load
       (i32.load
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (if
      (local.tee $2
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
         (local.get $4)
         (call $~lib/as-chain/env/db_next_i64
          (i32.load offset=4
           (local.get $5)
          )
          (local.get $2)
         )
         (i64.load
          (local.get $2)
         )
         (i32.const 1)
        )
       )
      )
      (if
       (if (result i32)
        (i64.lt_u
         (local.get $1)
         (i64.load offset=8
          (local.get $2)
         )
        )
        (i32.const 1)
        (i64.eqz
         (i64.load offset=8
          (local.get $2)
         )
        )
       )
       (call $~lib/array/Array<tables/apys.table/APYTable>#push
        (local.get $3)
        (local.get $2)
       )
      )
     )
     (br $while-continue|1)
    )
   )
  )
  (local.get $3)
 )
 (func $snipstk.contract/snipstaking#getAPYEffectiveEndFromTime (param $0 i32) (param $1 i64) (result i64)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
      (local.tee $0
       (i32.load
        (i32.load
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (call $~lib/as-chain/env/db_upperbound_i64
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
      (i64.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i64.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/currentTimeMs)
 )
 (func $snipstk.contract/snipstaking#computeStakingRewardForPeriod (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 f32) (result i64)
  (if
   (i64.eqz
    (local.tee $2
     (select
      (i64.sub
       (local.get $3)
       (local.get $2)
      )
      (i64.const 0)
      (i64.lt_u
       (local.get $2)
       (local.get $3)
      )
     )
    )
   )
   (return
    (i64.const 0)
   )
  )
  (i64.trunc_f32_u
   (f32.mul
    (f32.convert_i64_u
     (i64.trunc_f32_u
      (f32.mul
       (f32.convert_i64_u
        (i64.load offset=8
         (local.get $1)
        )
       )
       (f32.div
        (local.get $4)
        (f32.const 100)
       )
      )
     )
    )
    (f32.div
     (f32.convert_i64_u
      (local.get $2)
     )
     (f32.const 31556952064)
    )
   )
  )
 )
 (func $structs/locked-reward.struct/LockedReward#constructor (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 54)
    )
   )
   (local.get $0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $snipstk.contract/snipstaking#calculateLockingMultipliers (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 f32) (param $7 f32) (result i32)
  (local $8 i64)
  (block $folding-inner0
   (br_if $folding-inner0
    (i64.ge_u
     (local.get $1)
     (local.get $4)
    )
   )
   (br_if $folding-inner0
    (i64.eqz
     (local.tee $8
      (i64.sub
       (local.get $4)
       (local.get $1)
      )
     )
    )
   )
   (return
    (call $structs/locked-reward.struct/LockedReward#constructor
     (i64.trunc_f32_u
      (f32.mul
       (f32.convert_i64_u
        (i64.trunc_f32_u
         (f32.mul
          (f32.convert_i64_u
           (local.get $5)
          )
          (select
           (f32.div
            (f32.convert_i64_u
             (local.tee $1
              (if (result i64)
               (i64.lt_u
                (local.tee $1
                 (select
                  (local.get $2)
                  (local.get $1)
                  (i64.lt_u
                   (local.get $1)
                   (local.get $2)
                  )
                 )
                )
                (local.tee $2
                 (select
                  (local.get $3)
                  (local.get $4)
                  (i64.lt_u
                   (local.get $3)
                   (local.get $4)
                  )
                 )
                )
               )
               (i64.sub
                (local.get $2)
                (local.get $1)
               )
               (i64.const 0)
              )
             )
            )
            (f32.convert_i64_u
             (local.get $8)
            )
           )
           (f32.const 0)
           (local.tee $0
            (i64.ne
             (local.get $8)
             (i64.const 0)
            )
           )
          )
         )
        )
       )
       (local.get $6)
      )
     )
     (i64.trunc_f32_u
      (f32.mul
       (f32.convert_i64_u
        (i64.trunc_f32_u
         (f32.mul
          (f32.convert_i64_u
           (local.get $5)
          )
          (select
           (f32.div
            (f32.convert_i64_u
             (select
              (i64.sub
               (local.get $8)
               (local.get $1)
              )
              (i64.const 0)
              (i64.lt_u
               (local.get $1)
               (local.get $8)
              )
             )
            )
            (f32.convert_i64_u
             (local.get $8)
            )
           )
           (f32.const 0)
           (local.get $0)
          )
         )
        )
       )
       (local.get $7)
      )
     )
    )
   )
  )
  (call $structs/locked-reward.struct/LockedReward#constructor
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $snipstk.contract/snipstaking#computeFullRewardForStake (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local.set $4
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (local.set $5
   (call $snipstk.contract/snipstaking#getAPYsListFromDate
    (local.get $0)
    (i64.load offset=24
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $6
      (call $snipstk.contract/snipstaking#getLockPeriod
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $6)
   )
   (return
    (i64.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.gt_s
     (i32.load offset=12
      (local.get $5)
     )
     (i32.const 0)
    )
    (if
     (local.tee $3
      (call $~lib/array/Array<structs/locking.struct/LockingPeriod>#shift
       (local.get $5)
      )
     )
     (block
      (local.set $2
       (call $snipstk.contract/snipstaking#getAPYEffectiveEndFromTime
        (local.get $0)
        (i64.add
         (i64.load
          (local.get $3)
         )
         (i64.const 1)
        )
       )
      )
      (br_if $while-continue|0
       (i32.or
        (i64.ge_u
         (local.tee $7
          (if (result i64)
           (i64.lt_u
            (i64.load
             (local.get $3)
            )
            (i64.load offset=24
             (local.get $1)
            )
           )
           (i64.load offset=24
            (local.get $1)
           )
           (i64.load
            (local.get $3)
           )
          )
         )
         (local.tee $2
          (select
           (local.get $2)
           (local.get $4)
           (i64.lt_u
            (local.get $2)
            (local.get $4)
           )
          )
         )
        )
        (i64.eq
         (local.get $2)
         (local.get $7)
        )
       )
      )
      (local.set $8
       (i64.add
        (call $snipstk.contract/snipstaking#computeStakingRewardForPeriod
         (local.get $0)
         (local.get $1)
         (local.get $7)
         (local.get $2)
         (f32.load offset=16
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (br $while-continue|0)
     )
    )
   )
  )
  (i64.load
   (call $snipstk.contract/snipstaking#calculateLockingMultipliers
    (local.get $0)
    (i64.load offset=24
     (local.get $1)
    )
    (i64.load offset=32
     (local.get $1)
    )
    (i64.load offset=40
     (local.get $1)
    )
    (local.get $4)
    (local.get $8)
    (f32.load offset=52
     (local.get $1)
    )
    (f32.load offset=4
     (local.get $6)
    )
   )
  )
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (local.get $0)
   )
   (return
    (i32.const 4144)
   )
  )
  (if
   (i64.le_u
    (local.get $0)
    (i64.const 4294967295)
   )
   (call $~lib/util/number/utoa_dec_simple<u32>
    (local.tee $3
     (call $~lib/rt/stub/__new
      (i32.shl
       (local.tee $2
        (call $~lib/util/number/decimalCount32
         (local.tee $1
          (i32.wrap_i64
           (local.get $0)
          )
         )
        )
       )
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (local.get $1)
    (local.get $2)
   )
   (block
    (local.set $2
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $1
         (select
          (select
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const 100000000000)
             )
             (i32.const 10)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000)
            )
           )
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const 100000000000000)
             )
             (i32.const 13)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000000)
            )
           )
           (i64.lt_u
            (local.get $0)
            (i64.const 1000000000000)
           )
          )
          (select
           (i32.add
            (i64.ge_u
             (local.get $0)
             (i64.const 10000000000000000)
            )
            (i32.const 16)
           )
           (i32.add
            (i32.add
             (i64.ge_u
              (local.get $0)
              (i64.const -8446744073709551616)
             )
             (i32.const 18)
            )
            (i64.ge_u
             (local.get $0)
             (i64.const 1000000000000000000)
            )
           )
           (i64.lt_u
            (local.get $0)
            (i64.const 100000000000000000)
           )
          )
          (i64.lt_u
           (local.get $0)
           (i64.const 1000000000000000)
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
    )
    (loop $do-continue|0
     (i32.store16
      (i32.add
       (local.get $2)
       (i32.shl
        (local.tee $1
         (i32.sub
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.add
       (i32.wrap_i64
        (i64.rem_u
         (local.get $0)
         (i64.const 10)
        )
       )
       (i32.const 48)
      )
     )
     (br_if $do-continue|0
      (i64.ne
       (local.tee $0
        (i64.div_u
         (local.get $0)
         (i64.const 10)
        )
       )
       (i64.const 0)
      )
     )
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 57)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 60)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#send (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/token/token.inline/sendTransferToken (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 56)
    )
   )
   (i32.const 0)
  )
  (local.set $7
   (call $~lib/as-chain/name/S2N
    (i32.const 4752)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $6)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $7
   (call $~lib/as-chain/name/S2N
    (i32.const 4800)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $7)
  )
  (local.set $6
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $1)
    (local.get $6)
   )
  )
  (local.set $8
   (i32.load
    (local.get $5)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 58)
    )
   )
   (local.get $8)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 55)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $4)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 59)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $5)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $5)
    )
    (i32.load
     (local.get $5)
    )
    (local.get $1)
    (call $~lib/proton-tsc/token/token.inline/Transfer#pack
     (local.get $0)
    )
   )
  )
 )
 (func $inlines/pay-reward.inline/PayRewardActionData#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 16)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $inlines/pay-reward.inline/sendPayReward (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 61)
    )
   )
   (local.get $2)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $4)
   (local.get $3)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 62)
    )
   )
   (i32.const 0)
  )
  (local.set $3
   (call $~lib/as-chain/name/S2N
    (i32.const 4832)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const -4157661383434960896)
  )
  (local.set $2
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $0)
    (local.get $2)
   )
  )
  (local.set $5
   (i32.load
    (local.get $1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 63)
    )
   )
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (drop
   (i32.load offset=4
    (local.tee $0
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 59)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (i32.const 0)
   (i32.load offset=8
    (local.get $1)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $1)
    )
    (i32.load
     (local.get $1)
    )
    (local.get $0)
    (call $inlines/pay-reward.inline/PayRewardActionData#pack
     (local.get $4)
    )
   )
  )
 )
 (func $inlines/archive-stake.inline/ArchiveStakeActionData#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 40)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $inlines/archive-stake.inline/sendArchiveStake (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local.set $5
   (i64.load
    (local.get $2)
   )
  )
  (local.set $6
   (i64.load offset=8
    (local.get $2)
   )
  )
  (local.set $7
   (i64.load offset=16
    (local.get $2)
   )
  )
  (local.set $8
   (i64.load offset=24
    (local.get $2)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 40)
     (i32.const 64)
    )
   )
   (local.get $1)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $2)
   (local.get $6)
  )
  (call $structs/config.struct/StakingConfig#set:yearStart
   (local.get $2)
   (local.get $7)
  )
  (call $tables/account.table/AccountsTable#set:lastRestake
   (local.get $2)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 65)
    )
   )
   (i32.const 0)
  )
  (local.set $5
   (call $~lib/as-chain/name/S2N
    (i32.const 4880)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.const -4261147989071888384)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (i64.const 3617214756542218240)
  )
  (local.set $4
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $0)
    (local.get $4)
   )
  )
  (local.set $1
   (i32.load
    (local.get $1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 66)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $4)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 59)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
    (local.get $1)
    (call $inlines/archive-stake.inline/ArchiveStakeActionData#pack
     (local.get $2)
    )
   )
  )
 )
 (func $snipstk.contract/snipstaking#unstake (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#requireGet
      (local.tee $5
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (local.get $2)
      (i32.const 4368)
     )
    )
   )
   (return)
  )
  (if
   (i32.eqz
    (local.get $1)
   )
   (return)
  )
  (local.set $7
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $snipstk.contract/snipstaking#isLocked
     (local.get $3)
    )
   )
   (i32.const 4464)
  )
  (if
   (i64.lt_u
    (local.get $7)
    (i64.load offset=40
     (local.get $3)
    )
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $6
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $6)
   )
   (return)
  )
  (local.set $4
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#requireGet
    (i32.load offset=20
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (call $errors/account.error/ERROR_ACCOUNT_NOT_EXISTS
     (local.get $1)
    )
   )
  )
  (if
   (call $snipstk.contract/snipstaking#hasBeenLocked
    (local.get $3)
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $4)
    (i64.sub
     (i64.load offset=8
      (local.get $4)
     )
     (i64.load offset=8
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.sub
    (i64.load offset=16
     (local.get $4)
    )
    (i64.load offset=8
     (local.get $3)
    )
   )
  )
  (call $tables/account.table/AccountsTable#set:level
   (local.get $4)
   (call $snipstk.contract/snipstaking#getAccountLevelByAmount
    (local.get $0)
    (i64.load offset=8
     (local.get $4)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#update
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $4)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (i64.add
    (call $snipstk.contract/snipstaking#computeFullRewardForStake
     (local.get $0)
     (local.get $3)
    )
    (i64.load offset=16
     (local.get $3)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
   (local.get $5)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (call $~lib/as-chain/asset/Asset#constructor
    (i64.load offset=8
     (local.get $3)
    )
    (i32.load offset=56
     (i32.load offset=8
      (local.get $6)
     )
    )
   )
  )
  (local.set $8
   (i32.load offset=12
    (i32.load offset=8
     (local.get $6)
    )
   )
  )
  (local.set $9
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 4720)
   (i32.const 1)
   (call $~lib/util/number/utoa64
    (local.get $2)
   )
  )
  (call $~lib/proton-tsc/token/token.inline/sendTransferToken
   (local.get $8)
   (local.get $9)
   (local.get $1)
   (local.get $4)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4720)
   )
  )
  (if
   (i64.ne
    (i64.load offset=16
     (local.get $3)
    )
    (i64.const 0)
   )
   (call $inlines/pay-reward.inline/sendPayReward
    (i32.load offset=8
     (i32.load offset=8
      (local.get $6)
     )
    )
    (i32.load
     (local.get $0)
    )
    (local.get $1)
    (i64.load offset=16
     (local.get $3)
    )
   )
  )
  (call $inlines/archive-stake.inline/sendArchiveStake
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (local.get $3)
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#requireFind
    (i32.load
     (local.get $5)
    )
    (local.tee $2
     (i64.load
      (local.get $3)
     )
    )
    (i32.const 1648)
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#find
      (local.tee $1
       (i32.load
        (local.get $5)
       )
      )
      (local.get $2)
     )
    )
   )
   (i32.const 4928)
  )
  (drop
   (i32.load
    (local.get $1)
   )
  )
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $3)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $0)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
    (block
     (if
      (i32.ge_s
       (i32.load
        (i32.load
         (local.tee $3
          (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (i32.load offset=4
             (local.get $1)
            )
            (local.get $0)
           )
           (local.get $2)
          )
         )
        )
       )
       (i32.const 0)
      )
      (block $__inlined_func$~lib/as-chain/idxdb/IDXDB#remove@virtual
       (local.set $4
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $1)
         )
         (local.get $0)
        )
       )
       (local.set $3
        (i32.load
         (local.get $3)
        )
       )
       (if
        (i32.eq
         (i32.load
          (i32.sub
           (local.get $4)
           (i32.const 8)
          )
         )
         (i32.const 34)
        )
        (block
         (call $~lib/as-chain/env/db_idx64_remove
          (i32.load
           (local.get $3)
          )
         )
         (br $__inlined_func$~lib/as-chain/idxdb/IDXDB#remove@virtual)
        )
       )
       (unreachable)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.eq
    (local.get $2)
    (i64.sub
     (i64.load offset=8
      (local.get $5)
     )
     (i64.const 1)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $5)
    (i64.const -1)
   )
  )
 )
 (func $snipstk.contract/snipstaking#restakeAmountAndReward (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#requireGet
      (local.tee $4
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (local.get $2)
      (i32.const 4368)
     )
    )
   )
   (return)
  )
  (local.set $2
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $snipstk.contract/snipstaking#isLocked
     (local.get $1)
    )
   )
   (i32.const 4464)
  )
  (if
   (i64.lt_u
    (local.get $2)
    (i64.load offset=40
     (local.get $1)
    )
   )
   (return)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $1)
   (i64.add
    (i64.load offset=8
     (local.get $1)
    )
    (i64.load offset=16
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $1)
   (i64.const 0)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
   (local.get $4)
   (call $snipstk.contract/snipstaking#lockStake
    (local.get $0)
    (local.get $1)
    (local.get $3)
   )
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
    (local.tee $0
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/env/db_lowerbound_i64
     (i64.load
      (local.get $0)
     )
     (i64.load offset=8
      (local.get $0)
     )
     (i64.load offset=16
      (local.get $0)
     )
     (i64.const 0)
    )
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<tables/stakes.table/StakesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (local.set $2
   (i32.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/stakes.table/StakesTable>#constructor
    (local.get $2)
    (call $~lib/as-chain/env/db_next_i64
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $0)
    )
    (i64.load
     (local.get $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $snipstk.contract/snipstaking#claimAllRewards (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#first
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
     )
    )
   )
   (return
    (i64.const 0)
   )
  )
  (loop $while-continue|1
   (if
    (local.get $1)
    (if
     (local.get $1)
     (block
      (call $~lib/as-chain/idxdb/IDXDB#set:table
       (local.get $1)
       (i64.add
        (call $snipstk.contract/snipstaking#computeFullRewardForStake
         (local.get $0)
         (local.get $1)
        )
        (i64.load offset=16
         (local.get $1)
        )
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
       (local.get $2)
       (local.get $1)
       (i32.load
        (local.get $0)
       )
      )
      (local.set $3
       (i64.add
        (local.get $3)
        (i64.load offset=16
         (local.get $1)
        )
       )
      )
      (local.set $1
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#next
        (local.get $2)
        (local.get $1)
       )
      )
      (br $while-continue|1)
     )
    )
   )
  )
  (local.get $3)
 )
 (func $snipstk.contract/snipstaking#clearAllRewards (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#first
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
     )
    )
   )
   (return)
  )
  (loop $while-continue|1
   (if
    (local.get $1)
    (if
     (local.get $1)
     (block
      (call $~lib/as-chain/idxdb/IDXDB#set:table
       (local.get $1)
       (i64.const 0)
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
       (local.get $2)
       (local.get $1)
       (i32.load
        (local.get $0)
       )
      )
      (local.set $1
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#next
        (local.get $2)
        (local.get $1)
       )
      )
      (br $while-continue|1)
     )
    )
   )
  )
 )
 (func $snipstk.contract/snipstaking#claimRewards (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (local.set $3
   (call $snipstk.contract/snipstaking#claimAllRewards
    (local.get $0)
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (i32.load offset=12
      (i32.load offset=8
       (local.get $2)
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (i32.load offset=12
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (return)
  )
  (if
   (i64.eqz
    (local.get $3)
   )
   (return)
  )
  (call $inlines/pay-reward.inline/sendPayReward
   (i32.load offset=8
    (i32.load offset=8
     (local.get $2)
    )
   )
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (local.get $3)
  )
  (call $snipstk.contract/snipstaking#clearAllRewards
   (local.get $0)
   (local.get $1)
  )
 )
 (func $snipstk.contract/snipstaking#restakeRewards (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (if
   (i64.eqz
    (local.tee $6
     (call $snipstk.contract/snipstaking#claimAllRewards
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return)
  )
  (local.set $4
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (if
   (i32.eqz
    (local.tee $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#requireGet
      (i32.load offset=20
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (call $errors/account.error/ERROR_ACCOUNT_NOT_EXISTS
       (local.get $1)
      )
     )
    )
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $3
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (if
   (i32.eqz
    (local.get $3)
   )
   (return)
  )
  (local.set $7
   (i64.gt_u
    (local.get $4)
    (i64.add
     (i64.load offset=32
      (local.get $5)
     )
     (i64.load offset=48
      (i32.load offset=8
       (local.get $3)
      )
     )
    )
   )
  )
  (local.set $8
   (i64.sub
    (i64.add
     (i64.load offset=32
      (local.get $5)
     )
     (i64.load offset=48
      (i32.load offset=8
       (local.get $3)
      )
     )
    )
    (local.get $4)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 5232)
   (i32.const 1)
   (call $~lib/util/number/utoa64
    (i64.div_u
     (i64.div_u
      (i64.div_u
       (i64.load offset=48
        (i32.load offset=8
         (local.get $3)
        )
       )
       (i64.const 1000)
      )
      (i64.const 60)
     )
     (i64.const 60)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 5232)
   (i32.const 3)
   (call $~lib/util/number/utoa64
    (i64.div_u
     (i64.div_u
      (i64.div_u
       (local.get $8)
       (i64.const 1000)
      )
      (i64.const 60)
     )
     (i64.const 60)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (local.get $7)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 5232)
   )
  )
  (if
   (i64.lt_u
    (local.get $4)
    (i64.add
     (i64.load offset=32
      (local.get $5)
     )
     (i64.load offset=48
      (i32.load offset=8
       (local.get $3)
      )
     )
    )
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $3
      (call $snipstk.contract/snipstaking#getLockPeriod
       (local.get $0)
       (local.get $2)
      )
     )
    )
   )
   (i32.const 4272)
  )
  (if
   (i32.eqz
    (local.get $3)
   )
   (return)
  )
  (drop
   (call $snipstk.contract/snipstaking#lockStake
    (local.get $0)
    (local.tee $3
     (call $tables/stakes.table/StakesTable#constructor
      (local.get $4)
      (local.get $6)
      (i64.const 0)
      (f32.const 0)
     )
    )
    (local.get $2)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#store
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (call $snipstk.contract/snipstaking#clearAllRewards
   (local.get $0)
   (local.get $1)
  )
 )
 (func $snipstk.contract/snipstaking#updateStakingReward (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#requireGet
      (local.tee $3
       (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#constructor
        (i32.load
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (local.get $2)
      (block (result i32)
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5424)
        (i32.const 1)
        (call $~lib/as-chain/name/Name#toString
         (local.get $1)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#join
        (i32.const 5424)
       )
      )
     )
    )
   )
   (return)
  )
  (local.set $2
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $1)
   (i64.add
    (call $snipstk.contract/snipstaking#computeFullRewardForStake
     (local.get $0)
     (local.get $1)
    )
    (i64.load offset=16
     (local.get $1)
    )
   )
  )
  (call $structs/config.struct/StakingConfig#set:yearStart
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/stakes.table/StakesTable>#update
   (local.get $3)
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $tables/apys.table/APYTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 20)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (i32.const 1)
     (i32.const 3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (i32.const 1)
    )
   )
  )
  (i64.store
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $tables/apys.table/APYTable#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i32.eqz
    (local.get $1)
   )
   (block
    (local.set $2
     (i64.load offset=8
      (local.get $0)
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (local.get $2)
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 5456)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 3296)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 3360)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3504)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $tables/apys.table/APYTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $tables/apys.table/APYTable#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/apys.table/APYTable#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/apys.table/APYTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $tables/apys.table/APYTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $tables/apys.table/APYTable#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $snipstk.contract/snipstaking#addApy (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (local.set $5
   (call $~lib/as-chain/system/currentTimeMs)
  )
  (if
   (i32.ne
    (i32.load offset=4
     (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#begin
      (i32.load
       (local.tee $2
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
     )
    )
    (i32.load offset=4
     (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#end
      (i32.load
       (local.get $2)
      )
     )
    )
   )
   (block
    (local.set $3
     (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#end
      (i32.load
       (local.tee $2
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
     )
    )
    (local.set $4
     (i32.load
      (i32.load
       (local.get $2)
      )
     )
    )
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (if
     (local.tee $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#constructor
        (local.get $4)
        (call $~lib/as-chain/env/db_previous_i64
         (i32.load offset=4
          (local.get $3)
         )
         (local.get $2)
        )
        (i64.load
         (local.get $2)
        )
        (i32.const 1)
       )
      )
     )
     (block
      (call $tables/apys.table/APYTable#set:end
       (local.get $2)
       (local.get $5)
      )
      (local.set $3
       (i32.load
        (local.get $0)
       )
      )
      (local.set $6
       (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#requireFind
        (i32.load
         (local.tee $4
          (i32.load offset=12
           (local.get $0)
          )
         )
        )
        (i64.load
         (local.get $2)
        )
        (i32.const 1424)
       )
      )
      (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#update
       (i32.load
        (local.get $4)
       )
       (local.get $6)
       (local.get $2)
       (local.get $3)
      )
     )
    )
   )
  )
  (local.set $2
   (call $tables/apys.table/APYTable#constructor
    (local.get $5)
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/apys.table/APYTable>#store
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor
       (local.tee $1
        (i32.load
         (i32.load
          (local.get $0)
         )
        )
       )
       (call $~lib/as-chain/env/db_lowerbound_i64
        (i64.load
         (local.get $1)
        )
        (i64.load offset=8
         (local.get $1)
        )
        (i64.load offset=16
         (local.get $1)
        )
        (i64.const 0)
       )
       (i64.const 0)
       (i32.const 0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $tables/apys.table/APYTable#set:end
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $1
      (call $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/as-chain/mi/MultiIndex<tables/config.table/ConfigTable>#previous
       (i32.load
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $4
      (local.tee $3
       (i64.load
        (if (result i32)
         (local.tee $1
          (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#get (result i32)
           (local.set $2
            (i32.load
             (i32.load
              (local.get $0)
             )
            )
           )
           (drop
            (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#get
             (i32.const 0)
             (i32.eqz
              (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
               (local.get $1)
              )
             )
            )
           )
           (call $~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#getEx
            (local.get $2)
            (i32.load offset=4
             (local.get $1)
            )
           )
          )
         )
         (local.get $1)
         (block (result i32)
          (global.set $~argumentsLength
           (i32.const 0)
          )
          (call $tables/config.table/ConfigTable#constructor@varargs)
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $3)
       (i64.const -2)
      )
      (call $tables/apys.table/APYTable#set:end
       (local.get $0)
       (i64.const -2)
      )
      (call $tables/apys.table/APYTable#set:end
       (local.get $0)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $structs/config.struct/StakingConfig#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.const 4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
    (block
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 5)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 9)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (i32.add
   (local.get $2)
   (i32.const 65)
  )
 )
 (func $tables/config.table/ConfigTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (call $structs/config.struct/StakingConfig#getSize
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.const 8)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local.set $4
   (local.tee $6
    (i64.load
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#find (result i32)
      (if
       (i32.ge_s
        (local.tee $5
         (call $~lib/as-chain/env/db_find_i64
          (i64.load
           (local.tee $3
            (i32.load
             (i32.load
              (local.get $0)
             )
            )
           )
          )
          (i64.load offset=8
           (local.get $3)
          )
          (i64.load offset=16
           (local.get $3)
          )
          (local.get $6)
         )
        )
        (i32.const 0)
       )
       (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/config.table/ConfigTable>#find
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor
         (local.get $3)
         (local.get $5)
         (local.get $4)
         (i32.const 1)
        )
       )
      )
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor
       (local.get $3)
       (local.get $5)
       (i64.const 0)
       (i32.const 0)
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $3
   (i32.const 0)
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $tables/config.table/ConfigTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $tables/account.table/AccountsTable#getSecondaryValue)
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $snipstk.contract/snipstaking#changeConfig (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $tables/config.table/ConfigTable#constructor
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#get:availablePrimaryKey
     (i32.load offset=16
      (local.get $0)
     )
    )
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#store
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $snipstk.contract/snipstaking#getAPYEffectiveStartFromTime (param $0 i32) (param $1 i64) (result i64)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/apys.table/APYTable>#getValue
      (call $~lib/as-chain/mi/MultiIndex<tables/apys.table/APYTable>#lowerBound
       (i32.load
        (i32.load offset=12
         (local.get $0)
        )
       )
       (local.get $1)
      )
     )
    )
   )
   (return
    (local.get $1)
   )
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $snipstk.contract/snipstaking#getAPYEffectiveDurationFromTime (param $0 i32) (param $1 i64) (result i64)
  (local $2 i64)
  (local.set $2
   (call $snipstk.contract/snipstaking#getAPYEffectiveStartFromTime
    (local.get $0)
    (local.get $1)
   )
  )
  (i64.sub
   (call $snipstk.contract/snipstaking#getAPYEffectiveEndFromTime
    (local.get $0)
    (i64.add
     (local.get $1)
     (i64.const 1)
    )
   )
   (local.get $2)
  )
 )
 (func $snipstk.contract/snipstaking#getAPYDurationAsYearRatioFromTime (param $0 i32) (param $1 i64) (result f32)
  (f32.div
   (f32.convert_i64_u
    (call $snipstk.contract/snipstaking#getAPYEffectiveDurationFromTime
     (local.get $0)
     (local.get $1)
    )
   )
   (f32.const 31556952064)
  )
 )
 (func $snipstk.contract/snipstaking#getAPYDuration (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (i64.sub
   (i64.load
    (local.get $2)
   )
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $snipstk.contract/snipstaking#getRelativeStakingDateAsAPYDurationRatio (param $0 i32) (param $1 i64) (result f32)
  (local $2 i64)
  (local $3 i64)
  (local.set $2
   (call $snipstk.contract/snipstaking#getAPYEffectiveDurationFromTime
    (local.get $0)
    (local.get $1)
   )
  )
  (if
   (i64.lt_u
    (local.get $1)
    (local.tee $3
     (call $snipstk.contract/snipstaking#getAPYEffectiveEndFromTime
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (f32.const 0)
   )
  )
  (f32.div
   (f32.convert_i64_u
    (i64.sub
     (local.get $3)
     (local.get $1)
    )
   )
   (f32.convert_i64_u
    (local.get $2)
   )
  )
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2384)
     (i32.const 0)
    )
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Account#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 67)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/token/token.inline/Account>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 71)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/proton-tsc/token/token.inline/Account#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipstk.contract/snipstaking#getRewardAccountBalance (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.eqz
     (local.tee $0
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/config.table/ConfigTable>#last
       (i32.load offset=16
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.const 3024)
  )
  (block $folding-inner0
   (br_if $folding-inner0
    (i32.eqz
     (local.get $0)
    )
   )
   (call $~lib/as-chain/system/check
    (i32.eqz
     (i32.eqz
      (i32.load offset=8
       (i32.load offset=8
        (local.get $0)
       )
      )
     )
    )
    (i32.const 5536)
   )
   (br_if $folding-inner0
    (i32.eqz
     (i32.load offset=8
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $1)
    (i64.const -1267475983267528704)
   )
   (local.set $3
    (i32.load offset=8
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (call $~lib/rt/common/BLOCK#set:mmInfo
    (local.tee $2
     (call $~lib/rt/stub/__new
      (i32.const 16)
      (i32.const 68)
     )
    )
    (i32.const 0)
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $2)
    (i64.const -1)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (drop
    (call $~lib/proton-tsc/token/token.inline/Account#constructor@varargs)
   )
   (local.set $4
    (call $tables/account.table/AccountsTable.get:tableName)
   )
   (drop
    (i64.load
     (call $tables/account.table/AccountsTable.get:tableName)
    )
   )
   (local.set $5
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 19)
     (i32.const 5600)
    )
   )
   (call $~lib/rt/common/BLOCK#set:mmInfo
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 16)
      (i32.const 69)
     )
    )
    (i32.const 0)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (local.get $0)
    (i32.const 0)
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $0)
    (i64.const -1)
   )
   (local.set $6
    (i64.load
     (local.get $1)
    )
   )
   (local.set $7
    (i64.load
     (local.get $3)
    )
   )
   (local.set $8
    (i64.load
     (local.get $4)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 24)
      (i32.const 70)
     )
    )
    (local.get $6)
   )
   (call $tables/apys.table/APYTable#set:end
    (local.get $1)
    (local.get $7)
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:table
    (local.get $1)
    (local.get $8)
   )
   (call $~lib/rt/common/BLOCK#set:mmInfo
    (local.get $0)
    (local.get $1)
   )
   (call $~lib/rt/common/OBJECT#set:gcInfo
    (local.get $0)
    (local.get $5)
   )
   (call $~lib/rt/common/BLOCK#set:mmInfo
    (local.get $2)
    (local.get $0)
   )
   (local.set $1
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/token/token.inline/Account>#constructor
     (local.tee $0
      (i32.load
       (i32.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/env/db_end_i64
      (i64.load
       (local.get $0)
      )
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
     )
     (i64.const 0)
     (i32.const 0)
    )
   )
   (local.set $2
    (i32.load
     (i32.load
      (local.get $2)
     )
    )
   )
   (local.set $0
    (call $~lib/rt/stub/__alloc
     (i32.const 8)
    )
   )
   (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/token/token.inline/Account>#getValue
    (if
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/config.table/ConfigTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/token/token.inline/Account>#constructor
         (local.get $2)
         (call $~lib/as-chain/env/db_previous_i64
          (i32.load offset=4
           (local.get $1)
          )
          (local.get $0)
         )
         (i64.load
          (local.get $0)
         )
         (i32.const 1)
        )
       )
      )
     )
     (block
      (local.set $0
       (i32.const 0)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/token/token.inline/Account>#getValue)
     )
    )
    (drop
     (i32.load
      (local.get $2)
     )
    )
    (local.set $0
     (i32.const 0)
    )
    (if
     (local.tee $2
      (call $~lib/as-chain/env/db_get_i64
       (local.tee $1
        (i32.load offset=4
         (local.get $2)
        )
       )
       (i32.const 0)
       (i32.const 0)
      )
     )
     (block
      (drop
       (call $~lib/as-chain/env/db_get_i64
        (local.get $1)
        (i32.load offset=4
         (local.tee $1
          (call $~lib/array/Array<u8>#constructor
           (local.get $2)
          )
         )
        )
        (local.get $2)
       )
      )
      (global.set $~argumentsLength
       (i32.const 0)
      )
      (drop
       (call $~lib/proton-tsc/token/token.inline/Account#unpack
        (local.tee $0
         (call $~lib/proton-tsc/token/token.inline/Account#constructor@varargs)
        )
        (local.get $1)
       )
      )
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.eqz
     (i32.eqz
      (local.get $0)
     )
    )
    (i32.const 5632)
   )
   (br_if $folding-inner0
    (i32.eqz
     (local.get $0)
    )
   )
   (return
    (i32.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (call $~lib/as-chain/asset/Symbol#constructor
    (i32.const 5504)
    (i32.const 4)
   )
  )
 )
 (func $snipstk.contract/lockLastStakeAction#set:lockPeriod (param $0 i32) (param $1 i32)
  (i32.store8 offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $snipstk.contract/lockLastStakeAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $snipstk.contract/lockLastStakeAction#set:lockPeriod
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipstk.contract/lockStakeByKeyAction#set:lockPeriod (param $0 i32) (param $1 i32)
  (i32.store8 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $snipstk.contract/lockStakeByKeyAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $snipstk.contract/lockStakeByKeyAction#set:lockPeriod
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipstk.contract/unstakeAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipstk.contract/claimRewardsAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $snipstk.contract/addApyAction#set:apy (param $0 i32) (param $1 f32)
  (f32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $snipstk.contract/addApyAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $snipstk.contract/addApyAction#set:apy
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $snipstk.contract/changeConfigAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $structs/config.struct/StakingConfig#constructor@varargs
     (global.get $~lib/as-chain/name/EMPTY_NAME)
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $snipstk.contract/onTransferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $1)
   )
  )
  (local.set $3
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $1)
    )
    (i32.load offset=4
     (local.get $1)
    )
    (i32.add
     (local.get $2)
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/string/String.UTF8.decode
    (i32.load
     (local.get $3)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipstk.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $2)
  )
  (local.set $5
   (call $snipstk.contract/snipstaking#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $3)
    (local.get $6)
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $6
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $3)
   )
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157661374165257840)
     )
     (block
      (drop
       (call $snipstk.contract/lockLastStakeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 5)
            (i32.const 72)
           )
          )
          (i32.const 0)
         )
         (call $snipstk.contract/lockLastStakeAction#set:lockPeriod
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#lockLastStake
       (local.get $5)
       (local.get $3)
       (i32.load8_u offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157661374165549056)
     )
     (block
      (drop
       (call $snipstk.contract/lockStakeByKeyAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 17)
            (i32.const 73)
           )
          )
          (i32.const 0)
         )
         (call $tables/apys.table/APYTable#set:end
          (local.get $3)
          (i64.const 0)
         )
         (call $snipstk.contract/lockStakeByKeyAction#set:lockPeriod
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#lockStakeByKey
       (local.get $5)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
       (i32.load8_u offset=16
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157661369144549376)
     )
     (block
      (drop
       (call $snipstk.contract/unstakeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 74)
           )
          )
          (i32.const 0)
         )
         (call $tables/apys.table/APYTable#set:end
          (local.get $3)
          (i64.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#unstake
       (local.get $5)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157661370906157056)
     )
     (block
      (drop
       (call $snipstk.contract/lockStakeByKeyAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 17)
            (i32.const 75)
           )
          )
          (i32.const 0)
         )
         (call $tables/apys.table/APYTable#set:end
          (local.get $3)
          (i64.const 0)
         )
         (call $snipstk.contract/lockStakeByKeyAction#set:lockPeriod
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#restakeAmountAndReward
       (local.get $5)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
       (i32.load8_u offset=16
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4670624235139128320)
     )
     (block
      (drop
       (call $snipstk.contract/claimRewardsAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 76)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#claimRewards
       (local.get $5)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4670624226958639104)
     )
     (block
      (drop
       (call $snipstk.contract/lockLastStakeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 5)
            (i32.const 77)
           )
          )
          (i32.const 0)
         )
         (call $snipstk.contract/lockLastStakeAction#set:lockPeriod
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#restakeRewards
       (local.get $5)
       (local.get $3)
       (i32.load8_u offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157661369118867456)
     )
     (block
      (drop
       (call $snipstk.contract/unstakeAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 78)
           )
          )
          (i32.const 0)
         )
         (call $tables/apys.table/APYTable#set:end
          (local.get $3)
          (i64.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#updateStakingReward
       (local.get $5)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 3853958839107846144)
     )
     (block
      (drop
       (call $snipstk.contract/addApyAction#unpack
        (block (result i32)
         (call $snipstk.contract/addApyAction#set:apy
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 79)
           )
          )
          (f32.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (call $snipstk.contract/snipstaking#addApy
       (local.get $5)
       (f32.load
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 7293021274540539904)
     )
     (block
      (drop
       (call $snipstk.contract/changeConfigAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 80)
           )
          )
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $snipstk.contract/snipstaking#changeConfig
       (local.get $5)
       (local.get $3)
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (drop
      (call $snipstk.contract/onTransferAction#unpack
       (block (result i32)
        (call $~lib/rt/common/BLOCK#set:mmInfo
         (local.tee $3
          (call $~lib/rt/stub/__new
           (i32.const 16)
           (i32.const 81)
          )
         )
         (i32.const 0)
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo
         (local.get $3)
         (i32.const 0)
        )
        (call $~lib/rt/common/OBJECT#set:gcInfo2
         (local.get $3)
         (i32.const 0)
        )
        (call $~lib/rt/common/OBJECT#set:rtId
         (local.get $3)
         (i32.const 2384)
        )
        (local.tee $7
         (local.get $3)
        )
       )
       (local.get $6)
      )
     )
     (local.set $3
      (local.get $5)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load
         (local.get $7)
        )
       )
      )
      (unreachable)
     )
     (local.set $6
      (local.get $5)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=4
         (local.get $7)
        )
       )
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (local.tee $4
        (i32.load offset=8
         (local.get $7)
        )
       )
      )
      (unreachable)
     )
     (call $snipstk.contract/snipstaking#onTransfer
      (local.get $3)
      (local.get $6)
      (local.get $5)
      (local.get $4)
      (i32.load offset=12
       (local.get $7)
      )
     )
    )
   )
  )
 )
 (func $structs/locking.struct/LockingPeriod#set:months (param $0 i32) (param $1 i32)
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $structs/locking.struct/LockingPeriod#set:multiplier (param $0 i32) (param $1 f32)
  (f32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackBytes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $2
      (call $~lib/array/Array<u8>#constructor
       (local.get $1)
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $structs/locking.struct/LockingPeriod#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $structs/locking.struct/LockingPeriod#set:months
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $structs/locking.struct/LockingPeriod#set:multiplier
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<f32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $structs/stake-level.struct/AccountLevel#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $structs/locking.struct/LockingPeriod#set:months
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/asset/Symbol.fromU64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2384)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $structs/config.struct/StakingConfig#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 23)
    (i32.const 5728)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_u
     (local.get $4)
     (local.get $5)
    )
    (block
     (call $structs/locking.struct/LockingPeriod#set:months
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 22)
       )
      )
      (i32.const 0)
     )
     (call $structs/locking.struct/LockingPeriod#set:multiplier
      (local.get $2)
      (f32.const 0)
     )
     (drop
      (call $structs/locking.struct/LockingPeriod#unpack
       (local.get $2)
       (call $~lib/as-chain/serializer/Decoder#unpackBytes
        (local.get $1)
        (i32.const 5)
       )
      )
     )
     (call $~lib/array/Array<tables/apys.table/APYTable>#push
      (local.get $3)
      (local.get $2)
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $3)
  )
  (local.set $5
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 25)
    (i32.const 5760)
   )
  )
  (local.set $2
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_u
     (local.get $2)
     (local.get $5)
    )
    (block
     (call $structs/locking.struct/LockingPeriod#set:months
      (local.tee $3
       (call $~lib/rt/stub/__new
        (i32.const 16)
        (i32.const 24)
       )
      )
      (i32.const 0)
     )
     (call $tables/apys.table/APYTable#set:end
      (local.get $3)
      (i64.const 0)
     )
     (drop
      (call $structs/stake-level.struct/AccountLevel#unpack
       (local.get $3)
       (call $~lib/as-chain/serializer/Decoder#unpackBytes
        (local.get $1)
        (i32.const 9)
       )
      )
     )
     (call $~lib/array/Array<tables/apys.table/APYTable>#push
      (local.get $4)
      (local.get $3)
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/asset/Asset#constructor
    (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
     (local.get $1)
    )
    (call $~lib/as-chain/asset/Symbol.fromU64
     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
      (local.get $1)
     )
    )
   )
  )
  (call $structs/config.struct/StakingConfig#set:yearStart
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $structs/config.struct/StakingConfig#set:isPaused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $structs/config.struct/StakingConfig#set:userStakeLimit
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $structs/config.struct/StakingConfig#set:restakeTimeLimit
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $structs/config.struct/StakingConfig#set:restrictToSymbol
   (local.get $0)
   (call $~lib/as-chain/asset/Symbol.fromU64
    (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
     (local.get $1)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $2)
   )
  )
  (local.set $4
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 59)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $4)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (local.tee $6
      (i32.shl
       (select
        (local.get $4)
        (i32.const 8)
        (i32.gt_u
         (local.get $4)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $5)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $7)
    )
    (block
     (local.set $6
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $2)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.tee $4
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $4)
        (local.tee $1
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $4)
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
      (local.get $4)
      (local.get $3)
      (local.get $6)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $2)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $2)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $2)
      )
     )
     (i32.load offset=4
      (local.get $2)
     )
    )
    (local.get $3)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (block $folding-inner4
   (block $folding-inner3
    (block $folding-inner2
     (block $folding-inner1
      (block $folding-inner0
       (block $default
        (block $case27
         (block $case25
          (block $case24
           (block $case23
            (block $case22
             (block $case21
              (block $case20
               (block $case19
                (block $case18
                 (block $case17
                  (block $case16
                   (block $case15
                    (block $case14
                     (block $case13
                      (block $case12
                       (block $case11
                        (block $case10
                         (block $case9
                          (block $case8
                           (block $case5
                            (br_table $case17 $default $default $default $case18 $default $default $case22 $default $default $default $default $default $default $default $case23 $case10 $case11 $default $case12 $default $case19 $default $default $default $case21 $default $default $default $default $default $default $default $default $case14 $case13 $case24 $default $default $default $default $default $default $default $default $default $default $default $default $case20 $folding-inner0 $default $case15 $default $default $case16 $folding-inner3 $default $default $case27 $default $default $case25 $default $default $default $default $folding-inner1 $folding-inner2 $folding-inner3 $folding-inner2 $case5 $folding-inner1 $folding-inner3 $case8 $case9 $folding-inner0 $default
                             (i32.sub
                              (i32.load
                               (i32.sub
                                (local.get $0)
                                (i32.const 8)
                               )
                              )
                              (i32.const 5)
                             )
                            )
                           )
                           (return
                            (call $snipstk.contract/claimRewardsAction#unpack
                             (local.get $0)
                             (local.get $1)
                            )
                           )
                          )
                          (return
                           (call $snipstk.contract/addApyAction#unpack
                            (local.get $0)
                            (local.get $1)
                           )
                          )
                         )
                         (return
                          (call $snipstk.contract/changeConfigAction#unpack
                           (local.get $0)
                           (local.get $1)
                          )
                         )
                        )
                        (return
                         (call $structs/config.struct/StakingConfig#unpack
                          (local.get $0)
                          (local.get $1)
                         )
                        )
                       )
                       (return
                        (call $structs/locking.struct/LockingPeriod#unpack
                         (local.get $0)
                         (local.get $1)
                        )
                       )
                      )
                      (return
                       (call $structs/stake-level.struct/AccountLevel#unpack
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                     )
                     (call $~lib/as-chain/name/Name#set:N
                      (local.get $0)
                      (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                       (local.tee $0
                        (call $~lib/as-chain/serializer/Decoder#constructor
                         (local.get $1)
                        )
                       )
                      )
                     )
                     (return
                      (i32.load offset=4
                       (local.get $0)
                      )
                     )
                    )
                    (call $~lib/as-chain/serializer/Decoder#unpack
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Decoder#constructor
                       (local.get $1)
                      )
                     )
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (br $folding-inner4)
                   )
                   (call $~lib/rt/common/BLOCK#set:mmInfo
                    (local.get $0)
                    (call $~lib/as-chain/serializer/Decoder#unpackName
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Decoder#constructor
                       (local.get $1)
                      )
                     )
                    )
                   )
                   (call $~lib/rt/common/OBJECT#set:gcInfo
                    (local.get $0)
                    (call $~lib/as-chain/serializer/Decoder#unpackName
                     (local.get $1)
                    )
                   )
                   (br $folding-inner4)
                  )
                  (return
                   (call $~lib/as-chain/action/Action#unpack
                    (local.get $0)
                    (local.get $1)
                   )
                  )
                 )
                 (call $~lib/as-chain/name/Name#set:N
                  (local.get $0)
                  (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                   (call $~lib/as-chain/serializer/Decoder#constructor
                    (local.get $1)
                   )
                  )
                 )
                 (return
                  (i32.const 8)
                 )
                )
                (call $~lib/as-chain/name/Name#set:N
                 (local.get $0)
                 (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                  (local.tee $1
                   (call $~lib/as-chain/serializer/Decoder#constructor
                    (local.get $1)
                   )
                  )
                 )
                )
                (call $~lib/as-chain/system/check
                 (call $~lib/as-chain/asset/Symbol#isValid
                  (local.get $0)
                 )
                 (i32.const 5792)
                )
                (br $folding-inner4)
               )
               (local.set $3
                (i64.load
                 (i32.add
                  (i32.load offset=4
                   (i32.load
                    (local.tee $2
                     (call $~lib/as-chain/serializer/Decoder#constructor
                      (local.get $1)
                     )
                    )
                   )
                  )
                  (i32.load offset=4
                   (local.get $2)
                  )
                 )
                )
               )
               (call $~lib/as-chain/serializer/Decoder#incPos
                (local.get $2)
                (i32.const 8)
               )
               (call $~lib/as-chain/name/Name#set:N
                (local.get $0)
                (local.get $3)
               )
               (call $~lib/as-chain/serializer/Decoder#unpack
                (local.get $2)
                (i32.load offset=8
                 (local.get $0)
                )
               )
               (call $~lib/as-chain/system/check
                (if (result i32)
                 (if (result i32)
                  (i64.ge_s
                   (i64.load
                    (local.tee $1
                     (local.get $0)
                    )
                   )
                   (i64.const -4611686018427387903)
                  )
                  (i64.le_s
                   (i64.load
                    (local.get $1)
                   )
                   (i64.const 4611686018427387903)
                  )
                  (i32.const 0)
                 )
                 (call $~lib/as-chain/asset/Symbol#isValid
                  (i32.load offset=8
                   (local.get $1)
                  )
                 )
                 (i32.const 0)
                )
                (i32.const 5840)
               )
               (return
                (i32.load offset=4
                 (local.get $2)
                )
               )
              )
              (call $~lib/as-chain/name/Name#set:N
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                (local.tee $1
                 (call $~lib/as-chain/serializer/Decoder#constructor
                  (local.get $1)
                 )
                )
               )
              )
              (call $tables/apys.table/APYTable#set:end
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                (local.get $1)
               )
              )
              (br $folding-inner4)
             )
             (return
              (call $tables/account.table/AccountsTable#unpack
               (local.get $0)
               (local.get $1)
              )
             )
            )
            (return
             (call $tables/apys.table/APYTable#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (return
            (call $tables/config.table/ConfigTable#unpack
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (return
           (call $tables/stakes.table/StakesTable#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $~lib/proton-tsc/token/token.inline/Account#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (local.set $1
         (call $~lib/as-chain/serializer/Decoder#constructor
          (local.get $1)
         )
        )
        (call $~lib/as-chain/name/Name#set:N
         (local.tee $2
          (call $~lib/rt/stub/__new
           (i32.const 8)
           (i32.const 5)
          )
         )
         (i64.const 0)
        )
        (call $~lib/as-chain/name/Name#set:N
         (local.get $2)
         (i64.const 0)
        )
        (call $~lib/as-chain/serializer/Decoder#unpack
         (local.get $1)
         (local.get $2)
        )
        (call $~lib/rt/common/BLOCK#set:mmInfo
         (local.get $0)
         (local.get $2)
        )
        (call $tables/apys.table/APYTable#set:end
         (local.get $0)
         (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
          (local.get $1)
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#set:table
         (local.get $0)
         (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
          (local.get $1)
         )
        )
        (call $structs/config.struct/StakingConfig#set:yearStart
         (local.get $0)
         (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
          (local.get $1)
         )
        )
        (call $tables/account.table/AccountsTable#set:lastRestake
         (local.get $0)
         (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
          (local.get $1)
         )
        )
        (return
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
       (unreachable)
      )
      (return
       (call $snipstk.contract/onTransferAction#unpack
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (return
      (call $snipstk.contract/lockLastStakeAction#unpack
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (return
     (call $snipstk.contract/lockStakeByKeyAction#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (call $snipstk.contract/unstakeAction#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipstk.contract/lockLastStakeAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 9)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $snipstk.contract/lockStakeByKeyAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 17)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $snipstk.contract/unstakeAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 16)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $structs/locking.struct/LockingPeriod#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 5)
    )
   )
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
   (local.get $1)
   (f32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $structs/stake-level.struct/AccountLevel#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 9)
    )
   )
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $structs/config.struct/StakingConfig#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $structs/config.struct/StakingConfig#getSize
      (local.get $0)
     )
    )
   )
   (i32.load offset=12
    (i32.load
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_u
     (local.get $2)
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#packBytes
      (local.get $1)
      (call $structs/locking.struct/LockingPeriod#pack
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load
         (local.get $0)
        )
        (local.get $2)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (local.set $2
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_u
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#packBytes
      (local.get $1)
      (call $structs/stake-level.struct/AccountLevel#pack
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $2)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load
    (i32.load offset=8
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load
    (i32.load offset=56
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner0
   (block $default
    (block $case28
     (block $case27
      (block $case26
       (block $case25
        (block $case24
         (block $case23
          (block $case22
           (block $case21
            (block $case20
             (block $case19
              (block $case18
               (block $case17
                (block $case16
                 (block $case15
                  (block $case14
                   (block $case13
                    (block $case12
                     (block $case11
                      (block $case10
                       (block $case9
                        (block $case8
                         (block $case7
                          (block $case6
                           (block $case5
                            (block $case4
                             (block $case3
                              (block $case2
                               (block $case1
                                (block $case0
                                 (br_table $case17 $default $default $default $case18 $default $default $case22 $default $default $default $default $default $default $default $case23 $case10 $case11 $default $case12 $default $case19 $default $default $default $case21 $default $default $default $default $default $default $default $default $case14 $case13 $case24 $default $default $default $default $default $default $default $default $default $default $default $default $case20 $case26 $default $case15 $default $default $case16 $case28 $default $default $case27 $default $default $case25 $default $default $default $default $case1 $case2 $case3 $case4 $case5 $case6 $case7 $case8 $case9 $case0 $default
                                  (i32.sub
                                   (i32.load
                                    (i32.sub
                                     (local.get $0)
                                     (i32.const 8)
                                    )
                                   )
                                   (i32.const 5)
                                  )
                                 )
                                )
                                (if
                                 (i32.eqz
                                  (i32.load
                                   (local.get $0)
                                  )
                                 )
                                 (unreachable)
                                )
                                (if
                                 (i32.eqz
                                  (i32.load offset=4
                                   (local.get $0)
                                  )
                                 )
                                 (unreachable)
                                )
                                (if
                                 (i32.eqz
                                  (i32.load offset=8
                                   (local.get $0)
                                  )
                                 )
                                 (unreachable)
                                )
                                (local.set $1
                                 (call $~lib/as-chain/serializer/Encoder#constructor
                                  (i32.add
                                   (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                    (i32.load offset=12
                                     (local.get $0)
                                    )
                                   )
                                   (i32.const 32)
                                  )
                                 )
                                )
                                (if
                                 (i32.eqz
                                  (local.tee $2
                                   (i32.load
                                    (local.get $0)
                                   )
                                  )
                                 )
                                 (unreachable)
                                )
                                (call $~lib/as-chain/serializer/Encoder#pack
                                 (local.get $1)
                                 (local.get $2)
                                )
                                (if
                                 (i32.eqz
                                  (local.tee $2
                                   (i32.load offset=4
                                    (local.get $0)
                                   )
                                  )
                                 )
                                 (unreachable)
                                )
                                (call $~lib/as-chain/serializer/Encoder#pack
                                 (local.get $1)
                                 (local.get $2)
                                )
                                (if
                                 (i32.eqz
                                  (local.tee $2
                                   (i32.load offset=8
                                    (local.get $0)
                                   )
                                  )
                                 )
                                 (unreachable)
                                )
                                (call $~lib/as-chain/serializer/Encoder#pack
                                 (local.get $1)
                                 (local.get $2)
                                )
                                (call $~lib/as-chain/serializer/Encoder#packString
                                 (local.get $1)
                                 (i32.load offset=12
                                  (local.get $0)
                                 )
                                )
                                (return
                                 (call $~lib/as-chain/serializer/Encoder#getBytes
                                  (local.get $1)
                                 )
                                )
                               )
                               (return
                                (call $snipstk.contract/lockLastStakeAction#pack
                                 (local.get $0)
                                )
                               )
                              )
                              (return
                               (call $snipstk.contract/lockStakeByKeyAction#pack
                                (local.get $0)
                               )
                              )
                             )
                             (return
                              (call $snipstk.contract/unstakeAction#pack
                               (local.get $0)
                              )
                             )
                            )
                            (return
                             (call $snipstk.contract/lockStakeByKeyAction#pack
                              (local.get $0)
                             )
                            )
                           )
                           (if
                            (i32.eqz
                             (i32.load
                              (local.get $0)
                             )
                            )
                            (unreachable)
                           )
                           (local.set $1
                            (call $~lib/as-chain/serializer/Encoder#constructor
                             (i32.const 8)
                            )
                           )
                           (if
                            (i32.eqz
                             (local.tee $0
                              (i32.load
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (call $~lib/as-chain/serializer/Encoder#pack
                            (local.get $1)
                            (local.get $0)
                           )
                           (br $folding-inner0)
                          )
                          (return
                           (call $snipstk.contract/lockLastStakeAction#pack
                            (local.get $0)
                           )
                          )
                         )
                         (return
                          (call $snipstk.contract/unstakeAction#pack
                           (local.get $0)
                          )
                         )
                        )
                        (call $~lib/as-chain/serializer/Encoder#packNumber<f32>
                         (local.tee $1
                          (call $~lib/as-chain/serializer/Encoder#constructor
                           (i32.const 4)
                          )
                         )
                         (f32.load
                          (local.get $0)
                         )
                        )
                        (br $folding-inner0)
                       )
                       (if
                        (i32.eqz
                         (local.tee $1
                          (i32.load
                           (local.get $0)
                          )
                         )
                        )
                        (unreachable)
                       )
                       (local.set $1
                        (call $~lib/as-chain/serializer/Encoder#constructor
                         (call $structs/config.struct/StakingConfig#getSize
                          (local.get $1)
                         )
                        )
                       )
                       (if
                        (i32.eqz
                         (local.tee $0
                          (i32.load
                           (local.get $0)
                          )
                         )
                        )
                        (unreachable)
                       )
                       (call $~lib/as-chain/serializer/Encoder#pack
                        (local.get $1)
                        (local.get $0)
                       )
                       (br $folding-inner0)
                      )
                      (return
                       (call $structs/config.struct/StakingConfig#pack
                        (local.get $0)
                       )
                      )
                     )
                     (return
                      (call $structs/locking.struct/LockingPeriod#pack
                       (local.get $0)
                      )
                     )
                    )
                    (return
                     (call $structs/stake-level.struct/AccountLevel#pack
                      (local.get $0)
                     )
                    )
                   )
                   (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Encoder#constructor
                      (i32.const 8)
                     )
                    )
                    (i64.load
                     (local.get $0)
                    )
                   )
                   (br $folding-inner0)
                  )
                  (call $~lib/as-chain/serializer/Encoder#pack
                   (local.tee $1
                    (call $~lib/as-chain/serializer/Encoder#constructor
                     (i32.const 8)
                    )
                   )
                   (i32.load
                    (local.get $0)
                   )
                  )
                  (br $folding-inner0)
                 )
                 (call $~lib/as-chain/serializer/Encoder#packName
                  (local.tee $1
                   (call $~lib/as-chain/serializer/Encoder#constructor
                    (i32.const 16)
                   )
                  )
                  (i32.load
                   (local.get $0)
                  )
                 )
                 (call $~lib/as-chain/serializer/Encoder#packName
                  (local.get $1)
                  (i32.load offset=4
                   (local.get $0)
                  )
                 )
                 (br $folding-inner0)
                )
                (return
                 (call $~lib/as-chain/action/Action#pack
                  (local.get $0)
                 )
                )
               )
               (i64.store
                (i32.load offset=4
                 (local.tee $1
                  (call $~lib/array/Array<u8>#constructor
                   (i32.const 8)
                  )
                 )
                )
                (i64.load
                 (local.get $0)
                )
               )
               (return
                (local.get $1)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (i32.const 8)
                )
               )
               (i64.load
                (local.get $0)
               )
              )
              (br $folding-inner0)
             )
             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
              (local.tee $1
               (call $~lib/as-chain/serializer/Encoder#constructor
                (i32.const 16)
               )
              )
              (i64.load
               (local.get $0)
              )
             )
             (call $~lib/as-chain/serializer/Encoder#pack
              (local.get $1)
              (i32.load offset=8
               (local.get $0)
              )
             )
             (br $folding-inner0)
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
             (local.tee $1
              (call $~lib/as-chain/serializer/Encoder#constructor
               (i32.const 16)
              )
             )
             (i64.load
              (local.get $0)
             )
            )
            (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
             (local.get $1)
             (i64.load offset=8
              (local.get $0)
             )
            )
            (br $folding-inner0)
           )
           (return
            (call $tables/account.table/AccountsTable#pack
             (local.get $0)
            )
           )
          )
          (return
           (call $tables/apys.table/APYTable#pack
            (local.get $0)
           )
          )
         )
         (return
          (call $tables/config.table/ConfigTable#pack
           (local.get $0)
          )
         )
        )
        (return
         (call $tables/stakes.table/StakesTable#pack
          (local.get $0)
         )
        )
       )
       (drop
        (i32.load
         (local.get $0)
        )
       )
       (call $~lib/as-chain/serializer/Encoder#pack
        (local.tee $1
         (call $~lib/as-chain/serializer/Encoder#constructor
          (i32.const 16)
         )
        )
        (i32.load
         (local.get $0)
        )
       )
       (br $folding-inner0)
      )
      (return
       (call $~lib/proton-tsc/token/token.inline/Transfer#pack
        (local.get $0)
       )
      )
     )
     (return
      (call $inlines/archive-stake.inline/ArchiveStakeActionData#pack
       (local.get $0)
      )
     )
    )
    (return
     (call $inlines/pay-reward.inline/PayRewardActionData#pack
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 48)
    )
   )
   (local.get $0)
  )
  (call $tables/apys.table/APYTable#set:end
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 34)
   )
   (block
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (local.set $3
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_find_primary
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $2)
       (local.get $1)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i64.load
      (local.get $2)
     )
    )
    (local.set $2
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (local.get $0)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 47)
      )
     )
     (local.get $3)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $2)
    )
    (return
     (local.get $0)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (result i64)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i64.load
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 34)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 5888)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (call $~lib/as-chain/env/db_idx64_update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $0)
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 34)
   )
   (block
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 5952)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (drop
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_store
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (return)
   )
  )
  (unreachable)
 )
 (func $~start
  (local $0 i32)
  (local $1 i64)
  (global.set $~lib/rt/stub/offset
   (i32.const 5996)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (local.set $1
   (call $~lib/as-chain/name/S2N
    (i32.const 2288)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/asset/Symbol#constructor
    (i32.const 2656)
    (i32.const 4)
   )
  )
 )
)
