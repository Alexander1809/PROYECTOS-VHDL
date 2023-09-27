--By Alexander Bonilla H
--DMux8Way.vhdl

library ieee;
use ieee.std_logic_1164.all;

entity DMux8Way is
    port (
        w : in std_logic;
        sel0 : in std_logic;
        sel1 : in std_logic;
		  sel2 : in std_logic;
        f1 : out std_logic;
        f2 : out std_logic;
        f3 : out std_logic;
        f4 : out std_logic;
		  f5 : out std_logic;
        f6 : out std_logic;
        f7 : out std_logic;
        f8 : out std_logic
		  
    );
end entity;

architecture arch_DMux8Way of DMux8Way is
begin
    process (w, sel0, sel1,sel2)
    begin
        if (sel0 = '0' and sel1 = '0' and sel2 = '0') then
            f1 <= w;
            f2 <= '0';
            f3 <= '0';
            f4 <= '0';
				f5 <= '0';
				f6 <= '0';
				f7 <= '0';
				f8 <= '0';
        elsif (sel0 = '0' and sel1 = '0' and sel2 = '1') then
            f1 <= '0';
            f2 <= w;
            f3 <= '0';
            f4 <= '0';
		      f5 <= '0';
				f6 <= '0';
				f7 <= '0';
				f8 <= '0';
        elsif (sel0 = '0' and sel0 = '1' and sel2 = '0') then
            f1 <= '0';
            f2 <= '0';
            f3 <= w;
            f4 <= '0';
			   f5 <= '0';
				f6 <= '0';
				f7 <= '0';
				f8 <= '0';
        elsif (sel1 = '1' and sel0 = '1' and sel2 = '1') then
            f1 <= '0';
            f2 <= '0';
            f3 <= '0';
            f4 <= w;
				f5 <= '0';
				f6 <= '0';
				f7 <= '0';
				f8 <= '0';
	     elsif (sel0 = '1' and sel1 = '0' and sel2 = '0') then
            f1 <= '0';
            f2 <= '0';
            f3 <= '0';
            f4 <= '0';
				f5 <=  w;
				f6 <= '0';
				f7 <= '0';
				f8 <= '0';
        elsif (sel0 = '1' and sel1 = '0' and sel2 = '1') then
            f1 <= '0';
            f2 <= '0';
            f3 <= '0';
            f4 <= '0';
		      f5 <= '0';
				f6 <=   w;
				f7 <= '0';
				f8 <= '0';
        elsif (sel0 = '1' and sel0 = '1' and sel2 = '0') then
            f1 <= '0';
            f2 <= '0';
            f3 <= '0';
            f4 <= '0';
			   f5 <= '0';
				f6 <= '0';
				f7 <=   w;
				f8 <= '0';
        elsif (sel1 = '1' and sel0 = '1' and sel2 = '1') then
            f1 <= '0';
            f2 <= '0';
            f3 <= '0';
            f4 <= '0';
				f5 <= '0';
				f6 <= '0';
				f7 <= '0';
				f8 <=   w;
        end if;
    end process;
end architecture;
