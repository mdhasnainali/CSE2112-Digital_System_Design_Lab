module up_down_synchronous_counter(Q,M,CLR,CLK);

input M, CLR, CLK;
output [2:0] Q;

wire [2:0] J,K,Qbar;

// Dataflow Modeling
assign J[0] = (~M & ~Q[1] & ~Q[2]) + (M & Q[1] & Q[2]),
	K[0] =  J[0],
	J[1] = ~(M ^ Q[2]),
	K[1] = J[1],
	J[2] = 1,
	K[2] = 1;

// Gate Level Modeling
JKFF jk1(Q[0],Qbar[0],J[0],K[0],CLR,CLK);
JKFF jk2(Q[1],Qbar[1],J[1],K[1],CLR,CLK);
JKFF jk3(Q[2],Qbar[2],J[2],K[2],CLR,CLK);

endmodule;


