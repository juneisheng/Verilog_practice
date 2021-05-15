// generate 生成instances，genvar定义变量，for语句须有命名
// 无法如同c语言一样，覆盖掉过程中需要而之后不需要的变量值
// 另 for中貌似无法使用 module套module ？存疑
// 且另设wire等type也不可，生成出的instances同时执行，signal不可被赋多值
// Net "xxx", which fans out to "xxx", cannot be assigned more than one value

module top_module( 
  input [399:0] a, b,
  input cin,
  output cout,
  output [399:0] sum );

  wire [$bits(a)-1:0] cout_tmp;
  bcd_fadd fadd(.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(cout_tmp[0]),.sum(sum[3:0]));

  generate
    genvar i;
    for (i = 3; i < $bits(a)-1; i = i+4) begin : adder
      bcd_fadd fadd(.a(a[i+4:i+1]), .b(b[i+4:i+1]), .cin(cout_tmp[i-3]), .cout(cout_tmp[i+1]),.sum(sum[i+4:i+1]));
    end
  endgenerate
    
  assign cout = cout_tmp[$bits(cout_tmp)-4];
  
endmodule

