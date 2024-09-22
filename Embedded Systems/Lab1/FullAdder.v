module Decoder(
    input a,
    input b,
    input c,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7);
    assign yo=!a & !b & !c;
    assign y1=!a & !b &c;
    assign y2=!a & b & !c;
    assign y3=!a & b & c;
    assign y4=a & !b & !c;
    assign y5=a & !b & c;
    assign y6=a & b & !c;
    assign y7=a & b & c;
    
    endmodule
    
    module FullAdder(
    input a,
    input b,
    input c,
    output Sum,output Carry
    );
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    Decoder D(a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
    nand G1(Sum,!y7,!y6,!y2,!y3);
    nand G2(Carry,!y5,!y7,!y3,!y6);
    endmodule
