-- This file is part of the Circuitos Digitales II
-- by Alexander Bonilla H
-- File name: Not16_test.vhdl

-- Not16 gate:
-- for i=0..15, f[i] = not x[i]


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Not16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Not16_test is

	-- Component declaration
	component Not16
		port(
			x	:	in 	std_logic_vector(15 downto 0);
			f	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal x_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal f_test	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: Not16 
		port map (
			x => x_test,
			f => f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of NotGate"	  
		severity note;
		
		x_test <= "0000000000000000"; 
		wait for 1 ns;
		assert f_test = "1111111111111111"
		  report "Failure para x = [0000000000000000]"
		  severity failure;
		  
		x_test <= "1111111111111111"; 
		wait for 1 ns;
		assert f_test = "0000000000000000"
		  report "Failure para x = [1111111111111111]"
		  severity failure;
		 
		x_test <= "0100110000000011"; 
		wait for 1 ns;
		assert f_test = "1011001111111100"
		  report "Failure para x = [0100110000000011]"
		  severity failure;
		  
		x_test <= "1111100001011110"; 
		wait for 1 ns;
		assert f_test = "0000011110100001"
		  report "Failure para x = [1111100001011110]"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;