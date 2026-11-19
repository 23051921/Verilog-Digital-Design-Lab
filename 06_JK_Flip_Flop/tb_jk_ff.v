`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 01:38:53 PM
// Design Name: 
// Module Name: test_jkff
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
module test_jkff();
   wire q;          // Output Q
   wire qb;         // Output Q-bar
   reg j;           // Input J
   reg k;           // Input K
   reg clk;         // Clock input

   JK_FF ckt(q, qb, j, k, clk); // Instantiation of the JK flip-flop module

   initial begin
       j = 0;
       k = 0;
       clk = 0;
       #1000 $finish;  // Finishes simulation after 1000 time units
   end

   // Clock toggling process
   always #30 clk = ~clk;  // Toggles the clock every 30 time units

   // K input toggling process
 always #50 k = ~k;  // Toggles the K input every 50 time units
  
     // J input toggling process
     always #100 j = ~j;  // Toggles the J input every 100 time units
  
  endmodule 