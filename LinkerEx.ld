//This is an linker example it should work in arm not X-86
ENTRY(start)
SECTIONS{

    .=0x10000;
    .text{*(text)}
    .data{*(data)}//gonna add mo
    .bss{*(bss)}//this is a bss ***brb
    .=ALLIGN(8)//...
      .=.10000//4kb lets seem how small we can make this
    stack_top =.;//make sure the bits link to this command signle
    NputVali{*{NputVali}}


}
