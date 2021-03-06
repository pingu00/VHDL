library ieee;
use ieee.std_logic_1164.all;


entity mp_tb is
end mp_tb;

architecture tb of mp_tb is

	component mp PORT (
	Clock, Reset: IN STD_LOGIC;
	Input: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Halt: OUT STD_LOGIC);
END component;
	  
	signal Clock, Reset: STD_LOGIC := '0';
	signal Input: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000100";
	signal Output: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal Halt: STD_LOGIC; -- outputs
	

	
	 constant period: time := 100 ns;
begin
	

    -- connecting testbench signals
     UUT : mp port map (clock => clock, Reset => Reset, Input => Input, Output => Output, halt=> halt); 

   
	clk: process 
		begin 
			clock <= '0';
        wait for period/2;  --for 50 ns signal is '0'.
        clock <= '1';
        wait for period/2; --for next 50 ns signal is '1'.
		end process;
	
	process 
      
    begin
		  reset <= '1';
         wait for period;
			reset <= '0';
			wait;
    end process;
end tb ;
