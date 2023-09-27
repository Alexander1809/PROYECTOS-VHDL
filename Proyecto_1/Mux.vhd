-- This file is part of the course "Circuitos Digitales II"
-- by CAlexande Bonilla H
-- File name: Mux.vhdl

-- Mux gate:
-- o = a, if sel = 0
--     b, in other case


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Mux is
	port(
		a	:	in 	std_logic;
		b	:	in		std_logic;
		sel:	in 	std_logic;
		o	:	out	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture arch of Mux is
signal x1, x2 : std_logic;

begin
	x1 <= ( not sel ) and a;
	x2 <= sel and b;
	o <= x1 or x2;
	
end architecture;	
