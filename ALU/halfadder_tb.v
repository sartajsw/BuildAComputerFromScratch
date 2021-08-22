module t_HALFADER;
    wire [1:0]OUT;
    reg [1:0]IN;

    HALFADDER hadd(OUT[1], OUT[0], IN[1], IN[0]);

    initial
        begin
            $dumpfile("halfadder.vcd");
            $dumpvars(0, hadd);
            $monitor("Time: %d ->  A: %b B: %b | C: %b S: %b", $time, IN[1], IN[0], OUT[1], OUT[0]);
            IN = 2'b00;
            repeat(3) #10 IN = IN + 1'b1;
            #10 $finish;
        end

endmodule
