model alu_tb;
logic [31:0] a;
logic [31:0] b;
logic [3:0] alu_control;

logic [31:0] result;
logic zero;

alu dut(
    .a(a),
    .b(b),
    .alu_control(al_control),
    .result(result),
    .zero(zero)
);

initial begin
    $dumpfile("sim/alu_wave.vcd");
    $dumpvars(0, alu_tb);

    // ADD
        a = 10; b = 5; alu_control = 4'b0000;
        #10;

        // SUB
        a = 10; b = 5; alu_control = 4'b0001;
        #10;

        // AND
        a = 5; b = 3; alu_control = 4'b0010;
        #10;

        // OR
        a = 5; b = 3; alu_control = 4'b0011;
        #10;

        // XOR
        a = 5; b = 3; alu_control = 4'b0100;
        #10;

        // SLT: -4 < 2
        a = -4; b = 2; alu_control = 4'b0101;
        #10;

        // SLTU: 252 < 2
        a = 32'd252; b = 32'd2; alu_control = 4'b0110;
        #10;

        // Zero flag test
        a = 10; b = 10; alu_control = 4'b0001;
        #10;

        $finish;

    end

endmodule