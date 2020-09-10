
module niosLab2 (
	clk_clk,
	leds_export,
	reset_reset_n,
	motor_export,
	switches_export);	

	input		clk_clk;
	output	[5:0]	leds_export;
	input		reset_reset_n;
	output	[5:0]	motor_export;
	output	[5:0]	switches_export;
endmodule
