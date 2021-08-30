module t_ADDER;
    wire [15:0]OUT;
    reg [15:0]IN1;
    reg [15:0]IN2;

    ADDER add(OUT, IN1, IN2);

    initial
        begin
            $dumpfile("adder.vcd");
            $dumpvars(0, add);
            $monitor("Time: %d -> IN1: %d, IN2: %d | OUT: %d", $time, IN1, IN2, OUT);
            IN1 = 16'b0000_0000_0000_0000;
            IN2 = 16'b0000_0000_0000_0000;
            #10
            IN1 = 16'b0000_1000_1000_0000;
            IN2 = 16'b0000_0010_0100_0100;
            #10
            IN1 = 16'b1000_0010_1010_0000;
            IN2 = 16'b0000_1010_0111_0100;
            #10
            IN1 = 16'b1000_0010_1010_0010;
            IN2 = 16'b0011_1110_0111_0100;

            #10 $finish;
        end

endmodule

// module my_design;
//     wire [15:0]OUT;
//     reg [15:0]IN1;
//     reg [15:0]IN2;
//     integer i;
// 
//     ADDER add(OUT, IN1, IN2);
// 
// 	initial begin
//         $dumpfile("adder.vcd");
//         $dumpvars(0, add);
// 
//         for (i = 0; i < 10; i = i + 1) begin
//             #10
//             IN1 = $urandom %65536;
//             IN2 = $urandom %65536;
//             $monitor("Time: %d -> IN1: %d, IN2: %d | OUT: %d", $time, IN1, IN2, OUT);
// 		end
//         #10 $finish;
// 	end
// endmodule
