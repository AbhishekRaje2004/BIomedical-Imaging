module stim;
    reg [7:0] inp;
    reg [2:0] sel;
    wire out;

    // Instantiate the main module
    main Instance(.inp(inp), .sel(sel), .out(out));

    initial begin
        // Test scenario 1
        inp = 8'b10100011; 
        sel = 3'b001;
        #10; // Wait for 10 time units

        // Test scenario 2
        inp = 8'b10100011; 
        sel = 3'b011;
        #10; // Wait for 10 time units

        // Test scenario 3
        inp = 8'b10100011; 
        sel = 3'b101;
        #10; // Wait for 10 time units

        // Test scenario 4
        inp = 8'b10100011; 
        sel = 3'b110;
        #10; // Wait for 10 time units

        // Test scenario 5
        inp = 8'b10100011; 
        sel = 3'b011;
        #10; // Wait for 10 time units

        $finish; // End the simulation
    end
endmodule
