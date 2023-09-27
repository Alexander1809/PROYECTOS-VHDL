--Semisumador 
-- By Alexander Bonilla Higidio 
-- File Name: HalfAdder.vhdl

--lIBRERÍAS Y PAQUETES
library ieee;
use ieee.std_logic_1164.all;

--ENTIDAD
entity halfAdder is 
	port(
	a,b: in std_logic;
	sum, carry: out std_logic
	
	);
end entity;


--ARQUITECTURA 

architecture arch of halfAdder is
begin
	 sum <= a xor b;
	 carry <= a and b;
	 	 
end architecture;

