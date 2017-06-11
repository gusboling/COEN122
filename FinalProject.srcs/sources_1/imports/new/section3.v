`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 04:02:28 PM
// Design Name: 
// Module Name: section3
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


module section3(clk, MemWrt, MemRead, ALUOP, zero, neg, ALU_Result);

input clk;
input MemWrt;
input MemRead;
input [2:0] ALUOP;

output zero;
output neg;
output [31:0] ALU_Result;


wire [3:0] opcode;
wire [31:0] rsOut;
wire [31:0] rtOut;
wire [5:0] rd;

ID_EX idex_buffer (.RD1_Out(rsOut), .RD2_Out(rtOut));
DataMem DATAMEM(.clk(clk),.address(rsOut),.write(MemWrt),.data_in(rtOut));
control CONTROL(.ALUOp(ALUOP), .MemWrt(MemWrt), .MemRead(MemRead));
ALU alu (.opcode(ALUOP), .A(rsOut), .B(rtOut), .out(ALU_Result), .zero(zero), .neg(neg));

endmodule
