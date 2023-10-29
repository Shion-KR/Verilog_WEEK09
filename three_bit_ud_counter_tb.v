`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 01:48:29
// Design Name: 
// Module Name: three_bit_ud_counter_tb
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


module three_bit_ud_counter_tb();
 reg clk;
 reg rst;
 wire [2:0] cnt;

 three_bit_ud_counter uut(cnt, clk, rst);

 always #5 clk = ~clk;
 
 initial begin
  clk = 1'b0;
  rst = 1'b0;
  #20 rst = 1'b1;
  #200 $finish;
 end
endmodule
