module top_module( 
  input [99:0] a, b,
  input cin,
  output [99:0] cout,
  output [99:0] sum );

  always @(*) begin
    cout[0] = ((a[0] + b[0] + cin) > 1) ? 1 : 0;
    sum[0] = (a[0] ^ b[0] ^ cin) ? 1 : 0;
    for (int i = 1; i < $bits(a); i++) begin
      cout[i] = ((a[i] + b[i] + cout[i-1]) > 1) ? 1 : 0;
      sum[i] = (a[i] ^ b[i] ^ cout[i-1]) ? 1 : 0;
    end
  end
  
endmodule