`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2024 01:03:12 PM
// Design Name: 
// Module Name: Seq_Det
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
/////////////////////////////////////////////////////////////////////////////////
module Seq_Det(
    input clk,
    input rst,
    input Din,
    output Dout
);

    reg [1:0] state;

    // Initialize the state register
    initial begin
        state <= 2'b00;
    end

    // Sequential logic to update the state
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            state <= 2'b00; // Reset the state to 00
        end else begin
            case (state)
                2'b00: if (Din) state <= 2'b01; else state <= 2'b00;
                2'b01: if (Din) state <= 2'b10; else state <= 2'b00;
                2'b10: if (Din) state <= 2'b11; else state <= 2'b00;
                2'b11: if (Din) state <= 2'b01; else state <= 2'b00;
                default: state <= 2'b00;
            endcase
        end
    end

    // Combinational logic to generate the output
    assign Dout = (state == 2'b11) ? 1'b1 : 1'b0;

endmodule