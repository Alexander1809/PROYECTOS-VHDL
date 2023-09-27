--Prueba Xor con compuertas NAND
-- librerias
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--definicion de entidades 

entity XorGate is
    Port ( 
			a	: in std_LOGIC; 
			b 	: in  STD_LOGIC;
         y	: out STD_LOGIC);
end XorGate;

-- definicion de la arquitectura

architecture arch of XorGate is
    signal n0 : STD_LOGIC;
	 signal n1 : STD_LOGIC;
	 signal n2  : STD_LOGIC;
	 signal n3 : STD_LOGIC;
	 
begin
   n0 <= a nand b;
	n1 <= a nand n0;
	n2 <= b nand n0;
	n3 <= n1 nand n2;
	y <= n3;
end Architecture;
