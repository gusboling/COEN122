`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2017 09:43:12 PM
// Design Name: 
// Module Name: mux3to1
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


module mux3to1(clk, a_in, b_in, c_in, select, out);
input [31:0] a_in;
input [31:0] b_in;
input [31:0] c_in;
input [1:0] select;
output reg [31:0] out;
input clk;

always@(a_in, b_in, c_in, select)
case(select)
    2'b00: out = a_in;
    2'b01: out = b_in;
    2'b10: out = c_in;
    endcase

endmodule

