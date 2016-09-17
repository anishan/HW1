// for ~A+~B
module demorgan2
(
	 
	input A, // single bit inputs
	input B,
	output nA, // output intermediate complemented inputs
	output nB,
	output nAornB // single bit output

);

	wire nA;
	wire nB;
	not Ainv(nA, A); // top inverter is named Ainv, takes signal A as input and produces signal nA
	not Binv(nB, B);
	or orgate(nAornB, nA, nB); // AND gate produces nAandnB from nA and nB


endmodule