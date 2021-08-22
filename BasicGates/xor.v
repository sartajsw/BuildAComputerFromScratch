module XOR(C, A, B);
    output C;
    input A, B;
    wire A_b, B_b, T1, T2;

    NOT G1(A_b, A);
    NOT G2(B_b, B);
    AND G3(T1, A, B_b);
    AND G4(T2, A_b, B);
    OR G5(C, T1, T2);

endmodule
