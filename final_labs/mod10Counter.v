module mod10Counter(Q, CLK);

input CLK;
output [3:0]Q;

wire [3:0]Qbar;
wire CLR;

assign J = 1,
	K = 1;

// Gate Level Modeling
JKFF jk1(Q[0],Qbar[0],J,K,CLR,CLK);
JKFF jk2(Q[1],Qbar[1],J,K,CLR,Q[0]);
JKFF jk3(Q[2],Qbar[2],J,K,CLR,Q[1]);
JKFF jk4(Q[3],Qbar[3],J,K,CLR,Q[2]);

assign CLR = ~(Q[1] & Q[3]);

endmodule