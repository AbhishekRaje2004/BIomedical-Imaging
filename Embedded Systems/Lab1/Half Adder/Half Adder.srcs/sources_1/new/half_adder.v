`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 02:40:52 PM
// Design Name: 
// Module Name: half_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
