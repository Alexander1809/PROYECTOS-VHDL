--Sumador de 16 bits
--by Alexander Bonilla H
-- File Name: Add16.vhdl

-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

entity Add16 is
	Port(
		a 	: in std_logic_vector(15 downto 0);
		b 	: in std_logic_vector(15 downto 0);
		sum : out std_logic_vector(15 downto 0);
		carry : out std_logic
	);
end entity;

architecture arch of Add16 is
	signal carry1	: std_logic;
	signal carry2	: std_logic;
	signal carry3	: std_logic;
	signal carry4	: std_logic;
	signal carry5	: std_logic;
	signal carry6	: std_logic;
	signal carry7	: std_logic;
	signal carry8	: std_logic;
	signal carry9	: std_logic;
	signal carry10	: std_logic;
	signal carry11	: std_logic;
	signal carry12	: std_logic;
	signal carry13	: std_logic;
	signal carry14	: std_logic;
	signal carry15	: std_logic;

	component FullAdder is
		Port(
			a	:	in 	std_logic;
			b	:	in	std_logic;
			c	:	in	std_logic;	
			sum : out std_logic;
			carry : out std_logic
		);
	end component;

begin
	FullAdder1 : FullAdder
		Port map(
			a => a(0),
			b => b(0),
			c => '0',
			sum => sum(0),
			carry => carry1
		);

	FullAdder2 : FullAdder
		Port map(
			a => a(1),
			b => b(1),
			c => carry1,
			sum => sum(1),
			carry => carry2
		);

	FullAdder3 : FullAdder
		Port map(
			a => a(2),
			b => b(2),
			c => carry2,
			sum => sum(2),
			carry => carry3
		);

	FullAdder4 : FullAdder
		Port map(
			a => a(3),
			b => b(3),
			c => carry3,
			sum => sum(3),
			carry => carry4
		);
		
	FullAdder5 : FullAdder
		Port map(
			a => a(4),
			b => b(4),
			c => carry4,
			sum => sum(4),
			carry => carry5
		);
		
	FullAdder6 : FullAdder
		Port map(
			a => a(5),
			b => b(5),
			c => carry5,
			sum => sum(5),
			carry => carry6
		);
		
	FullAdder7 : FullAdder
		Port map(
			a => a(6),
			b => b(6),
			c => carry6,
			sum => sum(6),
			carry => carry7
		);
	FullAdder8 : FullAdder
		Port map(
			a => a(7),
			b => b(7),
			c => carry7,
			sum => sum(7),
			carry => carry8
		);

	FullAdder9 : FullAdder
		Port map(
			a => a(8),
			b => b(8),
			c => carry8,
			sum => sum(8),
			carry => carry9
		);
		
	FullAdder10 : FullAdder
		Port map(
			a => a(9),
			b => b(9),
			c => carry9,
			sum => sum(9),
			carry => carry10
		);		
		
	FullAdder11 : FullAdder
		Port map(
			a => a(10),
			b => b(10),
			c => carry10,
			sum => sum(10),
			carry => carry11
		);
		
		
	FullAdder12 : FullAdder
		Port map(
			a => a(11),
			b => b(11),
			c => carry11,
			sum => sum(11),
			carry => carry12
		);
		
	FullAdder13 : FullAdder
		Port map(
			a => a(12),
			b => b(12),
			c => carry12,
			sum => sum(12),
			carry => carry13
		);
		
	FullAdder14 : FullAdder
		Port map(
			a => a(13),
			b => b(13),
			c => carry13,
			sum => sum(13),
			carry => carry14
		);
		
	FullAdder15 : FullAdder
		Port map(
			a => a(14),
			b => b(14),
			c => carry14,
			sum => sum(14),
			carry => carry15
		);
		
	FullAdder16 : FullAdder
		Port map(
			a => a(15),
			b => b(15),
			c => carry15,
			sum => sum(15)
		);

end architecture;  
