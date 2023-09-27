-- This file is part of the Circuitos Digitales II
-- By Alexander Bonilla H
-- File name: Mux16_test.vhdl

-- Mux16(a= ,b= ,sel= ,out= ) /* Selects between two 16-bit inputs */


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Mux16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Mux16_test is

	-- Component declaration
	component Mux16
		port(
			a 	: in std_logic_vector(15 downto 0);
			b 	: in std_logic_vector(15 downto 0);
			sel: in std_logic;	
			o 	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
			signal a_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal b_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal sel_test : std_logic := '0';	
			signal o_test 	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: Mux16 
		port map (
			a => a_test,
			b => b_test,
			sel => sel_test,
			o => o_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of Mux16"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		sel_test <= '0';
		wait for 1 ns;
		assert o_test = "0000000000000000"
		  report "Failure for a=0000000000000000, b=1111111111111111, sel=0"
		  severity failure;
		  
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		sel_test <= '1';
		wait for 1 ns;
		assert o_test = "1111111111111111"
		  report "Failure for a=0000000000000000, b=1111111111111111, sel=1"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;