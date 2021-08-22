module DEMUX1x2(A, B, I, S);
    output A, B;
    input I, S;
    wire S_b;

    NOT G1(S_b, S);
    AND G2(A, S_b, I);
    AND G3(B, S, I);

endmodule

