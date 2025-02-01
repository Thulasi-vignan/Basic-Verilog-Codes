`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 09:01:06 PM
// Design Name: 
// Module Name: bin_excess3
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


module bcd_excess3(input [3:0]a,output[3:0]y);

assign y[3] = a[3] | (a[1]&a[2]) | (a[2]&a[0]);
assign y[2] = ((~a[2])&a[1]) | ((~a[2])&a[0]) | (a[2]&(~a[1])&(~a[0]));
assign y[1] = (a[1]&a[0]) | ((~a[1])&(~a[0]));
assign y[0] = (~a[0]);

endmodule
