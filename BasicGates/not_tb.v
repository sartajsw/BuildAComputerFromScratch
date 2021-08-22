module t_NOT;
    reg A = 1'b0;
    wire A_b;

    initial
        begin
            $dumpfile("not.vcd");
            $dumpvars(0, not1);
            $monitor("Time: %d, A: %b, A_b: %b", $time, A, A_b);
            //#10 A = 1'b0;
            #10 A = 1'b1;
            #10 A = 1'b0;
            #10 A = 1'b1;
            #10 $finish;
        end

    NOT not1(A_b, A);

endmodule
