-- This file is part of the course "Circuitos Digitales II"
-- by Alexander Bonilla H
-- File name: DMux.vhdl

--Library and Packages
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Entity (Interface) 
entity DMux is
  Port (
    a   : in  STD_LOGIC;
    Sel : in  STD_LOGIC;
    x1  : out STD_LOGIC;
    x2  : out STD_LOGIC
  );
end entity DMux;

architecture arch of DMux is
begin 
	 x1 <= a and (not Sel);
	 x2 <= a and Sel;
end architecture arch;