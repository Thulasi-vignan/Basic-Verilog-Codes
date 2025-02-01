`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 10:42:35 PM
// Design Name: 
// Module Name: cla_tb
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


module cla_tb();
reg[3:0]a,b;
reg cin;
wire[3:0]s;
wire cout;

cla uutr(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

initial begin 
a=4'b1101;
b=4'b1011;
cin = 0;
end
endmodule
