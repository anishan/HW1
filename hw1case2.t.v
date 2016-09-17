`include "hw1case2.v"
// for ~A+~B
module demorgan_test2 ();

	// Instantiate device/module under test
	reg A, B; // primary test inputs
	wire nA, nB, nAornB; // test outputs

	demorgan2 duct(A, B, nA, nB, nAornB); // module to be tested

	// Run sequence of test stimuli
	initial begin
		$display("A B | ~A ~B | ~A+~B "); // Prints header for truth table
		A=0; B=0; #1 // Set A and B, wait for update (#1)
		$display("%b %b |	%b %b |	%b ", A, B, nA, nB, nAornB);
		A=0; B=1; #1 // Set A and B, wait for update
		$display("%b %b |	%b %b |	%b ", A, B, nA, nB, nAornB);
		A=1; B=0; #1 // Set A and B, wait for update
		$display("%b %b |	%b %b |	%b ", A, B, nA, nB, nAornB);
		A=1; B=1; #1 // Set A and B, wait for update
		$display("%b %b |	%b %b |	%b ", A, B, nA, nB, nAornB);
	end
endmodule