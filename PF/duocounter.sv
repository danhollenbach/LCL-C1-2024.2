module duocounter(
input clk,
input preset,
output clockout,
output [5:0] q
);

assign q = 0;
always_ff @(posedge clk)
begin
	if (q == 0)
	begin
		q = 59;
		clockout = 1;
	end
	else
	begin
		q = q - 1;
		clockout = 0;
	end
end
endmodule
		