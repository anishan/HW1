module demorgan
(
	// for ~A~B
	input A, // single bit inputs
	input B,
	output nA, // output intermediate complemented inputs
	output nB,
	output nAandnB // single bit output, (~A)*(~B)


);

	wire nA;
	wire nB;
	not Ainv(nA, A); // top inverter is named Ainv, takes signal A as input and produces signal nA
	not Binv(nB, B);
	and andgate(nAandnB, nA, nB); // AND gate produces nAandnB from nA and nB

endmodule