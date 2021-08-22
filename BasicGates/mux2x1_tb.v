module t_MUX2x1;
    reg [2:0]A;
    wire B;

    MUX2x1 mux1(B, A[2], A[1], A[0]);

    initial
        begin
            $dumpfile("mux2x1.vcd");
            $dumpvars(0, mux1);
            $monitor("Time: %d, A: %b, B: %b, S: %b, O: %b", $time, A[2], A[1], A[0], B);
            A = 3'b000;
            repeat(7) #10 A = A + 1'b1;
            #10 $finish;
        end

endmodule
