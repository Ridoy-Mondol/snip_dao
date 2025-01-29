import { Decoder, Encoder, Packer } from "proton-tsc";

export class LockingPeriod implements Packer {

  constructor(
    public months: u8= 0,
    public multiplier: f32 = 0 
  ){}

  pack(): u8[] {
    const enc = new Encoder(this.getSize());
    enc.packNumber<u8>(this.months);
    enc.packNumber<f32>(this.multiplier);
    return enc.getBytes();
  }
  unpack(data: u8[]): usize {
    const dec = new Decoder(data)
    this.months = dec.unpackNumber<u8>();
    this.multiplier = dec.unpackNumber<f32>();
    return dec.getPos();
  }
  getSize(): usize {
    return 5;
  }

  static GetSize(): usize {
    return 5
  }

  



}