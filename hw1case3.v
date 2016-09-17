// for ~(A+B)
module demorgan3
(
	 
	input A, // single bit inputs
	input B,
	output AorB, // output intermediate complemented inputs
	output nAorB // single bit output

);

	wire AorB;
	wire nAorB;
	or orgate1(AorB, A, B);
	not AorBinv(nAorB, AorB);


endmodule