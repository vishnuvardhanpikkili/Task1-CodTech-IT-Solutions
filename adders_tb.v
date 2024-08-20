module adders_tb;

reg a, b, c;
wire ha_sum, ha_carry, fa_sum, fa_carry;

adders uut (
	.a(a),
	.b(b),
	.c(c),
	.ha_sum(ha_sum),
	.ha_carry(ha_carry),
	.fa_sum(fa_sum),
	.fa_carry(fa_carry)
);

initial begin
	// Test case 1: Half Adder
	a = 0; b = 0; c = 0; #10;
	a = 0; b = 1; c = 0; #10;
	a = 1; b = 0; c = 0; #10;
	a = 1; b = 1; c = 0; #10;
	
	// Test case 2: Full Adder
	a = 0; b = 0; c = 0; #10;
	a = 0; b = 0; c = 1; #10;
	a = 0; b = 1; c = 0; #10;
	a = 0; b = 1; c = 1; #10;
	a = 1; b = 0; c = 0; #10;
	a = 1; b = 0; c = 1; #10;
	a = 1; b = 1; c = 0; #10;
	a = 1; b = 1; c = 1; #10;
end

endmodule
