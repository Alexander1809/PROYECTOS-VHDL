-- This file is part of the course "Circuitos Digitales II"
-- by Alexander Bonila H
-- File name: And16.vhdl

-- Librerias y paquetes
-- and 16
library IEEE;
use IEEE.std_logic_1164.all;

entity And16 is 
   port(
	  x : in std_logic_vector(15 downto 0);
	  y : in std_logic_vector(15 downto 0);
	  f : out std_logic_vector(15 downto 0)
	  );
end And16;
architecture And16_arch of And16 is
   component AndGate is 
   port(
	  x : in std_logic;
	  y : in std_logic;
	  f : out std_logic
	  );
  end component;
begin 
  And15 : AndGate
    port map(
	   x => x(15),
		y =>y(15),
		f =>f(15)
		);
	And14 : AndGate
    port map(
	   x => x(14),
		y =>y(14),
		f =>f(14)
		);
	And13 : AndGate
    port map(
	   x => x(13),
		y => y(13),
		f => f(13)
		);
   And12 : AndGate
    port map(
	   x => x(12),
		y => y(12),
		f => f(12)
		);
   And11 : AndGate
    port map(
	   x => x(11),
		y => y(11),
		f => f(11)
		);
	And10 : AndGate
    port map(
	   x => x(10),
		y => y(10),
		f => f(10)
		);
   And9 : AndGate
    port map(
	   x => x(9),
		y => y(9),
		f => f(9)
		);
   And8 : AndGate
    port map(
	   x => x(8),
		y => y(8),
		f => f(8)
		);
   And7 : AndGate
    port map(
	   x => x(7),
		y => y(7),
		f => f(7)
		);
	And6 : AndGate
    port map(
	   x => x(6),
		y => y(6),
		f => f(6)
		);
	And5 : AndGate
    port map(
	   x => x(5),
		y => y(5),
		f => f(5)
		);
	And4 : AndGate
    port map(
	   x => x(4),
		y => y(4),
		f => f(4)
		);
	And3 : AndGate
    port map(
	   x => x(3),
		y => y(3),
		f => f(3)
		);
	And2 : AndGate
    port map(
	   x => x(2),
		y => y(2),
		f => f(2)
		);
	And1 : AndGate
    port map(
	   x => x(1),
		y => y(1),
		f => f(1)
		);
		And0 : AndGate
    port map(
	   x => x(0),
		y => y(0),
		f => f(0)
		);
end And16_arch;