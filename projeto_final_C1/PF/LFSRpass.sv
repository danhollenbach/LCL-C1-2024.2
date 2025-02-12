module LFSRpass(
input clk, rst,
output [6:0] senha
);

// gerador de numeros aleatorios de 7 bits para criacao da senha
always@(posedge clk or posedge rst) 
  begin
    if(rst) senha <= 7'b1111111;
    else senha = {senha[5:0],(senha[6]^senha[5])};
  end
endmodule