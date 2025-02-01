`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 10:34:56 PM
// Design Name: 
// Module Name: bcd_bin
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


module bcd_bin(input [4:0]b,output reg[3:0]y);

    always@(*) begin
        case(b)
        5'h00 : y = 4'b0000;
        5'h01 : y = 4'b0001;
        5'h02 : y = 4'b0010;
        5'h03 : y = 4'b0011;
        5'h04 : y = 4'b0100;
        5'h05 : y = 4'b0101;
        5'h06 : y = 4'b0110;
        5'h07 : y = 4'b0111;
        5'h08 : y = 4'b1000;
        5'h09 : y = 4'b1001;
        5'h10 : y = 4'b1010;
        5'h11 : y = 4'b1011;
        5'h12 : y = 4'b1100;
        5'h13 : y = 4'b1101;
        5'h14 : y = 4'b1110;
        5'h15 : y = 4'b1111;
        default : y = 4'b0000;
        
       endcase
       
    end   
endmodule
