-- This file is part of the course "Circuitos Digitales II"
-- by Alexander Bonila H
-- File name: And16_test.vhdl

-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity And16_test is	
end entity;

-- Architecture (test process)
architecture And16_arch_test of And16_test is

	-- Component declaration
	component And16
		port(
			x	:	in 	std_logic_vector (15 downto 0);
			y	:	in		std_logic_vector (15 downto 0);
			f  :	out	std_logic_vector (15 downto 0)
		);
	end component;
	
-- signal declaration	
	signal x_test		: std_logic_vector (15 downto 0) := "0000000000000000";
	signal y_test		: std_logic_vector (15 downto 0) := "0000000000000000";
	signal f_test		: std_logic_vector (15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: And16
		port map (
			x 		=> x_test,
			y 		=> y_test,
			f		=> f_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of And16"	  
		severity note;

		x_test <= "0000000000000000";
		y_test <= "0000000000000000";
		wait for 2 ns;
		assert f_test = "0000000000000000"
		  report "Failure para x = [0000000000000000] y= [0000000000000000]"
		  severity failure;
		  
		x_test <= "1111111111111111";
		y_test <= "0000000000000000";
		wait for 5 ns;
		assert f_test = "0000000000000000"
		  report "Failure para x = [1111111111111111] y= [0000000000000000]"
		  severity failure;
		 
		x_test <= "0000000000000000";
		y_test <= "1111111111111111";
		wait for 4 ns;
		assert f_test = "0000000000000000"
		  report "Failure para x = [0000000000000000] y= [1111111111111111]"
		  severity failure;
		  
		x_test <= "1111111111111111";
		y_test <= "1111111111111111";
		wait for 1 ns;
		assert f_test = "1111111111111111"
		  report "Failure para x = [1111111111111111] y= [1111111111111111]"
		  severity failure;
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;
	
end architecture;
