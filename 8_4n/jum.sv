module jum (
input q0, q1, q2,
output result
);

assign result = ~(~q0 & ~q1 & ~q2);
endmodule