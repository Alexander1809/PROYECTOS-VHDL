---- This file is part of the Circuitos Digitales II
---- by Alexander Bonilla H
---- File name: Or8Way_test.vhdl
--
---- Library and packages 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Or8Way_test is
end entity Or8Way_test;

architecture arch_test of Or8Way_test is
    component Or8Way
        port (
            A : in std_logic_vector(7 downto 0);
            S : out std_logic
        );
    end component;
	 
--signal declaration
	signal A_test : std_logic_vector(7 downto 0):= "00000000";
   signal S_test : std_logic;

begin


    -- Instanciar la compuerta Or8Way
    dut1 : Or8Way 
		port map (
        A => A_test,
        S => S_test
    );

Stimulus	: process
	begin  
  
		report "Start of the test of Or8Way"	  
		severity note;
		
		A_test <= "00000000";
		wait for 1 ns;
	   assert S_test = '0' 
			report "Failure para A = [00000000]"
		   severity failure;

		 A_test <= "00000001";
		 wait for 2 ns;
		 assert S_test = '1' 
			report "Failure para A = [00000001]"
			severity failure;

		 
		 A_test <= "11111111";
		 wait for 10 ns;
		 assert S_test = '1' 
			report "Failure para A = [11111111]"
		   severity failure;

		report "Test successful"
		severity note;
		wait;
		
	end process;
		
end architecture;
