library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Extender4to16 is
    Port (
			A : IN STD_LOGIC_VECTOR (3 downto 0);
			B : OUT STD_LOGIC_VECTOR (15 downto 0));
end Extender4to16;

architecture kraken of Extender4to16 is

	begin
	
		B <= "000000000000" & A;
	
end kraken;