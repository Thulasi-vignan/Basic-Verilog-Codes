`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 10:19:13 PM
// Design Name: 
// Module Name: bcd_7segment
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


module bcd_7segment(input [3:0]a ,  output reg[6:0]y);

always@(*)begin 
    case(a)	   //gfedcba;
        4'd0 : y = 7'b1000000;
        4'd1 : y = 7'b1111001;
        4'd2 : y = 7'b0110000;
        4'd3 : y = 7'b0110000;
        4'd4 : y = 7'b0011001;
        4'd5 : y = 7'b0010010;
        4'd6 : y = 7'b0000010;
        4'd7 : y = 7'b1111000;
        4'd8 : y = 7'b0000000;
        4'd9 : y = 7'b0011000;

        default : y=7'b0000000;

    endcase
end

endmodule
