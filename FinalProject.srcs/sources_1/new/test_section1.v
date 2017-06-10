`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2017 09:07:33 PM
// Design Name: 
// Module Name: test_section1
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


module test_section1();

reg [31:0] jump, branch;
reg clk;
reg [1:0] select;
wire [31:0] inst_bus;

wire [31:0] PC;
wire [31:0] INSTRUCTION;


section1 DUT(.JUMP(jump), .BRANCH(branch), .SELECT(select), .CLOCK(clk), .PC_OUT(PC), .INST(INSTRUCTION));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    jump = 10;
    branch = 11;
    select = 2'b00;
    #100
    
    jump = 10;
    branch = 11;
    select = 2'b00;
    #100
    
    jump = 10;
    branch = 11;
    select = 2'b00;
    #100
    $finish;
end

endmodule
