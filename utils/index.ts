import { sha256, Checksum256, Utils } from "proton-tsc";

export function stringToU64(input: string): u64 {
    const lowerCaseInput = input.toLowerCase();
    const data: u8[] = Utils.stringToU8Array(lowerCaseInput); 
    const hash: Checksum256 = sha256(data);
    const bytes = hash.data;
    return (
        (u64(bytes[0]) << 56) |
        (u64(bytes[1]) << 48) |
        (u64(bytes[2]) << 40) |
        (u64(bytes[3]) << 32) |
        (u64(bytes[4]) << 24) |
        (u64(bytes[5]) << 16) |
        (u64(bytes[6]) << 8) |
        (u64(bytes[7]))
      );
}




