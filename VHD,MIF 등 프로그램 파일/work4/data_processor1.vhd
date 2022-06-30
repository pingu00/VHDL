LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY data_processor1 IS

 PORT (	 
		input: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		reset_n,clk, ac_load, mar_load, ram_load, input_sel : IN Std_LOGIC;
		alu_sel, mar_in: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
 	 	data_chk: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		AC_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		m1_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0); 
		m2_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END data_processor1;



ARCHITECTURE sample OF data_processor1 IS

	component async_ram IS
		PORT (	data_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		address: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		wr: IN STD_LOGIC;
		data_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		m1_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0); 
		m2_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	end component;
	
	component simple_alu
		port (
			op1, op2 : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			sel: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			alu_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
		end component;
	
signal data_in: std_logic_vector(3 DowNTO 0);
signal data_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal alu_out:  STD_LOGIC_VECTOR (3 DOWNTO 0);
signal mux : STD_LOGIC_VECTOR(3 dowNTO 0);
signal MAR : STD_LOGIC_VECTOR(2 dowNTO 0);
signal AC : STD_LOGIC_VECTOR(3 dowNTO 0);


BEGIN 	
	RAM : async_ram port map (data_in => data_in, address => MAR, wr => ram_load, data_out => data_out, m1_out => m1_out, m2_out => m2_out );
	ALU : simple_alu port map (op1 => AC, op2=> data_out, sel => alu_sel, alu_out => alu_out );
	
	data_in <= alu_out;
	data_chk <= alu_out;
	AC_out <= AC;

	process (alu_out,input,input_sel)
		begin 	
		 case input_sel is
			when '0' => mux <=alu_out;
			when '1' => mux <=input;
		end case;
	end process;
	
	process (reset_n, clk) is begin
	if (reset_n = '0') then
		 AC <= "0000";
		 MAR <= "000";
	elsif rising_edge(clk) then  
		if ac_load = '1' then 
			AC <= mux; 
		end if;
		if mar_load = '1' then 
			MAR <= mar_in;
		end if;
	end if;
	end process;
end sample;
	
			
			




	