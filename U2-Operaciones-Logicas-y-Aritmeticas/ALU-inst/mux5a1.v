//1. creacion del modulo y sus entradas y salidas
module mux5a1(
	input  [31:0] suma, resta, _or, _and, slt,
    input  [3:0] ALUctl,
    output reg[31:0] R
);
//2. declaracon de wires: NA, regs: SI

//3. cuerpo del modulo, instancias:NA, assigns: NA
//Bloque secuencial: SI
always @(ALUctl)
//cualquier asignacion dentro de un bloque secuencial
//es de tipo flag
	begin
		case(ALUctl)
			4'b0000:R=suma;
			4'b0001:R=resta;
			4'b0010:R=_or;
			4'b0011:R=_and;
			4'b0101:R=slt;
		endcase
	end
	
endmodule