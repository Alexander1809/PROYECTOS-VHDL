-- This file is part of the Circuitos Digitales II
-- by Alexander Bonilla H
-- File name: DMux4Way.vhdl


-- Library and packages 
library IEEE;
use ieee.std_logic_1164.all;

entity DMux4Way is
    port (
        w : in std_logic;
        sel0 : in std_logic;
        sel1 : in std_logic;
        f1 : out std_logic;
        f2 : out std_logic;
        f3 : out std_logic;
        f4 : out std_logic
    );
end entity;

architecture arch_DMux4Way of DMux4Way is
begin
    process (w, sel0, sel1)
    begin
        if (sel0 = '0' and sel1 = '0') then
            f1 <= w;
            f2 <= '0';
            f3 <= '0';
            f4 <= '0';
        elsif (sel0 = '0' and sel1 = '1') then
            f1 <= '0';
            f2 <= w;
            f3 <= '0';
            f4 <= '0';
        elsif (sel0 = '1' and sel0 = '0') then
            f1 <= '0';
            f2 <= '0';
            f3 <= w;
            f4 <= '0';
        elsif (sel1 = '1' and sel0 = '1') then
            f1 <= '0';
            f2 <= '0';
            f3 <= '0';
            f4 <= w;
        end if;
    end process;
end architecture;

	