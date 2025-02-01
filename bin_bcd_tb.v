`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 10:29:45 PM
// Design Name: 
// Module Name: bin_bcd_tb
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


module bin_bcd_tb();
reg [3:0]b;
wire[4:0]y;

bin_bcd uuti(.b(b),.y(y));

initial begin

for(integer i=0 ; i<10 ; i=i+1)begin 
    b = $random;
    #10;
    end
    
    $finish;
end  


endmodule
