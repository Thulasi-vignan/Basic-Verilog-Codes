`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 01:29:45 PM
// Design Name: 
// Module Name: carry_save_tb
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


module carry_save_tb();
reg [3:0]x,y,z;
wire [4:0]s;
wire carry;

carry_save_Adder uut8(.x(x),.y(y),.z(z),.s(s),.carry(carry));

initial begin

x= 4'b1010;
y=4'b1010;
z=4'b1010;

end

endmodule
