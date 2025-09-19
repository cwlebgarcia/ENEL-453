`timescale 1ns / 1ps

module lab_2_top_level_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic [15:0] switches_inputs;
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
        .led(led),
        .clk(clk),
        .reset(reset),
        .CA(segs[0]),.CB(segs[1]),.CC(segs[2]),.CD(segs[3]),.CE(segs[4]),.CF(segs[5]),.CG(segs[6]),
        .AN1(ans[0]),.AN2(ans[1]),.AN3(ans[2]),.AN4(ans[3])
    );

    // Test stimulus
    initial begin
        // Initialize inputs

        reset = 0;
        #(CLK_PERIOD);

        reset = 1;
        #CLK_PERIOD
        reset = 0;
        #CLK_PERIOD

        #(100);
        
        // Test case 0:
        switches_inputs = 16'b0000_0000_0000_0000; #(20*CLK_PERIOD);
        
        // Test case 1:
        switches_inputs = 16'd456;   #(20*CLK_PERIOD);

        // Test case 2:
        switches_inputs = 16'd1024;  #(20*CLK_PERIOD);

        // Test case 3:
        switches_inputs = 16'd652;   #(20*CLK_PERIOD);
        
        // Test case 4:
        switches_inputs = 16'd9998;  #(20*CLK_PERIOD);
        
        // Test case 5:
        switches_inputs = 16'd16012; #(20*CLK_PERIOD);
        
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