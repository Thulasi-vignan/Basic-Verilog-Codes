`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 10:09:05 PM
// Design Name: 
// Module Name: four_bit_multiplier_tb
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


module four_bit_multiplier_tb();
reg [3:0]a,b;
wire [7:0]y;

four_bit_multiplier uuthh(.a(a),.b(b),.y(y));
initial begin

for(integer i = 0 ; i < 10 ; i = i + 1)
    begin
        a=$random;
        b=$random;
        #10; 
    end
    $finish;
end
endmodule
