-- This file is part of the course "Circuitos Digitales II"
-- by Alexander Bonila H
-- File name: Not16.vhdl

-- Not16 gate:
-- for i=0..15, f[i] = not x[i]


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Not16 is
	port(
		x	:	in 	std_logic_vector(15 downto 0);
		f	:	out	std_logic_vector(15 downto 0)
	);
end entity;

-- Architecture (Implementation)
architecture arch of Not16 is
begin
	f(0) <= not x(0);
	f(1) <= not x(1);
	f(2) <= not x(2);
	f(3) <= not x(3);
	f(4) <= not x(4);
	f(5) <= not x(5);
	f(6) <= not x(6);
	f(7) <= not x(7);
	f(8) <= not x(8);
	f(9) <= not x(9);
	f(10) <= not x(10);
	f(11) <= not x(11);
	f(12) <= not x(12);
	f(13) <= not x(13);
	f(14) <= not x(14);
	f(15) <= not x(15);
end architecture;	
