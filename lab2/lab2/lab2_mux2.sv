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
    input logic    [1:0] s,
    input logic     ctrl,

    output logic    y
    );

    always_comb begin
        y = ctrl ? s[1] : s[0];


    end

endmodule
