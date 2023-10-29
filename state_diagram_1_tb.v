`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 17:49:13
// Design Name: 
// Module Name: state_diagram_1_tb
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


module state_diagram_1_tb();
reg rst, x, clk;
wire [1:0] y;
state_diagram_1 u1(clk, rst, x, y, state);

initial begin
        rst = 0; clk = 0; x = 0;
    #15 rst = 1; clk = 1;
    #15 rst = 0; clk = 0; x = 1;
    #15 rst = 1; clk = 1;
    #15 rst = 0; clk = 0; x = 0;
end
always #5 clk = ~clk;
always #5 x = ~x;

endmodule
