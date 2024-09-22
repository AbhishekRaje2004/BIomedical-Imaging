 module half_adder_nor(
    input X,
    input Y,
    output Sum,
    output Carry
    );
    wire p,q;
    wire r;
    nor G1(p,X,Y);
    nor G2(q,!X,!Y);
    nor(Sum,p,q);
    nor(r,X,Y);
    nor(Carry,r,r);
endmodule
