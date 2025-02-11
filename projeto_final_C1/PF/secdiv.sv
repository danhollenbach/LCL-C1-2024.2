module secdiv(
input [5:0] seconds,
output [3:0] unit,
output [3:0] decimal
);

assign unit = seconds % 10;
assign decimal = seconds / 10;

endmodule