module OR(C, A, B);
    output C;
    input A, B;
    wire A_b, B_b, AB_b;

    NOT G1(A_b, A);
    NOT G2(B_b, B);
    AND G3(AB_b, A_b, B_b);
    NOT G4(C, AB_b);

endmodule
