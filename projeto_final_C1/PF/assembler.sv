module assembler(
input a,b,c,d,e,f,g,
output [6:0] attempt
);

// junta os inputs das chaves SW[6..0] em uma senha de 7 bits
assign attempt[0] = a;
assign attempt[1] = b;
assign attempt[2] = c;
assign attempt[3] = d;
assign attempt[4] = e;
assign attempt[5] = f;
assign attempt[6] = g;

endmodule 