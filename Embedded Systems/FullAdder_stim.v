module stimuli;
reg X,Y,Cin;
wire Sum,Cout;
FullAdder f(X,Y,Cin,Sum,Cout);
initial begin
	$monitor("At time %0t:X=%b,Y=%b,Cin=%b,Sum=%b,Cout=%b",$time,X,Y,Cin,Sum,Cout);
	X = 0; Y = 0; Cin = 0; #10;
	X = 0; Y = 0; Cin = 1; #10;
        X = 0; Y = 1; Cin = 0; #10;
        X = 0; Y = 1; Cin = 1; #10;
        X = 1; Y = 0; Cin = 0; #10;
        X = 1; Y = 0; Cin = 1; #10;
        X = 1; Y = 1; Cin = 0; #10;
        Y = 1; Y = 1; Cin = 1; #10;
	$finish;
end
endmodule
