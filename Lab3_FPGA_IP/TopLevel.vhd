library IEEE;
use IEEE.std_logic_1164.all;

entity TopLevel is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os
        fpga_led_pio       : out std_logic_vector(3 downto 0)
  );
end entity TopLevel;

architecture rtl of TopLevel is

 component niosLab2 is
        port (
            clk_clk       : in  std_logic                    := 'X'; -- clk
            leds_name   : out std_logic_vector(3 downto 0);        -- export
				reset_reset_n : in  std_logic                    := 'X'  -- reset_n
  );
 end component niosLab2;
begin
 u0 : component niosLab2
        port map (
            clk_clk       => fpga_clk_50,       --   clk.clk
            leds_name   => fpga_led_pio,   --  leds.export
            reset_reset_n => '1'  -- reset.reset_n
  );

end rtl;