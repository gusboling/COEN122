`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2017 03:07:39 PM
// Design Name: 
// Module Name: EX_MEM
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

module ID_EX (clk, RegWrt_In, MemtoReg_In, PCToReg_In, ALUOP_In, MemRead_In, MemWrt_In, rsOut_In, rtOut_In, rd_In, SE_In, RegWrt_Out, MemtoReg_Out, PCToReg_Out, ALUOP_Out, MemRead_Out, MemWrt_Out, rsOut_Out, rtOut_Out, rd_Out, SE_Out);

input clk;
input [1:0] RegWrt_In;
input [2:0] MemtoReg_In;
input [3:0] PCToReg_In;
input [31:0] ALUOP_In;
input [31:0] MemRead_In;
input [31:0] MemWrt_In;
input [31:0] rsOut_In;
input [31:0] rtOut_In;
input [31:0] rd_In;
input [31:0] SE_In;

output reg[1:0] RegWrt_Out;
output reg[2:0] MemtoReg_Out;
output reg[3:0] PCToReg_Out;
output reg[31:0] ALUOP_Out;
output reg[31:0] MemRead_Out;
output reg[31:0] MemWrt_Out;
output reg[31:0] rsOut_Out;
output reg[31:0] rtOut_Out;
output reg[31:0] rd_Out;
output reg[31:0] SE_Out;

always@(posedge clk) begin
	RegWrt_Out = RegWrt_In;
	MemtoReg_Out = MemtoReg_In;
	PCToReg_Out = PCToReg_In;
	ALUOP_Out = ALUOP_In;
	MemRead_Out = MemRead_In;
	MemWrt_Out = MemWrt_In;
	rsOut_Out = rsOut_In;
	rtOut_Out = rtOut_In;
	rd_Out = rd_In;
	SE_Out = SE_In;
end

endmodule