`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2025 07:44:07 PM
// Design Name: 
// Module Name: lab2_mux2_tb
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


module lab3_mux2_tb();


    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals


    logic     [1:0] s;
    logic     ctrl;

    logic    y;


    // Instantiate the Unit Under Test (UUT)
    lab3_mux2 uut (
        .s(s),
        .ctrl(ctrl),
        .y(y)
    );

    // Test stimulus
    initial begin
        // Test case 0:
        ctrl = 0;
        s = 2'b00; #(20*CLK_PERIOD);
        
        // Test case 1:
        ctrl = 0;
        s = 2'b01; #(20*CLK_PERIOD);

        // Test case 2:
        ctrl = 0;
        s = 2'b10; #(20*CLK_PERIOD);

        // Test case 3:
        ctrl = 0;
        s = 2'b11; #(20*CLK_PERIOD);
        

        // Test case 0:
        ctrl = 1;
        s = 2'b00; #(20*CLK_PERIOD);
        
        // Test case 1:
        ctrl = 1;
        s = 2'b01; #(20*CLK_PERIOD);

        // Test case 2:
        ctrl = 1;
        s = 2'b10; #(20*CLK_PERIOD);

        // Test case 3:
        ctrl = 1;
        s = 2'b11; #(20*CLK_PERIOD);
        
        // End simulation
        #(5 * CLK_PERIOD);
        $stop;
    end

    // Optional: Monitor changes
    initial begin
        $monitor("Time = %0t: s = %b, ctrl = %b", 
                 $time, s, ctrl);
    end

endmodule
