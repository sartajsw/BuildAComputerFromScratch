module t_AND;
    reg A, B;
    wire C;

    initial
        begin
            $dumpfile("and.vcd");
            $dumpvars(0, and1);
            $monitor("Time: %d, A: %b, B: %b, C: %b", $time, A, B, C);
            A = 1'b0; B = 1'b0;
            #10 A = 1'b0; B = 1'b1;
            #10 A = 1'b1; B = 1'b0;
            #10 A = 1'b1; B = 1'b1;
            #10 $finish;
        end

    AND and1(C, A, B);

endmodule


