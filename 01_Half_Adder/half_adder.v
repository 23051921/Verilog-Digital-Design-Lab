`timescale 1ns / 1ps
// Module: Half Adder
// Description: Adds two 1-bit inputs to produce Sum and Carry

module half_adder(
    input a,
    input b,
    output sum,
    output carry
);
    xor XOR1 (sum, a, b);
    and AND1 (carry, a, b);
endmodule
