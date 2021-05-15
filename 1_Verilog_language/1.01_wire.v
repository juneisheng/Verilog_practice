// A continuous assignment assigns the right side to the left side continuously, so any change to the RHS is immediately seen in the LHS.
module top_module( input in, output out );
  
  assign out = in;

endmodule

// Note that wires are directional, so "assign in = out" is not equivalent.
