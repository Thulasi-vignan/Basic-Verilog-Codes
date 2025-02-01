`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 02:56:08 PM
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder(input [3:0]a,b,input cin , output [3:0]sum ,output carry);

wire o0,o1,o2,o3;
wire p0,p1,p2,p3;
wire c1,c2,c3,c4,c5,c6,c7,c8;



full_add aa(a[0],b[0],1'b0,o0,c1);
full_add aa1(a[1],b[1],c1,o1,c2);
full_add aa2(a[2],b[2],c2,o2,c3);
full_add aa3(a[3],b[3],c3,o3,c4);


full_add aa4(a[0],b[0],1'b1,p0,c5);
full_add aa5(a[1],b[1],c1,p1,c6);
full_add aa6(a[2],b[2],c2,p2,c7);
full_add aa7(a[3],b[3],c3,p3,c8);

muxa mm(cin,o0,p0,sum[0]);
muxa mm1(cin,o1,p1,sum[1]);
muxa mm2(cin,o2,p2,sum[2]);
muxa mm3(cin,o3,p3,sum[3]);

muxa mm4(cin,c4,c8,carry);





endmodule


module full_add(input [3:0]a,b , input cin , output [3:0]sum, output carry );

assign sum = a^b^cin;
assign carry = (a&b)|(b&cin)|(cin&a);

endmodule

module muxa(input sel, input a,b, output y);

assign y = sel ? b :a;

endmodule
