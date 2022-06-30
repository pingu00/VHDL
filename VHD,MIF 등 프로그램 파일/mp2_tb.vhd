library ieee;
use ieee.std_logic_1164.all;


entity mp2_tb is
end mp2_tb;

architecture tb of mp2_tb is

	component mp_EC2 PORT (
	clock, reset: IN STD_LOGIC;
	--enter: IN STD_LOGIC;
	-- data input
	input: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	-- data output
	output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	-- control outputs

END component;
	  
	signal Clock, Reset: STD_LOGIC := '0';
	--signal enter: STD_LOGIC := '1';
	signal Input: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00001000";
	signal Output: STD_LOGIC_VECTOR(7 DOWNTO 0);
	--signal Halt: STD_LOGIC; -- outputs
	

	
	 constant period: time := 100 ns;
begin
	

    -- connecting testbench signals
     UUT : mp_EC2 port map (clock => clock, Reset => Reset, Input => Input, Output => Output); 

   
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
