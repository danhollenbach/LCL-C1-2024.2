module LFSRop(
input clk, rst,
output [2:0] op
);
always@(posedge clk or posedge rst) 
  begin
    if(rst) op <= 3'b111;
    else op = {op[1:0],(op[2]^op[1])};
  end
endmodule