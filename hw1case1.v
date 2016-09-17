// for ~(AB)
module demorgan1
(
	 
	input A, // single bit inputs
	input B,
	output AandB, // output intermediate complemented inputs
	output nAandB // single bit output

);

	wire AandB;
	wire nAandB;
	and andgate1(AandB, A, B);
	not ABinv(nAandB, AandB);


endmodule