`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 02:32:17 PM
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(input [3:0]a,b , input cin, output reg [3:0]sum, output reg carry);
reg [4:0]sum_temp;

always@(a,b,cin)
    begin 
    sum_temp = a+b+cin;

    if(sum_temp > 9)
        begin 
            sum_temp= sum_temp+4'b0110;
            sum = sum_temp[3:0];

            carry = 1 ;

        end
    else 
        begin 
            carry = 0;
            sum = sum_temp[3:0];
        end
end

endmodule
