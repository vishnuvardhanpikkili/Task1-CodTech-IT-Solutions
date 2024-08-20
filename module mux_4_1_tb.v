module mux_4_1_tb;

reg sel0, sel1, i0, i1, i2, i3;
wire y;

mux_4_1 uut (
	.sel0(sel0),
	.sel1(sel1),
	.i0(i0),
	.i1(i1),
	.i2(i2),
	.i3(i3),
	.y(y)
);
initial begin
	// Test case 1
	sel0 = 0; sel1 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; #10;
	$display("Test case 1: sel0 = 0, sel1 = 0, i0 = 0, i1 = 0, i2 = 0, i3 = 0, y = %b", y);
	
	// Test case 2
	sel0 = 0; sel1 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 1; #10;
	$display("Test case 2: sel0 = 0, sel1 = 0, i0 = 0, i1 = 0, i2 = 0, i3 = 1, y = %b", y);
	
	// Test case 3
	sel0 = 0; sel1 = 0; i0 = 0; i1 = 0; i2 = 1; i3 = 0; #10;
	$display("Test case 3: sel0 = 0, sel1 = 0, i0 = 0, i1 = 0, i2 = 1, i3 = 0, y = %b", y);
	
	// Test case 4
	sel0 = 0; sel1 = 0; i0 = 0; i1 = 0; i2 = 1; i3 = 1; #10;
	$display("Test case 4: sel0 = 0, sel1 = 0, i0 = 0, i1 = 0, i2 = 1, i3 = 1, y = %b", y);
	
	// Test case 5
	sel0 = 0; sel1 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 0; #10;
	$display("Test case 5: sel0 = 0, sel1 = 1, i0 = 0, i1 = 0, i2 = 0, i3 = 0, y = %b", y);
end

endmodule
