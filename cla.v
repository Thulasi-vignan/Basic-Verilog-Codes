`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 10:25:04 PM
// Design Name: 
// Module Name: cla
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


module cla(input [3:0]a,b,input cin,output[3:0]s,output cout );
wire p0,p1,p2,p3,g0,g1,g2,g3;
wire c1,c2,c3,c4;
assign p0 = a[0]^b[0];
assign p1 = a[1]^b[1];
assign p2 = a[2]^b[2];
assign p3 = a[3]^b[3];

assign g0 = a[0]&b[0];
assign g1 = a[1]&b[1];
assign g2 = a[2]&b[2];
assign g3 = a[3]&b[3];

assign c1 = g0|p0&cin;
assign c2 = g1|p1&g0|p1&p0&cin;
assign c3 = g2|p2&g1|p2&p1&g0|p2&p1&p0&cin;
assign c4 = g3|p3&g2|p3&p2&g1|p3&p2&p1&g0|p3&p2&p1&p0&cin;

assign s[0]=p0^cin, s[1]=p1^c1,s[2]=p2^c2,s[3]=p3^c3;
assign cout = c4;
endmodule
