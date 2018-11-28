LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY Count_PC IS
	PORT ( 
	
	clock: IN STD_LOGIC ;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
	output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
	);
END Count_PC ;

ARCHITECTURE kraken OF Count_PC IS
BEGIN
	PROCESS (clock, input)
	BEGIN
		IF (clock'EVENT AND clock = '1') THEN
			output <= input;
		END IF;
	END PROCESS;
END kraken ;
