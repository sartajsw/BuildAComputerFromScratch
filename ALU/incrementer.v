module INCREMENTER(OUT, IN);
    output [15:0]OUT;
    input [15:0]IN;

    ADDER G1(OUT, IN, 16'b0000_0000_0000_0001);
endmodule

