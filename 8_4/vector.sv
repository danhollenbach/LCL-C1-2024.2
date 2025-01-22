module vector(
input a, b, c,
output [2:0] data
);

assign data[0] = a;
assign data[1] = b;
assign data[2] = c;
endmodule