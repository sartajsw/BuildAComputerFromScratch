module t_AND16;
    reg [31:0]I;
    wire [15:0]O;

    AND16 and16(O, I[31:16], I[15:0]);

    initial
        begin
            $dumpfile("and16.vcd");
            $dumpvars(0, and16);
            $monitor("Time: %d, O: %b, I1: %b, I2: %b", $time, O, I[31:16], I[15:0])
            I = 32'b    ;
            repeat(x)

