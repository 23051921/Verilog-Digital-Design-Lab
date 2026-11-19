`timescale 1ns / 1ps

module testsop();
    reg a, b, c;
    wire f;

    // Instantiate the SOP module
    sop CKT1 (f, a, b, c);

    initial begin
        // Apply test vectors
        a = 0; b = 0; c = 0;
        #10;
        a = 0; b = 0; c = 1;
        #10;
        a = 0; b = 1; c = 0;
        #10;
        a = 0; b = 1; c = 1;
        #10;
        a = 1; b = 0; c = 0;
        #10;
        a = 1; b = 0; c = 1;
        #10;
        a = 1; b = 1; c = 0;
        #10;
        a = 1; b = 1; c = 1;
        #10;
        $finish;
    end
endmodule

