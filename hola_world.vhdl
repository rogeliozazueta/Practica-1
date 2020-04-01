-- Hola mundo
use std.textio.all;  -- uso de la libreria

-- definiendo una entidad
entity hola_mundo is
end hola_mundo;

architecture behaviour of hola_mundo is 
begin
	
	process
	 variable l: line;
	
	begin
	write (l,String'("Hola mundo!"));
	writeline(output,l);
	wait;
	end process;
end behaviour;

