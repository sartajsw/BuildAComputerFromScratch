module ADDER(OUT, IN1, IN2);
    output [15:0]OUT;
    input [15:0]IN1;
    input [15:0]IN2;
    wire [15:0]T;

    FULLADDER G1(T[0], OUT[0], IN1[0], IN2[0], 1'b0);
    FULLADDER G2(T[1], OUT[1], IN1[1], IN2[0], T[0]);
    FULLADDER G3(T[2], OUT[2], IN1[2], IN2[2], T[1]);
    FULLADDER G4(T[3], OUT[3], IN1[3], IN2[3], T[2]);
    FULLADDER G5(T[4], OUT[4], IN1[4], IN2[4], T[3]);
    FULLADDER G6(T[5], OUT[5], IN1[5], IN2[5], T[4]);
    FULLADDER G7(T[6], OUT[6], IN1[6], IN2[6], T[5]);
    FULLADDER G8(T[7], OUT[7], IN1[7], IN2[7], T[6]);
    FULLADDER G9(T[8], OUT[8], IN1[8], IN2[8], T[7]);
    FULLADDER G10(T[9], OUT[9], IN1[9], IN2[9], T[8]);
    FULLADDER G11(T[10], OUT[10], IN1[10], IN2[10], T[9]);
    FULLADDER G12(T[11], OUT[11], IN1[11], IN2[11], T[10]);
    FULLADDER G13(T[12], OUT[12], IN1[12], IN2[12], T[11]);
    FULLADDER G14(T[13], OUT[13], IN1[13], IN2[13], T[12]);
    FULLADDER G15(T[14], OUT[14], IN1[14], IN2[14], T[13]);
    FULLADDER G16(T[15], OUT[15], IN1[15], IN2[15], T[14]);

endmodule
