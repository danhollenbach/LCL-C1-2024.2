module somador(
input a,
input b,
input cin,
output S,
output Cout
);
assign {Cout, S} = a + b + cin;
endmodule