module switch_debounce 
    #(parameter clk_freq    = 100_000_000, // system clock frequency in Hz (e.g. 100 MHz for Basys)       
                stable_time = 10,
                input_count = 16)
    (input  logic              clk,
     input  logic              reset,
     input  logic [input_count-1:0] switch_inputs,
     output logic [input_count-1:0] switch_outputs);

    logic [input_count-1:0] ff1;
    logic [input_count-1:0] ff2;
    logic [input_count-1:0] ff3;
    logic [input_count-1:0] ena;
    logic [input_count-1:0] sclr;

    localparam real real_max_count = real'(clk_freq) * real'(stable_time) / 1000.0;
    localparam int max_count = int'(real_max_count);

    logic [input_count-1:0][$clog2(max_count):0] count;

    integer i;

    always_ff @(posedge clk) begin// define the 3 flip flops
        if(reset) begin
            ff1 <= switch_inputs; // 0;
            ff2 <= switch_inputs; // 0; 
            ff3 <= switch_inputs; // 0; 
        end
        else begin
            ff1 <= switch_inputs;
            ff2 <= ff1;
            for (i = 0; i < input_count; i = i + 1) begin 
                if(ena[i]) begin
                    ff3[i] <= ff2[i];
                end
            end
        end
    end

    assign switch_outputs = ff3;
  
    assign sclr = ff1 ^ ff2; // XOR
  
    always_ff @(posedge clk) begin
        for (i = 0; i < input_count; i = i + 1) begin
            if(reset) begin
                count[i] <= 0;   
            end
            else if(sclr[i]) begin // clears count if xor is high (xor inputs are different, meaning button input is not stable so reset the count)
                count[i] <= 0;
            end
            else if (~ena[i]) begin// if count is less than the stable time, then keep counting
                count[i] <= count[i] + 1;
            end
        end
    end

    genvar j;
    
    generate
        for (j = 0; j < input_count; j = j + 1) begin
            assign ena[j] = (count[j] > max_count) ? 1 : 0;
        end
    endgenerate
    

endmodule