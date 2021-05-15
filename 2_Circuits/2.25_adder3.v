module top_module( 
  input [2:0] a, b,
  input cin,
  output [2:0] cout,
  output [2:0] sum );
    
  always @(*) begin
    sum[0] = a[0] ^ b[0] ^ cin;
    cout[0] = (a[0] & b[0]) | ((a[0] ^ b[0]) & cin); 
    for(int i = 1; i < $bits(a); i++) begin
      sum[i] = a[i] ^ b[i] ^ cout[i-1];
      cout[i] = (a[i] & b[i]) | ((a[i] ^ b[i]) & cout[i-1]); 
    end
  end

endmodule // also see in 1.40

