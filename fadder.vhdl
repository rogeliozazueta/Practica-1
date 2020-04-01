library IEEE;
use IEEE.STD_LOGIC_1664.ALL;



entity fulladder is 
	 port (
	 
	     A : in std_logic;
		 B : in std_logic;
		 Cin: in std_logic;
		 Cout: out std_logic;
		 S : out std_logic);
end fulladder;

architecture behave of fulladder is 
	signal C ,D ,E : STD_LOGIC;
begin
	 C <= A XOR B;
	 S <= C XOR Cin;
	 D <= C AND Cin;
	 E <= A AND B;
	 Cout <= D OR E;
end behave;