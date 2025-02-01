`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 10:41:59 PM
// Design Name: 
// Module Name: wallace_tree
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


module wallace_tree(input [3:0]a,b , output[7:0]y);

wire [17:0]c;
wire [10:0]s;
wire [31:0]w;
wire [7:0]g;

assign g = {{4{a[3]}},a};

genvar i,j;
generate 
    for(i = 0; i < 8 ; i = i + 1)begin 
        for(j = 0 ; j < 4 ; j = j + 1)begin 
            assign w[4*i+j] = g[i]&b[j];
            end
         end 
 endgenerate 
 assign y[0]=w[0];
 
 h_a uut(w[2],w[5],s[0],c[0]);
// fu_a uur(w[3],w[6],w[9],s[1],c[1]);
// fu_a uuy(w[7],w[10],w[13],s[2],c[2]);
// fu_a uue(w[11],w[14],w[17],s[3],c[3]);
// fu_a uuw(w[15],w[18],w[21],s[4],c[4]);
// fu_a ttw(w[19],w[22],w[25],s[5],c[5]);
 
 for( i = 1 ; i < 6 ; i = i + 1)begin 
    fu_a insti(w[4*i-1],w[4*i+2],w[4*i+5],s[i],c[i]);
  end
 h_a uuc(w[12],s[1],s[6],c[6]);
// fu_a uui(w[16],s[2],c[1],s[7],c[7]);
// fu_a uuk(w[20],s[3],c[2],s[8],c[8]);
// fu_a uun(w[24],s[4],c[3],s[9],c[9]);
// fu_a uuq(w[28],s[5],c[4],s[10],c[10]);
 
 for( i = 4 ; i < 7 ; i = i + 1)begin 
    fu_a instni(w[4*i],s[i-2],c[i-3],s[i+3],c[i+3]);
 end
 
 h_a uux(w[1],w[4],y[1],c[11]);
 fu_a uua(w[8],s[0],c[11],y[2],c[12]);
 fu_a uul(s[6],c[12],c[0],y[3],c[13]);
 fu_a uup(s[7],c[6],c[13],y[4],c[14]);
 fu_a uuz(s[8],c[7],c[14],y[5],c[15]);
 fu_a uud(s[9],c[8],c[15],y[6],c[16]);
 fu_a uub(s[10],c[9],c[16],y[7],c[17]);

 


endmodule

 
 
 module h_a(input a,b , output s,c);
 
 assign s = a ^ b;
 assign c = a & b; 
 
 endmodule        
 
 
 module fu_a(input a,b,c,sum,carry);
 assign sum = a^b^c;
 assign carry = a&b | b&c | a&c;

endmodule 
