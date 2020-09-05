	component niosLab2 is
		port (
			reset_reset_n : in  std_logic                    := 'X'; -- reset_n
			clk_clk       : in  std_logic                    := 'X'; -- clk
			leds_export   : out std_logic_vector(5 downto 0)         -- export
		);
	end component niosLab2;

	u0 : component niosLab2
		port map (
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			leds_export   => CONNECTED_TO_leds_export    --  leds.export
		);

