`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 04:10:11 PM
// Design Name: 
// Module Name: wallece_tb
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


module wallece_tb();
reg [3:0]a,b; 
wire [7:0]y;

wallace_tree uuji(.a(a),.b(b),.y(y));


initial begin 

a = 4'b0101; 
b = 4'b1010;

end

endmodule
