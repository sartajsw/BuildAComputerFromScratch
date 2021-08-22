module t_OR;
    reg [1:0]A;
    wire B;

    OR or1(B, A[1], A[0]);

    initial
        begin
            $dumpfile("or.vcd");
            $dumpvars(0, or1);
            $monitor("Time: %d, A: %b, B: %b, C: %b", $time, A[1], A[0], B);
            A = 2'b00;
            repeat(3) #10 A = A + 1'b1;
            #10 $finish;
        end

endmodule
