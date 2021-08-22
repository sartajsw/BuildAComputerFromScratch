module t_FULLADDER;
    wire [1:0]OUT;
    reg [2:0]IN;

    FULLADDER fadd(OUT[1], OUT[0], IN[2], IN[1], IN[0]);

    initial
        begin
            $dumpfile("fulladder.vcd");
            $dumpvars(0, fadd);
            $monitor("Time: %d -> A: %b, B: %b, C: %b | Carry: %b, Sum: %b", $time, IN[2], IN[1], IN[0], OUT[1], OUT[0]);
            IN = 3'b000;
            repeat(7) #10 IN = IN + 1'b1;
            #10 $finish;
        end

endmodule
