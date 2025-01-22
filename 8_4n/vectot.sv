module vector(
input a, b, c,
output [2:0] data
);
logic [2:0] str;
assign str[0] = a;
assign str[1] = b;
assign str[2] = c;
always_comb
case(str)
	3'b000: data = 0;
	3'b100: data = 1;
	3'b011: data = 2;
	3'b010: data = 3;
	3'b101: data = 4;
	3'b111: data = 5;
	default: data = 0;
endcase
endmodule