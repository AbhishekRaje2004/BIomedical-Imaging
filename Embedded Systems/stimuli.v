module stimuli;
    reg X, Y;  // Specify the width of X and Y as 1 bit
    wire Sum, Cout;  

    half_adder h(X, Y, Sum, Cout);  

initial begin
        $monitor("At time %0t:X=%b, Y=%b, Sum=%b, Cout=%b", $time, X, Y, Sum, Cout);
	 X = 1'b0;Y=1'b0;#10;
	 X = 1'b0;Y=1'b1;#10;
	 X = 1'b1;Y=1'b0;#10;
	 Y = 1'b0;Y=1'b1;#10;
	 $finish;
end


endmodule

