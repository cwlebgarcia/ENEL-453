module lab_2_top_level (
    input  logic [15:0] switches_inputs, // slide switches (0 towards Basys3 board edge, 1 towards board center)
    output logic [15:0] led, // mapped to the LEDs above the slide switches, LEDs: write a 1 to light LED, 0 to turn it off
    
    input  logic        clk,
    input  logic        reset,
    output logic        CA, CB, CC, CD, CE, CF, CG, DP,
    output logic        AN1, AN2, AN3, AN4
);

    // Internal signal declarations

    logic [15:0] switches_outputs;
    logic [15:0] bcd_out;

    // Instantiate components

    switch_logic SWITCHES (
         .switches_inputs(switches_inputs),
         .switches_outputs(switches_outputs)
    );

    seven_segment_display_subsystem SEVEN_SEG(
        .clk(clk),
        .reset(reset),
        .sec_dig1(bcd_out[3:0]),
        .sec_dig2(bcd_out[7:4]),
        .min_dig1(bcd_out[11:8]),
        .min_dig2(bcd_out[15:12]),
        .CA(CA), .CB(CB), .CC(CC), .CD(CD), .CE(CE), .CF(CF), .CG(CG),
        .DP(DP),
        .AN1(AN1), .AN2(AN2), .AN3(AN3), .AN4(AN4)
    );
      
    bin_to_bcd BCDer(
        .bin_in(switches_outputs),
        .bcd_out(bcd_out[15:0]),
        .clk(clk),
        .reset(reset)
    );

    assign led = switches_outputs;

endmodule
