`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2024 06:56:08 PM
// Design Name: 
// Module Name: fa_t
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


module fa_t();
reg  [3:0] x,y;
reg z;
wire [3:0] sum;
wire carry;

ripple_carry uut(.x(x),.y(y),.z(z),.sum(sum),.carry(carry));


initial begin 
//    a = 0 ; b = 0 ; c = 0 ;
//#10 a = 0 ; b = 0 ; c = 1;
//#10 a = 0 ; b = 1 ; c = 0;
//#10 a = 0 ; b = 1 ; c = 1;
//#10 a = 1 ; b = 0 ; c = 0;
//#10 a = 1 ; b = 0 ; c = 1;
//#10 a = 1 ; b = 1 ; c = 0;
//#10 a = 1 ; b = 1 ; c = 1; 
// #10  $finish();
 
 x = 4'b0101 ; y =4'b0101; z=0;
 
  
 
 end



endmodule
