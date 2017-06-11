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


module section2(instruction, PC, clk, SE);

input [31:0] instruction;
input [31:0] PC;
input clk;

wire [3:0] opcode;
wire [5:0] rs;
wire [5:0] rt;
wire [5:0] rd;
//input SE
wire [11:0] SE_Val;

//Final SE-ed value
output [31:0] SE;

assign opcode = instruction[31:28];
assign rs = instruction[27:22];
assign rt = instruction [21:16];
assign rd = instruction [15:10];
assign SE_Val = instruction[21:1];

IFIDBuffer IFID_BUFF(.clk(clk), .PC4Out(PC), .I_MemOut(instruction));
control CONTROL (.OPCODE(opcode));
register REGFILE (.rs(rs), .rt(rt), .rd(rd), .clk(clk));
signextend S_E (.clk(clk), .in(SE_Val), .out(SE));
Adder ADD_SE (.PC(PC), .in(SE), .out(SE));
ID_EX IDEX(.clk(clk), .rsOut_In(rs), .rtOut_In(rt), .rd_In(rd), .SE_In(SE));


endmodule
