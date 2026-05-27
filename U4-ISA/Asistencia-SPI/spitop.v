module spi_top(input CLK);
wire c1, c2, c3;
//instancia de master
master mastop (
	.clk(CLK),
	.miso(c3),
	.mosi(c1),
	.ss(c2));
	
slave mupet (
	.clk(CLK),
	.mosi(c1),
	.miso(c3),
	.ss(c2));

endmodule
