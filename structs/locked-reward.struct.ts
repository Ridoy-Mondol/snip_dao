import { Decoder, Encoder, Packer } from "proton-tsc";

export class LockedReward implements Packer {

  constructor(
    public lockedReward: u64,
    public unlockedReward: u64
  ){}

  pack(): u8[] {
    const enc = new Encoder(this.getSize());
    enc.packNumber<u64>(this.lockedReward);
    enc.packNumber<u64>(this.unlockedReward);
    return enc.getBytes();
  }
  unpack(data: u8[]): usize {
    const dec = new Decoder(data)
    this.lockedReward = dec.unpackNumber<u64>();
    this.unlockedReward = dec.unpackNumber<u64>();
    return dec.getPos();
  }
  getSize(): usize {
    return 16;
  }

  static GetSize(): usize {
    return 16
  }
}