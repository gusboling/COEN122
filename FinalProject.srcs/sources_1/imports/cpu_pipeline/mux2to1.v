`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2017 08:52:00 PM
// Design Name: 
// Module Name: mux2to1
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

module mux2to1(a_in, b_in, select, out);
input [31:0] a_in;
input [31:0] b_in;
input select;
output reg [31:0] out;

always@(a_in, b_in, select)
case(select)
    2'b0: out = a_in;
    2'b1: out = b_in;
    endcase

endmodule

