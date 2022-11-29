module JKFF(Q,Qbar,J,K,CLR,CLK);

input J,K,CLK,CLR;
output Q,Qbar;

wire a, b, c, d, y, ybar;

// Dataflow Modeling
assign a = ~(Qbar & J & CLK & CLR),
	b = ~(Q & K & CLK),
	y = ~(a & ybar),
	ybar = ~(y & CLR & b),
	c = ~(y & ~CLK),
	d = ~(ybar & ~CLK),
	Q = ~(c & Qbar),
	Qbar = ~(Q & CLR & d);

endmodule
