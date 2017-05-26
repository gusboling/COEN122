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

module MEM_WB(clk, WB_In, RD_Mem_In, ALU_In, Instr_In, WB_Out, RD_Mem_Out, ALU_Out, Instr_Out);

input clk;
input [1:0] WB_In;
input [31:0] RD_Mem_In;
input [31:0] ALU_In;
input [4:0] Instr_In;

output reg [1:0] WB_Out;
output reg [31:0] RD_Mem_Out;
output reg [31:0] ALU_Out;
output reg [4:0] Instr_Out;

always @(posedge clk) begin
	WB_Out = WB_In;
	RD_Mem_Out = RD_Mem_In;
	ALU_Out = ALU_In;
	Instr_Out = Instr_In;
end
endmodule