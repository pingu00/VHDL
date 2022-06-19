LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

ENTITY lab_08_dp IS

 PORT (	 
		clk,reset_n: in std_LOGIC;
		
		state_out : out std_LOGIC_vector(2 downto 0);
		iNOT10_out : out std_LOGIC;
		dp_out : out std_LOGIC_vector(3 downto 0)
		);
END lab_08_dp;



ARCHITECTURE dataflow OF lab_08_dp IS

signal iNOT10 : std_LOGIC;
signal data : std_logic_vector(3 DowNTO 0) := "0000";
signal state:std_logic_vector ( 2 downto 0);
BEGIN 	
iNOT10 <= '0' when (data = "1010") else '1';
state_out <= state;
iNOT10_out <= iNoT10;
dp_out <= "ZZZZ";

	process (reset_n, clk) is begin

	if (reset_n ='1') then
		state <="010";
	elsif rising_edge(clk) then  
		case (state) is
		when "010" => 
			data <= "0000";
			state <= "100";
		when "100" => 
			data <= data + '1';
			state <="101";
		when "101" => if (iNOT10 = '1') then
			data <= data + '1';
			dp_out <= data;
			
				else dp_out <= "ZZZZ";
				end if;
			else state <= "010";
			end if;
		when others => 
		end case;
	end if;
	end process;

end dataflow;
	


	