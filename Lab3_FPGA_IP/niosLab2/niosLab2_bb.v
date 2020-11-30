
module niosLab2 (
	clk_clk,
	motor_export,
	reset_reset_n,
	switches_export,
	leds_name);	

	input		clk_clk;
	output	[3:0]	motor_export;
	input		reset_reset_n;
	input	[3:0]	switches_export;
	output	[3:0]	leds_name;
endmodule
