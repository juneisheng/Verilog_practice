module top_module( 
  input [254:0] in,
  output [7:0] out );

  always @(*) begin
    int n = 0;
    for (int i = 0; i < $bits(in); i++) begin
      if (in[i] == 1) begin
        n++;
      end
    end
  end

endmodule

