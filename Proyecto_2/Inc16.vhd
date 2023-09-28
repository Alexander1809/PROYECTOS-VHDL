--	Incrementador
-- By Alexander Bonilla Higidio 
-- File Name: Inc16.vhdl

--Library and Packages
library IEEE;
use IEEE.std_logic_1164.all;

entity Inc16 is
  port (
    x : in std_logic_vector(15 downto 0);  -- Entrada de 16 bits
    y : out std_logic_vector(15 downto 0)  -- Salida de 16 bits
  );
end entity Inc16;

architecture Arch of Inc16 is
  component HalfAdder
    port (
      a, b : in std_logic;
      Sum, carry : out std_logic
    );
  end component;

  signal carryOut : std_logic_vector(16 downto 0);

begin
  CarryOut(0) <= '1';

  Gen : for i in 0 to 15 generate
    HA : HalfAdder port map (a => x(i), b => carryOut(i), Sum => y(i), carry => carryOut(i + 1));  -- Corrección 
  end generate Gen;

end Arch;
