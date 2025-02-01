`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 02:41:53 PM
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb();
reg [3:0]a,b;
reg cin;

wire [3:0]sum;
wire carry;

bcd_adder uut14(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin 

a = 4'b0101;
b = 4'b0011;
cin = 0;

end
endmodule
