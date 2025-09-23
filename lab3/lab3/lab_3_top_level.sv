module lab_3_top_level (
    input  logic [15:0] switches_inputs, // slide switches (0 towards Basys3 board edge, 1 towards board center)
    input  logic        btnU,
    output logic [15:0] led, // mapped to the LEDs above the slide switches, LEDs: write a 1 to light LED, 0 to turn it off
    
    input  logic        btnR,

    input  logic        clk,
    input  logic        reset,
    output logic        CA, CB, CC, CD, CE, CF, CG, DP,
    output logic        AN1, AN2, AN3, AN4
);

    // Internal signal declarations

    logic [15:0] switches_outputs;
    logic [15:0] saved_switches_outputs;

    logic [15:0] maybe_live_switches_outputs;

    logic [15:0] bcd_out;
    logic [15:0] display_segs;
    
    logic        decimal_display;

    logic        nhold;
    logic [1:0]  state; // 00 = switchesHEX, 01 = switchesBCD, 10 = savedHEX, 11 = savedBCD

    // Instantiate components

    switch_logic SWITCHES (
         .switches_inputs(switches_inputs),
         .switches_outputs(switches_outputs)
    );

    seven_segment_display_subsystem SEVEN_SEG(
        .clk(clk),
        .reset(reset),
        .sec_dig1(display_segs[3:0]),
        .sec_dig2(display_segs[7:4]),
        .min_dig1(display_segs[11:8]),
        .min_dig2(display_segs[15:12]),
        .CA(CA), .CB(CB), .CC(CC), .CD(CD), .CE(CE), .CF(CF), .CG(CG),
        .DP(DP),
        .AN1(AN1), .AN2(AN2), .AN3(AN3), .AN4(AN4)
    );
      
    bin_to_bcd BCDer(
        .bin_in(maybe_live_switches_outputs),
        .bcd_out(bcd_out[15:0]),
        .clk(clk),
        .reset(reset)
    );

    counter COUNTER4(
        .btn(btnU),
        .clk(clk),
        .reset(reset),

        .count(state)
    )

    mux2 SAVEDMUX(
        .s0(switches_outputs),
        .s1(saved_switches_outputs),
        .ctrl(state[1]),
        .y(maybe_live_switches_outputs)
    );

    mux2 RADIXMUX(
        .s0(maybe_live_switches_outputs),
        .s1(bcd_out),
        .ctrl(state[0]),
        .y(display_segs)
    );

    flop FLOP(
        .inputs(switches_outputs),
        .nhold(btnR),
        .clk(clk),
        .reset(reset),
        .outputs(saved_switches_outputs)
    );

    /*
    debounce #(.clk_freq(100_000_000), .stable_time(50)) Button1 (
        .clk(clk),
        .reset(reset),
        .button(),
    )
    */

    assign led = switches_outputs;

endmodule
