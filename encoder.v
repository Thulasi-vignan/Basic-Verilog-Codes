`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 10:56:28 PM
// Design Name: 
// Module Name: encoder
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


module encoder(input [1:0]a, output reg [3:0]y);

always@(*) begin 
case(a)
2'b00 : y = 4'b1000;
2'b01 : y = 4'b0100;
2'b10 : y = 4'b0010;
2'b11 : y = 4'b0001;

default : y = 4'b0000;

endcase

end
endmodule
