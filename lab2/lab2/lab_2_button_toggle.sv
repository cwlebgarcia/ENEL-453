module button_toggle (
    input  logic button, //
    input  logic clk, 
    input  logic reset,
    output logic toggle //
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
            toggle <= ~toggle;
            pressed <= 0;
        end
    end
end
endmodule