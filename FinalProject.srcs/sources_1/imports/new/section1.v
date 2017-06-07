`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2017 04:26:04 PM
// Design Name: 
// Module Name: section1
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


module section1(JUMP,  BRANCH, SELECT, CLOCK);

input CLOCK;
input [1:0] SELECT;
input [31:0] JUMP, BRANCH;

reg [31:0] PC = 0;

mux3to1 PC_MUX(.a_in(PC), .b_in(JUMP), .c_in(BRANCH), .select(SELECT), .out(PC));
adder PC_ADDER(.A(PC), .clk(CLOCK), .out(PC));

always @ (posedge CLOCK)
begin
    
end

endmodule
