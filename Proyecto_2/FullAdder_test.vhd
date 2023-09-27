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
			c     :    in std_logic;
            sum	:    out    std_logic;
            carry :    out    std_logic
        );
    end component;
   
    -- Signal declaration
	 Signal a_test 	   : std_logic :='0';
	 signal b_test       : std_logic :='0';
	 signal c_test       : std_logic :='0';
	 signal sum_test     : std_logic;
    signal carry_test   : std_logic;
    
    begin
	 
	dut1	: HalfAdder 
		port map (
			a 		=> a_test,
			b 		=> b_test,
			c       => c_test,
			sum 	=> sum_test,
			carry	=> carry_test
		);
	
	
	 stimulus : process
    begin
	report "Start of the test of FullAdder"	  
	severity note;
	
        -- Test case 1
        a_test <= '0';
        b_test <= '0';
        c_test <= '0';
        wait for 10 ns;
        
        -- Test case 2
        a_test <= '1';
        b_test <= '0';
        c_test <= '0';
        wait for 1 ns;
        
        -- Test case 3
        a_test <= '0';
        b_test <= '1';
        c_test <= '0';
        wait for 1 ns;
        
        -- Test case 4
        a_test <= '1';
        b_test <= '1';
        c_test <= '0';
        wait for 3 ns;
        
        -- Test case 5
        a_test <= '0';
        b_test <= '0';
        c_test <= '1';
        wait for 10 ns;
	
	
		report "Test successful"
		severity note;
		wait;

	end process;
	
end architecture arch;
