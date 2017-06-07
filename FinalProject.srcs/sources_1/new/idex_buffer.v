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

module ID_EX (clk, WB_In, MEM_In, EX_In, PC4_In, RD1_In, RD2_In, SE_In, _20_16_In, _15_11_In, WB_Out, MEM_Out, EX_Out, PC4_Out, RD1_Out, RD2_Out, SE_Out, _20_16_Out, _15_11_Out);

input clk;
input [1:0] WB_In;
input [2:0] MEM_In;
input [3:0] EX_In;
input [31:0] PC4_In;
input [31:0] RD1_In;
input [31:0] RD2_In;
input [31:0] SE_In;
input [4:0] _20_16_In;
input [4:0] _15_11_In;

output reg[1:0] WB_Out;
output reg[2:0] MEM_Out;
output reg[3:0] EX_Out;
output reg[31:0] PC4_Out;
output reg[31:0] RD1_Out;
output reg[31:0] RD2_Out;
output reg[31:0] SE_Out;
output reg[4:0] _20_16_Out;
output reg[4:0] _15_11_Out;

always@(posedge clk) begin
	WB_Out = WB_In;
	MEM_Out = MEM_In;
	EX_Out = EX_In;
	PC4_Out = PC4_In;
	RD1_Out = RD1_In;
	RD2_Out = RD2_In;
	SE_Out = SE_In;
	_20_16_Out = _20_16_In;
	_15_11_Out = _15_11_In;
end

endmodule