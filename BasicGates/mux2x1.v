module MUX2x1(O, A, B, S);
    output O;
    input A, B, S;
    wire S_b, T1, T2;

    NOT G1(S_b, S);
    AND G2(T1, S_b, A);
    AND G3(T2, S, B);
    OR G4(O, T1, T2);

endmodule
