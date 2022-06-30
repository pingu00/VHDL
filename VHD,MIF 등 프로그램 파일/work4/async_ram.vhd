LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY async_ram IS
 PORT (	data_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
 	address: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
 	wr: IN STD_LOGIC;
 	data_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
	m1_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0); 
	m2_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END async_ram;

ARCHITECTURE rtl OF async_ram IS
 TYPE MEM IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(3 DOWNTO 0);
 SIGNAL ram_block: MEM;
BEGIN
 PROCESS (wr, data_in, address)
 BEGIN
   IF (wr = '1') THEN ram_block(to_integer(unsigned(address))) <= data_in;
  	   data_out <= (others => 'Z');
   else  data_out <= ram_block(to_integer(unsigned(address))); 
  END IF;
  m1_out <= ram_block(0);
  m2_out <= ram_block(1);
 END PROCESS;
END rtl;
