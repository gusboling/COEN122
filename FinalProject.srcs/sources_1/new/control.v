`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2017 02:57:40 PM
// Design Name: 
// Module Name: control
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


module control(instruction, ALUOp, RegWrt, MemtoReg, PCtoReg, MemRead, MemWrt);
    input [31:0] instruction;
    output reg [3:0] ALUOp;
    output reg RegWrt, MemtoReg, PCtoReg, MemRead, MemWrt;
    
    always @ instruction
    begin
   
        //LOAD PC
        if (instruction[31:28] == 4'b1111)
        begin
            RegWrt = 1;
            MemtoReg = 1;
            PCtoReg = 1;
            MemRead = 1;
            MemWrt = 0;
            ALUOp = 3'b011;
        end
        
        //LOAD
        else if (instruction[31:28] == 4'b1110)
        begin
            RegWrt = 1;
            MemtoReg = 1;
            PCtoReg = 1;
            MemRead = 1;
            MemWrt = 0;
            ALUOp = 3'b011; 
        end
        
        //STORE
        else if (instruction[31:28] == 4'b0011)
        begin
            RegWrt = 0;
            MemtoReg = 1;
            PCtoReg = 0;
            MemRead = 0;
            MemWrt = 1;
            ALUOp = 3'b011; 
        end
        
        //ADD
        else if (instruction[31:28] == 4'b0100)
        begin
           RegWrt = 1;
           MemtoReg = 0;
           PCtoReg = 0;
           MemRead = 0;
           MemWrt = 1;
           ALUOp = 3'b100; 
        end
        
        //INCREMENT
        else if (instruction[31:28] == 4'b0101)
        begin
          RegWrt = 1;
          MemtoReg = 0;
          PCtoReg = 0;
          MemRead = 0;
          MemWrt = 1;
          ALUOp = 3'b010; 
        end
        //NEGATE       
        else if (instruction[31:28] == 4'b0110)
         begin
               RegWrt = 1;
                   MemtoReg = 0;
                   PCtoReg = 0;
                   MemRead = 0;
                   MemWrt = 1;
                   ALUOp = 3'b001; 
           end
       //SUBTRACT        
        else if (instruction[31:28] == 4'b0111)
             begin
                  RegWrt = 1;
                       MemtoReg = 0;
                       PCtoReg = 0;
                       MemRead = 0;
                       MemWrt = 1;
                       ALUOp = 3'b000; 
               end
               
       //JUMP
        else if (instruction[31:28] == 4'b1000)
             begin
                  RegWrt = 0;
                  MemtoReg = 0;
                  PCtoReg = 0;
                  MemRead = 0;
                  MemWrt = 0;
                  ALUOp = 3'b011; 
               end
               
        //BRANCH IF ZERO
        else if (instruction[31:28] == 4'b1001)
             begin
                      RegWrt = 0;
                      MemtoReg = 0;
                      PCtoReg = 0;
                      MemRead = 0;
                      MemWrt = 0;
                      ALUOp = 3'b011; 
                   end
                   
         //JUMP MEMORY      
        else if (instruction[31:28] == 4'b1010)
            begin
                  RegWrt = 0;
                  MemtoReg = 0;
                  PCtoReg = 0;
                  MemRead = 0;
                  MemWrt = 0;
                  ALUOp = 3'b011; 
               end
               
         //BRANCH IF NEGATIVE
        else if (instruction[31:28] == 4'b1011)
             begin
                  RegWrt = 0;
                  MemtoReg = 0;
                  PCtoReg = 0;
                  MemRead = 0;
                  MemWrt = 0;
                  ALUOp = 3'b011; 
               end
        //SUM
        else if (instruction[31:28] == 4'b0001)
             begin
                   RegWrt = 1;
                       MemtoReg = 0;
                       PCtoReg = 0;
                       MemRead = 0;
                       MemWrt = 1;
                       ALUOp = 3'b100; 
            end      
     end
endmodule
