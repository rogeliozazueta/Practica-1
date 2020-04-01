entity fadder_tb is
end fadder_tb;


architecture test of fadder_tb is
 signal a , b , cin :  bit;
 signal s , cout : bit;
 

component fulladder is 
 port (
	 
	     A : in bit;
		 B : in bit;
		 Cin: in bit;
		 Cout: out bit;
		 S : out bit);
end component fulladder;
  
begin 
 fa : fulladder port map(a =>a, b =>b,cin=>cin,s=>s,cout=>cout);
		
		
		process begin
		wait for 10 ns;	
		a<='0';
		b<='0';
		cin<='1';
		wait for 10 ns;	
		a<='1';
		b<='1';
		cin<='1';
		wait for 10 ns;	
		a<='0';
		b<='1';
		cin<='1';
		wait for 10 ns;	
		a<='0';
		b<='0';
		cin<='1';
		wait for 10 ns;	
		
		assert false report "reached end of test";
		wait;
		 end process;
		
end architecture;