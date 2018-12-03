LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY D_FLIPFLOP IS 
	PORT (
	
	clock, reset, enable: in STD_LOGIC;
	input: in STD_LOGIC_VECTOR(15 DOWNTO 0);
	output: buffer STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END D_FLIPFLOP;
	
ARCHITECTURE kraken OF D_FLIPFLOP IS 	
BEGIN
	PROCESS (clock, reset, enable, input)
		BEGIN
		
			IF(reset = '1') THEN
				output <= "0000000000000000";				
			ELSIF (clock = '1' AND clock'EVENT) THEN
				IF(enable = '1') THEN
					output <= input;
				END IF;
			END IF;
			
	END PROCESS;

END kraken;