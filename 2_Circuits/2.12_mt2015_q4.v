module top_module (input x, input y, output z); // hierarchy using the two submodules
    
 // wire z1, z2;
 // assign z1 = (x ^ y) &x;
 // assign z2 = ~(x ^ y);
 // assign z = (z1 | z2) ^ (z1 & z2);

  wire o1, o2, o3, o4;
	
	A ia1 (x, y, o1);
	B ib1 (x, y, o2);
	A ia2 (x, y, o3);
	B ib2 (x, y, o4);
	
	assign z = (o1 | o2) ^ (o3 & o4);

endmodule
module A (input x, input y, output z);

	assign z = (x ^ y) & x;
	
endmodule

module B (input x, input y, output z);

	assign z = ~(x ^ y);

endmodule