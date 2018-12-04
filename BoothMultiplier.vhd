library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BoothMultiplier is 
	port (
		A, B : IN STD_LOGIC_VECTOR(7 downto 0);
		Saida: OUT STD_LOGIC_VECTOR(15 downto 0)
	);	
end BoothMultiplier;

architecture kraken of BoothMultiplier is	
	
	BEGIN
	
	process(A,B)
	
		variable C:		std_logic;
		variable S:		std_logic_vector(7  downto 0);
		variable inA:		std_logic_vector(7  downto 0);
		variable P:		std_logic_vector(15  downto 0);
		
		BEGIN
		
			inA := A;
			S := not(A) + 1;
			
			P := "00000000" & B;
			
			C := '0';
			
			for i in 7 downto 0 loop	
				if (P(0) = '0' and C = '1') then	
					C := P(0);
					P(15 downto 8) := P(15 downto 8) + inA;
					P(14 downto 0) := P(15 downto 1);
					
				elsif (P(0) = '1' and C = '0') then				
					C := P(0);
					P(15 downto 8) := P(15 downto 8) + S;
					P(14 downto 0) := P(15 downto 1);
					
				else
					P(14 downto 0) := P(15 downto 1);
				end if;
				
			End loop;
			
			Saida <= P;
			
		END process;
		
	
END kraken;