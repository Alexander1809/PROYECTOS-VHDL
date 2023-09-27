-- This file is part of the course "Circuitos Digitales II"
-- by Alexander Bonila H
-- File name: Or16.vhdl

-- Librerias y paquetes
-- Or 16
library IEEE;
use IEEE.std_logic_1164.all;

entity Or16 is 
   port(
	  x : in std_logic_vector(15 downto 0);
	  y : in std_logic_vector(15 downto 0);
	  f : out std_logic_vector(15 downto 0)
	  );
end Or16;
architecture Or16_arch of Or16 is
   component OrGate is 
   port(
	  x : in std_logic;
	  y : in std_logic;
	  f : out std_logic
	  );
  end component;
begin 
  Or15 : OrGate
    port map(
	   x => x(15),
		y =>y(15),
		f =>f(15)
		);
	Or14 : OrGate
    port map(
	   x => x(14),
		y =>y(14),
		f =>f(14)
		);
	Or13 : OrGate
    port map(
	   x => x(13),
		y => y(13),
		f => f(13)
		);
   Or12 : OrGate
    port map(
	   x => x(12),
		y => y(12),
		f => f(12)
		);
   Or11 : OrGate
    port map(
	   x => x(11),
		y => y(11),
		f => f(11)
		);
	Or10 : OrGate
    port map(
	   x => x(10),
		y => y(10),
		f => f(10)
		);
   Or9 : OrGate
    port map(
	   x => x(9),
		y => y(9),
		f => f(9)
		);
   Or8 : OrGate
    port map(
	   x => x(8),
		y => y(8),
		f => f(8)
		);
   Or7 : OrGate
    port map(
	   x => x(7),
		y => y(7),
		f => f(7)
		);
	Or6 : OrGate
    port map(
	   x => x(6),
		y => y(6),
		f => f(6)
		);
	Or5 : OrGate
    port map(
	   x => x(5),
		y => y(5),
		f => f(5)
		);
	Or4 : OrGate
    port map(
	   x => x(4),
		y => y(4),
		f => f(4)
		);
	Or3 : OrGate
    port map(
	   x => x(3),
		y => y(3),
		f => f(3)
		);
	Or2 : OrGate
    port map(
	   x => x(2),
		y => y(2),
		f => f(2)
		);
	Or1 : OrGate
    port map(
	   x => x(1),
		y => y(1),
		f => f(1)
		);
	Or0 : OrGate
    port map(
	   x => x(0),
		y => y(0),
		f => f(0)
		);
end Or16_arch;