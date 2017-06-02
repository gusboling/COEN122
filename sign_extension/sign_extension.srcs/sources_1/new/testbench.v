`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2017 09:32:26 PM
// Design Name: 
// Module Name: testbench
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


module testbench(
    );
    reg  [20:0] in;
    reg  clk;
    
    wire [31:0] out;
    signextend a(.in(in), .clk(clk), .out(out));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        in = 15;
        #10
    
        in = 100;
        #10        
        
        in = 150;
        #10
        $finish;
    end
    
endmodule