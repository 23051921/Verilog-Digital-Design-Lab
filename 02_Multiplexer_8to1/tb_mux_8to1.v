`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2024 10:21:17 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg S2, S1, S0;
    reg I7, I6, I5, I4, I3, I2, I1, I0;
    wire F;

    MUX ckt (
        .F(F),
        .S2(S2),
        .S1(S1),
        .S0(S0),
        .I7(I7),
        .I6(I6),
        .I5(I5),
        .I4(I4),
        .I3(I3),
        .I2(I2),
        .I1(I1),
        .I0(I0)
    );

    initial begin
        I0 = 1; I1 = 0; I2 = 0; I3 = 0; I4 = 0; I5 = 0; I6 = 0; I7 = 0; S2 = 0; S1 = 0; S0 = 0; #10;
        I0 = 0; I1 = 1; I2 = 0; I3 = 0; I4 = 0; I5 = 0; I6 = 0; I7 = 0; S2 = 0; S1 = 0; S0 = 1; #10;
        I0 = 0; I1 = 0; I2 = 1; I3 = 0; I4 = 0; I5 = 0; I6 = 0; I7 = 0; S2 = 0; S1 = 1; S0 = 0; #10;
        I0 = 0; I1 = 0; I2 = 0; I3 = 1; I4 = 0; I5 = 0; I6 = 0; I7 = 0; S2 = 0; S1 = 1; S0 = 1; #10;
        I0 = 0; I1 = 0; I2 = 0; I3 = 0; I4 = 1; I5 = 0; I6 = 0; I7 = 0; S2 = 1; S1 = 0; S0 = 0; #10;
        I0 = 0; I1 = 0; I2 = 0; I3 = 0; I4 = 0; I5 = 1; I6 = 0; I7 = 0; S2 = 1; S1 = 0; S0 = 1; #10;
        I0 = 0; I1 = 0; I2 = 0; I3 = 0; I4 = 0; I5 = 0; I6 = 1; I7 = 0; S2 = 1; S1 = 1; S0 = 0; #10;
        I0 = 0; I1 = 0; I2 = 0; I3 = 0; I4 = 0; I5 = 0; I6 = 0; I7 = 1; S2 = 1; S1 = 1; S0 = 1; #10;
        $finish;
    end
endmodule


