`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2024 06:27:47 PM
// Design Name: 
// Module Name: booth_multiplier
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

module booth_multiplier (
    input [3:0] x,      // Multiplicand
    input [3:0] y,      // Multiplier
    output reg [7:0] z  // Product (8 bits)
);
    reg [4:0] A;        // Accumulator (5 bits)
    reg [4:0] Q;        // Multiplier (5 bits, extended)
    reg Qn;             // Previous LSB of Q
    reg [3:0] M;        // Multiplicand
    reg [2:0] count;    // Counter

    always @(x, y) begin 
        // Initialize
        A = 5'b00000;          // Clear accumulator
        M = x;                 // Load multiplicand
        Q = {y, 1'b0};         // Load multiplier and append a 0
        Qn = 1'b0;             // Initialize Qn to 0
        count = 4;             // Set count to 4

        // Booth's algorithm
        while (count > 0) begin
            case ({Q[0], Qn})
                2'b01: A = A + M;         // A = A + M
                2'b10: A = A - M;         // A = A - M
                default: ;                 // No operation
            endcase

            // Arithmetic right shift
            {A, Q} = {A[4], A, Q[4:1]}; // Shift A and Q right
            Qn = Q[0];                  // Update Qn
            count = count - 1;         // Decrement counter
        end 

        // Prepare final product
        z = {A[3:0], Q[3:1]};         // Combine lower 4 bits of A and upper 3 bits of Q
    end
endmodule
