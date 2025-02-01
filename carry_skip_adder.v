`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 11:49:28 AM
// Design Name: 
// Module Name: carry_skip_adder
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


module carry_skip_adder(input[3:0]a,b ,input cin , output[3:0]sum , output carry);

wire c1,c2,c3,c4;
wire p1,p2,p3,p4;
wire a1;
f_a uut(a[0],b[0],cin,sum[0],c1);
xor(p1,a[0],b[0]);

f_a uut1(a[1],b[1],c1,sum[1],c2);
xor(p2,a[1],b[1]);

f_a uut2(a[2],b[2],c2,sum[2],c3);
xor(p3,a[2],b[2]);

f_a uut3(a[3],b[3],c3,sum[3],c4);
xor(p4,a[3],b[3]);

and(a1,p1,p2,p3,p4);

assign carry = a1?cin:c4;


endmodule

module f_a(
input a,b,c,
output sum,carry
    );
    assign  sum =a^b^c ;
    assign carry = (a&b) | (b&c) | (c&a);

endmodule

