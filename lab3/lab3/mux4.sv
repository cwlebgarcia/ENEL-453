module mux4(
    input logic     [15:0] s0,
    input logic     [15:0] s1,
    input logic     [15:0] s2,
    input logic     [15:0] s3,
    input logic     [1:0]  ctrl,

    output logic    [15:0] y
);

logic [15:0] parent_input0;
logic [15:0] parent_input1;

lab3_mux2 parent(
    .s0(parent_input0),
    .s1(parent_input1),
    .ctrl(ctrl[1]),
    y.(y)
);

lab3_mux2 child1(
    .s0(s0),
    .s1(s1),
    .ctrl(ctrl[0]),
    .y(parent_input0)
);

lab3_mux2 child2(
    .s0(s0),
    .s1(s1),
    .ctrl(ctrl[0]),
    .y(parent_input1)
);

endmodule