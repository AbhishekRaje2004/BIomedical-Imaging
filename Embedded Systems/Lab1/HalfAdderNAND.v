 module half_adder(
input X,
input Y,
output Sum,
output Cout
    );
    wire p,q;
    wire r,s;
 nand G1(p,X,!Y);
 nand G2(q,!X,Y);
 nand(Sum,p,q);
 nand(r,X,Y);
 nand(Cout,r,r);
endmodule

