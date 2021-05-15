// The bitwise-XOR operator is ^. There is no logical-XOR operator.
// 同或门，输入相同时 输出为1
// bitwise多输入多输出，logical多输入单输出
// bitwise operator多输入时，输入数据为vector

module top_module( 
  input a, 
  input b, 
  output out );
  
  assign out = ~(a ^ b);

endmodule
