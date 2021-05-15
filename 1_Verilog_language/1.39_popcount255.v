module top_module( 
  input [254:0] in,
  output [7:0] out );

  always @(*) begin
    out = 0;
    for (int i = 0; i < $bits(in); i++) begin
      if (in[i] == 1) //out = out + in[i];
        out++;
      else
        ;
    end
  end
endmodule

