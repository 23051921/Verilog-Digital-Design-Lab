`timescale 1ns / 1ps

module tb_seq_det();
    reg clk;
    reg rst;
    reg Din;
    wire Dout;

    Seq_Det uut (
        .clk(clk),
        .rst(rst),
        .Din(Din),
        .Dout(Dout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        Din = 0;
        #15;
        rst = 0;

        // Feed bitstream: 1, 1, 1 (should trigger Dout=1 on 3rd 1)
        @(posedge clk); Din = 1;
        @(posedge clk); Din = 1;
        @(posedge clk); Din = 1;
        #1;
        @(posedge clk); Din = 0;
        #1;
        @(posedge clk); Din = 1;
        @(posedge clk); Din = 1;
        @(posedge clk); Din = 1;
        #1;
        #30;
        $finish;
    end
endmodule
