`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2017 03:26:30 PM
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
    reg  [3:0] opcode;
    reg  [31:0] A;
    reg  [31:0] B;
    
    wire [31:0] out;
    wire zero;
    wire neg;
    ALU a1(.opcode(opcode), .A(A), .B(B), .out(out), .zero(zero), .neg(neg));
    
    initial begin
        opcode = 4'b0000;
        A = 1;
        B = 1;
        #100
        
        opcode = 4'b0000;
        A = -10;
        B = 15;
        #100
        
        opcode = 4'b0001;
        B = 11;
        #100

        opcode = 4'b0001;
        B = -25;
        #100
        
        opcode = 4'b0010;
        A = 35;
        #100
        
        opcode = 4'b0010;
        A = -35;
        #100
        
        opcode = 4'b0011;
        A = 10;
        B = 15;
        #100
        
        opcode = 4'b0011;
        A = -10;
        B = 15;
        #100
        
        opcode = 4'b0010;
        A = 50;
        #100
        
        opcode = 4'b0010;
        A = -50;
        #100        
        $finish;
    end
    
endmodule
