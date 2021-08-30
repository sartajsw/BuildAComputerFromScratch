module t_INCREMENTER;
    reg [15:0]IN;
    wire [15:0]OUT;

    INCREMENTER inc(OUT, IN);

    initial begin
        $dumpfile("incrementer.vcd");
        $dumpvars(0,inc);
        $monitor("Time: %d -> Counter: %b", $time, OUT);
        IN = 16'b0000_0000_0000_0001;
        //repeat(10) #10 IN = OUT;
        #10 $finish;
    end

endmodule


