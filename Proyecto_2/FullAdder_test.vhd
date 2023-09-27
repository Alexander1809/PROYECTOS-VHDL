--By Alexander Bonilla H
--File name: FullAdder_test.vhdl

-- Library and packages
library    IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity FullAdder_test is    
port(
a,b,c : in std_logic;
sum,carry : out std_logic
);
end entity;

-- Architecture (test process)
architecture arch of FullAdder_test is

    -- Component declaration
    component HalfAdder
        port(
            a     :    in     std_logic;
            b     :    in     std_logic;
            sum	:    out    std_logic;
            carry :    out    std_logic
        );
    end component;
   
    -- Signal declaration
    signal sum1     : std_logic ;
    signal carry1   : std_logic ;
    signal carry2   : std_logic;
   
    begin
   
    halfAdder1: HalfAdder
      port map(
        a=> a,
         b=> b,
         sum=> sum1,
         carry=> carry1
      );
      halfAdder2: HalfAdder
      port map(
        a=> sum1,
         b=> c,
         sum=> sum,
         carry=> carry2
      );
      carry <= carry1 or carry2;
      end architecture;
