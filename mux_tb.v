`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2024 11:38:27 AM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();

reg a,b;
reg sel;
wire y;

mux uut(.a(a),.b(b),.sel(sel),.y(y));

initial begin 

a= 1;
b= 0;


sel=0;
#10 sel = 1;

end

endmodule
