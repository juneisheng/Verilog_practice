module top_module (
	input [99:0] a,
	input [99:0] b,
	input sel,
	output [99:0] out
 );

	assign out = sel ? b : a;
	// In this case, assign out = (sel & b) | (~sel & a); doesn't work.
	
endmodule