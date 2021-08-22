module AND(C, A, B);
    output C;
    input A, B;
    wire C_b;

    nand G1(C_b, A, B);
    NOT G2(C, C_b);

endmodule
