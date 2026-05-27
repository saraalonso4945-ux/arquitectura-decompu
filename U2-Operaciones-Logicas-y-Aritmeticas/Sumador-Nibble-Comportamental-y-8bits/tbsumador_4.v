module tbsumador_4;
reg [3:0]A;
reg [3:0]B;
wire [4:0]C;
sumador_4 suma4(.A(A), .B(B), .C(C));
	
	initial begin
	#10; A = 4´d2; B = 4´d3;  
	#10; A = 4´d5; B = 4´d8; 
	#10; A = 4´d4; B = 4´d5; 
	#10; A = 4´d2; B = 4´d6;

	$finish;
	end

endmodule
 