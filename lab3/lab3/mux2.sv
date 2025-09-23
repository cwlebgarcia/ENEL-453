module mux2(
    input logic     [15:0] s0,
    input logic     [15:0] s1,
    input logic     ctrl,

    output logic    [15:0] y
    );

    always_comb begin
        y = ctrl ? s1 : s0;
    end

endmodule
