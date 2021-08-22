module DEMUX1x4(OUT, IN, SEL);
    output [3:0]OUT;
    input [1:0]SEL;
    input IN;
    wire T0, T1;
    
    DEMUX1x2 G1(T0, T1, IN, SEL[1]);
    DEMUX1x2 G2(OUT[0], OUT[1], T0, SEL[0]);
    DEMUX1x2 G3(OUT[2], OUT[3], T1, SEL[0]);

endmodule

