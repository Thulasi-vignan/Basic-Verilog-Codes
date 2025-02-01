`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 10:31:51 PM
// Design Name: 
// Module Name: bcd_7segment_tb
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


module bcd_7segment_tb();
reg [3:0]a;
wire [6:0]y;

bcd_7segment uudt(.a(a),.y(y));
initial begin 
    for(integer i = 0 ; i < 10 ; i = i + 1 )
    begin 
        a = i;
        #10;
    end 
    $finish;    
    end    
endmodule
