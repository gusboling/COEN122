`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2017 09:00:55 PM
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
    reg  [31:0] A;
    reg  clk;
    
    wire [31:0] out;
    adder a1(.A(A), .clk(clk), .out(out));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        A = 15;
        #100
        
        A = 10;
        #100 
                    
        A = 1;
        #100  
        $finish;
    end
    
endmodule
