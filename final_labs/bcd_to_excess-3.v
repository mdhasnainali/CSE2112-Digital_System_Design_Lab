module bcd_to_excess_three(B,E);

input [3:0] B;
output [3:0] E; 

// Dataflow Modeling
assign E[0] = ~B[0],
	E[1] = B[0]^~B[1],
	E[2] = B[2]^(B[0] | B[1]),
	E[3] = B[3] | (B[2] & (B[0] | B[1]));

endmodule
