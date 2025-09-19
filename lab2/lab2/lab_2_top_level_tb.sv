`timescale 1ns / 1ps

module lab_2_top_level_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock
    parameter SHORT_WAIT = 1000;
    parameter LONG_WAIT = 100000;

    // Signals
    logic [15:0] switches_inputs;
    logic        btnU;
    logic [15:0] led;
    logic [6:0]  segs;
    logic [3:0]  ans;

    logic reset;

    logic clk;
    always begin
        clk = 0;
        #(CLK_PERIOD/2);
        clk = 1;
        #(CLK_PERIOD/2);
    end

    // Instantiate the Unit Under Test (UUT)
    lab_2_top_level uut (
        .switches_inputs(switches_inputs),
        .btnU(btnU),
        .led(led),
        .clk(clk),
        .reset(reset),
        .CA(segs[0]),.CB(segs[1]),.CC(segs[2]),.CD(segs[3]),.CE(segs[4]),.CF(segs[5]),.CG(segs[6]),
        .AN1(ans[0]),.AN2(ans[1]),.AN3(ans[2]),.AN4(ans[3])
    );

    // Test stimulus
    initial begin
        // Initialize inputs
        btnU = 0;

        reset = 0;
        #(CLK_PERIOD);
        reset = 1;
        #CLK_PERIOD
        reset = 0;
        #CLK_PERIOD

        #(100);
        
        // Test case 0:
        switches_inputs = 16'b0000_0000_0000_0000; #LONG_WAIT; //#(20*CLK_PERIOD);
        btnU = 1;#SHORT_WAIT;btnU = 0; #LONG_WAIT;

        // Test case 1:
        switches_inputs = 16'd456;   #LONG_WAIT; //#(20*CLK_PERIOD);
        btnU = 1;#SHORT_WAIT;btnU = 0; #LONG_WAIT;
        
        // Test case 2:
        switches_inputs = 16'd1024; #LONG_WAIT; // #(20*CLK_PERIOD);
        btnU = 1;#SHORT_WAIT;btnU = 0; #LONG_WAIT;

        // Test case 3:
        switches_inputs = 16'd16052;  #LONG_WAIT; // #(20*CLK_PERIOD);
        btnU = 1;#SHORT_WAIT;btnU = 0; #LONG_WAIT;

        // Test case 4:
        switches_inputs = 16'd9998; #LONG_WAIT; // #(20*CLK_PERIOD);
        btnU = 1;#SHORT_WAIT;btnU = 0; #LONG_WAIT;

        // Test case 5:
        switches_inputs = 16'd6012; #LONG_WAIT; // #(20*CLK_PERIOD);
        btnU = 1;#SHORT_WAIT;btnU = 0; #LONG_WAIT;

        // End simulation
        #(5 * CLK_PERIOD);
        $stop;
    end

    // Optional: Monitor changes
    initial begin
        $monitor("Time = %0t: switches_inputs = %b, led = %b, segs = %b, ans", 
                 $time, switches_inputs, led, segs, ans);
    end

endmodule