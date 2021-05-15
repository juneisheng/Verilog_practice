// The bitwise-XOR operator is ^. There is no logical-XOR operator.
// XNOR同或，输入相同时 输出为1,异或门 串联 非门
// bitwise多输入多输出，logical多输入单输出
// bitwise operator多输入时，输入数据为vector

module top_module( 
  input a, 
  input b, 
  output out );
  
  assign out = ~(a ^ b);

endmodule
