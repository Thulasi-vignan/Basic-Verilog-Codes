`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 09:40:37 PM
// Design Name: 
// Module Name: bin_gray_tb
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


module bin_gray_tb();
reg [3:0]b;
wire [3:0]g;

bin_gray uuty(.b(b),.g(g));

initial begin

    for(integer i=0 ; i<10 ; i=i+1) begin
        b = $random;
        #10;
    end 
    $finish;
end
endmodule
