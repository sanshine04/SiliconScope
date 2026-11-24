module alu (
    input logic [31:0] a,
    input logic [31:0] b,
    input logic [3:0] alu_control,

    output logic [31:0] result,
    output_logic zero
);

always_comb begin

    case (alu_control)

        4'b0000: result = a + b;  
        4'b0001: result = a - b;
        4'b0010: result = a & b;  // AND
        4'b0011: result = a | b;  // OR
        4'b0100: result = a ^ b;  // XOR
        4'b0101: result = ($signed(a) < $signed(b)) ? 32'd1 : 32'd0; // SLT
        4'b0110: result = (a < b) ? 32'd1 : 32'd0; // SLTU 

        default: result = 32'b0;

    endcase

    zero = (result == 32'b0);

end

endmodule