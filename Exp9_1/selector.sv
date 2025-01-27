module selector(
input a,
input b,
output choice
);

always_comb
case(b)
	0: choice = a;
	1: choice = 0;
	default: choice = a;
endcase

endmodule