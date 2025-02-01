`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 09:51:56 PM
// Design Name: 
// Module Name: gray_bin_tb
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


module gray_bin_tb();
reg[3:0]g;
wire[3:0]b;

gray_bin ueru(.b(b),.g(g));

initial begin 
for(integer i=0 ; i< 10 ; i=i+1)begin 

        g=$random;
        #10;
        
        end
        $finish;
 end
endmodule
