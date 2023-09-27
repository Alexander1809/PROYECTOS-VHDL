--By ALexander Bonilla H
--OR con compuertas NAND

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OrGate is
    Port ( 	
			x : in std_LOGIC;
			y : in  STD_LOGIC;
			f    : out STD_LOGIC
);

end OrGate;

architecture arch of OrGate is
    signal NAND_xy : STD_LOGIC;
    signal NAND_x  : STD_LOGIC;
    signal NAND_y  : STD_LOGIC;
begin
    NAND_x <= x nand x;
    NAND_y <= y nand y;
    NAND_xy <= NAND_x nand NAND_y;
    
    f <= NAND_xy;
end architecture;
