module adder_subtractor(Carry, SUM, M, A, B);

input [3:0] A,B;
input M;
output [3:0] SUM;
output Carry;

wire [3:0] Bbar;

// Dataflow Modeling
assign Bbar[0] = B[0] ^ M,
	Bbar[1] = B[1] ^ M,
	Bbar[2] = B[2] ^ M,
	Bbar[3] = B[3] ^M ;

assign {Carry, SUM} = A + Bbar + M;

endmodule
