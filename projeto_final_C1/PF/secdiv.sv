module secdiv(
input [5:0] seconds,
output [3:0] unit,
output [3:0] decimal
);

// divide a contagem dos numeros (59 a 0) em dezenas e unidades
assign unit = seconds % 10;
assign decimal = seconds / 10;

endmodule