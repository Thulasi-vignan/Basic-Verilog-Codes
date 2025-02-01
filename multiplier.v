`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 09:10:33 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier(input[1:0]a,b , output [3:0]sum);

wire y1,y2,y3,y4;

assign sum[0]=a[0]&b[0];
assign y1=b[0]&a[1];
assign y2=a[0]&b[1];

ha uur(y1,y2,sum[1],y3);

assign y4=b[1]&a[1];

ha uut(y4,y3,sum[2],sum[3]);


endmodule

module ha(input a,b , output sum,carry);

assign sum = a^b;
assign carry = a&b;


endmodule