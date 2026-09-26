module testbench_jahanjnrghadimi();

reg clk;
reg nrst;
reg [7:0] x;


detector_moore ghadim_mojool(
    .nrst(nrst),
    .clk(clk),
    .x(x),
    .y(y)
);

always #5 clk = ~clk;

initial
begin
	nrst = 0;
	clk = 0;
	#20 nrst = 1;
end


initial
begin
	x = 0;
	#20
	

	x = 8'd98;
	#10
	x = 8'd108;
	#10
	x = 8'd97;
	#10
	x = 8'd115;
	#10
	x = 8'd116;
	#10
	x = 8'd97;
	#10
	x = 8'd105;
	#10
	x = 8'd114;
	#10
	x = 8'd108;
	#10
	nrst = 0;
	#10
	x = 8'd121;
	#10
	x = 8'd122;


end


endmodule