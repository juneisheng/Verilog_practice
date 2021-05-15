// (condition ? if_true : if_false) instead of if-then inside a combinational always block

module top_module (
  input [7:0] a, b, c, d,
  output [7:0] min);//

// assign intermediate_result1 = compare? true: false;
  wire [7:0] min_ab, min_abc, min_abcd;
    
  assign min_ab = (a < b) ? a : b;
  assign min_abc = (c < min_ab) ? c : min_ab;
  assign min_abcd = (d < min_abc) ? d : min_abc;
  assign min = min_abcd;

endmodule

