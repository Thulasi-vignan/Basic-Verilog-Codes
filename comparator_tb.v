`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 08:59:28 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg [3:0]a,b;
wire agb,aeb,alb;

comparator uuas(.a(a),.b(b),.agb(agb),.aeb(aeb),.alb(alb));

initial begin 
for(integer i = 0 ; i < 5 ; i = i + 1)
    begin 
        a=$random;
        b=$random;
        #10;
    end 
    $finish;
end    
endmodule
