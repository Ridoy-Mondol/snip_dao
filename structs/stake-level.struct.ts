import { Decoder, EMPTY_NAME, Encoder, Name, Packer } from "proton-tsc";

@packer
export class AccountLevel implements Packer {

  constructor(
    public index:u8 =0,
    public minAmount: u64 =0
  ){}

  pack(): u8[] {
    const enc = new Encoder(this.getSize());
    enc.packNumber<u8>(this.index);
    enc.packNumber<u64>(this.minAmount);
    return enc.getBytes();
  }
  unpack(data: u8[]): usize {
    const dec = new Decoder(data)
    this.index = dec.unpackNumber<u8>();
    this.minAmount = dec.unpackNumber<u64>();
    return dec.getPos();
  }
  getSize(): usize {
    return 9;
  }

  static GetSize(): usize {
    return 9
  }

}