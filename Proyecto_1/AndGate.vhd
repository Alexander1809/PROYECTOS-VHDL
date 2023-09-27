--AndGate 
--by Alexander Bonilla H

--Librerias y paquetes
library IEEE;
use IEEE.std_logic_1164.all;

--Entidad
entity AndGate is
       port(
		 x : in std_logic;
		 y : in std_logic;
		 f : out std_logic
		 );


end entity;

--Arquitectura
architecture AndGate_arch of AndGate is


signal s : std_logic;
begin

       s <= x nand y;
		 f <= not s;

end architecture;

