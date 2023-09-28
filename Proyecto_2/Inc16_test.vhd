--Incrementador Inc16 
-- By Alexander Bonilla Higidio 
-- File Name: Inc16_test.vhdl


library IEEE;
use IEEE.std_logic_1164.all;

entity Inc16_test is
end Inc16_test;

architecture Inc16_test_arch of Inc16_test is
  component inc16
    port (
      x  : in std_logic_vector(15 downto 0);
      y	: out std_logic_vector(15 downto 0)
    );
  end component;

  signal x_test, y_test : std_logic_vector(15 downto 0);
begin
  Dut1: Inc16 port map (x => x_test, y => y_test);

  stimulus: process
  begin
  
  	   report "Start of the test of HalfAdder"	  
		severity note;
		
		x_test <= "0000000000000001";
			wait for 10 ns;
			assert y_test = "0000000000000010" 
			report "Error: y_test should be 0000000000000010" severity error;

		x_test <= "1111111111111110";
			wait for 10 ns;
			assert y_test = "1111111111111111" 
			report "Error: y_test should be 1111111111111111" severity error;

		x_test <= "1111111111111111";
			wait for 10 ns;
			assert y_test = "0000000000000000" 
			report "Error: y_test should be 0000000000000000" severity error;

			wait;
			
				report "Test successful (prueba completada)"
		severity note;
		wait;
		

    
    wait;
  end process stimulus;
end Inc16_test_arch;
