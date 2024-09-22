module main(
    input [3:0] X, Y, 
    input Cin,
    output [4:0] Sum,
    output Cout
);
    wire [3:0] C_i;

    assign C_i[0] = Cin;
    assign C_i[1] = X[0] & Y[0] | (C_i[0] & (X[0] ^ Y[0]));
    assign C_i[2] = X[1] & Y[1] | (C_i[1] & (X[1] ^ Y[1]));
    assign C_i[3] = X[2] & Y[2] | (C_i[2] & (X[2] ^ Y[2]));
    assign Cout = X[3] & Y[3] | (C_i[3] & (X[3] ^ Y[3]));

    assign Sum[0] = X[0] ^ Y[0] ^ C_i[0];
    assign Sum[1] = X[1] ^ Y[1] ^ C_i[1];
    assign Sum[2] = X[2] ^ Y[2] ^ C_i[2];
    assign Sum[3] = X[3] ^ Y[3] ^ C_i[3];
    assign Sum[4] = Cout;
endmodule
