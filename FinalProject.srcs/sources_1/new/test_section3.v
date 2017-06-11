`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2017 07:49:33 PM
// Design Name: 
// Module Name: test_section3
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



module test_section3(
    );
    reg [2:0] ALUOP;
    reg clk, MemWrt, MemRead;
    
    wire zero;
    wire neg;
    wire [31:0] ALU_Result;
    wire [31:0] rtOut;
    wire [31:0] se_out;
    wire [31:0] adder_out;
    
    section3 a1(.clk(clk), .MemWrt(MemWrt), .MemRead(MemRead), .ALUOP(ALUOP), .zero(zero), .neg(neg), .ALU_Result(ALU_Result));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
     end
     
     initial begin
        ALUOP = 3'b011;
        MemWrt = 1;
        MemRead = 0;
        #10
        ALUOP = 3'b100;
        MemWrt = 0;
        MemRead = 0;
        #10
        ALUOP = 3'b010;
        MemWrt = 0;
        MemRead = 0;
        #10
        $finish;
    end
endmodule
