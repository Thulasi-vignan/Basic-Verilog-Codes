`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 03:44:41 PM
// Design Name: 
// Module Name: de_mux_tb
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


module de_mux_tb();
reg [1:0]sel;
reg i;

wire [3:0]y;

de_mu hhu(.sel(sel),.i(i),.y(y));

initial begin
i=1;

    sel=2'b00;
#10 sel=2'b01;
#10 sel=2'b10;
#10 sel=2'b11;

#10 $finish();

end
endmodule
