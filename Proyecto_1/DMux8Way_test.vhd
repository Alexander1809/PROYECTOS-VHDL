--By Alexander Bonilla H
--DMux8Way_test.vhdl

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DMux8Way_test is
end entity;

	architecture DMux8Way_test_arch of DMux8Way_test is
 
 component DMux8Way
   port(
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
end component;
	
	--signal declaration
	 signal w : std_logic;
    signal sel0 : std_logic;
    signal sel1 : std_logic;
	 signal sel2 : std_logic;
    signal f1 : std_logic;
    signal f2 : std_logic;
    signal f3: std_logic;
	 signal f4: std_logic;
	 signal f5 : std_logic;
    signal f6 : std_logic;
    signal f7: std_logic;
	 signal f8: std_logic;
begin
--Dut instatiation 
     dut1 :  DMux8Way
        port map(
            w => w,
            sel0 => sel0,
            sel1 => sel1,
				sel2 => sel2,
            f1 => f1,
            f2 => f2,
            f3 => f3,
				f4 => f4,
				f5 => f5,
            f6 => f6,
            f7 => f7,
				f8 => f8
        );
    --Stimulus generation 
    Stimulus  : process 
	 
    begin
	 	  report "Start of the test of DMux8_way_test"	  
		  severity note;
		
        -- Test case 1
        w <= '1';
        sel0 <= '0';
        sel1 <= '0';
		  sel2 <= '0';
        wait for 10 ns;
        assert f1 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		   w <= '1';
        sel0 <= '0';
        sel1 <= '0';
		  sel2 <= '1';
        wait for 10 ns;
        assert f2 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		  w <= '1';
        sel0 <= '0';
        sel1 <= '1';
		  sel2 <= '0';
        wait for 10 ns;
        assert f3 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		  w <= '1';
        sel0 <= '0';
        sel1 <= '1';
		  sel2 <= '1';
        wait for 10 ns;
        assert f4 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
        w <= '1';
        sel0 <= '1';
        sel1 <= '0';
		  sel2 <= '0';
        wait for 10 ns;
        assert f5 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		   w <= '1';
        sel0 <= '1';
        sel1 <= '0';
		  sel2 <= '1';
        wait for 10 ns;
        assert f6 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		  w <= '1';
        sel0 <= '1';
        sel1 <= '1';
		  sel2 <= '0';
        wait for 10 ns;
        assert f7 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		  w <= '1';
        sel0 <= '1';
        sel1 <= '1';
		  sel2 <= '1';
        wait for 10 ns;
        assert f8 = '1'; 
		  report "Test case 1 failed" 
		  severity error;
		  
		report "Test exitoso completado"
		severity note;
		wait;
		  
 end process;
	
end architecture;
