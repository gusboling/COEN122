`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2017 08:55:06 PM
// Design Name: 
// Module Name: adder
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


module adder(
        input  [31:0] PC,
        input  [21:0] in,
        input clk,
        output reg [31:0] adder_out
);
    
always @(posedge clk) 
     begin
        adder_out = PC + {{10{in[21]}},in[21:0]};      
     end
endmodule