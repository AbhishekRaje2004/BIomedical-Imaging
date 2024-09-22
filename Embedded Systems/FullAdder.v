module FullAdder(
	input X,
	input Y,
	input Cin,
	output Sum,
	output Cout
);
wire p,q,r;
xor G1(Sum,X,Y,Cin);
and G2(p,X,Y);
and G3(q,Cin,Y);
and G4(r,Cin,X);
or G5(Cout,p,q,r);
endmodule
