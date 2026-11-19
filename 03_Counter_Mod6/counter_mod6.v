`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 01:23:46 PM
// Design Name: 
// Module Name: counter_mod6
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


module counter_mod6 ( clk ,reset ,dout );

output [2:0] dout ;
reg [2:0] dout ;

input clk ;
wire clk ;
input reset ;
wire reset ;

initial dout = 0;

always @ (posedge (clk)) begin
if (reset)
 dout <= 0;
else if (dout<5)
 dout <= dout + 1;
else
 dout <= 0;
end

endmodule
