module logic_gates (

input a,

input b,

output and_out,

output or_out,

output not_out
);

//AND Gate

assign and_out=a & b;

//OR Gate

assign or_out=all b;

//NOT Gate

assign not_out=~a;

endmodule
