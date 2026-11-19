`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2024 13:28:13
// Design Name: 
// Module Name: sop
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

module sop(
    output f,
    input a,
    input b,
    input c
    );
    wire w1, w2, w3;
    
    // NOT gate implemented using NAND gate
    nand nand1(w1, a, a);
    
    // NAND gate for inputs a and b
    nand nand2(w2, b, a);
    
    // NAND gate for w1 and c
    nand nand3(w3, w1, c);
    
    // NAND gate for w2 and w3 to produce output f
    nand nand4(f, w2, w3);
endmodule

