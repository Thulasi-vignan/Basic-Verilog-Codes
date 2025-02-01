`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 01:14:34 PM
// Design Name: 
// Module Name: carry_save_Adder
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


module carry_save_Adder(input [3:0]x,y,z,output[4:0]s,output carry);
wire [3:0]c1,s1,c2;

full_a fa(x[0],y[0],z[0],s1[0],c1[0]);
full_a fa1(x[1],y[1],z[1],s1[1],c1[1]);
full_a fa2(x[2],y[2],z[2],s1[2],c1[2]);
full_a fa3(x[3],y[3],z[3],s1[3],c1[3]);


full_a fa4(s1[1],c1[0],1'b0,s[1],c2[1]);
full_a fa5(s1[2],c1[1],c2[1],s[2],c2[2]);
full_a fa6(s1[3],c1[2],c2[2],s[3],c2[3]);
full_a fa7(1'b0,c1[3],c2[3],s[4],carry);

assign s[0]=s1[0];

endmodule

module full_a(
input a,b,c,
output sum,carry
    );
    assign  sum =a^b^c ;
    assign carry = (a&b) | (b&c) | (c&a);

endmodule

