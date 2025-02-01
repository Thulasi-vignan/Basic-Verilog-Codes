`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 10:59:43 PM
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();

reg [1:0]a;
wire[3:0]y;

encoder uua(.a(a),.y(y));
initial begin 

for(integer i = 0 ; i < 5 ; i = i + 1 )
    begin 
        a = i ;
        #10 ;
    end 
    $finish;
    
end        
endmodule
