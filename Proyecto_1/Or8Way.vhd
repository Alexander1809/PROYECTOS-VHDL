--By Alexander Bonilla H
--File name: Or8Way.vhdl

--library and Package
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is 
    port(
        A : in std_logic_vector(7 downto 0); -- Entradas de 8 bits
        S : out std_logic
    );
end entity;

architecture arch of Or8Way is
    signal I : std_logic := '0';
    signal J : std_logic := '0';
    signal K : std_logic := '0';
    signal L : std_logic := '0';
    signal M : std_logic := '0';
    signal N : std_logic := '0';
begin
    I <= (not A(0)) nand (not A(1));
    J <= (not A(2)) nand (not A(3));
    K <= (not A(4)) nand (not A(5));
    L <= (not A(6)) nand (not A(7));
    M <= (not I) nand (not J);
    N <= (not K) nand (not L);
    S <= (not M) nand (not N);
end architecture;
