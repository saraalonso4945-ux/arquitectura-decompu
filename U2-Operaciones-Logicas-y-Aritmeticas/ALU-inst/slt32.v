module slt32(
	input  [31:0] Slt01,
    input  [31:0] Slt02,
    output [31:0] Rslt
);
assign Rslt = Slt01 < Slt02 ? 1 : 0;

endmodule

