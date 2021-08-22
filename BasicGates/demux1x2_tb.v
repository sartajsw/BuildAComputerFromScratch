module t_DEMUX1x2;
    reg [1:0]A;
    wire [1:0]B;

    DEMUX1x2 demux1(B[1], B[0], A[0], A[1]);

    initial
        begin
            $dumpfile("demux1x2.vcd");
            $dumpvars(0, demux1);
            $monitor("Time: %d, I: %b, S: %b, A: %b, B: %b", $time, A[0], A[1], B[1], B[0]);
            A = 2'b00;
            repeat(3) #10 A = A + 1'b1;
            #10 $finish;
        end

endmodule
