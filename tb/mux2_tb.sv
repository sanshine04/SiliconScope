module mux2_tb;
    logic [31:0] a;
    logic [31:0] b;
    logic        sel;
    logic [31:0] y;
    mux2 dut (
        .a   (a),
        .b   (b),
        .sel (sel),
        .y   (y)
    );
    initial begin
        $dumpfile("sim/mux2_wave.vcd");
        $dumpvars(0, mux2_tb);
        $monitor("time=%0t | a=%0d | b=%0d | sel=%0b | y=%0d",
                 $time, a, b, sel, y);
    end
    initial begin

        a = 32'd25;
        b = 32'd90;

        sel = 0;
        #10;

        sel = 1;
        #10;

        $finish;

    end
endmodule