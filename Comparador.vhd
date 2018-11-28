library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador is
    Port (
			A, B : STD_LOGIC_VECTOR (15 downto 0);
			Saida : out STD_LOGIC_VECTOR (15 downto 0)
	);
end Comparador;

architecture kraken of Comparador is

begin

	Saida <= "1111111111111111" when  (A < B)   else "0000000000000000";

end kraken;