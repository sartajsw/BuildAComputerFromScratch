module FULLADDER(Carry, Sum, IN1, IN2, IN3);
    output Carry, Sum;
    input IN1, IN2, IN3;
    wire T1, T2, T3;

    // For Sum
    HALFADDER G1(T2, T1, IN1, IN2);
    HALFADDER G2(T3, Sum, T1, IN3);

    // For Carry
    xor G3(Carry, T2, T3);

endmodule

