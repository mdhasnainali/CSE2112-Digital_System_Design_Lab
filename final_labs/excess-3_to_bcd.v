module excess_three_to_bcd(B, E);

input [3:0] E;
output [3:0] B;

assign B[0] = ~E[0],
	B[1] = E[0] ^ E[1],
	B[2] = (~E[0]&E[1]&E[3]) | (E[0]&E[1]&E[2]) | (~E[1] & ~E[2]),
	B[3] = (E[2] & E[3]) | (E[0] & E[1] & E[3]);


endmodule
