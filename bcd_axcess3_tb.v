`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 09:12:05 PM
// Design Name: 
// Module Name: bcd_axcess3_tb
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


module bcd_axcess3_tb();
reg [3:0]a;
wire[3:0]y;

bcd_excess3 uuus(.a(a),.y(y));

initial begin 

for(integer i = 0 ; i < 16 ; i = i + 1)begin

    a = i;
    #10;
    end 
    $finish;
    end
endmodule
