`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 12:03:15 PM
// Design Name: 
// Module Name: carry_skip_tb
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



module carry_skip_tb();
reg  [3:0]a,b;
reg cin;
wire [3:0] sum;
wire carry;

carry_skip_adder uut7(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));


initial begin 
cin = 1;
 a = 4'b0001 ; b =4'b0001;
 end



endmodule
