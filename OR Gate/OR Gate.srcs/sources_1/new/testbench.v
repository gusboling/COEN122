`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2017 02:02:45 PM
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
    reg [31:0] a;
    reg [31:0] b;
    reg  clk;
    
    wire [31:0] y;
    ORGate DUT(.a(a), .b(b), .y(y), .clk(clk));
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        a = 0;
        b = 0;
        #10

        a = 1;
        b = 0;
        #10

        a = 0;
        b = 1;
        #10 
        
        a = 1;
        b = 1;
        #10

        $finish;
    end
    
endmodule
