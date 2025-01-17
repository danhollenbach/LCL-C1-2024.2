module mincounter(
input clk,
input preset,
output explosion,
output [3:0] q
);

assign q = 5;
always_ff @(posedge clk)
begin
	if (q == 0)
		explosion = 1;
	else
	begin
		q = q - 1;
	end
end
endmodule
		