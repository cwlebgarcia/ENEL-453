//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2025 07:36:50 PM
// Design Name: 
// Module Name: lab2_mux2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab2_mux2(
    input logic     [15:0] s0,
    input logic     [15:0] s1,
    input logic     ctrl,

    output logic    [15:0] y
    );

    always_comb begin
        y = ctrl ? s1 : s0;
    end

endmodule
