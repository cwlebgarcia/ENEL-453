`timescale 1ns / 1ps

module flop_tb();

    parameter CLK_PERIOD = 10;
    

    logic [15:0] inputs;
    logic        nhold;
    logic        clk;
    logic        reset;    

    logic [15:0] outputs;

    always begin
        clk = 0;
        #(CLK_PERIOD/2);
        clk = 1;
        #(CLK_PERIOD/2);
    end

    flop uut (
        .inputs(inputs),
        .nhold(nhold),
        .clk(clk),
        .reset(reset),
        .outputs(outputs)
    );


    initial begin
        nhold = 0;
        inputs = 16'b0000_0000_0000_0000;

        reset = 0;
        #(CLK_PERIOD);
        reset = 1;
        #CLK_PERIOD
        reset = 0;
        #CLK_PERIOD

        #(100);


        // test case 0
        nhold = 1;
        inputs = 16'b0000_0000_0000_0000; #(20*CLK_PERIOD);

        // test case 1
        nhold = 1;
        inputs = 16'h15AF; #(20*CLK_PERIOD);

        // test case 2
        nhold = 0;
        inputs = 16'h26B0; #(20*CLK_PERIOD);

         // test case 3
        nhold = 0;
        inputs = 16'h26B0; #(20*CLK_PERIOD);

        // test case 4
        nhold = 1;

         // test case 5
        nhold = 1;
        inputs = 16'hABCD; #(20*CLK_PERIOD);

        // End simulation
        #(5 * CLK_PERIOD);
        $stop;


    end

endmodule