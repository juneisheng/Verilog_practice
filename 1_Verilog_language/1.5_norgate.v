// Verilog has separate bitwise-OR (|) and logical-OR (||) operators, like C. 
// Since we're working with a one-bit here, it doesn't matter which we choose.
// 或非，或门 串联 非门

module top_module( 
  input a, 
  input b, 
  output out );
  
  assign out = ~(a | b);

endmodule
