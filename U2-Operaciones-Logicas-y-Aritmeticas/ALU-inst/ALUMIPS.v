module ALUMIPS(
	input  [31:0] A,
    input  [31:0] B,
    input [3:0] Sel,
	output [31:0]Resultado
);
wire [31:0] C1, C2, C3, C4, C5;

sumcomp sumainsta(.S01(A), .S02(B), .RS(C1));
restcomp restainsta(.R01(A), .R02(B), .RR(C2));
orcomp orinsta(.O01(A), .O02(B), .RO(C3));
andcomp andinsta(.A01(A), .A02(B), .AR(C4));
slt32 sltinsta(.Slt01(A), .Slt02(B), .Rslt(C5));
mux5a1 muxinsta (.suma(C1), .resta(C2), ._or(C3), ._and(C4), .slt(C5), .ALUctl(Sel), .R(Resultado));

endmodule
