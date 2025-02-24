module LFSRop(
input clk, rst,
output [2:0] op
);

// gerador de numeros aleatorios de 3 bits para selecao da operacao na senha
always@(posedge clk or posedge rst) 
  begin
    if(rst) op <= 3'b111;
    else op = {op[1:0],(op[2]^op[1])};
  end
endmodule