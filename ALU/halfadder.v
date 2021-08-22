module HALFADDER(C, S, A, B);
    output C, S;
    input A, B;

    and G1 (C, A, B);
    xor G2 (S, A, B);

endmodule
