`include "hw1case3.v"
// for ~(A+B)
module demorgan_test3 ();

	// Instantiate device/module under test
	reg A, B; // primary test inputs
	wire AorB, nAorB; // test outputs

	demorgan3 duct(A, B, AorB, nAorB); // module to be tested

	// Run sequence of test stimuli
	initial begin
		$display("A B | A+B | ~(A+B) "); // Prints header for truth table
		A=0; B=0; #1 // Set A and B, wait for update (#1)
		$display("%b %b |  %b  | %b ", A, B, AorB, nAorB);
		A=0; B=1; #1 // Set A and B, wait for update
		$display("%b %b |  %b  | %b ", A, B, AorB, nAorB);
		A=1; B=0; #1 // Set A and B, wait for update
		$display("%b %b |  %b  | %b ", A, B, AorB, nAorB);
		A=1; B=1; #1 // Set A and B, wait for update
		$display("%b %b |  %b  | %b ", A, B, AorB, nAorB);
	end
endmodule