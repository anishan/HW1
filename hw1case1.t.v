`include "hw1case1.v"
// for ~(AB)
module demorgan_test1 ();

	// Instantiate device/module under test
	reg A, B; // primary test inputs
	wire AandB, nAandB; // test outputs

	demorgan1 duct(A, B, AandB, nAandB); // module to be tested

	// Run sequence of test stimuli
	initial begin
		$display("A B | AB | ~AB "); // Prints header for truth table
		A=0; B=0; #1 // Set A and B, wait for update (#1)
		$display("%b %b | %b  | %b ", A, B, AandB, nAandB);
		A=0; B=1; #1 // Set A and B, wait for update
		$display("%b %b | %b  | %b ", A, B, AandB, nAandB);
		A=1; B=0; #1 // Set A and B, wait for update
		$display("%b %b | %b  | %b ", A, B, AandB, nAandB);
		A=1; B=1; #1 // Set A and B, wait for update
		$display("%b %b | %b  | %b ", A, B, AandB, nAandB);
	end
endmodule