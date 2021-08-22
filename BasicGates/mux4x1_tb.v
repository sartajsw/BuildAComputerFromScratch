module t_MUX4x1;
    wire O;
    reg [5:0]I;

    MUX4x1 mux2(O, I[3], I[2], I[1], I[0], I[5], I[4]);

    initial
        begin
            $dumpfile("mux4x1.vcd");
            $dumpvars(0, mux2);
            $monitor("Time: %d, I: %b, S: %b, O: %b", $time, I[3:0], I[5:4], O);
            I = 6'b000000;
            repeat(63) #10 I = I + 1'b1;
            #10 $finish;
        end

endmodule
