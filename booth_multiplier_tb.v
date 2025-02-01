`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 06:42:58 PM
// Design Name: 
// Module Name: booth_multiplier_tb
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


module booth_multiplier_tb();
reg [3:0]x,y;
wire [7:0]z;

booth_multiplier iutf(.x(x),.y(y),.z(z));

initial begin 

    x = 4'b0101;
    y = 4'b0101;
end    
endmodule
