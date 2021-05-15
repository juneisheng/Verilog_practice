// 任意真值表，可用{...x3, x2, x1}的case分类赋值实现

module top_module( 
  input x3,
  input x2,
  input x1,  // three inputs
  output f   // one output
 );

  always @(*) begin
    case({x3, x2, x1})
      2, 3, 5, 7: f = 1;
      0, 1, 4, 6: f = 0;
    endcase
  end

endmodule