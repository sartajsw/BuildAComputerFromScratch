module t_DEMUX1x4;
    wire [3:0]OUT;
    reg [2:0]IN;

    DEMUX1x4 demux2(OUT, IN[2], IN[1:0]);

    initial
        begin
            $dumpfile("demux1x4.vcd");
            $dumpvars(0, demux2);
            $monitor("Time: %d, IN: %b, S: %b, OUT: %b", $time, IN[2], IN[1:0], OUT);
            IN = 3'b000;
            repeat(7) #10 IN = IN + 1'b1;
            #10 $finish;
        end

endmodule
