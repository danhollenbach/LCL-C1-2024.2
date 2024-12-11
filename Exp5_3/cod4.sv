module cod4(
input d,
input e,
input f,
input g,
output [15:0] saida
);
always_comb
begin
saida = 0;
saida[{d,e,f,g}] = 1;
end
endmodule