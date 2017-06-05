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
    reg  [31:0] PC;
    reg  [31:0] SE;
    reg  clk;
    
    wire [31:0] out;
    adder a1(.PC(PC), .SE(SE), .clk(clk), .out(out));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        PC = 15;
        SE = 15;
        #10
        
        PC = 20;
        SE = 30;
        #10
                    
        PC = 1;
        SE = 4;
        #10
        $finish;
    end
    
endmodule