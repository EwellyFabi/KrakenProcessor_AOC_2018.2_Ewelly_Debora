LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;



Entity REGBANK16 is port
	(
		clock : in std_logic;
		writeReg: in std_logic; -- Sinal da unidade de controle
		dataRegA: out std_logic_vector (15 downto 0);
		dataRegB: out std_logic_vector (15 downto 0); 
		dataIn: in std_logic_vector (15 downto 0); -- Dado a ser escrito
		regDst: in std_logic_vector (3 downto 0);  -- Registrador de destino
		addressRegA: in std_logic_vector (3 downto 0);  -- Endereço do resgistrador 1
		addressRegB: in std_logic_vector (3 downto 0)   -- Endereço do resgistrador 2
	);
end REGBANK16;

Architecture kraken of REGBANK16 is
	
	type RegBank is array(0 to 15) of std_logic_vector (15 downto 0);
	signal Reg: RegBank;
	
begin	
		
	process (clock, addressRegA, addressRegB)
		VARIABLE addA : integer;
		VARIABLE addB : integer;
		CONSTANT zero :  STD_LOGIC_VECTOR (15 DOWNTO 0):= "0000000000000000";
		
		begin 
			addA := conv_integer(addressRegA);
			addB := conv_integer(addressRegB);
	      
			
			if(clock'EVENT) AND (clock = '1') then				
				if writeReg = '1' then 
					if addA = 0 then
						Reg(addA) <= zero;
					else
						Reg(addA) <= dataIn;
					end if;
				end if;				
		  end if;
		  
		if(addA = 0) then
			dataRegA <= zero;
		else 
			dataRegA <= Reg(addA);
		end if;
		
		if(addB = 0) then
			dataRegB <= zero;
		else 
			dataRegB <= Reg(addB);
		end if;
	end process;
	
end kraken;
