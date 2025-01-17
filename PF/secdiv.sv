module secdiv (
input [5:0] segundos,
output [3:0] first,
output [3:0] second
);

integer count = 0;
assign first[0] = segundos[4];
assign first[1] = segundos[5];
assign first[2] = 0;
assign first[3] = 0;
assign second[0] = segundos[0];
assign second[1] = segundos[1];
assign second[2] = segundos[2];
assign second[3] = segundos[3];
endmodule
