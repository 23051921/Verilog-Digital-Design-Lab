`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 01:25:39 PM
// Design Name: 
// Module Name: test_counter_mod6
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


module test_counter_mod6 ( ); 
reg clk ,reset ; 
wire [2:0] dout; 
counter_mod6 Counter1 ( clk ,reset ,dout ) ; 
initial  
 begin 
 clk=0; 
 forever #10 clk = ~clk;  
end  
initial  
begin  
reset = 0;#150 
reset = 1;#30 
$finish; 
end  
endmodule