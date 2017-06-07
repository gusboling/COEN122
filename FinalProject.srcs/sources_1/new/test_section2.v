`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2017 03:12:00 PM
// Design Name: 
// Module Name: test_section2
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


module test_section2(
    );
    reg [31:0] instruction;
    reg [31:0] PC;
    reg clk;
    
    wire [2:0] ALUOp;
    wire RegWrt;
    wire MemtoReg;
    wire PCtoReg;
    wire MemRead;
    wire MemWrt;
    wire [31:0] rsOut;
    wire [31:0] rtOut;
    wire [31:0] se_out;
    wire [31:0] adder_out;
    
    section2 a1(.instruction(instruction), .PC(PC), .clk(clk));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
     end
     
     initial begin
        instruction = 32'b11111111111111111111111111111111;
        PC = 32'b11111111111111111111111111111111;
        #10
        instruction = 100;
        PC = 100;
        #10
        instruction = 5000;
        PC = 5000;
        #10
        $finish;
    end
endmodule
