`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 01:47:09
// Design Name: 
// Module Name: three_bit_ud_counter
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


module three_bit_ud_counter(cnt,clk,rst);
input clk,rst;
output [2:0]cnt;
reg [2:0]cnt;
wire [2:0]next_cnt;

assign next_cnt = cnt + 1'b1;
always @ (posedge clk or negedge rst)   
begin
    if(!rst)
    begin
    cnt <= 3'b0;
    end
    else
    begin
    cnt <= next_cnt;
    end
end
endmodule
