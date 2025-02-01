`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2024 03:35:50 PM
// Design Name: 
// Module Name: de_mux
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


module de_mu(input [1:0]sel,input i,output reg [3:0]y);

always@(*)
    begin 
        case(sel)
            2'b00 : begin y[0]=i ;y[3:1]=0; end
            2'b01 : begin y[1]=i ;y[0]=0;y[3:2]=0;end 
            2'b10 : begin y[2]=i ;y[1:0]=0;y[3]=0;end
            2'b11 : begin y[2:0]=0;y[3]=i;end 
        endcase
    end
                        
endmodule
