module counter 
    #(parameter count_width = 2)( 
    input  logic btn, 
    input  logic clk, 
    input  logic reset,

    output logic [count_width-1:0] count
);

logic pressed;

always_ff @(negedge clk) begin
    if (reset) begin
        count <= {(count_width-1){1'b0}};
        pressed <= 0;
    end else begin
        if (btn & ~pressed) begin
            pressed <= 1;
        end else if (~btn & pressed) begin
            count <= count + 1;
            pressed <= 0;
        end
    end
end

endmodule