-- This file is part of the Circuitos Digitales II
-- by Alexander Bonilla H
-- File name: DMux_test.vhdl

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity DMux_test is	
end entity;

-- Architecture (test process)
architecture arch_test of DMux_test is

-- Component declaration
	component DMux
		port(
		 a   : in  STD_LOGIC;
		 Sel : in  STD_LOGIC;
		 x1  : out STD_LOGIC;
		 x2  : out STD_LOGIC
		);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal x1_test 	: std_logic;
	signal x2_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: DMux 
		port map (
			a 		=> a_test,
			sel 	=> sel_test,	
			x1 	=> x1_test,
			x2		=> x2_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of DMux"	  
		severity note;
		
		a_test 	<= '0';
		sel_test <= '0';
		wait for 2 ns;
		assert x1_test = '0'
		  report "Failure for {a,sel} = {0,0}"
		  severity failure;
		  
		a_test 	<= '0';
		sel_test <= '0';
		wait for 2 ns;
		assert  x2_test	= '0'
		  report "Failure for {a,sel} = {0,0}"
		  severity failure;
		  
		a_test 	<= '0';
		sel_test <= '1';
		wait for 2 ns;
		assert x1_test = '0'
		  report "Failure for {a,b} = {1,0}"
		  severity failure;
		  
		 a_test 	<= '0';
		sel_test <= '1';
		wait for 2 ns;
		assert x2_test	= '0'
		  report "Failure for {a,b} = {1,0}"
		  severity failure;
		
		a_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert x1_test = '1'
		  report "Failure for {a,sel} = {0,1}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert x2_test	= '0'
		  report "Failure for {a,sel} = {0,1}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert x1_test = '0'
		 report "Failure for {a,sel} = {1,1}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert  x2_test	= '1'
		 report "Failure for {a,sel} = {1,1}"
		  severity failure;
		report "Test Exitoso"
		severity note;
		wait;
		
	end process;

end architecture;