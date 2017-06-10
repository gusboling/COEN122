`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2017 03:28:54 PM
// Design Name: 
// Module Name: Entire_tb
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


module Entire_tb();
//Instruction Mem
reg clk;
wire [31:0]instout;
reg [7:0]imem_address;
InstructionMem DUT0(.address(imem_address),.clk(clk),.instruction_out(instout));

reg [31:0] reg_write;
reg [5:0]rs,rt,rd;
reg [31:0] reg_in;
wire [31:0]rsout,rtout;
register DUT1(.rs(rs),.rt(rt),.rd(rd),.dataIn(reg_in),.write(reg_write),.clk(clk),.rsOut(rsout),.rtOut(rtout));

reg [31:0] address;
reg [31:0] mem_write;
reg [31:0]mem_in;
wire [31:0]out;
DataMem DUT2(clk,address,mem_write,mem_in,out);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
//Instruction Mem
imem_address = 0;

//Reg Mem
rs = 5;
rt = 10;
reg_in = 53;
rd = 11;
reg_write = 0;

//Data Mem
address = 11;
mem_in = 15;
mem_write = 1;
#10

//Instruction Mem
imem_address = 10;

//Reg Mem
rs = 10;
rt = 0;
reg_in = 45;
rd = 5;
reg_write = 1;

//Data Mem
address = 11;
mem_in = 15;
mem_write = 1;
#10

$finish;
end

endmodule
