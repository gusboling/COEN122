`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 02:27:47 PM
// Design Name: 
// Module Name: section2
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


module section2(instruction, PC, clk);

input [31:0] instruction;
input [31:0] PC;
input clk;

wire [3:0] opcode;
wire [5:0] rs;
wire [5:0] rt;
wire [5:0] rd;

assign opcode = instruction[31:28];
assign rs = instruction[27:22];
assign rt = instruction [21:16];
assign rd = instruction [15:10];

control CONTROL (.OPCODE(opcode));
register REGFILE (.rs(rs), .rt(rt), .rd(rd), .clk(clk));
adder ADD_SE (.PC(PC), .in(in));

endmodule
