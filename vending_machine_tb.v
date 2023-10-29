`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 22:42:27
// Design Name: 
// Module Name: vending_machine_tb
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


module vending_machine_tb();
reg rst, clk, A, B, C;
wire [1:0] y;
vending_machine u1(clk, rst, A, B, C, state, y);
always
#5 clk =~ clk;
initial begin
        rst = 0; clk = 0; A = 3'b000; B = 3'b000; C = 3'b000; 
    #10 A = 1; B = 0; C = 0;
    #10 A = 0; B = 1; C = 0;
    #10 A = 1; B = 0; C = 0;
    #10 A = 0; B = 1; C = 0;
    #10 A = 0; B = 0; C = 1;
    #10 rst = 1;
    #10 A = 1; B = 0; C = 0;
    #10 A = 0; B = 1; C = 0;
    #10 A = 0; B = 0; C = 1;
end
always #5 clk = ~clk;

endmodule
