`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2017 03:05:26 PM
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb();
reg clk;
reg [31:0] I_MemIn;
wire [31:0] I_MemOut;
IF_ID DUT0(clk, I_MemIn, I_MemIn, I_MemOut, I_MemOut);  
    
wire [31:0] RD_Out;
ID_EX DUT1(clk, I_MemOut, I_MemOut, I_MemOut, I_MemOut, I_MemOut, I_MemOut, I_MemOut, I_MemOut, I_MemOut, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out);
    
wire [31:0] ALU_Out;
EX_MEM DUT2(clk, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, RD_Out, ALU_Out, ALU_Out, ALU_Out, ALU_Out, ALU_Out, ALU_Out, ALU_Out);
    
wire [31:0] Instr_Out;
MEM_WB DUT3(clk, ALU_Out, ALU_Out, ALU_Out, ALU_Out, Instr_Out, Instr_Out, Instr_Out, Instr_Out);
    
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end    
    
initial begin
    I_MemIn = 2;
    #10
    I_MemIn = 3;
    #10
    I_MemIn = 4;
    #10
    I_MemIn = 5;
    #10
    I_MemIn = 6;
    #10
    $finish;
end
endmodule
