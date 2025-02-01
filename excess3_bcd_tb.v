`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 09:51:18 PM
// Design Name: 
// Module Name: excess3_bcd_tb
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


module excess3_bcd_tb();
reg [3:0]a;
wire [3:0]y;
excess3_bcd uurs(.a(a),.y(y));

initial begin 
for(integer i = 0 ; i < 16 ; i = i + 1)
    begin 
        a= i;
        #10 ;
    end
    $finish;
end
endmodule
