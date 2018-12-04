Library ieee;
use ieee.std_logic_1164.all;

entity ULA_16 is 
	port (
		opcode : IN STD_LOGIC_VECTOR(2 downto 0);
		negate : IN STD_LOGIC;
		A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		Saida: OUT STD_LOGIC_VECTOR(15 downto 0)
	);	
end ULA_16;

Architecture kraken of ULA_16 is

	COMPONENT And_16 is
		Port(
			A, B : IN STD_LOGIC_VECTOR(15 downto 0);
			Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
			);
	End COMPONENT;

	COMPONENT Or_16 is
		Port(
			A, B : IN STD_LOGIC_VECTOR(15 downto 0);
			Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
			);
	End COMPONENT;

	COMPONENT Comparador is
		Port (
			A, B : STD_LOGIC_VECTOR (15 downto 0);
			Saida : out STD_LOGIC_VECTOR (15 downto 0)
		);
	End COMPONENT;

	COMPONENT Xor_16 is
		Port(
			A, B : IN STD_LOGIC_VECTOR(15 downto 0);
			Saida : OUT STD_LOGIC_VECTOR(15 downto 0)
			);
	End COMPONENT;

	COMPONENT LeftShift_2_16 is
		 Port (
				A : IN STD_LOGIC_VECTOR (15 downto 0);
				B : OUT STD_LOGIC_VECTOR (15 downto 0));
	end COMPONENT;

	COMPONENT RigthShift_2_16 is
		 Port (
				A : IN STD_LOGIC_VECTOR (15 downto 0);
				B : OUT STD_LOGIC_VECTOR (15 downto 0));
	end COMPONENT;

	COMPONENT Somador_16 is
		Port(
			A, B : IN STD_LOGIC_VECTOR(15 downto 0);
			negate : IN STD_LOGIC;
			cout : OUT STD_LOGIC;
			saida : OUT STD_LOGIC_VECTOR(15 downto 0)
			);
	End COMPONENT;
	
	COMPONENT BoothMultiplier is 
	port (
		A, B : IN STD_LOGIC_VECTOR(7 downto 0);
		Saida: OUT STD_LOGIC_VECTOR(15 downto 0)
	);	
	end COMPONENT;
	
	COMPONENT Multiplexer3_8 is
     Port ( 
			Seletor : in  STD_LOGIC_VECTOR (2 downto 0);
         A, B, C, D, E, F, G, H: in STD_LOGIC_VECTOR (15 downto 0);
         Saida   : out STD_LOGIC_VECTOR (15 downto 0));
	End COMPONENT;


	signal output0, output1, output2, output3, output4, output5, output6, output7, output: STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal cout : STD_LOGIC;
	signal multA, multB : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal outputand, outputor, outputxor : STD_LOGIC_VECTOR(15 DOWNTO 0);

	BEGIN

		-- 000, 001, 010
		-- And, Nand, Or, Nor, Xor, XNor		
		
		P1: And_16 PORT MAP(A, B, outputand);
		P2: Or_16 PORT MAP(A, B, outputor);
		P3: Xor_16 PORT MAP(A, B, outputxor);
	
	
		process(A, B) begin
			
			if(negate = '0') then
				-- op: 000 negate: 0
				-- And
				output0 <= outputand;
				
				-- op: 001 negate: 0
				-- Or
				output1 <= outputor;
				
				-- op: 010 negate: 0
				-- Xor
				output2 <= outputxor;
				
			else
				-- op: 000 negate: 1
				-- Nand
				output0 <= not outputand;
				
				-- op: 001 negate: 1
				-- Nor
				output1 <= not outputor;
				
				-- op: 010 negate: 1
				-- Xnor
				output2 <= not outputxor;				
			
			end if;
			
		end process;
		
		
		-- op: 011
		-- Soma (negate: 0) e Subtração (negate: 1)
		
		P4: Somador_16 PORT MAP(A, B, negate, cout, output3);
		
		-- op: 100
		-- NOT A
		P5: Comparador PORT MAP(A, B, output4);
		
		-- op: 101
		P6: LeftShift_2_16 port map(A, output5);
		
		-- op: 110
		P7: RigthShift_2_16 port map(A, output6);
		
		multA <= A(7 downto 0);
		multB <= B(7 downto 0);
		
		-- op: 111
		P8: BoothMultiplier PORT MAP(multA, multB, output7);
		
		P9: Multiplexer3_8 port map (opcode, output0, output1, output2, output3, output4, output5, output6, output7, output);
	
	Saida <= output;

END kraken;