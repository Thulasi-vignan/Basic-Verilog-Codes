`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 09:43:40 PM
// Design Name: 
// Module Name: four_bit_multiplier
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


module four_bit_multiplier(input[3:0]a,b , output [7:0]y);

wire[15:0]w;
wire [15:0]s,c;

assign w[0] = a[0]&b[0];
assign w[1] = a[1]&b[0];
assign w[2] = a[2]&b[0];
assign w[3] = a[3]&b[0];
assign w[4] = a[0]&b[1];
assign w[5] = a[1]&b[1];
assign w[6] = a[2]&b[1];
assign w[7] = a[3]&b[1];
assign w[8] = a[0]&b[2];
assign w[9] = a[1]&b[2];
assign w[10] = a[2]&b[2];
assign w[11] = a[3]&b[2];
assign w[12] = a[0]&b[3];
assign w[13] = a[1]&b[3];
assign w[14] = a[2]&b[3];
assign w[15] = a[3]&b[3];

assign y[0] = w[0];

full_add uutd(w[1],w[4],1'b0,y[1],c[0]);
full_add uute(w[2],w[5],1'b0,s[0],c[1]);
full_add uutf(w[2],w[3],1'b0,s[1],c[2]);
full_add uutg(s[0],c[0],w[8],y[2],c[3]);
full_add uuth(s[1],c[1],w[9],s[2],c[4]);
full_add uutj(w[7],w[10],c[2],s[3],c[5]);
full_add uutk(s[2],c[3],w[12],y[3],c[6]);
full_add uutl(s[3],c[4],w[13],s[4],c[7]);
full_add uuto(w[11],c[5],w[14],s[5],c[8]);
full_add uutp(c[6],s[4],1'b0,y[4],c[9]);
full_add uuty(s[5],c[7],c[9],y[5],c[10]);
full_add uutr(w[15],c[10],c[8],y[6],y[7]);

endmodule


module full_add(input a,b,c,output sum,carry);

assign sum = a^b^c;
assign carry = a&b | b&c | c&a;

endmodule