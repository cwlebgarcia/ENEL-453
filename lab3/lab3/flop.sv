module flop (
    input  logic [15:0] inputs,
    input  logic        nhold,
    input  logic        clk,
    input  logic        reset,

    output logic [15:0] outputs
);

    logic [15:0] mem;

    always_ff @(posedge clk) begin
        if(reset) begin
            mem <= 16'b0000_0000_0000_0000;
        end 
        else if (nhold) begin
            mem <= inputs;
        end
    end

    assign outputs = mem;

endmodule