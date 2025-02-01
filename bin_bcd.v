`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 10:21:29 PM
// Design Name: 
// Module Name: bin_bcd
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


module bin_bcd(input[3:0]b,output [4:0]y);

assign y[0] = b[0];
assign y[1] = (b[3]&b[2]&(~b[1])) | ((~b[3])&b[1]);
assign y[2] = ((~b[3])&b[2]) | (b[2]&b[1]);
assign y[3] = b[3]&(~b[2])&(~b[1]);
assign y[4] = (b[3]&b[2]) | (b[3]&b[1]);

endmodule
