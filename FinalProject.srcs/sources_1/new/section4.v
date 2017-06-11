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


module section4(clk, AND1, AND2, OR, MUX_Out, MUX_Select, PC_MUX_Out, PC_MUX_Select);

input clk;
wire zero, neg, RegWrt, MemWrt, MemToReg, PCToReg, Branch_Neg, Branch_Zero, Jump, JumpMem;
wire [31:0] ALU_Result, DataMem_Out, SE_Add, PC;
input [1:0] MUX_Select;
input [1:0] PC_MUX_Select;

output AND1, AND2, OR;
output [31:0] MUX_Out;
output [31:0] PC_MUX_Out;

assign MUX_Select[1] = MemToReg;
assign MUX_Select[0] = PCToReg;
assign PC_MUX_Select[1] = JumpMem;
assign PC_MUX_Select[0] = OR;

ANDGate and1(.a(zero), .b(Branch_Zero), .out(AND1));
ANDGate and2(.a(neg), .b(Branch_Neg), .out(AND2));
ORGATE or1(.a(AND1), .b(AND2), .y(OR));
Mux3to1 mux(.a_in(OR), .b_in(ALU_Result), .c_in(SE_Add), .select(MUX_Select), .out(MUX_Out));
Mux3to1 pc_mux(.a_in(PC), .b_in(ALU_Result), .c_in(DataMem_Out), .select(PC_MUX_Select), .out(PC_MUX_Out));

endmodule