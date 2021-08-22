module MUX4x1(O, I0, I1, I2, I3, S0, S1);
    output O;
    input I0, I1, I2, I3, S0, S1;
    wire T1, T2;

    MUX2x1 G1(T1, I3, I2, S1);
    MUX2x1 G2(T2, I1, I0, S1);
    MUX2x1 G3(O, T1, T2, S0);

endmodule
