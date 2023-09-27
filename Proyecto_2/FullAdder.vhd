--Sumador Completo
--by Alexander Bonilla H
-- File Name: FullAdder.vhdl

-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

--Suma A + b + c ;

entity fullAdder is
	Port(
		a 	: in std_logic;
		b 	: in std_logic;
		c  : in std_logic;	
		sum 	: out std_logic;
		carry : out std_logic
	);
end entity;

architecture arch of FullAdder is
	signal sum1: std_logic;
	signal carry1: std_logic;
	signal carry2: std_logic;
	
	component halfAdder is
		Port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			sum 	: out std_logic;
			carry : out std_logic
		);
	end component;
begin
	halfAdder1: halfAdder
		Port map(
			a => a,
			b => b,
			sum => sum1,
			carry => carry1
		);
	halfAdder2: halfAdder
		Port map(
			a => sum1,
			b => c,
			sum => sum,
			carry => carry2
		);
	
		carry <= carry1 or carry2;
		

end architecture;
