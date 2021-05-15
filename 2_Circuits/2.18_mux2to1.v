module top_module( 
  input a, b, sel,
  output out ); 
    
  assign out = sel ? b : a; // equivalent to (sel & b) | (~sel & a)

endmodule