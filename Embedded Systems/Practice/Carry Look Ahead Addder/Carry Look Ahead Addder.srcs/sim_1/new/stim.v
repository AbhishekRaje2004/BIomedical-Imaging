    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 04/04/2024 11:13:35 PM
    // Design Name: 
    // Module Name: stim
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
    
    module stim;
    
        reg [3:0] X, Y;
        reg C_in;
        wire [4:0] Sum;
        wire C_o;
        wire [5:0] add;
    
        // Assuming 'main' is the module name of your 4-bit adder
        main f(X, Y, C_in, Sum, C_o);
    
        // Concatenate C_o and Sum for displaying as a 5-bit addition result
        assign add = {C_o, Sum};
    
        // Testbench procedure
        initial begin
            // Apply test inputs and monitor changes
            $monitor("Time = %t, X = %b, Y = %b, C_in = %b, Sum = %b, C_o = %b, Addition = %b", $time, X, Y, C_in, Sum, C_o, add);
    
            // Test Case 1
            X = 4'b0001; Y = 4'b0010; C_in = 1'b0; #100;
    
            // Test Case 2
            X = 4'b0101; Y = 4'b0011; C_in = 1'b1; #100;
    
            // Test Case 3
            X = 4'b1111; Y = 4'b1111; C_in = 1'b0; #100;
    
            // Test Case 4
            X = 4'b1010; Y = 4'b0101; C_in = 1'b1; #100;
    
            // Finish simulation
            $finish;
        end
    endmodule
