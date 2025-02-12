module calculator (
input [6:0] atempt,
input [6:0] disarm,
input [2:0] op,
output [6:0] result
);

always_comb
case(op)
	0: result = atempt & disarm;
	1: result = ~(atempt & disarm);
	2: result = atempt | disarm;
	3: result = atempt ^ disarm;
	4: result = ~(atempt | disarm);
	5: result = ~(atempt ^ disarm);
	default: result = atempt & disarm;
endcase
endmodule
