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


module EX_MEM (clk, WB_In, MEM_In, Branch_In, Zero_In, ALU_In, RD2_In, Instr_In, WB_Out, MEM_Out, Branch_Out, Zero_Out, ALU_Out, RD2_Out, Instr_Out);

input clk;
input [1:0] WB_In;
input [2:0] MEM_In;
input [31:0] Branch_In;
input Zero_In;
input [31:0] ALU_In;
input [31:0] RD2_In;
input [4:0] Instr_In;

output reg [1:0] WB_Out;
output reg [2:0] MEM_Out;
output reg [31:0] Branch_Out;
output reg Zero_Out;
output reg [31:0] ALU_Out;
output reg [31:0] RD2_Out;
output reg [4:0] Instr_Out;

always @(posedge clk) begin
	WB_Out = WB_In;
	MEM_Out = MEM_In;
	Branch_Out = Branch_In;
	Zero_Out = Zero_In;
	ALU_Out = ALU_In;
	RD2_Out = RD2_In;
	Instr_Out = Instr_In;
end

endmodule
