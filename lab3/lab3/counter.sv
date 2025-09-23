module counter 
    #(parameter count_width = 2)       
    ( 
    input  logic button, 
    input  logic clk, 
    input  logic reset,

    output logic [count_width:0] count
);

logic pressed;

always_ff @(negedge clk) begin
    if (reset) begin
        toggle <= 0;
        pressed <= 0;
    end else begin
        if (button & ~pressed) begin
            pressed <= 1;
        end else if (~button & pressed) begin
            count <= count + 1;
            pressed <= 0;
        end
    end
end

endmodule