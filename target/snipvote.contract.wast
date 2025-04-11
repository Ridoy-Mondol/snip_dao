(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i32_i64_i64_=>_none (func (param i32 i32 i32 i64 i64)))
 (type $i32_i32_i64_i64_i64_i64_i64_i64_=>_none (func (param i32 i32 i64 i64 i64 i64 i64 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i64_=>_i32 (func (param i32 i32 i32 i32 i64) (result i32)))
 (type $i32_i32_i32_i64_=>_i32 (func (param i32 i32 i32 i64) (result i32)))
 (type $i32_i32_i64_i32_i32_i32_=>_i32 (func (param i32 i32 i64 i32 i32 i32) (result i32)))
 (type $i32_i32_i64_i64_=>_i32 (func (param i32 i32 i64 i64) (result i32)))
 (type $i32_i64_i64_i64_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64 i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "sha256" (func $~lib/as-chain/env/sha256 (param i32 i32 i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $snipvote.contract/snipvoting i32 (i32.const 7))
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
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\01")
 (data (i32.const 2300) ",")
 (data (i32.const 2312) "\01\00\00\00\10\00\00\00u\00p\00c\00o\00m\00i\00n\00g")
 (data (i32.const 2348) "\1c")
 (data (i32.const 2380) "\1c")
 (data (i32.const 2412) "\1c")
 (data (i32.const 2424) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 2444) "\1c")
 (data (i32.const 2476) "\1c")
 (data (i32.const 2508) "\1c")
 (data (i32.const 2540) "\1c")
 (data (i32.const 2572) "\1c")
 (data (i32.const 2604) "\1c")
 (data (i32.const 2636) "\12\10\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\10\10\"\10\10\10#$%&\'()\10*+\10\10\10\10\10\10\10\10\10\10\10,-.\10/\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\100\10\10\101\10234567\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\108\10\109:\10;<=\10\10\10\10\10\10>\10\10?@ABCDEFGHIJKL\10MNO\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10P\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10QR\10\10\10S\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10T\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10UV\10\10\10\10\10\10\10W\10\10\10\10\10XYZ\10\10\10\10\10[\\\10\10\10\10\10\10\10\10\10]\10\10\10\10\10\10\10\10\10\10\10\10")
 (data (i32.const 3180) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\80@\00\04\00\00\00@\01\00\00\00\00\00\00\00\00\a1\90\01")
 (data (i32.const 3266) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff0\04\b0")
 (data (i32.const 3324) "\f8\03")
 (data (i32.const 3351) "\82\00\00\00\00\00\00\fe\ff\ff\ff\ff\bf\b6\00\00\00\00\00\10\00?\00\ff\17\00\00\00\00\01\f8\ff\ff\00\00\01")
 (data (i32.const 3398) "\c0\bf\ff=\00\00\00\80\02\00\00\00\ff\ff\ff\07")
 (data (i32.const 3424) "\c0\ff\01\00\00\00\00\00\00\f8?$\00\00\c0\ff\ff?\00\00\00\00\00\0e")
 (data (i32.const 3462) "\f8\ff\ff\ff\ff\ff\07\00\00\00\00\00\00\14\fe!\fe\00\0c\00\02\00\02\00\00\00\00\00\00\10\1e \00\00\0c\00\00@\06\00\00\00\00\00\00\10\869\02\00\00\00#\00\06\00\00\00\00\00\00\10\be!\00\00\0c\00\00\fc\02\00\00\00\00\00\00\90\1e `\00\0c\00\00\00\04\00\00\00\00\00\00\00\01 \00\00\00\00\00\00\11\00\00\00\00\00\00\c0\c1=`\00\0c\00\00\00\02\00\00\00\00\00\00\90@0\00\00\0c\00\00\00\03\00\00\00\00\00\00\18\1e \00\00\0c\00\00\00\02\00\00\00\00\00\00\00\00\04\\")
 (data (i32.const 3634) "\f2\07\c0\7f")
 (data (i32.const 3650) "\f2\1f@?")
 (data (i32.const 3663) "\03\00\00\a0\02\00\00\00\00\00\00\fe\7f\df\e0\ff\fe\ff\ff\ff\1f@")
 (data (i32.const 3697) "\e0\fdf\00\00\00\c3\01\00\1e\00d \00 ")
 (data (i32.const 3723) "\10")
 (data (i32.const 3735) "\e0")
 (data (i32.const 3758) "\1c\00\00\00\1c\00\00\00\0c\00\00\00\0c\00\00\00\00\00\00\00\b0?@\fe\8f \00\00\00\00\00x\00\00\00\00\00\00\08\00\00\00\00\00\00\00`\00\00\00\00\02")
 (data (i32.const 3824) "\87\01\04\0e")
 (data (i32.const 3854) "\80\t\00\00\00\00\00\00@\7f\e5\1f\f8\9f\00\00\00\00\80\00\ff\ff\01\00\00\00\00\00\00\00\0f\00\00\00\00\00\d0\17\04\00\00\00\00\f8\0f\00\03\00\00\00<;\00\00\00\00\00\00@\a3\03\00\00\00\00\00\00\f0\cf\00\00\00\00\00\00\00\00?")
 (data (i32.const 3942) "\f7\ff\fd!\10\03\00\00\00\00\00\f0\ff\ff\ff\ff\ff\ff\ff\07\00\01\00\00\00\f8\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\fb")
 (data (i32.const 4003) "\a0\03\e0\00\e0\00\e0\00`\00\f8\00\03\90|\00\00\00\00\00\00\df\ff\02\80\00\00\ff\1f\00\00\00\00\00\00\ff\ff\ff\ff\01")
 (data (i32.const 4059) "0")
 (data (i32.const 4073) "\80\03")
 (data (i32.const 4089) "\80\00\80")
 (data (i32.const 4104) "\ff\ff\ff\ff\00\00\00\00\00\80")
 (data (i32.const 4140) " \00\00\00\00<>\08")
 (data (i32.const 4159) "~")
 (data (i32.const 4171) "p\00\00 ")
 (data (i32.const 4235) "?\00\10")
 (data (i32.const 4249) "\80\f7\bf\00\00\00\f0")
 (data (i32.const 4266) "\03\00\ff\ff\ff\ff\03")
 (data (i32.const 4282) "\01\00\00\07")
 (data (i32.const 4299) "\03D\08\00\00`\10")
 (data (i32.const 4324) "0\00\00\00\ff\ff\03\80\00\00\00\00\c0?\00\00\80\ff\03\00\00\00\00\00\07\00\00\00\00\00\c83\00\80\00\00`\00\00\00\00\00\00\00\00~f\00\08\10\00\00\00\00\01\10\00\00\00\00\00\00\9d\c1\02\00\00 \000X")
 (data (i32.const 4407) "\f8\00\0e")
 (data (i32.const 4424) " !\00\00\00\00\00@")
 (data (i32.const 4450) "\fc\ff\03\00\00\00\00\00\00\00\ff\ff\08\00\ff\ff\00\00\00\00$")
 (data (i32.const 4491) "\80\80@\00\04\00\00\00@\01\00\00\00\00\00\01\00\00\00\00\c0\00\00\00\00\00\00\00\00\08\00\00\0e")
 (data (i32.const 4555) " ")
 (data (i32.const 4584) "\01")
 (data (i32.const 4602) "\c0\07")
 (data (i32.const 4620) "n\f0\00\00\00\00\00\87")
 (data (i32.const 4648) "`\00\00\00\00\00\00\00\f0")
 (data (i32.const 4705) "\18")
 (data (i32.const 4724) "\c0\ff\01")
 (data (i32.const 4748) "\02\00\00\00\00\00\00\ff\7f\00\00\00\00\00\00\80\03\00\00\00\00\00x&\00 \00\00\00\00\00\00\07\00\00\00\80\ef\1f\00\00\00\00\00\00\00\08\00\03\00\00\00\00\00\c0\7f\00\9e")
 (data (i32.const 4817) "\80\d3@")
 (data (i32.const 4839) "\80\f8\07\00\00\03\00\00\00\00\00\00\18\01\00\00\00\c0\1f\1f")
 (data (i32.const 4883) "\ff\\\00\00@")
 (data (i32.const 4898) "\f8\85\0d")
 (data (i32.const 4930) "<\b0\01\00\000")
 (data (i32.const 4946) "\f8\a7\01")
 (data (i32.const 4961) "(\bf")
 (data (i32.const 4975) "\e0\bc\0f")
 (data (i32.const 5009) "\80\ff\06")
 (data (i32.const 5043) "X\08")
 (data (i32.const 5062) "\f0\0c\01\00\00\00\fe\07\00\00\00\00\f8y\80\00~\0e\00\00\00\00\00\fc\7f\03")
 (data (i32.const 5106) "\7f\bf")
 (data (i32.const 5118) "\fc\ff\ff\fcm")
 (data (i32.const 5138) "~\b4\bf")
 (data (i32.const 5150) "\a3")
 (data (i32.const 5194) "\18\00\00\00\00\00\00\00\ff\01")
 (data (i32.const 5258) "\1f\00\00\00\00\00\00\00\7f\00\0f")
 (data (i32.const 5301) "\80\00\00\00\00\00\00\00\80\ff\ff\00\00\00\00\00\00\00\00\1b")
 (data (i32.const 5343) "`\0f")
 (data (i32.const 5368) "\80\03\f8\ff\e7\0f\00\00\00<")
 (data (i32.const 5396) "\1c")
 (data (i32.const 5420) "\ff\ff\ff\ff\ff\ff\7f\f8\ff\ff\ff\ff\ff\1f \00\10\00\00\f8\fe\ff")
 (data (i32.const 5452) "\7f\ff\ff\f9\db\07")
 (data (i32.const 5490) "\ff?")
 (data (i32.const 5545) "\f0")
 (data (i32.const 5574) "\7f")
 (data (i32.const 5588) "\f0\0f")
 (data (i32.const 5643) "\f8")
 (data (i32.const 5644) "\12\13\14\15\16\17\10\10\10\10\10\10\10\10\10\10\18\10\10\19\10\10\10\10\10\10\10\10\1a\1b\11\1c\1d\1e\10\10\1f\10\10\10\10\10\10\10 !\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\"#\10\10\10$\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10%\10\10\10&\10\10\10\10\'\10\10\10\10\10\10\10(\10\10\10\10\10\10\10\10\10\10\10)\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10*\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10+,-.\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10/\10\10\10\10\10\10\100\10\10\10\10\10\10\10\10\10\10\10\10\10\10")
 (data (i32.const 6188) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\fe\ff\ff\07\fe\ff\ff\07\00\00\00\00\00\04 \04\ff\ff\7f\ff\ff\ff\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\f7\f0\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ef\ff\ff\ff\ff\01\03\00\00\00\1f")
 (data (i32.const 6324) " \00\00\00\00\00\cf\bc@\d7\ff\ff\fb\ff\ff\ff\ff\ff\ff\ff\ff\ff\bf\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\03\fc\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\fe\ff\ff\ff\7f\00\ff\ff\ff\ff\ff\01")
 (data (i32.const 6432) "\ff\ff\ff\ff\bf \ff\ff\ff\ff\ff\e7")
 (data (i32.const 6464) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff??")
 (data (i32.const 6492) "\ff\01\ff\ff\ff\ff\ff\e7\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\ff\ff??\ff\ff\ff\ff??\ff\aa\ff\ff\ff?\ff\ff\ff\ff\ff\ff\df_\dc\1f\cf\0f\ff\1f\dc\1f")
 (data (i32.const 6586) "\02\80\00\00\ff\1f")
 (data (i32.const 6604) "\84\fc/>P\bd\1f\f2\e0C\00\00\ff\ff\ff\ff\18")
 (data (i32.const 6658) "\c0\ff\ff\ff\ff\ff\ff\03\00\00\ff\ff\ff\ff\ff\7f\ff\ff\ff\ff\ff\7f\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\1fx\0c\00\ff\ff\ff\ff\bf ")
 (data (i32.const 6740) "\ff\ff\ff\ff\ff?\00\00\ff\ff\ff?")
 (data (i32.const 6768) "\fc\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ffx\ff\ff\ff\ff\ff\ff\fc\07\00\00\00\00`\07\00\00\00\00\00\00\ff\ff\ff\ff\ff\f7\ff\01\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\7f\00\f8")
 (data (i32.const 6864) "\fe\ff\ff\07\fe\ff\ff\07")
 (data (i32.const 6892) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 6914) "\ff\ff\ff\ff\0f\ff\ff\ff\ff\0f")
 (data (i32.const 6940) "\ff\ff\ff\ff\ff\ff\07\00\ff\ff\ff\ff\ff\ff\07")
 (data (i32.const 6976) "\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 6996) "\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7020) "\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\df\ff\ff\ff\ff\ff\ff\ff\ff\dfd\de\ff\eb\ef\ff\ff\ff\ff\ff\ff\ff\bf\e7\df\df\ff\ff\ff{_\fc\fd\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff?\ff\ff\ff\fd\ff\ff\f7\ff\ff\ff\f7\ff\ff\df\ff\ff\ff\df\ff\ff\7f\ff\ff\ff\7f\ff\ff\ff\fd\ff\ff\ff\fd\ff\ff\f7\0f\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\0f")
 (data (i32.const 7186) "\ff\ff\ff\03\ff\ff\ff\03\ff\ff\ff\03")
 (data (i32.const 7212) "\07\08\t\n\0b\0c\06\06\06\06\06\06\06\06\06\06\0d\06\06\0e\06\06\06\06\06\06\06\06\0f\10\11\12\06\13\06\06\06\06\06\06\06\06\06\06\14\15\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\16\17\06\06\06\18\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\19\06\06\06\06\1a\06\06\06\06\06\06\06\1b\06\06\06\06\06\06\06\06\06\06\06\1c\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1d\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\1e\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06")
 (data (i32.const 7835) "$++++++++\01\00TVVVVVVVV")
 (data (i32.const 7874) "\18\00\00\00+++++++\07++[VVVVVVVJVV\051P1P1P1P1P1P1P1P$Py1P1P18P1P1P1P1P1P1P1PN1\02N\0d\0dN\03N\00$n\00N1&nQN$PN9\14\81\1b\1d\1dS1P1P\0d1P1P1P\1bS$P1\02\\{\\{\\{\\{\\{\14y\\{\\{\\-+I\03H\03x\\{\14\00\96\n\01+(\06\06\00*\06**+\07\bb\b5+\1e\00+\07+++\01++++++++++++++++++++++++++++++++\01+++++++++++++++++++++++*+++++++++++++\cdF\cd+\00%+\07\01\06\01UVVVVVUVV\02$\81\81\81\81\81\15\81\81\81\00\00+\00\b2\d1\b2\d1\b2\d1\b2\d1\00\00\cd\cc\01\00\d7\d7\d7\d7\d7\83\81\81\81\81\81\81\81\81\81\81\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\1c\00\00\00\00\001P1P1P1P1P1\02\00\001P1P1P1P1P1P1P1P1PN1P1PN1P1P1P1P1P1P1P1\02\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6\87\a6*++++++++++++\00\00\00TVVVVVVVVVVVV")
 (data (i32.const 8383) "TVVVVVVVVVVVV\0c\00\0c*+++++++++++++\07*\01")
 (data (i32.const 8469) "*++++++++++++++++++++++++++VVl\81\15\00++++++++++++++++++++++++++++++++++++++++++\07l\03A++VVVVVVVVVVVVVV,V+++++++++++++++++++++\01")
 (data (i32.const 8628) "\0cl\00\00\00\00\00\06")
 (data (i32.const 8674) "\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%Vz\9e&\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06%\06\01++OVV,+\7fVV9++UVV++OVV,+\7fVV\817u[{\\++OVV\02\ac\04\00\009++UVV++OVV,++VV2\13\81W\00o\81~\c9\d7~-\81\81\0e~9\7foW\00\81\81~\15\00~\03++++++++++++\07+$+\97+++++++++*+++++VVVVV\80\81\81\81\819\bb*++++++++++++++++++++++++++++++++++++++++\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\c9\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\ac\d0\0d\00N1\02\b4\c1\c1\d7\d7$P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P1P\d7\d7S\c1G\d4\d7\d7\d7\05++++++++++++\07\01\00\01")
 (data (i32.const 9125) "N1P1P1P1P1P1P1P\0d\00\00\00\00\00$P1P1P1P1P")
 (data (i32.const 9190) "+++++++++++y\\{\\{O{\\{\\{\\{\\{\\{\\{\\{\\{\\{\\-++y\14\\{\\-y*\\\'\\{\\{\\{\a4\00\n\b4\\{\\{O\03x8+++++++++++++O-++\01")
 (data (i32.const 9303) "H")
 (data (i32.const 9313) "*++++++++++++++++++++++++++")
 (data (i32.const 9373) "++++++++\07\00HVVVVVVVV\02")
 (data (i32.const 9448) "+++++++++++++UVVVVVVVVVVVV\0e")
 (data (i32.const 9506) "$+++++++++++\07\00VVVVVVVVVVVV")
 (data (i32.const 9576) "$++++++++++++++++\07\00\00\00\00VVVVVVVVVVVVVVVVV")
 (data (i32.const 9673) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 9727) "*++++++++++VVVVVVVVVV\0e")
 (data (i32.const 9792) "+++++++++++UVVVVVVVVVV\0e")
 (data (i32.const 9881) "\08\00\00V\01\00\009")
 (data (i32.const 9896) "\01 \00\00\00\e0\ff\ff\00\bf\1d\00\00\e7\02\00\00y\00\00\02$\00\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\01\02\00\00\00\fe\ff\ff\019\ff\ff\00\18\ff\ff\01\87\ff\ff\00\d4\fe\ff\00\c3\00\00\01\d2\00\00\01\ce\00\00\01\cd\00\00\01O\00\00\01\ca\00\00\01\cb\00\00\01\cf\00\00\00a\00\00\01\d3\00\00\01\d1\00\00\00\a3\00\00\01\d5\00\00\00\82\00\00\01\d6\00\00\01\da\00\00\01\d9\00\00\01\db\00\00\008\00\00\03\00\00\00\00\b1\ff\ff\01\9f\ff\ff\01\c8\ff\ff\02($\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\003\ff\ff\00&\ff\ff\01~\ff\ff\01+*\00\01]\ff\ff\01(*\00\00?*\00\01=\ff\ff\01E\00\00\01G\00\00\00\1f*\00\00\1c*\00\00\1e*\00\00.\ff\ff\002\ff\ff\006\ff\ff\005\ff\ff\00O\a5\00\00K\a5\00\001\ff\ff\00(\a5\00\00D\a5\00\00/\ff\ff\00-\ff\ff\00\f7)\00\00A\a5\00\00\fd)\00\00+\ff\ff\00*\ff\ff\00\e7)\00\00C\a5\00\00*\a5\00\00\bb\ff\ff\00\'\ff\ff\00\b9\ff\ff\00%\ff\ff\00\15\a5\00\00\12\a5\00\02$L\00\00\00\00\00\01 \00\00\00\e0\ff\ff\01\01\00\00\00\ff\ff\ff\00T\00\00\01t\00\00\01&\00\00\01%\00\00\01@\00\00\01?\00\00\00\da\ff\ff\00\db\ff\ff\00\e1\ff\ff\00\c0\ff\ff\00\c1\ff\ff\01\08\00\00\00\c2\ff\ff\00\c7\ff\ff\00\d1\ff\ff\00\ca\ff\ff\00\f8\ff\ff\00\aa\ff\ff\00\b0\ff\ff\00\07\00\00\00\8c\ff\ff\01\c4\ff\ff\00\a0\ff\ff\01\f9\ff\ff\02\1ap\00\01\01\00\00\00\ff\ff\ff\01 \00\00\00\e0\ff\ff\01P\00\00\01\0f\00\00\00\f1\ff\ff\00\00\00\00\010\00\00\00\d0\ff\ff\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c0\0b\00\01`\1c\00\00\00\00\00\01\d0\97\00\01\08\00\00\00\f8\ff\ff\02\05\8a\00\00\00\00\00\01@\f4\ff\00\9e\e7\ff\00\c2\89\00\00\db\e7\ff\00\92\e7\ff\00\93\e7\ff\00\9c\e7\ff\00\9d\e7\ff\00\a4\e7\ff\00\00\00\00\008\8a\00\00\04\8a\00\00\e6\0e\00\01\01\00\00\00\ff\ff\ff\00\00\00\00\00\c5\ff\ff\01A\e2\ff\02\1d\8f\00\00\08\00\00\01\f8\ff\ff\00\00\00\00\00V\00\00\01\aa\ff\ff\00J\00\00\00d\00\00\00\80\00\00\00p\00\00\00~\00\00\00\t\00\00\01\b6\ff\ff\01\f7\ff\ff\00\db\e3\ff\01\9c\ff\ff\01\90\ff\ff\01\80\ff\ff\01\82\ff\ff\02\05\ac\00\00\00\00\00\01\10\00\00\00\f0\ff\ff\01\1c\00\00\01\01\00\00\01\a3\e2\ff\01A\df\ff\01\ba\df\ff\00\e4\ff\ff\02\0b\b1\00\01\01\00\00\00\ff\ff\ff\010\00\00\00\d0\ff\ff\00\00\00\00\01\t\d6\ff\01\1a\f1\ff\01\19\d6\ff\00\d5\d5\ff\00\d8\d5\ff\01\e4\d5\ff\01\03\d6\ff\01\e1\d5\ff\01\e2\d5\ff\01\c1\d5\ff\00\00\00\00\00\a0\e3\ff\00\00\00\00\01\01\00\00\00\ff\ff\ff\02\0c\bc\00\00\00\00\00\01\01\00\00\00\ff\ff\ff\01\bcZ\ff\01\a0\03\00\01\fcu\ff\01\d8Z\ff\000\00\00\01\b1Z\ff\01\b5Z\ff\01\bfZ\ff\01\eeZ\ff\01\d6Z\ff\01\ebZ\ff\01\d0\ff\ff\01\bdZ\ff\01\c8u\ff\00\00\00\00\000h\ff\00`\fc\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01(\00\00\00\d8\ff\ff\00\00\00\00\01@\00\00\00\c0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01 \00\00\00\e0\ff\ff\00\00\00\00\01\"\00\00\00\de\ff\ff")
 (data (i32.const 10853) "\06\'Qow")
 (data (i32.const 10868) "|\00\00\7f\00\00\00\00\00\00\00\00\83\8e\92\97\00\aa")
 (data (i32.const 10896) "\b4\c4")
 (data (i32.const 11018) "\c6\c9\00\00\00\db")
 (data (i32.const 11107) "\de\00\00\00\00\e1\00\00\00\00\00\00\00\e4")
 (data (i32.const 11132) "\e7")
 (data (i32.const 11218) "\ea")
 (data (i32.const 11341) "\ed")
 (data (i32.const 11364) "0\0c1\0dx\0e\7f\0f\80\10\81\11\86\12\89\13\8a\13\8e\14\8f\15\90\16\93\13\94\17\95\18\96\19\97\1a\9a\1b\9c\19\9d\1c\9e\1d\9f\1e\a6\1f\a9\1f\ae\1f\b1 \b2 \b7!\bf\"\c5#\c8#\cb#\dd$\f2#\f6%\f7& -:.=/>0?1@1C2D3E4P5Q6R7S8T9Y:[;\\<a=c>e?f@hAiBj@kClDoBqErFuG}H\82I\87J\89K\8aL\8bL\8cM\92N\9dO\9ePEW{\1d|\1d}\1d\7fX\86Y\88Z\89Z\8aZ\8c[\8e\\\8f\\\ac]\ad^\ae^\af^\c2_\cc`\cda\cea\cfb\d0c\d1d\d5e\d6f\d7g\f0h\f1i\f2j\f3k\f4l\f5m\f9n\fd-\fe-\ff-PiQiRiSiTiUiViWiXiYiZi[i\\i]i^i_i\82\00\83\00\84\00\85\00\86\00\87\00\88\00\89\00\c0u\cfv\80\89\81\8a\82\8b\85\8c\86\8dp\9dq\9dv\9ew\9ex\9fy\9fz\a0{\a0|\a1}\a1\b3\a2\ba\a3\bb\a3\bc\a4\be\a5\c3\a2\cc\a4\da\a6\db\a6\e5j\ea\a7\eb\a7\ecn\f3\a2\f8\a8\f9\a8\fa\a9\fb\a9\fc\a4&\b0*\b1+\b2N\b3\84\08b\bac\bbd\bce\bdf\bem\bfn\c0o\c1p\c2~\c3\7f\c3}\cf\8d\d0\94\d1\ab\d2\ac\d3\ad\d4\b0\d5\b1\d6\b2\d7\c4\d8\c5\d9\c6\da")
 (data (i32.const 11772) "<")
 (data (i32.const 11784) "\01\00\00\00&\00\00\00b\00a\00d\00 \00c\00h\00e\00c\00k\00s\00u\00m\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 11836) "<")
 (data (i32.const 11848) "\01\00\00\00\"\00\00\00b\00a\00d\00 \00a\00s\00s\00i\00g\00n\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 11900) "\\")
 (data (i32.const 11912) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 11996) "\\")
 (data (i32.const 12008) "\01\00\00\00L\00\00\00E\00l\00e\00c\00t\00i\00o\00n\00 \00w\00i\00t\00h\00 \00t\00h\00i\00s\00 \00n\00a\00m\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 12092) "l")
 (data (i32.const 12104) "\01\00\00\00Z\00\00\00R\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00s\00t\00a\00r\00t\00 \00t\00i\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00t\00h\00e\00 \00f\00u\00t\00u\00r\00e")
 (data (i32.const 12204) "l")
 (data (i32.const 12216) "\01\00\00\00V\00\00\00R\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00e\00n\00d\00 \00t\00i\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00t\00h\00e\00 \00f\00u\00t\00u\00r\00e")
 (data (i32.const 12316) "\8c")
 (data (i32.const 12328) "\01\00\00\00x\00\00\00R\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00s\00t\00a\00r\00t\00 \00t\00i\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00f\00o\00r\00e\00 \00r\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00e\00n\00d\00 \00t\00i\00m\00e")
 (data (i32.const 12460) "l")
 (data (i32.const 12472) "\01\00\00\00V\00\00\00E\00l\00e\00c\00t\00i\00o\00n\00 \00s\00t\00a\00r\00t\00 \00t\00i\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00f\00o\00r\00e\00 \00e\00n\00d\00 \00t\00i\00m\00e")
 (data (i32.const 12572) "l")
 (data (i32.const 12584) "\01\00\00\00X\00\00\00R\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00e\00n\00d\00 \00b\00e\00f\00o\00r\00e\00 \00e\00l\00e\00c\00t\00i\00o\00n\00 \00s\00t\00a\00r\00t\00s")
 (data (i32.const 12684) "L")
 (data (i32.const 12696) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 12764) "L")
 (data (i32.const 12776) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 12844) "<")
 (data (i32.const 12856) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 12908) "L")
 (data (i32.const 12920) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 12988) "<")
 (data (i32.const 13000) "\01\00\00\00$\00\00\00E\00l\00e\00c\00t\00i\00o\00n\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 13052) "\\")
 (data (i32.const 13064) "\01\00\00\00>\00\00\00R\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00i\00s\00 \00n\00o\00t\00 \00s\00t\00a\00r\00t\00e\00d\00 \00y\00e\00t")
 (data (i32.const 13148) "L")
 (data (i32.const 13160) "\01\00\00\00:\00\00\00R\00e\00g\00i\00s\00t\00r\00a\00t\00i\00o\00n\00 \00p\00e\00r\00i\00o\00d\00 \00i\00s\00 \00c\00l\00o\00s\00e\00d")
 (data (i32.const 13228) ",")
 (data (i32.const 13240) "\01\00\00\00\10\00\00\00M\00i\00n\00i\00m\00u\00m\00 ")
 (data (i32.const 13276) "l")
 (data (i32.const 13288) "\01\00\00\00V\00\00\00 \00t\00o\00k\00e\00n\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00t\00o\00 \00r\00e\00g\00i\00s\00t\00e\00r\00 \00a\00s\00 \00a\00 \00c\00a\00n\00d\00i\00d\00a\00t\00e")
 (data (i32.const 13388) "\1c")
 (data (i32.const 13400) "=\00\00\00\0c\00\00\00\c03\00\00\00\00\00\00\f03")
 (data (i32.const 13420) "\1c")
 (data (i32.const 13432) "\01\00\00\00\02\00\00\000")
 (data (i32.const 13452) "\\")
 (data (i32.const 13464) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 13548) "<")
 (data (i32.const 13560) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 13612) "\1c")
 (data (i32.const 13624) "=\00\00\00\0c\00\00\00\c03\00\00\00\00\00\00\f03")
 (data (i32.const 13644) "\\")
 (data (i32.const 13656) "\01\00\00\00>\00\00\00C\00a\00n\00d\00i\00d\00a\00t\00e\00 \00i\00s\00 \00a\00l\00r\00e\00a\00d\00y\00 \00r\00e\00g\00i\00s\00t\00e\00r\00e\00d")
 (data (i32.const 13740) "<")
 (data (i32.const 13752) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 13804) "L")
 (data (i32.const 13816) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 13884) "l")
 (data (i32.const 13896) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 13996) "L")
 (data (i32.const 14008) "\01\00\00\006\00\00\00C\00a\00n\00d\00i\00d\00a\00t\00e\00 \00i\00s\00 \00n\00o\00t\00 \00r\00e\00g\00i\00s\00t\00e\00r\00e\00d")
 (data (i32.const 14076) "l")
 (data (i32.const 14088) "\01\00\00\00P\00\00\00C\00a\00n\00n\00o\00t\00 \00w\00i\00t\00h\00d\00r\00a\00w\00 \00a\00f\00t\00e\00r\00 \00v\00o\00t\00i\00n\00g\00 \00h\00a\00s\00 \00s\00t\00a\00r\00t\00e\00d")
 (data (i32.const 14188) "\1c")
 (data (i32.const 14220) "\\")
 (data (i32.const 14232) "\01\00\00\00B\00\00\00V\00o\00t\00i\00n\00g\00 \00p\00e\00r\00i\00o\00d\00 \00h\00a\00s\00 \00n\00o\00t\00 \00s\00t\00a\00r\00t\00e\00d\00 \00y\00e\00t")
 (data (i32.const 14316) "L")
 (data (i32.const 14328) "\01\00\00\00.\00\00\00V\00o\00t\00i\00n\00g\00 \00p\00e\00r\00i\00o\00d\00 \00i\00s\00 \00c\00l\00o\00s\00e\00d")
 (data (i32.const 14396) "l")
 (data (i32.const 14408) "\01\00\00\00N\00\00\00Y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00v\00o\00t\00e\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00e\00l\00e\00c\00t\00i\00o\00n")
 (data (i32.const 14508) "l")
 (data (i32.const 14520) "\01\00\00\00R\00\00\00 \00t\00o\00k\00e\00n\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00t\00o\00 \00p\00a\00r\00t\00i\00c\00i\00p\00a\00t\00e\00 \00i\00n\00 \00v\00o\00t\00i\00n\00g")
 (data (i32.const 14620) "\1c")
 (data (i32.const 14632) "=\00\00\00\0c\00\00\00\c03\00\00\00\00\00\00\c08")
 (data (i32.const 14652) "\1c")
 (data (i32.const 14664) "=\00\00\00\0c\00\00\00\c03\00\00\00\00\00\00\c08")
 (data (i32.const 14684) "<")
 (data (i32.const 14696) "\01\00\00\00&\00\00\00C\00a\00n\00d\00i\00d\00a\00t\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 14748) ",")
 (data (i32.const 14760) "\01\00\00\00\0e\00\00\00o\00n\00g\00o\00i\00n\00g")
 (data (i32.const 14796) "L")
 (data (i32.const 14808) "\01\00\00\002\00\00\00E\00l\00e\00c\00t\00i\00o\00n\00 \00i\00s\00 \00s\00t\00i\00l\00l\00 \00o\00n\00g\00o\00i\00n\00g")
 (data (i32.const 14876) "\1c")
 (data (i32.const 14908) "\1c")
 (data (i32.const 14940) "<")
 (data (i32.const 14952) "\01\00\00\00(\00\00\00N\00o\00 \00c\00a\00n\00d\00i\00d\00a\00t\00e\00s\00 \00f\00o\00u\00n\00d\00.")
 (data (i32.const 15004) "\1c")
 (data (i32.const 15016) "?\00\00\00\08\00\00\00\02")
 (data (i32.const 15036) "<")
 (data (i32.const 15048) "\01\00\00\00\"\00\00\00N\00o\00 \00w\00i\00n\00n\00e\00r\00s\00 \00f\00o\00u\00n\00d\00.")
 (data (i32.const 15100) ",")
 (data (i32.const 15112) "\01\00\00\00\12\00\00\00c\00o\00m\00p\00l\00e\00t\00e\00d")
 (data (i32.const 15148) "L")
 (data (i32.const 15160) "\01\00\00\000\00\00\00C\00o\00u\00n\00c\00i\00l\00 \00m\00e\00m\00b\00e\00r\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 15228) "L")
 (data (i32.const 15240) "\01\00\00\006\00\00\00R\00e\00c\00a\00l\00l\00 \00v\00o\00t\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00c\00r\00e\00a\00t\00e\00d")
 (data (i32.const 15308) "\\")
 (data (i32.const 15320) "\01\00\00\00J\00\00\00V\00o\00t\00e\00 \00s\00t\00a\00r\00t\00 \00t\00i\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00t\00h\00e\00 \00f\00u\00t\00u\00r\00e")
 (data (i32.const 15404) "\\")
 (data (i32.const 15416) "\01\00\00\00F\00\00\00V\00o\00t\00e\00 \00e\00n\00d\00 \00t\00i\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00t\00h\00e\00 \00f\00u\00t\00u\00r\00e")
 (data (i32.const 15500) "L")
 (data (i32.const 15512) "\01\00\00\006\00\00\00E\00l\00e\00c\00t\00i\00o\00n\00 \00n\00a\00m\00e\00s\00 \00d\00o\00 \00n\00o\00t\00 \00m\00a\00t\00c\00h")
 (data (i32.const 15580) "\1c")
 (data (i32.const 15592) "=\00\00\00\0c\00\00\00\c03\00\00\00\00\00\00\c08")
 (data (i32.const 15612) "\1c")
 (data (i32.const 15624) "=\00\00\00\0c\00\00\00\c03\00\00\00\00\00\00\c08")
 (data (i32.const 15644) "l")
 (data (i32.const 15656) "\01\00\00\00N\00\00\00R\00e\00c\00a\00l\00l\00 \00v\00o\00t\00e\00 \00n\00o\00t\00 \00s\00t\00a\00r\00t\00e\00d\00 \00f\00o\00r\00 \00t\00h\00i\00s\00 \00m\00e\00m\00b\00e\00r")
 (data (i32.const 15756) "L")
 (data (i32.const 15768) "\01\00\00\00.\00\00\00V\00o\00t\00i\00n\00g\00 \00p\00e\00r\00i\00o\00d\00 \00h\00a\00s\00 \00e\00n\00d\00e\00d")
 (data (i32.const 15836) "l")
 (data (i32.const 15848) "\01\00\00\00\\\00\00\00Y\00o\00u\00 \00h\00a\00v\00e\00 \00a\00l\00r\00e\00a\00d\00y\00 \00v\00o\00t\00e\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00r\00e\00c\00a\00l\00l\00 \00e\00l\00e\00c\00t\00i\00o\00n")
 (data (i32.const 15948) "\1c")
 (data (i32.const 15980) "l")
 (data (i32.const 15992) "\01\00\00\00N\00\00\00N\00o\00 \00r\00e\00c\00a\00l\00l\00 \00v\00o\00t\00e\00s\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00t\00h\00i\00s\00 \00e\00l\00e\00c\00t\00i\00o\00n")
 (data (i32.const 16092) "\\")
 (data (i32.const 16104) "\01\00\00\00L\00\00\00R\00e\00c\00a\00l\00l\00 \00v\00o\00t\00i\00n\00g\00 \00p\00e\00r\00i\00o\00d\00 \00h\00a\00s\00 \00n\00o\00t\00 \00e\00n\00d\00e\00d\00 \00y\00e\00t")
 (data (i32.const 16188) "l")
 (data (i32.const 16200) "\01\00\00\00P\00\00\00R\00e\00c\00a\00l\00l\00 \00v\00o\00t\00i\00n\00g\00 \00p\00e\00r\00i\00o\00d\00 \00h\00a\00s\00 \00n\00o\00t\00 \00s\00t\00a\00r\00t\00e\00d\00 \00y\00e\00t")
 (data (i32.const 16300) "l")
 (data (i32.const 16312) "\01\00\00\00\\\00\00\00N\00o\00t\00 \00e\00n\00o\00u\00g\00h\00 \00v\00o\00t\00e\00s\00 \00t\00o\00 \00r\00e\00p\00l\00a\00c\00e\00 \00t\00h\00e\00 \00c\00o\00u\00n\00c\00i\00l\00 \00m\00e\00m\00b\00e\00r")
 (data (i32.const 16412) "\\")
 (data (i32.const 16424) "\01\00\00\00F\00\00\00C\00o\00u\00n\00c\00i\00l\00 \00m\00e\00m\00b\00e\00r\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00r\00e\00c\00a\00l\00l")
 (data (i32.const 16508) "\1c")
 (data (i32.const 16540) "\\")
 (data (i32.const 16552) "\01\00\00\00J\00\00\00N\00o\00 \00c\00a\00n\00d\00i\00d\00a\00t\00e\00s\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00t\00h\00i\00s\00 \00e\00l\00e\00c\00t\00i\00o\00n")
 (data (i32.const 16636) "\8c")
 (data (i32.const 16648) "\01\00\00\00p\00\00\00N\00o\00 \00v\00a\00l\00i\00d\00 \00c\00a\00n\00d\00i\00d\00a\00t\00e\00s\00 \00f\00o\00u\00n\00d\00 \00t\00o\00 \00r\00e\00p\00l\00a\00c\00e\00 \00t\00h\00e\00 \00r\00e\00c\00a\00l\00l\00e\00d\00 \00m\00e\00m\00b\00e\00r")
 (table $0 3 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0 $snipvote.contract/snipvoting#declareWinners~anonymous|0)
 (export "snipvoting" (global $snipvote.contract/snipvoting))
 (export "snipvoting#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "snipvoting#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "snipvoting#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "snipvoting#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "snipvoting#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "snipvoting#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "snipvoting#constructor" (func $snipvote.contract/snipvoting#constructor))
 (export "snipvoting#createElection" (func $snipvote.contract/snipvoting#createElection))
 (export "snipvoting#clearAllTables" (func $snipvote.contract/snipvoting#clearAllTables))
 (export "snipvoting#registerCandidate" (func $snipvote.contract/snipvoting#registerCandidate))
 (export "snipvoting#withdrawCandidate" (func $snipvote.contract/snipvoting#withdrawCandidate))
 (export "snipvoting#vote" (func $snipvote.contract/snipvoting#vote))
 (export "snipvoting#declareWinners" (func $snipvote.contract/snipvoting#declareWinners))
 (export "snipvoting#createRecallVoting" (func $snipvote.contract/snipvoting#createRecallVoting))
 (export "snipvoting#recallVote" (func $snipvote.contract/snipvoting#recallVote))
 (export "snipvoting#recallResult" (func $snipvote.contract/snipvoting#recallResult))
 (export "apply" (func $snipvote.contract/apply))
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
 (func $tables/elections.table/ElectionsTable#set:startTime (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:endTime (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:registrationStartTime (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:registrationEndTime (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:candidateStakeAmount (param $0 i32) (param $1 i64)
  (i64.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:voterStakeAmount (param $0 i32) (param $1 i64)
  (i64.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:status (param $0 i32) (param $1 i32)
  (i32.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:totalVote (param $0 i32) (param $1 i64)
  (i64.store offset=64
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#set:candidates (param $0 i32) (param $1 i32)
  (i32.store offset=72
   (local.get $0)
   (local.get $1)
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
 (func $tables/elections.table/ElectionsTable#constructor@varargs (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i32)
  (local $7 i32)
  (local $8 i32)
  (block $10of10
   (block $9of10
    (block $6of10
     (block $5of10
      (block $4of10
       (block $3of10
        (block $2of10
         (block $1of10
          (block $0of10
           (block $outOfRange
            (br_table $0of10 $1of10 $2of10 $3of10 $4of10 $5of10 $6of10 $9of10 $9of10 $9of10 $10of10 $outOfRange
             (global.get $~argumentsLength)
            )
           )
           (unreachable)
          )
          (local.set $0
           (i32.const 2288)
          )
         )
         (local.set $1
          (i64.const 0)
         )
        )
        (local.set $2
         (i64.const 0)
        )
       )
       (local.set $3
        (i64.const 0)
       )
      )
      (local.set $4
       (i64.const 0)
      )
     )
     (local.set $5
      (i64.const 0)
     )
    )
    (local.set $6
     (i64.const 0)
    )
   )
   (local.set $8
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 12)
     (i32.const 2368)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 76)
     (i32.const 9)
    )
   )
   (local.get $0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $7)
   (local.get $1)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $7)
   (local.get $2)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $7)
   (local.get $3)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $7)
   (local.get $4)
  )
  (call $tables/elections.table/ElectionsTable#set:candidateStakeAmount
   (local.get $7)
   (local.get $5)
  )
  (call $tables/elections.table/ElectionsTable#set:voterStakeAmount
   (local.get $7)
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:status
   (local.get $7)
   (i32.const 2320)
  )
  (call $tables/elections.table/ElectionsTable#set:totalVote
   (local.get $7)
   (i64.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:candidates
   (local.get $7)
   (local.get $8)
  )
  (local.get $7)
 )
 (func $tables/elections.table/ElectionsTable.get:tableName (result i32)
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
   (i64.const 6076636530200281088)
  )
  (local.get $0)
 )
 (func $tables/candidates.table/CandidatesTable#set:status (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/candidates.table/CandidatesTable#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 40)
     (i32.const 18)
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (i64.const 0)
  )
  (call $tables/candidates.table/CandidatesTable#set:status
   (local.get $4)
   (i32.const 2432)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/candidates.table/CandidatesTable#constructor@varargs (result i32)
  (local $0 i32)
  (block $6of6
   (block $0of6
    (block $outOfRange
     (br_table $0of6 $6of6 $6of6 $6of6 $6of6 $6of6 $6of6 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
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
  )
  (call $tables/candidates.table/CandidatesTable#constructor
   (local.get $0)
   (i32.const 2288)
   (i32.const 2288)
   (i64.const 0)
  )
 )
 (func $tables/candidates.table/CandidatesTable.get:tableName (result i32)
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
   (i64.const 4730634643120193536)
  )
  (local.get $0)
 )
 (func $tables/voters.table/VotersTable#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
  (local $5 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 22)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $3)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $5)
   (local.get $4)
  )
  (local.get $5)
 )
 (func $tables/voters.table/VotersTable#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $5of5
   (block $3of5
    (block $0of5
     (block $outOfRange
      (br_table $0of5 $3of5 $3of5 $3of5 $5of5 $5of5 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
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
  )
  (call $tables/voters.table/VotersTable#constructor
   (local.get $1)
   (i32.const 2288)
   (i32.const 2288)
   (local.get $0)
   (i64.const 0)
  )
 )
 (func $tables/voters.table/VotersTable.get:tableName (result i32)
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
   (i64.const -2507753063930920960)
  )
  (local.get $0)
 )
 (func $tables/winners.table/WinnersTable#set:rank (param $0 i32) (param $1 i32)
  (i32.store8 offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/winners.table/WinnersTable#set:isFoundingMember (param $0 i32) (param $1 i32)
  (i32.store8 offset=21
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/winners.table/WinnersTable#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 22)
     (i32.const 26)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $6)
   (local.get $1)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $6)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $6)
   (local.get $3)
  )
  (call $tables/winners.table/WinnersTable#set:rank
   (local.get $6)
   (local.get $4)
  )
  (call $tables/winners.table/WinnersTable#set:isFoundingMember
   (local.get $6)
   (local.get $5)
  )
  (local.get $6)
 )
 (func $tables/winners.table/WinnersTable#constructor@varargs (result i32)
  (local $0 i32)
  (block $6of6
   (block $0of6
    (block $outOfRange
     (br_table $0of6 $6of6 $6of6 $6of6 $6of6 $6of6 $6of6 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
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
  )
  (call $tables/winners.table/WinnersTable#constructor
   (local.get $0)
   (i32.const 2288)
   (i64.const 0)
   (i32.const 2288)
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $tables/winners.table/WinnersTable.get:tableName (result i32)
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
   (i64.const -2042605223851065344)
  )
  (local.get $0)
 )
 (func $tables/recallVote.table/RecallVotesTable#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 40)
     (i32.const 30)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $4)
   (i64.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (i64.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $4)
   (local.get $2)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/recallVote.table/RecallVotesTable#constructor@varargs (result i32)
  (local $0 i32)
  (block $6of6
   (block $0of6
    (block $outOfRange
     (br_table $0of6 $6of6 $6of6 $6of6 $6of6 $6of6 $6of6 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
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
  )
  (call $tables/recallVote.table/RecallVotesTable#constructor
   (local.get $0)
   (i32.const 2288)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $tables/recallVote.table/RecallVotesTable.get:tableName (result i32)
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
   (i64.const 0)
  )
  (local.get $0)
 )
 (func $tables/recallVoters.table/RecallVotersTable#set:votedToReplace (param $0 i32) (param $1 i32)
  (i32.store8 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/recallVoters.table/RecallVotersTable#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 32)
     (i32.const 34)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $5)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $5)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $5)
   (local.get $3)
  )
  (call $tables/recallVoters.table/RecallVotersTable#set:votedToReplace
   (local.get $5)
   (local.get $4)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $5)
   (i64.const 0)
  )
  (local.get $5)
 )
 (func $tables/recallVoters.table/RecallVotersTable#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $6of6
   (block $2of6
    (block $0of6
     (block $outOfRange
      (br_table $0of6 $2of6 $2of6 $6of6 $6of6 $6of6 $6of6 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
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
  )
  (call $tables/recallVoters.table/RecallVotersTable#constructor
   (local.get $1)
   (i32.const 2288)
   (local.get $0)
   (i32.const 2288)
   (i32.const 1)
  )
 )
 (func $tables/recallVoters.table/RecallVotersTable.get:tableName (result i32)
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
   (i64.const -5003383980141400192)
  )
  (local.get $0)
 )
 (func $tables/account.table/AccountsTable#set:level (param $0 i32) (param $1 i32)
  (i32.store8 offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $tables/account.table/AccountsTable#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 40)
     (i32.const 38)
    )
   )
   (local.get $0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $1)
   (i64.const 0)
  )
  (call $tables/account.table/AccountsTable#set:level
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $1)
   (i64.const 0)
  )
  (local.get $1)
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
 (func $snipvote.contract/snipvoting#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
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
          (i32.const 40)
          (i32.const 7)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 8)
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
     (i32.const 13)
    )
   )
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/elections.table/ElectionsTable#constructor@varargs
    (i32.const 2288)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (local.set $5
   (call $tables/elections.table/ElectionsTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/elections.table/ElectionsTable.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2400)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 14)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 15)
    )
   )
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
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
     (i32.const 19)
    )
   )
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/candidates.table/CandidatesTable#constructor@varargs)
  )
  (local.set $5
   (call $tables/candidates.table/CandidatesTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/candidates.table/CandidatesTable.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2464)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 20)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 21)
    )
   )
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
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
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/voters.table/VotersTable#constructor@varargs)
  )
  (local.set $5
   (call $tables/voters.table/VotersTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/voters.table/VotersTable.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2496)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 25)
    )
   )
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=20
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
     (i32.const 27)
    )
   )
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/winners.table/WinnersTable#constructor@varargs)
  )
  (local.set $5
   (call $tables/winners.table/WinnersTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/winners.table/WinnersTable.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2528)
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
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
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
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $tables/candidates.table/CandidatesTable#set:status
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
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/recallVote.table/RecallVotesTable#constructor@varargs)
  )
  (local.set $5
   (call $tables/recallVote.table/RecallVotesTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/recallVote.table/RecallVotesTable.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2560)
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
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
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
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=28
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
     (i32.const 35)
    )
   )
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $tables/recallVoters.table/RecallVotersTable#constructor@varargs)
  )
  (local.set $5
   (call $tables/recallVoters.table/RecallVotersTable.get:tableName)
  )
  (drop
   (i64.load
    (call $tables/recallVoters.table/RecallVotersTable.get:tableName)
   )
  )
  (local.set $9
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 17)
    (i32.const 2592)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 36)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 37)
    )
   )
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=32
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
   (i64.const -4261148079266201600)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 39)
    )
   )
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $3)
   (i64.const -1)
  )
  (drop
   (call $tables/account.table/AccountsTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
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
    (i32.const 17)
    (i32.const 2624)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i64.load
    (local.get $2)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 41)
    )
   )
   (local.get $6)
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $2)
   (local.get $7)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $2)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $1)
  )
  (i32.store offset=36
   (local.get $0)
   (local.get $3)
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
 (func $~lib/util/string/stagedBinaryLookup (param $0 i32) (param $1 i32) (result i32)
  (i32.and
   (i32.shr_u
    (i32.load8_u
     (i32.add
      (i32.add
       (local.get $0)
       (i32.shl
        (i32.load8_u
         (i32.add
          (local.get $0)
          (i32.shr_u
           (local.get $1)
           (i32.const 8)
          )
         )
        )
        (i32.const 5)
       )
      )
      (i32.shr_u
       (i32.and
        (local.get $1)
        (i32.const 255)
       )
       (i32.const 3)
      )
     )
    )
    (i32.and
     (local.get $1)
     (i32.const 7)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/util/casemap/casemap (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (i32.shr_s
    (local.tee $1
     (i32.load
      (i32.add
       (i32.shl
        (i32.add
         (i32.load8_u
          (i32.add
           (local.tee $1
            (i32.shr_u
             (local.get $0)
             (i32.const 8)
            )
           )
           (i32.const 10852)
          )
         )
         (i32.rem_u
          (i32.shr_u
           (i32.mul
            (i32.load8_u
             (i32.add
              (i32.add
               (i32.mul
                (i32.load8_u
                 (i32.add
                  (local.get $1)
                  (i32.const 7212)
                 )
                )
                (i32.const 86)
               )
               (i32.const 7212)
              )
              (i32.div_u
               (local.tee $4
                (i32.and
                 (local.get $0)
                 (i32.const 255)
                )
               )
               (i32.const 3)
              )
             )
            )
            (i32.load
             (i32.add
              (i32.shl
               (i32.rem_u
                (local.get $4)
                (i32.const 3)
               )
               (i32.const 2)
              )
              (i32.const 9880)
             )
            )
           )
           (i32.const 11)
          )
          (i32.const 6)
         )
        )
        (i32.const 2)
       )
       (i32.const 9892)
      )
     )
    )
    (i32.const 8)
   )
  )
  (block $folding-inner0
   (br_if $folding-inner0
    (i32.lt_u
     (local.tee $1
      (i32.and
       (local.get $1)
       (i32.const 255)
      )
     )
     (i32.const 2)
    )
   )
   (local.set $1
    (i32.and
     (local.get $2)
     (i32.const 255)
    )
   )
   (local.set $3
    (i32.shr_u
     (local.get $2)
     (i32.const 8)
    )
   )
   (loop $while-continue|0
    (if
     (local.get $1)
     (block
      (local.set $1
       (if (result i32)
        (i32.eq
         (local.get $4)
         (local.tee $5
          (i32.load8_u
           (i32.add
            (i32.shl
             (i32.add
              (local.get $3)
              (local.tee $2
               (i32.shr_u
                (local.get $1)
                (i32.const 1)
               )
              )
             )
             (i32.const 1)
            )
            (i32.const 11364)
           )
          )
         )
        )
        (block
         (local.set $2
          (i32.shr_s
           (local.tee $1
            (i32.load
             (i32.add
              (i32.shl
               (i32.load8_u offset=1
                (i32.add
                 (i32.shl
                  (i32.add
                   (local.get $2)
                   (local.get $3)
                  )
                  (i32.const 1)
                 )
                 (i32.const 11364)
                )
               )
               (i32.const 2)
              )
              (i32.const 9892)
             )
            )
           )
           (i32.const 8)
          )
         )
         (br_if $folding-inner0
          (i32.lt_u
           (local.tee $1
            (i32.and
             (local.get $1)
             (i32.const 255)
            )
           )
           (i32.const 2)
          )
         )
         (return
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
        )
        (if (result i32)
         (i32.lt_u
          (local.get $4)
          (local.get $5)
         )
         (local.get $2)
         (block (result i32)
          (local.set $3
           (i32.add
            (local.get $2)
            (local.get $3)
           )
          )
          (i32.sub
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (br $while-continue|0)
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (i32.add
   (local.get $0)
   (i32.and
    (local.get $2)
    (i32.sub
     (i32.const 0)
     (local.get $1)
    )
   )
  )
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
 (func $~lib/string/String#toLowerCase (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (if
   (i32.eqz
    (local.tee $8
     (call $~lib/string/String#get:length
      (local.get $0)
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (local.set $7
   (call $~lib/rt/stub/__new
    (i32.shl
     (local.get $8)
     (i32.const 2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_u
     (local.get $4)
     (local.get $8)
    )
    (block
     (if
      (i32.shr_u
       (local.tee $1
        (i32.load16_u
         (i32.add
          (local.get $0)
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
        )
       )
       (i32.const 7)
      )
      (block $for-continue|0
       (if
        (select
         (i32.lt_u
          (local.get $4)
          (i32.sub
           (local.get $8)
           (i32.const 1)
          )
         )
         (i32.const 0)
         (i32.lt_u
          (i32.sub
           (local.get $1)
           (i32.const 55295)
          )
          (i32.const 1025)
         )
        )
        (if
         (i32.lt_u
          (i32.sub
           (local.tee $3
            (i32.load16_u offset=2
             (i32.add
              (local.get $0)
              (i32.shl
               (local.get $4)
               (i32.const 1)
              )
             )
            )
           )
           (i32.const 56319)
          )
          (i32.const 1025)
         )
         (block
          (local.set $4
           (i32.add
            (local.get $4)
            (i32.const 1)
           )
          )
          (if
           (i32.ge_u
            (local.tee $1
             (i32.add
              (i32.or
               (i32.and
                (local.get $3)
                (i32.const 1023)
               )
               (i32.shl
                (i32.and
                 (local.tee $2
                  (local.get $1)
                 )
                 (i32.const 1023)
                )
                (i32.const 10)
               )
              )
              (i32.const 65536)
             )
            )
            (i32.const 131072)
           )
           (block
            (i32.store
             (i32.add
              (local.get $7)
              (i32.shl
               (local.get $6)
               (i32.const 1)
              )
             )
             (i32.or
              (local.get $2)
              (i32.shl
               (local.get $3)
               (i32.const 16)
              )
             )
            )
            (local.set $6
             (i32.add
              (local.get $6)
              (i32.const 1)
             )
            )
            (br $for-continue|0)
           )
          )
         )
        )
       )
       (if
        (i32.eq
         (local.get $1)
         (i32.const 304)
        )
        (block
         (i32.store
          (i32.add
           (local.get $7)
           (i32.shl
            (local.get $6)
            (i32.const 1)
           )
          )
          (i32.const 50790505)
         )
         (local.set $6
          (i32.add
           (local.get $6)
           (i32.const 1)
          )
         )
        )
        (if
         (i32.eq
          (local.get $1)
          (i32.const 931)
         )
         (i32.store16
          (i32.add
           (local.get $7)
           (i32.shl
            (local.get $6)
            (i32.const 1)
           )
          )
          (select
           (i32.const 962)
           (i32.const 963)
           (if (result i32)
            (i32.gt_u
             (local.get $8)
             (i32.const 1)
            )
            (block $~lib/util/string/isFinalSigma|inlined.0 (result i32)
             (local.set $1
              (i32.const 0)
             )
             (local.set $10
              (select
               (i32.const 0)
               (local.tee $3
                (i32.sub
                 (local.tee $2
                  (local.get $4)
                 )
                 (i32.const 30)
                )
               )
               (i32.lt_s
                (local.get $3)
                (i32.const 0)
               )
              )
             )
             (loop $while-continue|1
              (if
               (i32.gt_s
                (local.get $2)
                (local.get $10)
               )
               (block
                (local.set $3
                 (i32.const -1)
                )
                (block $~lib/util/string/codePointBefore|inlined.0
                 (br_if $~lib/util/string/codePointBefore|inlined.0
                  (i32.le_s
                   (local.tee $5
                    (local.get $2)
                   )
                   (i32.const 0)
                  )
                 )
                 (if
                  (i32.and
                   (i32.eq
                    (i32.and
                     (local.tee $9
                      (i32.load16_u
                       (i32.add
                        (local.get $0)
                        (i32.shl
                         (i32.sub
                          (local.get $5)
                          (i32.const 1)
                         )
                         (i32.const 1)
                        )
                       )
                      )
                     )
                     (i32.const 64512)
                    )
                    (i32.const 56320)
                   )
                   (i32.ge_s
                    (i32.sub
                     (local.get $5)
                     (i32.const 2)
                    )
                    (i32.const 0)
                   )
                  )
                  (block
                   (local.set $3
                    (i32.add
                     (i32.add
                      (i32.and
                       (local.get $9)
                       (i32.const 1023)
                      )
                      (i32.shl
                       (i32.and
                        (local.tee $2
                         (i32.load16_u
                          (i32.add
                           (local.get $0)
                           (i32.shl
                            (i32.sub
                             (local.get $5)
                             (i32.const 2)
                            )
                            (i32.const 1)
                           )
                          )
                         )
                        )
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                     )
                     (i32.const 65536)
                    )
                   )
                   (br_if $~lib/util/string/codePointBefore|inlined.0
                    (i32.eq
                     (i32.and
                      (local.get $2)
                      (i32.const 64512)
                     )
                     (i32.const 55296)
                    )
                   )
                  )
                 )
                 (local.set $3
                  (select
                   (i32.const 65533)
                   (local.get $9)
                   (i32.eq
                    (i32.and
                     (local.get $9)
                     (i32.const 63488)
                    )
                    (i32.const 55296)
                   )
                  )
                 )
                )
                (if
                 (i32.eqz
                  (if (result i32)
                   (i32.lt_u
                    (local.tee $2
                     (local.get $3)
                    )
                    (i32.const 918000)
                   )
                   (call $~lib/util/string/stagedBinaryLookup
                    (i32.const 2636)
                    (local.get $2)
                   )
                   (i32.const 0)
                  )
                 )
                 (local.set $1
                  (if (result i32)
                   (if (result i32)
                    (i32.lt_u
                     (local.get $2)
                     (i32.const 127370)
                    )
                    (call $~lib/util/string/stagedBinaryLookup
                     (i32.const 5644)
                     (local.get $2)
                    )
                    (i32.const 0)
                   )
                   (i32.const 1)
                   (br $~lib/util/string/isFinalSigma|inlined.0
                    (i32.const 0)
                   )
                  )
                 )
                )
                (local.set $2
                 (i32.sub
                  (local.get $5)
                  (i32.add
                   (i32.ge_s
                    (local.get $2)
                    (i32.const 65536)
                   )
                   (i32.const 1)
                  )
                 )
                )
                (br $while-continue|1)
               )
              )
             )
             (drop
              (br_if $~lib/util/string/isFinalSigma|inlined.0
               (i32.const 0)
               (i32.eqz
                (local.get $1)
               )
              )
             )
             (local.set $5
              (select
               (local.tee $1
                (i32.add
                 (local.tee $2
                  (i32.add
                   (local.get $4)
                   (i32.const 1)
                  )
                 )
                 (i32.const 30)
                )
               )
               (local.get $8)
               (i32.lt_s
                (local.get $1)
                (local.get $8)
               )
              )
             )
             (loop $while-continue|2
              (if
               (i32.lt_s
                (local.get $2)
                (local.get $5)
               )
               (block
                (if
                 (i32.eqz
                  (if (result i32)
                   (i32.lt_u
                    (block (result i32)
                     (if
                      (i32.and
                       (i32.eq
                        (i32.and
                         (local.tee $1
                          (i32.load16_u
                           (i32.add
                            (local.get $0)
                            (i32.shl
                             (local.get $2)
                             (i32.const 1)
                            )
                           )
                          )
                         )
                         (i32.const 64512)
                        )
                        (i32.const 55296)
                       )
                       (i32.ne
                        (local.get $8)
                        (i32.add
                         (local.get $2)
                         (i32.const 1)
                        )
                       )
                      )
                      (if
                       (i32.eq
                        (i32.and
                         (local.tee $3
                          (i32.load16_u offset=2
                           (i32.add
                            (local.get $0)
                            (i32.shl
                             (local.get $2)
                             (i32.const 1)
                            )
                           )
                          )
                         )
                         (i32.const 64512)
                        )
                        (i32.const 56320)
                       )
                       (local.set $1
                        (i32.sub
                         (i32.add
                          (i32.shl
                           (local.get $1)
                           (i32.const 10)
                          )
                          (local.get $3)
                         )
                         (i32.const 56613888)
                        )
                       )
                      )
                     )
                     (local.get $1)
                    )
                    (i32.const 918000)
                   )
                   (call $~lib/util/string/stagedBinaryLookup
                    (i32.const 2636)
                    (local.get $1)
                   )
                   (i32.const 0)
                  )
                 )
                 (br $~lib/util/string/isFinalSigma|inlined.0
                  (i32.eqz
                   (if (result i32)
                    (i32.lt_u
                     (local.get $1)
                     (i32.const 127370)
                    )
                    (call $~lib/util/string/stagedBinaryLookup
                     (i32.const 5644)
                     (local.get $1)
                    )
                    (i32.const 0)
                   )
                  )
                 )
                )
                (local.set $2
                 (i32.add
                  (local.get $2)
                  (i32.add
                   (i32.ge_u
                    (local.get $1)
                    (i32.const 65536)
                   )
                   (i32.const 1)
                  )
                 )
                )
                (br $while-continue|2)
               )
              )
             )
             (i32.const 1)
            )
            (i32.const 0)
           )
          )
         )
         (if
          (i32.le_u
           (i32.sub
            (local.get $1)
            (i32.const 9398)
           )
           (i32.const 25)
          )
          (i32.store16
           (i32.add
            (local.get $7)
            (i32.shl
             (local.get $6)
             (i32.const 1)
            )
           )
           (i32.add
            (local.get $1)
            (i32.const 26)
           )
          )
          (if
           (i32.lt_u
            (local.tee $2
             (i32.and
              (call $~lib/util/casemap/casemap
               (local.get $1)
              )
              (i32.const 2097151)
             )
            )
            (i32.const 65536)
           )
           (i32.store16
            (i32.add
             (local.get $7)
             (i32.shl
              (local.get $6)
              (i32.const 1)
             )
            )
            (local.get $2)
           )
           (block
            (i32.store
             (i32.add
              (local.get $7)
              (i32.shl
               (local.get $6)
               (i32.const 1)
              )
             )
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
            (local.set $6
             (i32.add
              (local.get $6)
              (i32.const 1)
             )
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (i32.add
        (local.get $7)
        (i32.shl
         (local.get $6)
         (i32.const 1)
        )
       )
       (i32.or
        (local.get $1)
        (i32.shl
         (i32.lt_u
          (i32.sub
           (local.get $1)
           (i32.const 65)
          )
          (i32.const 26)
         )
         (i32.const 5)
        )
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
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
  (call $~lib/rt/stub/__renew
   (local.get $7)
   (i32.shl
    (local.get $6)
    (i32.const 1)
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
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.get $0)
   )
   (block
    (local.set $1
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
      (local.get $1)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 45)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (i32.const 0)
    )
    (if
     (i32.or
      (i32.lt_u
       (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
        (local.get $1)
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
     (local.get $0)
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (local.get $2)
    )
    (call $~lib/as-chain/env/eosio_assert
     (i32.const 0)
     (i32.load offset=4
      (local.get $0)
     )
    )
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
 (func $utils/index/stringToU64 (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $0
      (call $~lib/array/Array<u8>#constructor
       (local.tee $2
        (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
         (local.tee $1
          (call $~lib/string/String.UTF8.encode
           (call $~lib/string/String#toLowerCase
            (local.get $0)
           )
           (i32.const 0)
          )
         )
        )
       )
      )
     )
    )
    (local.get $1)
    (local.get $2)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 4)
        (i32.const 43)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 4)
       (i32.const 44)
      )
     )
    )
    (local.get $1)
   )
   (call $~lib/array/Array<u8>#constructor
    (call $~lib/as-chain/crypto/Checksum#getSize@virtual
     (local.get $1)
    )
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 32)
   )
  )
  (call $~lib/as-chain/env/sha256
   (i32.load offset=4
    (local.get $0)
   )
   (i32.load offset=12
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $2)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (i64.or
   (i64.or
    (i64.or
     (i64.or
      (i64.or
       (i64.or
        (i64.or
         (i64.shl
          (i64.extend_i32_u
           (call $~lib/array/Array<u8>#__get
            (local.tee $0
             (i32.load
              (local.get $1)
             )
            )
            (i32.const 0)
           )
          )
          (i64.const 56)
         )
         (i64.shl
          (i64.extend_i32_u
           (call $~lib/array/Array<u8>#__get
            (local.get $0)
            (i32.const 1)
           )
          )
          (i64.const 48)
         )
        )
        (i64.shl
         (i64.extend_i32_u
          (call $~lib/array/Array<u8>#__get
           (local.get $0)
           (i32.const 2)
          )
         )
         (i64.const 40)
        )
       )
       (i64.shl
        (i64.extend_i32_u
         (call $~lib/array/Array<u8>#__get
          (local.get $0)
          (i32.const 3)
         )
        )
        (i64.const 32)
       )
      )
      (i64.shl
       (i64.extend_i32_u
        (call $~lib/array/Array<u8>#__get
         (local.get $0)
         (i32.const 4)
        )
       )
       (i64.const 24)
      )
     )
     (i64.shl
      (i64.extend_i32_u
       (call $~lib/array/Array<u8>#__get
        (local.get $0)
        (i32.const 5)
       )
      )
      (i64.const 16)
     )
    )
    (i64.shl
     (i64.extend_i32_u
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 6)
      )
     )
     (i64.const 8)
    )
   )
   (i64.extend_i32_u
    (call $~lib/array/Array<u8>#__get
     (local.get $0)
     (i32.const 7)
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 47)
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
    (i32.const 11920)
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
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.tee $0
    (i32.load
     (local.get $2)
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
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
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
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
     (i32.const 2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.const 268435455)
     )
     (unreachable)
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
          (local.tee $1
           (i32.shl
            (select
             (local.get $1)
             (i32.const 8)
             (i32.gt_u
              (local.get $1)
              (i32.const 8)
             )
            )
            (i32.const 2)
           )
          )
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
 (func $~lib/array/Array<~lib/as-chain/name/Name>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $tables/elections.table/ElectionsTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.tee $2
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:candidateStakeAmount
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:voterStakeAmount
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $2)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:totalVote
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $2)
   )
  )
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $2)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 12)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
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
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
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
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (call $tables/elections.table/ElectionsTable#set:candidates
   (local.get $0)
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (local.get $7)
    )
    (block
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
     (if
      (i32.ge_u
       (local.get $5)
       (i32.load offset=12
        (local.tee $3
         (i32.load offset=72
          (local.get $0)
         )
        )
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $5)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $3)
        (local.tee $6
         (i32.add
          (local.get $5)
          (i32.const 1)
         )
        )
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $3)
        (local.get $6)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
      (local.get $3)
      (local.get $5)
      (local.get $1)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $2)
      (local.get $1)
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
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $tables/elections.table/ElectionsTable#unpack
    (local.tee $0
     (call $tables/elections.table/ElectionsTable#constructor@varargs
      (i32.const 2288)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
      (i64.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#find
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
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 49)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimeSec (result i32)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 48)
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
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $tables/elections.table/ElectionsTable#getPrimaryValue (param $0 i32) (result i64)
  (call $utils/index/stringToU64
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
     (i32.const 50)
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
 (func $~lib/array/Array<~lib/as-chain/name/Name>#__get (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 12704)
   )
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
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 12784)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
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
    (local.get $2)
    (local.get $1)
   )
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
 (func $tables/elections.table/ElectionsTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $2
   (i32.add
    (i32.add
     (i32.add
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load
        (local.get $0)
       )
      )
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load offset=56
        (local.get $0)
       )
      )
     )
     (i32.const 56)
    )
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=72
       (local.get $0)
      )
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=72
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=72
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 8)
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
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (local.get $2)
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
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=64
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=72
      (local.get $0)
     )
    )
   )
  )
  (loop $for-loop|00
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (local.get $0)
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (local.get $0)
       (local.get $3)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|00)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $tables/elections.table/ElectionsTable#getSecondaryValue (result i32)
  (local $0 i32)
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 12864)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 52)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/memory/memory.fill
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 64)
     (i32.const 0)
    )
   )
   (i32.const 64)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (i32.const 64)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 51)
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
 (func $snipvote.contract/snipvoting#createElection (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (param $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
     (i32.load offset=12
      (local.get $0)
     )
     (call $utils/index/stringToU64
      (local.get $1)
     )
    )
   )
   (i32.const 12016)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_u
    (local.get $4)
    (i64.extend_i32_u
     (local.tee $8
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
   )
   (i32.const 12112)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_u
    (local.get $5)
    (i64.extend_i32_u
     (local.get $8)
    )
   )
   (i32.const 12224)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (local.get $4)
    (local.get $5)
   )
   (i32.const 12336)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (local.get $2)
    (local.get $3)
   )
   (i32.const 12480)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_u
    (local.get $2)
    (local.get $5)
   )
   (i32.const 12592)
  )
  (global.set $~argumentsLength
   (i32.const 8)
  )
  (local.set $1
   (call $tables/elections.table/ElectionsTable#constructor@varargs
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (local.get $7)
   )
  )
  (local.set $8
   (i32.load
    (local.get $0)
   )
  )
  (local.set $9
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $2
   (call $tables/elections.table/ElectionsTable#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#find
      (i32.load
       (local.get $9)
      )
      (local.get $2)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $12
   (i32.load
    (local.tee $11
     (i32.load
      (local.get $9)
     )
    )
   )
  )
  (local.set $3
   (call $tables/elections.table/ElectionsTable#getPrimaryValue
    (local.tee $0
     (local.get $1)
    )
   )
  )
  (local.set $4
   (i64.load
    (local.get $8)
   )
  )
  (local.set $13
   (i32.load offset=12
    (local.tee $1
     (call $tables/elections.table/ElectionsTable#pack
      (local.get $0)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#constructor
    (local.get $12)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $12)
     )
     (i64.load offset=16
      (local.get $12)
     )
     (local.get $4)
     (local.get $3)
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $13)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $10)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $11)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $11)
       )
       (local.get $10)
      )
      (call $tables/elections.table/ElectionsTable#getPrimaryValue
       (local.get $0)
      )
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
      (i64.load
       (local.get $8)
      )
     )
     (local.set $10
      (i32.add
       (local.get $10)
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
     (call $tables/elections.table/ElectionsTable#getPrimaryValue
      (local.get $0)
     )
    )
    (i64.load offset=8
     (local.get $11)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $11)
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
    (local.get $2)
    (i64.load offset=8
     (local.get $9)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $9)
    (select
     (i64.const -2)
     (i64.add
      (local.get $2)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $2)
      (i64.const -2)
     )
    )
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
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 55)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/candidates.table/CandidatesTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/candidates.table/CandidatesTable#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $tables/candidates.table/CandidatesTable#unpack
    (local.tee $0
     (call $tables/candidates.table/CandidatesTable#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#constructor
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
 (func $tables/candidates.table/CandidatesTable#getPrimaryValue (param $0 i32) (result i64)
  (i64.add
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
   (call $utils/index/stringToU64
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (call $tables/candidates.table/CandidatesTable#getPrimaryValue
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#getValue
   (block (result i32)
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
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#constructor
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
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#remove (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $tables/candidates.table/CandidatesTable#getPrimaryValue
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1648)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#find
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
   )
   (i32.const 12928)
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove
   (i32.load
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $4
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=4
            (local.get $2)
           )
           (local.get $1)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i32.load
        (local.get $4)
       )
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
  (if
   (i64.eq
    (local.get $3)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 56)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/voters.table/VotersTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
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
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $tables/voters.table/VotersTable#unpack
    (local.tee $0
     (call $tables/voters.table/VotersTable#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 57)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/winners.table/WinnersTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/winners.table/WinnersTable#set:rank
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $tables/winners.table/WinnersTable#set:isFoundingMember
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $tables/winners.table/WinnersTable#unpack
    (local.tee $0
     (call $tables/winners.table/WinnersTable#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $tables/winners.table/WinnersTable#getPrimaryValue (param $0 i32) (result i64)
  (i64.add
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
   (call $utils/index/stringToU64
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#remove (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $tables/winners.table/WinnersTable#getPrimaryValue
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1648)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#find
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
   )
   (i32.const 12928)
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove
   (i32.load
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $4
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=4
            (local.get $2)
           )
           (local.get $1)
          )
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i32.load
        (local.get $4)
       )
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
  (if
   (i64.eq
    (local.get $3)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 58)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/recallVote.table/RecallVotesTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $tables/recallVote.table/RecallVotesTable#unpack
    (local.tee $0
     (call $tables/recallVote.table/RecallVotesTable#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#constructor
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
 (func $tables/recallVote.table/RecallVotesTable#getPrimaryValue (param $0 i32) (result i64)
  (i64.add
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
   (call $utils/index/stringToU64
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#getValue
   (block (result i32)
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
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#constructor
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
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 59)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $tables/recallVoters.table/RecallVotersTable#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
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
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/recallVoters.table/RecallVotersTable#set:votedToReplace
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#getEx (param $0 i32) (param $1 i32) (result i32)
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
   (call $tables/recallVoters.table/RecallVotersTable#unpack
    (local.tee $0
     (call $tables/recallVoters.table/RecallVotersTable#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $tables/recallVoters.table/RecallVotersTable#getPrimaryValue (param $0 i32) (result i64)
  (i64.add
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
   (call $utils/index/stringToU64
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#find (result i32)
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
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $snipvote.contract/snipvoting#clearAllTables (param $0 i32)
  (local $1 i32)
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
  (local.set $1
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#constructor
     (local.tee $1
      (i32.load
       (i32.load
        (i32.load offset=12
         (local.get $0)
        )
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
  )
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $3
      (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#requireFind
       (i32.load
        (local.tee $2
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
       (call $tables/elections.table/ElectionsTable#getPrimaryValue
        (local.get $1)
       )
       (i32.const 1872)
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
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#getValue
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#constructor
        (local.get $4)
        (call $~lib/as-chain/env/db_next_i64
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
     (local.set $3
      (i32.load offset=12
       (local.get $0)
      )
     )
     (local.set $5
      (call $tables/elections.table/ElectionsTable#getPrimaryValue
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#requireFind
       (i32.load
        (local.get $3)
       )
       (local.get $5)
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#find
         (local.tee $4
          (i32.load
           (local.get $3)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 12928)
     )
     (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove
      (i32.load
       (local.get $4)
      )
      (local.get $6)
     )
     (loop $for-loop|0
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
              (i32.load offset=4
               (local.get $4)
              )
              (local.get $1)
             )
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=4
            (local.get $4)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
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
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $3)
        )
        (i64.const 1)
       )
      )
      (call $tables/elections.table/ElectionsTable#set:startTime
       (local.get $3)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|0)
    )
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#first
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (loop $while-continue|1
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#next
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#remove
      (i32.load offset=16
       (local.get $0)
      )
      (local.get $1)
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|1)
    )
   )
  )
  (local.set $1
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#constructor
     (local.tee $1
      (i32.load
       (i32.load
        (i32.load offset=20
         (local.get $0)
        )
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
  )
  (loop $while-continue|2
   (if
    (local.get $1)
    (block
     (local.set $3
      (call $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#requireFind
       (i32.load
        (local.tee $2
         (i32.load offset=20
          (local.get $0)
         )
        )
       )
       (call $tables/candidates.table/CandidatesTable#getPrimaryValue
        (local.get $1)
       )
       (i32.const 1872)
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
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#getValue
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#constructor
        (local.get $4)
        (call $~lib/as-chain/env/db_next_i64
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
     (local.set $3
      (i32.load offset=20
       (local.get $0)
      )
     )
     (local.set $5
      (call $tables/candidates.table/CandidatesTable#getPrimaryValue
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#requireFind
       (i32.load
        (local.get $3)
       )
       (local.get $5)
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#find
         (local.tee $4
          (i32.load
           (local.get $3)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 12928)
     )
     (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove
      (i32.load
       (local.get $4)
      )
      (local.get $6)
     )
     (loop $for-loop|00
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
              (i32.load offset=4
               (local.get $4)
              )
              (local.get $1)
             )
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=4
            (local.get $4)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|00)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $3)
        )
        (i64.const 1)
       )
      )
      (call $tables/elections.table/ElectionsTable#set:startTime
       (local.get $3)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|2)
    )
   )
  )
  (local.set $1
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#constructor
     (local.tee $1
      (i32.load
       (i32.load
        (i32.load offset=24
         (local.get $0)
        )
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
  )
  (loop $while-continue|3
   (if
    (local.get $1)
    (block
     (local.set $3
      (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#requireFind
       (i32.load
        (local.tee $2
         (i32.load offset=24
          (local.get $0)
         )
        )
       )
       (call $tables/winners.table/WinnersTable#getPrimaryValue
        (local.get $1)
       )
       (i32.const 1872)
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
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#getValue
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#constructor
        (local.get $4)
        (call $~lib/as-chain/env/db_next_i64
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
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#remove
      (i32.load offset=24
       (local.get $0)
      )
      (local.get $1)
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|3)
    )
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#first
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
  (loop $while-continue|4
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#next
       (i32.load offset=28
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $3
      (i32.load offset=28
       (local.get $0)
      )
     )
     (local.set $5
      (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#requireFind
       (i32.load
        (local.get $3)
       )
       (local.get $5)
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#find
         (local.tee $4
          (i32.load
           (local.get $3)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 12928)
     )
     (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove
      (i32.load
       (local.get $4)
      )
      (local.get $6)
     )
     (loop $for-loop|01
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
              (i32.load offset=4
               (local.get $4)
              )
              (local.get $1)
             )
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=4
            (local.get $4)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|01)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $3)
        )
        (i64.const 1)
       )
      )
      (call $tables/elections.table/ElectionsTable#set:startTime
       (local.get $3)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|4)
    )
   )
  )
  (local.set $1
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#constructor
     (local.tee $1
      (i32.load
       (i32.load
        (i32.load offset=32
         (local.get $0)
        )
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
  )
  (loop $while-continue|5
   (if
    (local.get $1)
    (block
     (local.set $3
      (call $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#requireFind
       (i32.load
        (local.tee $2
         (i32.load offset=32
          (local.get $0)
         )
        )
       )
       (call $tables/recallVoters.table/RecallVotersTable#getPrimaryValue
        (local.get $1)
       )
       (i32.const 1872)
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
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#getValue
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#constructor
        (local.get $4)
        (call $~lib/as-chain/env/db_next_i64
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
     (local.set $3
      (i32.load offset=32
       (local.get $0)
      )
     )
     (local.set $5
      (call $tables/recallVoters.table/RecallVotersTable#getPrimaryValue
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#requireFind
       (i32.load
        (local.get $3)
       )
       (local.get $5)
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#find
         (local.tee $4
          (i32.load
           (local.get $3)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 12928)
     )
     (call $~lib/as-chain/dbi64/DBI64<tables/elections.table/ElectionsTable>#remove
      (i32.load
       (local.get $4)
      )
      (local.get $6)
     )
     (loop $for-loop|02
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $4)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
              (i32.load offset=4
               (local.get $4)
              )
              (local.get $1)
             )
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=4
            (local.get $4)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|02)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $3)
        )
        (i64.const 1)
       )
      )
      (call $tables/elections.table/ElectionsTable#set:startTime
       (local.get $3)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|5)
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<tables/account.table/AccountsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 60)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
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
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
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
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/account.table/AccountsTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $0
        (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#find (result i32)
         (if
          (i32.ge_s
           (local.tee $2
            (call $~lib/as-chain/env/db_find_i64
             (i64.load
              (local.tee $0
               (i32.load
                (local.tee $3
                 (i32.load
                  (local.get $0)
                 )
                )
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
      )
     )
    )
   )
   (drop
    (i32.load
     (local.get $3)
    )
   )
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#get
    (if
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $2
        (local.get $0)
       )
      )
     )
     (block
      (local.set $0
       (i32.const 0)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/account.table/AccountsTable>#get)
     )
    )
    (local.set $0
     (i32.const 0)
    )
    (if
     (local.tee $2
      (call $~lib/as-chain/env/db_get_i64
       (local.tee $3
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
        (local.get $3)
        (i32.load offset=4
         (local.tee $3
          (call $~lib/array/Array<u8>#constructor
           (local.get $2)
          )
         )
        )
        (local.get $2)
       )
      )
      (drop
       (call $tables/account.table/AccountsTable#unpack
        (local.tee $0
         (call $tables/account.table/AccountsTable#constructor
          (global.get $~lib/as-chain/name/EMPTY_NAME)
         )
        )
        (local.get $3)
       )
      )
     )
    )
   )
   (local.get $0)
  )
 )
 (func $~lib/util/number/utoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (local.get $0)
   )
   (return
    (i32.const 13440)
   )
  )
  (if
   (i64.le_u
    (local.get $0)
    (i64.const 4294967295)
   )
   (block
    (local.set $4
     (local.tee $3
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $2
         (select
          (select
           (i32.add
            (i32.ge_u
             (local.tee $1
              (i32.wrap_i64
               (local.get $0)
              )
             )
             (i32.const 10)
            )
            (i32.const 1)
           )
           (i32.add
            (i32.add
             (i32.ge_u
              (local.get $1)
              (i32.const 10000)
             )
             (i32.const 3)
            )
            (i32.ge_u
             (local.get $1)
             (i32.const 1000)
            )
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 100)
           )
          )
          (select
           (i32.add
            (i32.ge_u
             (local.get $1)
             (i32.const 1000000)
            )
            (i32.const 6)
           )
           (i32.add
            (i32.add
             (i32.ge_u
              (local.get $1)
              (i32.const 1000000000)
             )
             (i32.const 8)
            )
            (i32.ge_u
             (local.get $1)
             (i32.const 100000000)
            )
           )
           (i32.lt_u
            (local.get $1)
            (i32.const 10000000)
           )
          )
          (i32.lt_u
           (local.get $1)
           (i32.const 100000)
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
       (local.get $4)
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
    (loop $do-continue|00
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
     (br_if $do-continue|00
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
      (i32.const 2288)
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
     (i32.const 2288)
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
      (i32.const 2288)
     )
    )
   )
   (local.set $0
    (i32.const 2288)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2288)
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
         (i32.const 2288)
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#find
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
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<tables/candidates.table/CandidatesTable>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $tables/candidates.table/CandidatesTable#pack (param $0 i32) (result i32)
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
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/utils/Utils.calcPackedStringLength
          (i32.load offset=4
           (local.get $0)
          )
         )
         (call $~lib/as-chain/utils/Utils.calcPackedStringLength
          (i32.load offset=8
           (local.get $0)
          )
         )
        )
        (call $~lib/as-chain/utils/Utils.calcPackedStringLength
         (i32.load offset=24
          (local.get $0)
         )
        )
       )
       (i32.const 24)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=24
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
 (func $~lib/array/Array<~lib/as-chain/name/Name>#push (param $0 i32) (param $1 i32)
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
 (func $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.get $1)
   )
   (i32.const 13760)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $tables/elections.table/ElectionsTable#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.get $1)
      )
      (i32.const 13824)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $tables/elections.table/ElectionsTable#set:endTime
      (local.get $1)
      (call $tables/elections.table/ElectionsTable#getPrimaryValue
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 13904)
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
     (call $tables/elections.table/ElectionsTable#pack
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
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/elections.table/ElectionsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
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
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $tables/elections.table/ElectionsTable#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<tables/elections.table/ElectionsTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $snipvote.contract/snipvoting#registerCandidate (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $4
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
      (i32.load offset=12
       (local.get $0)
      )
      (call $utils/index/stringToU64
       (local.get $3)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 13008)
  )
  (local.set $6
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (if
   (local.get $4)
   (block
    (call $~lib/as-chain/system/check
     (i64.le_u
      (i64.load offset=24
       (local.get $4)
      )
      (i64.extend_i32_u
       (local.get $6)
      )
     )
     (i32.const 13072)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_u
      (i64.load offset=32
       (local.get $4)
      )
      (i64.extend_i32_u
       (local.get $6)
      )
     )
     (i32.const 13168)
    )
   )
  )
  (if
   (if (result i32)
    (local.get $4)
    (i64.ne
     (i64.load offset=40
      (local.get $4)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (block
    (local.set $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
      (i32.load offset=36
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (i32.const 13408)
     (call $~lib/util/number/utoa64
      (i64.load offset=40
       (local.get $4)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i32.ne
      (local.get $5)
      (i32.const 0)
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 13408)
     )
    )
    (if
     (i32.eqz
      (local.get $5)
     )
     (unreachable)
    )
    (local.set $5
     (i64.ge_u
      (i64.load offset=16
       (local.get $5)
      )
      (i64.load offset=40
       (local.get $4)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (i32.const 13632)
     (call $~lib/util/number/utoa64
      (i64.load offset=40
       (local.get $4)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $5)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 13632)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#get
     (i32.load offset=16
      (local.get $0)
     )
     (i64.add
      (i64.load
       (local.get $1)
      )
      (call $utils/index/stringToU64
       (local.get $3)
      )
     )
    )
   )
   (i32.const 13664)
  )
  (local.set $2
   (call $tables/candidates.table/CandidatesTable#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (i64.extend_i32_u
     (local.get $6)
    )
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i32.load offset=16
    (local.get $0)
   )
  )
  (local.set $8
   (call $tables/candidates.table/CandidatesTable#getPrimaryValue
    (local.get $2)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#find
      (i32.load
       (local.get $6)
      )
      (local.get $8)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $5
   (i32.const 0)
  )
  (local.set $10
   (i32.load
    (local.tee $9
     (i32.load
      (local.get $6)
     )
    )
   )
  )
  (local.set $7
   (call $tables/candidates.table/CandidatesTable#getPrimaryValue
    (local.get $2)
   )
  )
  (local.set $11
   (i64.load
    (local.get $3)
   )
  )
  (local.set $13
   (i32.load offset=12
    (local.tee $12
     (call $tables/candidates.table/CandidatesTable#pack
      (local.get $2)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#constructor
    (local.get $10)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $10)
     )
     (i64.load offset=16
      (local.get $10)
     )
     (local.get $11)
     (local.get $7)
     (i32.load offset=4
      (local.get $12)
     )
     (local.get $13)
    )
    (local.get $7)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $9)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $5)
      )
      (call $tables/candidates.table/CandidatesTable#getPrimaryValue
       (local.get $2)
      )
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
      (i64.load
       (local.get $3)
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
    (local.tee $7
     (call $tables/candidates.table/CandidatesTable#getPrimaryValue
      (local.get $2)
     )
    )
    (i64.load offset=8
     (local.get $9)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $9)
    (select
     (i64.const -2)
     (i64.add
      (local.get $7)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $7)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $8)
    (i64.load offset=8
     (local.get $6)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $6)
    (select
     (i64.const -2)
     (i64.add
      (local.get $8)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $8)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (local.get $4)
   (block
    (call $~lib/array/Array<~lib/as-chain/name/Name>#push
     (i32.load offset=72
      (local.get $4)
     )
     (local.get $1)
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#update
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $4)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $snipvote.contract/snipvoting#withdrawCandidate (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
      (i32.load offset=12
       (local.get $0)
      )
      (call $utils/index/stringToU64
       (local.get $2)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 13008)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $2
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#get
      (i32.load offset=16
       (local.get $0)
      )
      (i64.add
       (i64.load
        (local.get $1)
       )
       (call $utils/index/stringToU64
        (local.get $2)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 14016)
  )
  (local.set $5
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (if
   (local.get $3)
   (call $~lib/as-chain/system/check
    (i64.gt_u
     (i64.load offset=8
      (local.get $3)
     )
     (i64.extend_i32_u
      (local.get $5)
     )
    )
    (i32.const 14096)
   )
  )
  (if
   (local.get $2)
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#remove
    (i32.load offset=16
     (local.get $0)
    )
    (local.get $2)
   )
  )
  (if
   (local.get $3)
   (block
    (local.set $2
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 12)
      (i32.const 14208)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $4)
       (i32.load offset=12
        (i32.load offset=72
         (local.get $3)
        )
       )
      )
      (block
       (if
        (i64.ne
         (i64.load
          (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
           (i32.load offset=72
            (local.get $3)
           )
           (local.get $4)
          )
         )
         (i64.load
          (local.get $1)
         )
        )
        (call $~lib/array/Array<~lib/as-chain/name/Name>#push
         (local.get $2)
         (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
          (i32.load offset=72
           (local.get $3)
          )
          (local.get $4)
         )
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
    (call $tables/elections.table/ElectionsTable#set:candidates
     (local.get $3)
     (local.get $2)
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#update
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $3)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.get $1)
   )
   (i32.const 13760)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $tables/candidates.table/CandidatesTable#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.get $1)
      )
      (i32.const 13824)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/candidates.table/CandidatesTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $tables/elections.table/ElectionsTable#set:endTime
      (local.get $1)
      (call $tables/candidates.table/CandidatesTable#getPrimaryValue
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 13904)
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
     (call $tables/candidates.table/CandidatesTable#pack
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
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/elections.table/ElectionsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
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
 (func $tables/voters.table/VotersTable#pack (param $0 i32) (result i32)
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
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/utils/Utils.calcPackedStringLength
          (i32.load offset=4
           (local.get $0)
          )
         )
         (call $~lib/as-chain/utils/Utils.calcPackedStringLength
          (i32.load offset=8
           (local.get $0)
          )
         )
        )
        (block (result i32)
         (drop
          (i32.load offset=12
           (local.get $0)
          )
         )
         (i32.const 8)
        )
       )
       (i32.const 16)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $snipvote.contract/snipvoting#vote (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $6
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
      (i32.load offset=12
       (local.get $0)
      )
      (call $utils/index/stringToU64
       (local.get $4)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 13008)
  )
  (local.set $9
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (if
   (local.get $6)
   (block
    (call $~lib/as-chain/system/check
     (i64.le_u
      (i64.load offset=8
       (local.get $6)
      )
      (i64.extend_i32_u
       (local.get $9)
      )
     )
     (i32.const 14240)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_u
      (i64.load offset=16
       (local.get $6)
      )
      (i64.extend_i32_u
       (local.get $9)
      )
     )
     (i32.const 14336)
    )
   )
  )
  (local.set $7
   (i32.load offset=20
    (local.get $0)
   )
  )
  (local.set $8
   (i64.add
    (i64.load
     (local.get $1)
    )
    (call $utils/index/stringToU64
     (local.get $4)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
         (local.tee $7
          (call $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#find
           (local.tee $10
            (i32.load
             (local.get $7)
            )
           )
           (local.get $8)
          )
         )
        )
       )
      )
     )
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#get (result i32)
      (local.set $10
       (i32.load
        (local.get $10)
       )
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#get
        (i32.const 0)
        (i32.eqz
         (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
          (local.get $7)
         )
        )
       )
      )
      (call $~lib/as-chain/dbi64/DBI64<tables/voters.table/VotersTable>#getEx
       (local.get $10)
       (i32.load offset=4
        (local.get $7)
       )
      )
     )
    )
   )
   (i32.const 14416)
  )
  (if
   (if (result i32)
    (local.get $6)
    (i64.ne
     (i64.load offset=48
      (local.get $6)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (block
    (local.set $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
      (i32.load offset=36
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (i32.const 14640)
     (call $~lib/util/number/utoa64
      (i64.load offset=48
       (local.get $6)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i32.ne
      (local.get $5)
      (i32.const 0)
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 14640)
     )
    )
    (if
     (i32.eqz
      (local.get $5)
     )
     (unreachable)
    )
    (local.set $5
     (i64.ge_u
      (i64.load offset=16
       (local.get $5)
      )
      (i64.load offset=48
       (local.get $6)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (i32.const 14672)
     (call $~lib/util/number/utoa64
      (i64.load offset=48
       (local.get $6)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $5)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 14672)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#get
      (i32.load offset=16
       (local.get $0)
      )
      (i64.add
       (i64.load
        (local.get $3)
       )
       (call $utils/index/stringToU64
        (local.get $4)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 14704)
  )
  (if
   (local.get $5)
   (block
    (call $tables/elections.table/ElectionsTable#set:endTime
     (local.get $5)
     (i64.add
      (i64.load offset=16
       (local.get $5)
      )
      (i64.const 1)
     )
    )
    (local.set $10
     (i32.load
      (local.get $0)
     )
    )
    (local.set $7
     (i32.load offset=16
      (local.get $0)
     )
    )
    (local.set $8
     (call $tables/candidates.table/CandidatesTable#getPrimaryValue
      (local.get $5)
     )
    )
    (local.set $12
     (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#requireFind
      (i32.load
       (local.get $7)
      )
      (local.get $8)
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<tables/candidates.table/CandidatesTable>#update
     (i32.load
      (local.get $7)
     )
     (local.get $12)
     (local.get $5)
     (local.get $10)
    )
   )
  )
  (local.set $1
   (call $tables/voters.table/VotersTable#constructor
    (local.get $1)
    (local.get $2)
    (local.get $4)
    (local.get $3)
    (i64.extend_i32_u
     (local.get $9)
    )
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=20
    (local.get $0)
   )
  )
  (local.set $8
   (call $tables/candidates.table/CandidatesTable#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/voters.table/VotersTable>#find
      (i32.load
       (local.get $3)
      )
      (local.get $8)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $9
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $3)
     )
    )
   )
  )
  (local.set $11
   (call $tables/candidates.table/CandidatesTable#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $13
   (i64.load
    (local.get $2)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $7
     (call $tables/voters.table/VotersTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/voters.table/VotersTable>#constructor
    (local.get $9)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $9)
     )
     (i64.load offset=16
      (local.get $9)
     )
     (local.get $13)
     (local.get $11)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $10)
    )
    (local.get $11)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $4)
      )
      (call $tables/candidates.table/CandidatesTable#getPrimaryValue
       (local.get $1)
      )
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
    (local.tee $11
     (call $tables/candidates.table/CandidatesTable#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $11)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $11)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $8)
    (i64.load offset=8
     (local.get $3)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $3)
    (select
     (i64.const -2)
     (i64.add
      (local.get $8)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $8)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (local.get $6)
   (block
    (call $tables/elections.table/ElectionsTable#set:status
     (local.get $6)
     (i32.const 14768)
    )
    (call $tables/elections.table/ElectionsTable#set:totalVote
     (local.get $6)
     (i64.add
      (i64.load offset=64
       (local.get $6)
      )
      (i64.const 1)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#update
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $6)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $snipvote.contract/snipvoting#declareWinners~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  (i32.wrap_i64
   (i64.sub
    (i64.extend_i32_s
     (i32.wrap_i64
      (i64.load offset=16
       (local.get $1)
      )
     )
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/array/Array<tables/candidates.table/CandidatesTable>#sort (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.le_s
    (local.tee $5
     (i32.load offset=12
      (local.get $0)
     )
    )
    (i32.const 1)
   )
   (return
    (local.get $0)
   )
  )
  (local.set $7
   (i32.load offset=4
    (local.get $0)
   )
  )
  (if
   (i32.eq
    (local.get $5)
    (i32.const 2)
   )
   (block
    (local.set $2
     (i32.load offset=4
      (local.get $7)
     )
    )
    (local.set $1
     (i32.load
      (local.get $7)
     )
    )
    (global.set $~argumentsLength
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $i32_i32_=>_i32)
       (local.get $2)
       (local.get $1)
       (i32.load
        (i32.const 15024)
       )
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=4
       (local.get $7)
       (local.get $1)
      )
      (i32.store
       (local.get $7)
       (local.get $2)
      )
     )
    )
    (return
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (local.get $5)
     (local.get $6)
    )
    (block
     (local.set $4
      (i32.load
       (i32.add
        (local.get $7)
        (i32.shl
         (local.get $6)
         (i32.const 2)
        )
       )
      )
     )
     (local.set $2
      (i32.sub
       (local.get $6)
       (i32.const 1)
      )
     )
     (loop $while-continue|1
      (if
       (i32.ge_s
        (local.get $2)
        (i32.const 0)
       )
       (block $while-break|1
        (local.set $3
         (i32.load
          (i32.add
           (local.get $7)
           (i32.shl
            (local.get $2)
            (i32.const 2)
           )
          )
         )
        )
        (global.set $~argumentsLength
         (i32.const 2)
        )
        (br_if $while-break|1
         (i32.ge_s
          (call_indirect (type $i32_i32_=>_i32)
           (local.get $4)
           (local.get $3)
           (i32.load
            (i32.const 15024)
           )
          )
          (i32.const 0)
         )
        )
        (local.set $2
         (i32.sub
          (local.tee $1
           (local.get $2)
          )
          (i32.const 1)
         )
        )
        (i32.store
         (i32.add
          (local.get $7)
          (i32.shl
           (i32.add
            (local.get $1)
            (i32.const 1)
           )
           (i32.const 2)
          )
         )
         (local.get $3)
        )
        (br $while-continue|1)
       )
      )
     )
     (i32.store
      (i32.add
       (local.get $7)
       (i32.shl
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
        (i32.const 2)
       )
      )
      (local.get $4)
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
  (local.get $0)
 )
 (func $tables/winners.table/WinnersTable#pack (param $0 i32) (result i32)
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
      (i32.add
       (i32.add
        (call $~lib/as-chain/utils/Utils.calcPackedStringLength
         (i32.load offset=4
          (local.get $0)
         )
        )
        (call $~lib/as-chain/utils/Utils.calcPackedStringLength
         (i32.load offset=16
          (local.get $0)
         )
        )
       )
       (i32.const 18)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=21
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local.set $4
   (call $tables/winners.table/WinnersTable#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#find
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
   (call $tables/winners.table/WinnersTable#getPrimaryValue
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
     (call $tables/winners.table/WinnersTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#constructor
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $6)
       )
       (local.get $5)
      )
      (call $tables/winners.table/WinnersTable#getPrimaryValue
       (local.get $1)
      )
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
     (call $tables/winners.table/WinnersTable#getPrimaryValue
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $6)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
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
   (call $tables/elections.table/ElectionsTable#set:startTime
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
 (func $snipvote.contract/snipvoting#declareWinners (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $9
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
      (i32.load offset=12
       (local.get $0)
      )
      (call $utils/index/stringToU64
       (local.get $1)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 13008)
  )
  (local.set $2
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (if
   (local.get $9)
   (call $~lib/as-chain/system/check
    (i64.lt_u
     (i64.load offset=16
      (local.get $9)
     )
     (i64.extend_i32_u
      (local.get $2)
     )
    )
    (i32.const 14816)
   )
  )
  (local.set $10
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 62)
    (i32.const 14896)
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#first
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $10)
      (local.get $2)
     )
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#next
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.set $11
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 62)
    (i32.const 14928)
   )
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (local.get $10)
     )
    )
    (block
     (if
      (block $__inlined_func$~lib/string/String.__eq (result i32)
       (drop
        (br_if $__inlined_func$~lib/string/String.__eq
         (i32.const 1)
         (i32.eq
          (local.get $1)
          (local.tee $8
           (i32.load offset=8
            (local.tee $12
             (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
              (local.get $10)
              (local.get $5)
             )
            )
           )
          )
         )
        )
       )
       (drop
        (br_if $__inlined_func$~lib/string/String.__eq
         (i32.const 0)
         (select
          (i32.eqz
           (local.get $1)
          )
          (i32.const 1)
          (local.get $8)
         )
        )
       )
       (drop
        (br_if $__inlined_func$~lib/string/String.__eq
         (i32.const 0)
         (i32.ne
          (local.tee $2
           (call $~lib/string/String#get:length
            (local.get $8)
           )
          )
          (call $~lib/string/String#get:length
           (local.get $1)
          )
         )
        )
       )
       (i32.eqz
        (block $__inlined_func$~lib/util/string/compareImpl (result i32)
         (local.set $4
          (local.get $1)
         )
         (loop $while-continue|00
          (local.set $2
           (i32.sub
            (local.tee $3
             (local.get $2)
            )
            (i32.const 1)
           )
          )
          (if
           (local.get $3)
           (block
            (if
             (i32.ne
              (local.tee $6
               (i32.load16_u
                (local.get $8)
               )
              )
              (local.tee $3
               (i32.load16_u
                (local.get $4)
               )
              )
             )
             (br $__inlined_func$~lib/util/string/compareImpl
              (i32.sub
               (local.get $6)
               (local.get $3)
              )
             )
            )
            (local.set $8
             (i32.add
              (local.get $8)
              (i32.const 2)
             )
            )
            (local.set $4
             (i32.add
              (local.get $4)
              (i32.const 2)
             )
            )
            (br $while-continue|00)
           )
          )
         )
         (i32.const 0)
        )
       )
      )
      (call $~lib/array/Array<~lib/as-chain/name/Name>#push
       (local.get $11)
       (local.get $12)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.get $11)
    )
    (i32.const 0)
   )
   (i32.const 14960)
  )
  (local.set $6
   (select
    (i32.const 0)
    (local.tee $2
     (i32.load offset=12
      (local.tee $4
       (call $~lib/array/Array<tables/candidates.table/CandidatesTable>#sort
        (local.get $11)
       )
      )
     )
    )
    (i32.gt_s
     (local.get $2)
     (i32.const 0)
    )
   )
  )
  (local.set $8
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (local.tee $3
       (select
        (local.tee $2
         (i32.sub
          (select
           (i32.const 5)
           (local.get $2)
           (i32.gt_s
            (local.get $2)
            (i32.const 5)
           )
          )
          (local.get $6)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 2)
      (i32.const 62)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $4
   (i32.add
    (i32.load offset=4
     (local.get $4)
    )
    (i32.shl
     (local.get $6)
     (i32.const 2)
    )
   )
  )
  (local.set $6
   (i32.const 0)
  )
  (local.set $3
   (i32.shl
    (local.get $3)
    (i32.const 2)
   )
  )
  (loop $while-continue|03
   (if
    (i32.gt_u
     (local.get $3)
     (local.get $6)
    )
    (block
     (i32.store
      (i32.add
       (local.get $6)
       (local.get $8)
      )
      (i32.load
       (i32.add
        (local.get $4)
        (local.get $6)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 4)
      )
     )
     (br $while-continue|03)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.get $2)
    )
    (i32.const 0)
   )
   (i32.const 15056)
  )
  (local.set $5
   (i32.const 1)
  )
  (loop $for-loop|3
   (if
    (i32.lt_s
     (local.get $7)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (local.set $3
      (call $tables/winners.table/WinnersTable#constructor
       (i32.load
        (local.tee $3
         (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
          (local.get $2)
          (local.get $7)
         )
        )
       )
       (i32.load offset=4
        (local.get $3)
       )
       (i64.load offset=16
        (local.get $3)
       )
       (local.get $1)
       (local.get $5)
       (i32.const 0)
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#store
      (i32.load offset=24
       (local.get $0)
      )
      (local.get $3)
      (i32.load
       (local.get $0)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (br $for-loop|3)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (i32.const 2)
      (i32.const 2)
      (i32.const 12)
      (i32.const 0)
     )
    )
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
   (i64.const 6716332327816921088)
  )
  (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
   (local.get $3)
   (i32.const 0)
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
   (i64.const 6716332327833698304)
  )
  (call $~lib/array/Array<~lib/as-chain/name/Name>#__uset
   (local.get $3)
   (i32.const 1)
   (local.get $2)
  )
  (local.set $7
   (i32.const 0)
  )
  (loop $for-loop|4
   (if
    (i32.lt_s
     (local.get $7)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (local.set $2
      (call $tables/winners.table/WinnersTable#constructor
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (local.get $3)
        (local.get $7)
       )
       (i32.const 2288)
       (i64.const 0)
       (local.get $1)
       (local.get $5)
       (i32.const 1)
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#store
      (i32.load offset=24
       (local.get $0)
      )
      (local.get $2)
      (i32.load
       (local.get $0)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (br $for-loop|4)
    )
   )
  )
  (if
   (local.get $9)
   (block
    (call $tables/elections.table/ElectionsTable#set:status
     (local.get $9)
     (i32.const 15120)
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#update
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $9)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#find
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
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<tables/winners.table/WinnersTable>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#find
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
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<tables/recallVote.table/RecallVotesTable>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $tables/recallVote.table/RecallVotesTable#pack (param $0 i32) (result i32)
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
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=4
         (local.get $0)
        )
       )
       (i32.const 40)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
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
 (func $snipvote.contract/snipvoting#createRecallVoting (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
     (i32.load offset=12
      (local.get $0)
     )
     (call $utils/index/stringToU64
      (local.get $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 13008)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#get
     (i32.load offset=24
      (local.get $0)
     )
     (i64.add
      (i64.load
       (local.get $1)
      )
      (call $utils/index/stringToU64
       (local.get $2)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 15168)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#get
     (i32.load offset=28
      (local.get $0)
     )
     (i64.add
      (i64.load
       (local.get $1)
      )
      (call $utils/index/stringToU64
       (local.get $2)
      )
     )
    )
   )
   (i32.const 15248)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_u
    (local.get $3)
    (i64.extend_i32_u
     (local.tee $5
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
   )
   (i32.const 15328)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_u
    (local.get $4)
    (i64.extend_i32_u
     (local.get $5)
    )
   )
   (i32.const 15424)
  )
  (local.set $1
   (call $tables/recallVote.table/RecallVotesTable#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $5
   (i32.load offset=28
    (local.get $0)
   )
  )
  (local.set $3
   (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#find
      (i32.load
       (local.get $5)
      )
      (local.get $3)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $8
   (i32.load
    (local.tee $7
     (i32.load
      (local.get $5)
     )
    )
   )
  )
  (local.set $4
   (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
    (local.tee $0
     (local.get $1)
    )
   )
  )
  (local.set $9
   (i64.load
    (local.get $2)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $1
     (call $tables/recallVote.table/RecallVotesTable#pack
      (local.get $0)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#constructor
    (local.get $8)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $8)
     )
     (i64.load offset=16
      (local.get $8)
     )
     (local.get $9)
     (local.get $4)
     (i32.load offset=4
      (local.get $1)
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
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $7)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $7)
       )
       (local.get $6)
      )
      (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
       (local.get $0)
      )
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
      (i64.load
       (local.get $2)
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
    (local.tee $4
     (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
      (local.get $0)
     )
    )
    (i64.load offset=8
     (local.get $7)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $7)
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
    (local.get $3)
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
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
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.get $1)
   )
   (i32.const 13760)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.get $1)
      )
      (i32.const 13824)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVote.table/RecallVotesTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $tables/elections.table/ElectionsTable#set:endTime
      (local.get $1)
      (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 13904)
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
     (call $tables/recallVote.table/RecallVotesTable#pack
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
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/elections.table/ElectionsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
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
 (func $tables/recallVoters.table/RecallVotersTable#pack (param $0 i32) (result i32)
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
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/utils/Utils.calcPackedStringLength
          (i32.load offset=4
           (local.get $0)
          )
         )
         (block (result i32)
          (drop
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 8)
         )
        )
        (call $~lib/as-chain/utils/Utils.calcPackedStringLength
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
       (i32.const 17)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
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
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $snipvote.contract/snipvoting#recallVote (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $7
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
      (i32.load offset=12
       (local.get $0)
      )
      (call $utils/index/stringToU64
       (local.get $4)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 15520)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#get
     (i32.load offset=24
      (local.get $0)
     )
     (i64.add
      (i64.load
       (local.get $3)
      )
      (call $utils/index/stringToU64
       (local.get $4)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 15168)
  )
  (if
   (if (result i32)
    (local.get $7)
    (i64.ne
     (i64.load offset=48
      (local.get $7)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (block
    (local.set $6
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/account.table/AccountsTable>#get
      (i32.load offset=36
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (i32.const 15600)
     (call $~lib/util/number/utoa64
      (i64.load offset=48
       (local.get $7)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i32.ne
      (local.get $6)
      (i32.const 0)
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 15600)
     )
    )
    (if
     (i32.eqz
      (local.get $6)
     )
     (unreachable)
    )
    (local.set $6
     (i64.ge_u
      (i64.load offset=16
       (local.get $6)
      )
      (i64.load offset=48
       (local.get $7)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (i32.const 15632)
     (call $~lib/util/number/utoa64
      (i64.load offset=48
       (local.get $7)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $6)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 15632)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $6
     (call $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#get
      (i32.load offset=28
       (local.get $0)
      )
      (i64.add
       (i64.load
        (local.get $3)
       )
       (call $utils/index/stringToU64
        (local.get $4)
       )
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 15664)
  )
  (local.set $7
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (if
   (local.get $6)
   (block
    (call $~lib/as-chain/system/check
     (i64.le_u
      (i64.load offset=24
       (local.get $6)
      )
      (i64.extend_i32_u
       (local.get $7)
      )
     )
     (i32.const 14240)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_u
      (i64.load offset=32
       (local.get $6)
      )
      (i64.extend_i32_u
       (local.get $7)
      )
     )
     (i32.const 15776)
    )
   )
  )
  (local.set $9
   (i32.load offset=32
    (local.get $0)
   )
  )
  (local.set $8
   (i64.add
    (i64.load
     (local.get $1)
    )
    (call $utils/index/stringToU64
     (local.get $4)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
         (local.tee $9
          (call $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#find
           (local.tee $10
            (i32.load
             (local.get $9)
            )
           )
           (local.get $8)
          )
         )
        )
       )
      )
     )
     (block $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#get (result i32)
      (local.set $10
       (i32.load
        (local.get $10)
       )
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#get
        (i32.const 0)
        (i32.eqz
         (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
          (local.get $9)
         )
        )
       )
      )
      (call $~lib/as-chain/dbi64/DBI64<tables/recallVoters.table/RecallVotersTable>#getEx
       (local.get $10)
       (i32.load offset=4
        (local.get $9)
       )
      )
     )
    )
   )
   (i32.const 15856)
  )
  (if
   (local.get $6)
   (block
    (if
     (local.get $5)
     (call $tables/elections.table/ElectionsTable#set:endTime
      (local.get $6)
      (i64.add
       (i64.load offset=16
        (local.get $6)
       )
       (i64.const 1)
      )
     )
     (call $tables/elections.table/ElectionsTable#set:startTime
      (local.get $6)
      (i64.add
       (i64.load offset=8
        (local.get $6)
       )
       (i64.const 1)
      )
     )
    )
    (local.set $9
     (i32.load
      (local.get $0)
     )
    )
    (local.set $7
     (i32.load offset=28
      (local.get $0)
     )
    )
    (local.set $8
     (call $tables/recallVote.table/RecallVotesTable#getPrimaryValue
      (local.get $6)
     )
    )
    (local.set $10
     (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#requireFind
      (i32.load
       (local.get $7)
      )
      (local.get $8)
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<tables/recallVote.table/RecallVotesTable>#update
     (i32.load
      (local.get $7)
     )
     (local.get $10)
     (local.get $6)
     (local.get $9)
    )
   )
  )
  (local.set $1
   (call $tables/recallVoters.table/RecallVotersTable#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=32
    (local.get $0)
   )
  )
  (local.set $8
   (call $tables/recallVoters.table/RecallVotersTable#getPrimaryValue
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<tables/recallVoters.table/RecallVotersTable>#find
      (i32.load
       (local.get $3)
      )
      (local.get $8)
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $4
   (i32.const 0)
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $3)
     )
    )
   )
  )
  (local.set $11
   (call $tables/recallVoters.table/RecallVotersTable#getPrimaryValue
    (local.tee $0
     (local.get $1)
    )
   )
  )
  (local.set $12
   (i64.load
    (local.get $2)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $1
     (call $tables/recallVoters.table/RecallVotersTable#pack
      (local.get $0)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/recallVoters.table/RecallVotersTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $12)
     (local.get $11)
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $6)
    )
    (local.get $11)
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
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $4)
      )
      (call $tables/recallVoters.table/RecallVotersTable#getPrimaryValue
       (local.get $0)
      )
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
    (local.tee $11
     (call $tables/recallVoters.table/RecallVotersTable#getPrimaryValue
      (local.get $0)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $11)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $11)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $8)
    (i64.load offset=8
     (local.get $3)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
    (local.get $3)
    (select
     (i64.const -2)
     (i64.add
      (local.get $8)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $8)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
    (local.get $1)
   )
   (i32.const 13760)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $tables/winners.table/WinnersTable#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#isOk
       (local.get $1)
      )
      (i32.const 13824)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<tables/winners.table/WinnersTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $tables/elections.table/ElectionsTable#set:endTime
      (local.get $1)
      (call $tables/winners.table/WinnersTable#getPrimaryValue
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<tables/elections.table/ElectionsTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 13904)
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
     (call $tables/winners.table/WinnersTable#pack
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
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
      )
     )
     (local.set $2
      (call $tables/elections.table/ElectionsTable#getSecondaryValue)
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
       (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $4)
       )
       (i32.load
        (local.get $1)
       )
       (call $tables/elections.table/ElectionsTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
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
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $tables/elections.table/ElectionsTable#set:startTime
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
 (func $snipvote.contract/snipvoting#recallResult (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (call $~lib/proton-tsc/modules/store/store/TableStore<tables/elections.table/ElectionsTable>#get
     (i32.load offset=12
      (local.get $0)
     )
     (call $utils/index/stringToU64
      (local.get $1)
     )
    )
    (i32.const 0)
   )
   (i32.const 13008)
  )
  (local.set $10
   (call $~lib/as-chain/system/currentTimeSec)
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 64)
    (i32.const 15968)
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#first
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block
     (call $~lib/array/Array<~lib/as-chain/name/Name>#push
      (local.get $6)
      (local.get $2)
     )
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<tables/recallVote.table/RecallVotesTable>#next
       (i32.load offset=28
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.get $6)
    )
    (i32.const 0)
   )
   (i32.const 16000)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $9)
     (i32.load offset=12
      (local.get $6)
     )
    )
    (block
     (local.set $3
      (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
       (local.get $6)
       (local.get $9)
      )
     )
     (if
      (i32.eq
       (call $~lib/string/String#toLowerCase
        (local.get $1)
       )
       (call $~lib/string/String#toLowerCase
        (i32.load offset=4
         (local.get $3)
        )
       )
      )
      (block
       (call $~lib/as-chain/system/check
        (i64.lt_u
         (i64.load offset=32
          (local.get $3)
         )
         (i64.extend_i32_u
          (local.get $10)
         )
        )
        (i32.const 16112)
       )
       (call $~lib/as-chain/system/check
        (i64.le_u
         (i64.load offset=24
          (local.get $3)
         )
         (i64.extend_i32_u
          (local.get $10)
         )
        )
        (i32.const 16208)
       )
       (call $~lib/as-chain/system/check
        (i64.gt_u
         (i64.load offset=16
          (local.get $3)
         )
         (i64.load offset=8
          (local.get $3)
         )
        )
        (i32.const 16320)
       )
       (call $~lib/as-chain/system/check
        (local.tee $2
         (i32.ne
          (local.tee $4
           (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#get
            (i32.load offset=24
             (local.get $0)
            )
            (i64.add
             (i64.load
              (i32.load
               (local.get $3)
              )
             )
             (call $utils/index/stringToU64
              (local.get $1)
             )
            )
           )
          )
          (i32.const 0)
         )
        )
        (i32.const 16432)
       )
       (local.set $5
        (i32.const 0)
       )
       (if
        (local.get $2)
        (block
         (local.set $5
          (i32.load8_u offset=20
           (local.get $4)
          )
         )
         (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#remove
          (i32.load offset=24
           (local.get $0)
          )
          (local.get $4)
         )
        )
       )
       (local.set $7
        (call $~lib/rt/__newArray
         (i32.const 0)
         (i32.const 2)
         (i32.const 62)
         (i32.const 16528)
        )
       )
       (local.set $2
        (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#first
         (i32.load offset=16
          (local.get $0)
         )
        )
       )
       (loop $while-continue|2
        (if
         (local.get $2)
         (block
          (if
           (i32.eq
            (local.get $1)
            (i32.load offset=8
             (local.get $2)
            )
           )
           (call $~lib/array/Array<~lib/as-chain/name/Name>#push
            (local.get $7)
            (local.get $2)
           )
          )
          (local.set $2
           (call $~lib/proton-tsc/modules/store/store/TableStore<tables/candidates.table/CandidatesTable>#next
            (i32.load offset=16
             (local.get $0)
            )
            (local.get $2)
           )
          )
          (br $while-continue|2)
         )
        )
       )
       (call $~lib/as-chain/system/check
        (i32.gt_s
         (i32.load offset=12
          (local.get $7)
         )
         (i32.const 0)
        )
        (i32.const 16560)
       )
       (local.set $2
        (i32.const 0)
       )
       (local.set $8
        (i32.const 0)
       )
       (loop $for-loop|3
        (if
         (i32.lt_s
          (local.get $8)
          (i32.load offset=12
           (local.get $7)
          )
         )
         (block
          (block $for-continue|3
           (br_if $for-continue|3
            (i32.eq
             (i32.load
              (local.tee $4
               (call $~lib/array/Array<~lib/as-chain/name/Name>#__get
                (local.get $7)
                (local.get $8)
               )
              )
             )
             (i32.load
              (local.get $3)
             )
            )
           )
           (br_if $for-continue|3
            (call $~lib/proton-tsc/modules/store/store/TableStore<tables/winners.table/WinnersTable>#get
             (i32.load offset=24
              (local.get $0)
             )
             (i64.add
              (i64.load
               (i32.load
                (local.get $4)
               )
              )
              (call $utils/index/stringToU64
               (local.get $1)
              )
             )
            )
           )
           (local.set $2
            (select
             (local.get $4)
             (local.get $2)
             (if (result i32)
              (local.get $2)
              (i64.gt_u
               (i64.load offset=16
                (local.get $4)
               )
               (i64.load offset=16
                (local.get $2)
               )
              )
              (i32.const 1)
             )
            )
           )
          )
          (local.set $8
           (i32.add
            (local.get $8)
            (i32.const 1)
           )
          )
          (br $for-loop|3)
         )
        )
       )
       (call $~lib/as-chain/system/check
        (local.tee $4
         (i32.ne
          (local.get $2)
          (i32.const 0)
         )
        )
        (i32.const 16656)
       )
       (if
        (local.get $4)
        (block
         (local.set $5
          (call $tables/winners.table/WinnersTable#constructor
           (i32.load
            (local.get $2)
           )
           (i32.load offset=4
            (local.get $2)
           )
           (i64.load offset=16
            (local.get $2)
           )
           (local.get $1)
           (local.get $5)
           (i32.const 0)
          )
         )
         (local.set $4
          (i32.load
           (local.get $0)
          )
         )
         (local.set $3
          (i32.load offset=24
           (local.get $0)
          )
         )
         (local.set $11
          (call $tables/winners.table/WinnersTable#getPrimaryValue
           (local.get $5)
          )
         )
         (local.set $2
          (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#requireFind
           (i32.load
            (local.get $3)
           )
           (local.get $11)
           (i32.const 1424)
          )
         )
         (call $~lib/as-chain/mi/MultiIndex<tables/winners.table/WinnersTable>#update
          (i32.load
           (local.get $3)
          )
          (local.get $2)
          (local.get $5)
          (local.get $4)
         )
        )
       )
      )
     )
     (local.set $9
      (i32.add
       (local.get $9)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
 )
 (func $snipvote.contract/createElectionAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationStartTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:registrationEndTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:candidateStakeAmount
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:voterStakeAmount
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipvote.contract/clearAllTablesAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $snipvote.contract/registerCandidateAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipvote.contract/withdrawCandidateAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipvote.contract/voteAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
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
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipvote.contract/declareWinnersAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
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
 (func $snipvote.contract/createRecallVotingAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:startTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $tables/elections.table/ElectionsTable#set:endTime
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipvote.contract/recallVoteAction#unpack (param $0 i32) (param $1 i32) (result i32)
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
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
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
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $tables/recallVoters.table/RecallVotersTable#set:votedToReplace
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $snipvote.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
   (local.get $0)
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
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
   (local.get $2)
  )
  (local.set $7
   (call $snipvote.contract/snipvoting#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $4)
    (local.get $7)
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $4
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
  (local.set $6
   (local.get $4)
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
      (i64.const 5031766158149300736)
     )
     (block
      (drop
       (call $snipvote.contract/createElectionAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 56)
            (i32.const 65)
           )
          )
          (i32.const 2288)
         )
         (call $tables/elections.table/ElectionsTable#set:startTime
          (local.get $3)
          (i64.const 0)
         )
         (call $tables/elections.table/ElectionsTable#set:endTime
          (local.get $3)
          (i64.const 0)
         )
         (call $tables/elections.table/ElectionsTable#set:registrationStartTime
          (local.get $3)
          (i64.const 0)
         )
         (call $tables/elections.table/ElectionsTable#set:registrationEndTime
          (local.get $3)
          (i64.const 0)
         )
         (call $tables/elections.table/ElectionsTable#set:candidateStakeAmount
          (local.get $3)
          (i64.const 0)
         )
         (call $tables/elections.table/ElectionsTable#set:voterStakeAmount
          (local.get $3)
          (i64.const 0)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (call $snipvote.contract/snipvoting#createElection
       (local.get $7)
       (i32.load
        (local.get $3)
       )
       (i64.load offset=8
        (local.get $3)
       )
       (i64.load offset=16
        (local.get $3)
       )
       (i64.load offset=24
        (local.get $3)
       )
       (i64.load offset=32
        (local.get $3)
       )
       (i64.load offset=40
        (local.get $3)
       )
       (i64.load offset=48
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4923678648385404928)
     )
     (block
      (drop
       (call $snipvote.contract/clearAllTablesAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 66)
        )
        (local.get $6)
       )
      )
      (call $snipvote.contract/snipvoting#clearAllTables
       (local.get $7)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5000987466195163504)
     )
     (block
      (drop
       (call $snipvote.contract/registerCandidateAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 67)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 2288)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 2288)
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
      (call $snipvote.contract/snipvoting#registerCandidate
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
       )
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636192229744)
     )
     (block
      (drop
       (call $snipvote.contract/withdrawCandidateAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 68)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 2288)
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
      (call $snipvote.contract/snipvoting#withdrawCandidate
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2507766120631500800)
     )
     (block
      (drop
       (call $snipvote.contract/voteAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 69)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 2288)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:rtId
          (local.get $3)
          (i32.const 2288)
         )
         (local.tee $5
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
      (local.set $8
       (i32.load offset=4
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $snipvote.contract/snipvoting#vote
       (local.get $7)
       (local.get $3)
       (local.get $8)
       (local.get $4)
       (i32.load offset=12
        (local.get $5)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2042605236735967232)
     )
     (block
      (drop
       (call $snipvote.contract/declareWinnersAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 70)
           )
          )
          (i32.const 2288)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (call $snipvote.contract/snipvoting#declareWinners
       (local.get $7)
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 5031766165010096912)
     )
     (block
      (drop
       (call $snipvote.contract/createRecallVotingAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 24)
            (i32.const 71)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 2288)
         )
         (call $tables/elections.table/ElectionsTable#set:startTime
          (local.get $3)
          (i64.const 0)
         )
         (call $tables/elections.table/ElectionsTable#set:endTime
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
      (call $snipvote.contract/snipvoting#createRecallVoting
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
       )
       (i64.load offset=8
        (local.get $4)
       )
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5003383994985742336)
     )
     (block
      (drop
       (call $snipvote.contract/recallVoteAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 17)
            (i32.const 72)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 2288)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:rtId
          (local.get $3)
          (i32.const 2288)
         )
         (call $tables/recallVoters.table/RecallVotersTable#set:votedToReplace
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $5
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
      (local.set $8
       (i32.load offset=4
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $snipvote.contract/snipvoting#recallVote
       (local.get $7)
       (local.get $3)
       (local.get $8)
       (local.get $4)
       (i32.load offset=12
        (local.get $5)
       )
       (i32.load8_u offset=16
        (local.get $5)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5003383982456921200)
     )
     (block
      (drop
       (call $snipvote.contract/declareWinnersAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 4)
            (i32.const 73)
           )
          )
          (i32.const 2288)
         )
         (local.get $3)
        )
        (local.get $6)
       )
      )
      (call $snipvote.contract/snipvoting#recallResult
       (local.get $7)
       (i32.load
        (local.get $3)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/crypto/Checksum#getSize@virtual (param $0 i32) (result i32)
  (if
   (i32.eq
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 43)
   )
   (return
    (i32.const 32)
   )
  )
  (i32.const 0)
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $folding-inner0
   (block $default
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
               (block $case7
                (block $case6
                 (block $case4
                  (block $case3
                   (block $case2
                    (block $case1
                     (if
                      (i32.ne
                       (local.tee $2
                        (i32.load
                         (i32.sub
                          (local.get $0)
                          (i32.const 8)
                         )
                        )
                       )
                       (i32.const 65)
                      )
                      (block
                       (br_if $case1
                        (i32.eq
                         (local.get $2)
                         (i32.const 66)
                        )
                       )
                       (br_if $case2
                        (i32.eq
                         (local.get $2)
                         (i32.const 67)
                        )
                       )
                       (br_if $case3
                        (i32.eq
                         (local.get $2)
                         (i32.const 68)
                        )
                       )
                       (br_if $case4
                        (i32.eq
                         (local.get $2)
                         (i32.const 69)
                        )
                       )
                       (br_if $folding-inner0
                        (i32.eq
                         (local.get $2)
                         (i32.const 70)
                        )
                       )
                       (br_if $case6
                        (i32.eq
                         (local.get $2)
                         (i32.const 71)
                        )
                       )
                       (br_if $case7
                        (i32.eq
                         (local.get $2)
                         (i32.const 72)
                        )
                       )
                       (br_if $folding-inner0
                        (i32.eq
                         (local.get $2)
                         (i32.const 73)
                        )
                       )
                       (br_if $case9
                        (i32.eq
                         (local.get $2)
                         (i32.const 49)
                        )
                       )
                       (br_if $case10
                        (i32.eq
                         (local.get $2)
                         (i32.const 48)
                        )
                       )
                       (br_if $case11
                        (i32.eq
                         (local.get $2)
                         (i32.const 5)
                        )
                       )
                       (br_if $case12
                        (i32.or
                         (i32.eq
                          (local.get $2)
                          (i32.const 44)
                         )
                         (i32.eq
                          (local.get $2)
                          (i32.const 43)
                         )
                        )
                       )
                       (br_if $case13
                        (i32.eq
                         (local.get $2)
                         (i32.const 38)
                        )
                       )
                       (br_if $case14
                        (i32.eq
                         (local.get $2)
                         (i32.const 9)
                        )
                       )
                       (br_if $case15
                        (i32.eq
                         (local.get $2)
                         (i32.const 18)
                        )
                       )
                       (br_if $case16
                        (i32.eq
                         (local.get $2)
                         (i32.const 22)
                        )
                       )
                       (br_if $case17
                        (i32.eq
                         (local.get $2)
                         (i32.const 26)
                        )
                       )
                       (br_if $case18
                        (i32.eq
                         (local.get $2)
                         (i32.const 30)
                        )
                       )
                       (br_if $case19
                        (i32.eq
                         (local.get $2)
                         (i32.const 34)
                        )
                       )
                       (br $default)
                      )
                     )
                     (return
                      (call $snipvote.contract/createElectionAction#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (return
                     (call $snipvote.contract/clearAllTablesAction#unpack
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                   )
                   (return
                    (call $snipvote.contract/registerCandidateAction#unpack
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (return
                   (call $snipvote.contract/withdrawCandidateAction#unpack
                    (local.get $0)
                    (local.get $1)
                   )
                  )
                 )
                 (return
                  (call $snipvote.contract/voteAction#unpack
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
                (return
                 (call $snipvote.contract/createRecallVotingAction#unpack
                  (local.get $0)
                  (local.get $1)
                 )
                )
               )
               (return
                (call $snipvote.contract/recallVoteAction#unpack
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
             (return
              (i32.load offset=4
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
           (local.set $1
            (call $~lib/as-chain/serializer/Decoder#constructor
             (local.get $1)
            )
           )
           (drop
            (call $~lib/as-chain/env/memcpy
             (i32.load offset=4
              (local.tee $3
               (call $~lib/array/Array<u8>#constructor
                (local.tee $2
                 (call $~lib/as-chain/crypto/Checksum#getSize@virtual
                  (local.get $0)
                 )
                )
               )
              )
             )
             (i32.add
              (i32.load offset=4
               (i32.load
                (local.get $1)
               )
              )
              (i32.load offset=4
               (local.get $1)
              )
             )
             (local.get $2)
            )
           )
           (call $~lib/as-chain/serializer/Decoder#incPos
            (local.get $1)
            (local.get $2)
           )
           (call $~lib/rt/common/BLOCK#set:mmInfo
            (local.get $0)
            (local.get $3)
           )
           (return
            (i32.load offset=4
             (local.get $1)
            )
           )
          )
          (return
           (call $tables/account.table/AccountsTable#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $tables/elections.table/ElectionsTable#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $tables/candidates.table/CandidatesTable#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $tables/voters.table/VotersTable#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $tables/winners.table/WinnersTable#unpack
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (return
      (call $tables/recallVote.table/RecallVotesTable#unpack
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (return
     (call $tables/recallVoters.table/RecallVotersTable#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (call $snipvote.contract/declareWinnersAction#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $snipvote.contract/declareWinnersAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
      (i32.load
       (local.get $0)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
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
                       (if
                        (i32.ne
                         (local.tee $1
                          (i32.load
                           (i32.sub
                            (local.get $0)
                            (i32.const 8)
                           )
                          )
                         )
                         (i32.const 65)
                        )
                        (block
                         (br_if $case1
                          (i32.eq
                           (local.get $1)
                           (i32.const 66)
                          )
                         )
                         (br_if $case2
                          (i32.eq
                           (local.get $1)
                           (i32.const 67)
                          )
                         )
                         (br_if $case3
                          (i32.eq
                           (local.get $1)
                           (i32.const 68)
                          )
                         )
                         (br_if $case4
                          (i32.eq
                           (local.get $1)
                           (i32.const 69)
                          )
                         )
                         (br_if $case5
                          (i32.eq
                           (local.get $1)
                           (i32.const 70)
                          )
                         )
                         (br_if $case6
                          (i32.eq
                           (local.get $1)
                           (i32.const 71)
                          )
                         )
                         (br_if $case7
                          (i32.eq
                           (local.get $1)
                           (i32.const 72)
                          )
                         )
                         (br_if $case8
                          (i32.eq
                           (local.get $1)
                           (i32.const 73)
                          )
                         )
                         (br_if $case9
                          (i32.eq
                           (local.get $1)
                           (i32.const 49)
                          )
                         )
                         (br_if $case10
                          (i32.eq
                           (local.get $1)
                           (i32.const 48)
                          )
                         )
                         (br_if $case11
                          (i32.eq
                           (local.get $1)
                           (i32.const 5)
                          )
                         )
                         (br_if $case12
                          (i32.or
                           (i32.eq
                            (local.get $1)
                            (i32.const 44)
                           )
                           (i32.eq
                            (local.get $1)
                            (i32.const 43)
                           )
                          )
                         )
                         (br_if $case13
                          (i32.eq
                           (local.get $1)
                           (i32.const 38)
                          )
                         )
                         (br_if $case14
                          (i32.eq
                           (local.get $1)
                           (i32.const 9)
                          )
                         )
                         (br_if $case15
                          (i32.eq
                           (local.get $1)
                           (i32.const 18)
                          )
                         )
                         (br_if $case16
                          (i32.eq
                           (local.get $1)
                           (i32.const 22)
                          )
                         )
                         (br_if $case17
                          (i32.eq
                           (local.get $1)
                           (i32.const 26)
                          )
                         )
                         (br_if $case18
                          (i32.eq
                           (local.get $1)
                           (i32.const 30)
                          )
                         )
                         (br_if $case19
                          (i32.eq
                           (local.get $1)
                           (i32.const 34)
                          )
                         )
                         (br $default)
                        )
                       )
                       (call $~lib/as-chain/serializer/Encoder#packString
                        (local.tee $1
                         (call $~lib/as-chain/serializer/Encoder#constructor
                          (i32.add
                           (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                            (i32.load
                             (local.get $0)
                            )
                           )
                           (i32.const 48)
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
                       (br $folding-inner0)
                      )
                      (return
                       (call $~lib/as-chain/serializer/Encoder#getBytes
                        (call $~lib/as-chain/serializer/Encoder#constructor
                         (i32.const 0)
                        )
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
                       (i32.add
                        (i32.add
                         (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                          (i32.load offset=4
                           (local.get $0)
                          )
                         )
                         (i32.const 8)
                        )
                        (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                         (i32.load offset=8
                          (local.get $0)
                         )
                        )
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
                     (call $~lib/as-chain/serializer/Encoder#packString
                      (local.get $1)
                      (i32.load offset=4
                       (local.get $0)
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packString
                      (local.get $1)
                      (i32.load offset=8
                       (local.get $0)
                      )
                     )
                     (br $folding-inner0)
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
                      (i32.add
                       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                        (i32.load offset=4
                         (local.get $0)
                        )
                       )
                       (i32.const 8)
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
                    (call $~lib/as-chain/serializer/Encoder#packString
                     (local.get $1)
                     (i32.load offset=4
                      (local.get $0)
                     )
                    )
                    (br $folding-inner0)
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
                    (i32.add
                     (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                      (i32.load offset=4
                       (local.get $0)
                      )
                     )
                     (i32.const 8)
                    )
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
                      (i32.add
                       (local.get $1)
                       (i32.const 8)
                      )
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
                   (call $~lib/as-chain/serializer/Encoder#packString
                    (local.get $1)
                    (i32.load offset=4
                     (local.get $0)
                    )
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
                   (call $snipvote.contract/declareWinnersAction#pack
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
                   (i32.add
                    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                     (i32.load offset=4
                      (local.get $0)
                     )
                    )
                    (i32.const 24)
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
                 (call $~lib/as-chain/serializer/Encoder#packString
                  (local.get $1)
                  (i32.load offset=4
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
                 (br $folding-inner0)
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
                 (i32.add
                  (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                   (i32.load offset=4
                    (local.get $0)
                   )
                  )
                  (i32.const 8)
                 )
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
                   (i32.add
                    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                     (i32.load offset=12
                      (local.get $0)
                     )
                    )
                    (local.get $1)
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
                (call $~lib/as-chain/serializer/Encoder#packString
                 (local.get $1)
                 (i32.load offset=4
                  (local.get $0)
                 )
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
                (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
                 (local.get $1)
                 (i32.load8_u offset=16
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
                (call $snipvote.contract/declareWinnersAction#pack
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
           (return
            (call $~lib/array/Array<u8>#slice
             (i32.load
              (local.get $0)
             )
             (i32.const 0)
             (i32.const 2147483647)
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
             (i32.const 33)
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
          (br $folding-inner0)
         )
         (return
          (call $tables/elections.table/ElectionsTable#pack
           (local.get $0)
          )
         )
        )
        (return
         (call $tables/candidates.table/CandidatesTable#pack
          (local.get $0)
         )
        )
       )
       (return
        (call $tables/voters.table/VotersTable#pack
         (local.get $0)
        )
       )
      )
      (return
       (call $tables/winners.table/WinnersTable#pack
        (local.get $0)
       )
      )
     )
     (return
      (call $tables/recallVote.table/RecallVotesTable#pack
       (local.get $0)
      )
     )
    )
    (return
     (call $tables/recallVoters.table/RecallVotersTable#pack
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
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (result i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (drop
   (i32.load
    (i32.sub
     (local.get $0)
     (i32.const 8)
    )
   )
  )
  (unreachable)
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 16780)
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
 )
)
