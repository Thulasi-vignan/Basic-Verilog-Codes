`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 03:10:43 PM
// Design Name: 
// Module Name: carry_select_tb
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


module carry_select_tb();

reg [3:0]a,b;
reg cin;
wire[3:0]sum;
wire carry;

carry_select_adder hhg(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin 
 a= 4'b0101;
 b= 4'b0101;
 cin = 0;
 end
endmodule
