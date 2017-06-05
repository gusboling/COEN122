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


module control_tb();
    
    reg [31:0] instruction;
    wire [2:0] ALUOp;
    wire RegWrt, MemtoReg, PCtoReg, MemRead, MemWrt;
    
    control test_control(.instruction(instruction), .ALUOp(ALUOp), .RegWrt(RegWrt), .MemtoReg(MemtoReg), .PCtoReg(PCtoReg), .MemRead(MemRead), .MemWrt(MemWrt));

    initial begin
        instruction = 32'b00000000000000000000000000000000;
        #50
        instruction = 32'b11110000000000000000000000000000;
        #50
        instruction = 32'b11100000000000000000000000000000;
        #50
        instruction = 32'b00110000000000000000000000000000;
        #50
        instruction = 32'b01000000000000000000000000000000;
        #50
        instruction = 32'b01010000000000000000000000000000;
        #50
        instruction = 32'b01100000000000000000000000000000;
        #50
        instruction = 32'b01110000000000000000000000000000;
        #50
        instruction = 32'b10000000000000000000000000000000;
        #50
        instruction = 32'b10010000000000000000000000000000;
        #50
        instruction = 32'b10100000000000000000000000000000;
        #50
        instruction = 32'b10110000000000000000000000000000;
        #50
        instruction = 32'b00010000000000000000000000000000;
        #50
        $finish;
    end
endmodule