// Given Sequence: 000 010 100 001 111 101

module synchronousSequenceCounter(Q,CLR,CLK);

input CLR, CLK;
output [2:0] Q;

wire [2:0] Qbar, J, K;

// Dataflow Modeling
assign J[0] = Q[1] ^ Q[2],
	K[0] = ~(Q[1] & Q[2]),
	J[1] = ~Q[0],
	K[1] = 1,
	J[2] = Q[0] & ~Q[1],
	K[2] = Q[0] ^ Q[1];

// Gate Level Modeling
JKFF jk1(Q[0], Qbar[0], J[0], K[0], CLR, CLK);
JKFF jk2(Q[1], Qbar[1], J[1], K[1], CLR, CLK);
JKFF jk3(Q[2], Qbar[2], J[2], K[2], CLR, CLK);

endmodule;
