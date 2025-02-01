`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 10:46:41 PM
// Design Name: 
// Module Name: bcd_bin_tb
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


module bcd_bin_tb();
reg [4:0]b;
wire [3:0]y;
bcd_bin  uuti(.b(b),.y(y));

initial begin 
    b = 5'h00;
#10 b = 5'h01;
#10 b = 5'h11;
#10 b = 5'h15;
#10 b = 5'h10;
#10 b = 5'h08;

$finish ;
end

endmodule
