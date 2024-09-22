module half_adder(
    input X,
    input Y,
    output Sum,
    output Cout
);
    assign Sum = X ^ Y;
    assign Cout = X & Y;
endmodule
