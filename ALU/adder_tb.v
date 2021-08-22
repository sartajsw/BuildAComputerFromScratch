module t_ADDER;
    wire [15:0]OUT;
    reg [31:0]IN;

    ADDER add(OUT, IN[31:16], IN[15:0]);

    initial
        begin
            $dumpfile("adder.vcd");
            $dumpvars(0, add);
            $monitor("Time: %d -> IN1: %d, IN2: %d | OUT: %d", $time, IN[31:16], IN[15:0], OUT);
            IN = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
            #10 IN = 32'b0000_0000_0110_0100_0000_0000_1100_1000;
            #10 IN = 32'b0000_0001_1111_0100_0000_0011_1110_1000;
            #10 $finish;
        end

endmodule
