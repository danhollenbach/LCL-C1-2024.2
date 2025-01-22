module vector(
input a, b, c, d,
output [3:0] data
);

assign data[0] = a;
assign data[1] = b;
assign data[2] = c;
assign data[3] = d;
endmodule