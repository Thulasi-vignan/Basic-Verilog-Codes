`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 06:50:10 PM
// Design Name: 
// Module Name: fa
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


module fa(
input a,b,c,
output sum,carry
    );
    assign  sum =a^b^c ;
    assign carry = (a&b) | (b&c) | (c&a);


endmodule


module ripple_carry(sum,carry,x,y,z);

input[3:0]x;
input[3:0]y;
input z;

output carry;
output[3:0]sum;
wire w1,w2,w3;

fa inst(x[0],y[0],z,sum[0],w1);
fa inst1(x[1],y[1],w1,sum[1],w2);
fa inst2(x[2],y[2],w2,sum[2],w3);
fa inst3(x[3],y[3],w3,sum[3],carry);

endmodule
