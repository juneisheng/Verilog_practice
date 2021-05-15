module top_module ( 
  input p1a, p1b, p1c, p1d, p1e, p1f,
  output p1y,
  nput p2a, p2b, p2c, p2d,
  output p2y );

	wire and_1a_1b_1c, and_1d_1e_1f, and_2a_2b, and_2c_2d;
  assign {and_1a_1b_1c, 
          and_1d_1e_1f, 
          and_2a_2b, 
          and_2c_2d} = {
          p1a & p1b & p1c, 
          p1d & p1e & p1f, 
          p2a & p2b, 
          p2c & p2d};
  assign p1y = and_1a_1b_1c | and_1d_1e_1f;
  assign p2y = and_2a_2b | and_2c_2d;
endmodule