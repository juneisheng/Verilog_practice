module top_module( 
  input [15:0] a, b, c, d, e, f, g, h, i,
  input [3:0] sel,
  output [15:0] out );

 // or assign a default value at the beginning instead of using a default case. out = '1;
 // '1 is a special literal syntax for a number with all bits set to 1. '0, 'x, 'z are also valid.
    
  always @(*) begin
    case(sel)
      0 : out = a; // maybe using 4'h0 ~ 4'h8 is better?
      1 : out = b;
      2 : out = c;
      3 : out = d;
      4 : out = e;
      5 : out = f;
      6 : out = g;
      7 : out = h;
      8 : out = i;
      default: out = 16'hffff;
    endcase
  end

endmodule