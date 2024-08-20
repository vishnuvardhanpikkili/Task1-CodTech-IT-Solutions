module logic_gates_tb;

reg a, b;
wire and_out, or_out, not_out;

logic_gates uut (
	.a(a),
	.b(b),
	.and_out(and_out),
	.or_out(or_out),
	.not_out(not_out)
);

// Test case 1: AND Gate
initial begin
	a = 0; b = 0; #10;
	$display("AND Gate: a = 0, b = 0, out = %b", and_out);
	a = 0; b = 1; #10;
	$display("AND Gate: a = 0, b = 1, out = %b", and_out);
	a = 1; b = 0; #10;
	$display("AND Gate: a = 1, b = 0, out = %b", and_out);
	a = 1; b = 1; #10;
	$display("AND Gate: a = 1, b = 1, out = %b", and_out);
end

// Test case 2: OR Gate
initial begin
	#50;
	a = 0; b = 0; #10;
	$display("OR Gate: a = 0, b = 0, out = %b", or_out);
	a = 0; b = 1; #10;
	$display("OR Gate: a = 0, b = 1, out = %b", or_out);
	a = 1; b = 0; #10;
	$display("OR Gate: a = 1, b = 0, out = %b", or_out);
	a = 1; b = 1; #10;
	$display("OR Gate: a = 1, b = 1, out = %b", or_out);
end

// Test case 3: NOT Gate
initial begin
	#100;
	a = 0; #10;
	$display("NOT Gate: a = 0, out = %b", not_out);
	a = 1; #10;
	$display("NOT Gate: a = 1, out = %b", not_out);
end

initial begin
	#200 $finish;
end

endmodule

