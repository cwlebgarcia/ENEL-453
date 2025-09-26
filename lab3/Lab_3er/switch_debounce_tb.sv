// testbench for Switch debounce
`timescale 1ns/1ps

module switch_debounce_tb; 
parameter CLK_PERIOD    = 10, // in ns, i.e. 20 ns clock
          BOUNCING_4_ms = 4_000_000, // in ns, i.e. 4 ms
          clk_freq      =  1/(CLK_PERIOD*10.0**(-9)), // system clock frequency in Hz, 1/clock period = 50_000_000 (e.g. 50 MHz for DE10-Lite)       
          stable_time   = 10,         // in ms, time button must remain stable (e.g. 10 ms for the bounce time);
          COUNT_CYCLES  = 1.5*clk_freq*stable_time/1000; // 150% of number of cycles for debounce counter
          
  logic clk=0,reset;
  logic [15:0] switch_inputs;
  logic [15:0] switch_outputs;
  
  // instantiate UUT
  switch_debounce // module to instantiate, followed by parameters to override defaults (can't name them for ModelSim)
   #(.clk_freq(clk_freq),       // system clock frequency in Hz (e.g. 50 MHz for DE10-Lite)     
     .stable_time(stable_time),
     .input_count(16)) // time button must remain stable in ms (e.g. 20 ms for the bounce time)
   UUT(.*); // instance label
  
  // apply stimulus
  always #(CLK_PERIOD/2) clk = ~clk; // run clock forever with defined period

  initial begin 
    $display("---  Testbench started  ---");
    #(0.25*CLK_PERIOD); // offset to make waveforms easier to read
    reset = 0; switch_inputs = 0; #(2*CLK_PERIOD);
    reset = 1; #(2*CLK_PERIOD); // active high reset
    reset = 0; #(2*CLK_PERIOD);
    
    #(COUNT_CYCLES*CLK_PERIOD); // below code simulates contact bounce
    switch_inputs = {16{1'b1}}; for (int i=1;i<7;i++) begin #(BOUNCING_4_ms/i) switch_inputs = ~switch_inputs; end ; #(COUNT_CYCLES*CLK_PERIOD);
    switch_inputs = {16{1'b0}}; for (int i=1;i<7;i++) begin #(BOUNCING_4_ms/i) switch_inputs = ~switch_inputs; end ; #(COUNT_CYCLES*CLK_PERIOD);
   
    reset = 1; #(2*CLK_PERIOD); // active high reset
    reset = 0; #(2*CLK_PERIOD);
    #(COUNT_CYCLES*CLK_PERIOD);
   
    $display("\n===  Testbench ended  ===");
    $stop; // this stops simulation, needed because clk runs forever
  end

endmodule
