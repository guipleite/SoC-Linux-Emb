library IEEE;
use IEEE.std_logic_1164.all;

entity LAB2_FPGA_NIOS is
    port (
        -- Gloabals
        fpga_clk_50        : in  std_logic;             -- clock.clk

        -- I/Os		  
		  fpga_switches_pio  : in std_logic_vector(3 downto 0);
        fpga_led_pio       : out std_logic_vector(3 downto 0);
		  fpga_motor_pio     : out std_logic_vector(3 downto 0)


  );
end entity LAB2_FPGA_NIOS;

architecture rtl of LAB2_FPGA_NIOS is


 component niosLab2 is
	  port (
			clk_clk         : in  std_logic                    := 'X';             -- clk
			motor_export    : out std_logic_vector(3 downto 0);                    -- export
			reset_reset_n   : in  std_logic                    := 'X';             -- reset_n
			switches_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			leds_name       : out std_logic_vector(3 downto 0)                     -- name
	  );
 end component niosLab2;

begin

 u0 : component niosLab2
	  port map (
			clk_clk         => fpga_clk_50,         --      clk.clk
			motor_export    => fpga_motor_pio,    --    motor.export
			reset_reset_n   =>  '1', 	           --    reset.reset_n
			switches_export => fpga_switches_pio, -- switches.export
			leds_name       => fpga_led_pio        --     leds.name
	  );


end rtl;



