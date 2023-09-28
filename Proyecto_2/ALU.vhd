--Aritmética de Lógica Booleana
--by Alexander Bonilla H
--File name: ALU.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port (
        x       : in STD_LOGIC_VECTOR(15 downto 0);
        y       : in STD_LOGIC_VECTOR(15 downto 0);
        zx      : in STD_LOGIC;
        nx      : in STD_LOGIC;
        zy      : in STD_LOGIC;
        ny      : in STD_LOGIC;
        f       : in STD_LOGIC;
        no      : in STD_LOGIC;
        sal     : out STD_LOGIC_VECTOR(15 downto 0);
        zr      : out STD_LOGIC;
        ng      : out STD_LOGIC
    );
end ALU;

architecture Arch of ALU is
    signal notX, comp2X, zeroX : STD_LOGIC_VECTOR(15 downto 0);
    signal notY, comp2Y, zeroY : STD_LOGIC_VECTOR(15 downto 0);
    signal x1, x2, y1, y2 : STD_LOGIC_VECTOR(15 downto 0);
    signal sumaX2Y2, andX2Y2 : STD_LOGIC_VECTOR(15 downto 0);
    signal out1, notOut1 : STD_LOGIC_VECTOR(15 downto 0);

    component HalfAdder is
        Port (
            a, b : in STD_LOGIC;
            sum, carry : out STD_LOGIC
        );
    end component;

    component Inc16 is
        Port (
            in_put : in STD_LOGIC_VECTOR(15 downto 0);
            out_put : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    component Add16 is
        Port (
            a, b : in STD_LOGIC_VECTOR(15 downto 0);
            sum : out STD_LOGIC_VECTOR(15 downto 0);
            carry : out STD_LOGIC
        );
    end component;

    component Not16 is
        Port (
            inp : in STD_LOGIC_VECTOR(15 downto 0);
            outp : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

begin
    Not16X: Not16 port map (inp => x, outp => notX);
    Inc16X: Inc16 port map (in_put => notX, out_put => comp2X);
    Add16XY: Add16 port map (a => x, b => comp2X, sum => zeroX, carry => open);

    Not16Y: Not16 port map (inp => y, outp => notY);
    Inc16Y: Inc16 port map (in_put => notY, out_put => comp2Y);
    Add16YX: Add16 port map (a => y, b => comp2Y, sum => zeroY, carry => open);

    Mux16X1: process(zx, nx, x, zeroX)
    begin
        if zx = '1' then
            x1 <= "0000000000000000";
        elsif nx = '1' then
            x1 <= notX;
        else
            x1 <= x;
        end if;
    end process Mux16X1;

    Mux16X2: process(zy, ny, y, zeroY)
    begin
        if zy = '1' then
            y1 <= "0000000000000000";
        elsif ny = '1' then
            y1 <= notY;
        else
            y1 <= y;
        end if;
    end process Mux16X2;

    FullAdderX: Add16 port map (a => x1, b => y1, sum => sumaX2Y2, carry => andX2Y2(0));
    FullAdderY: Add16 port map (a => notX, b => notY, sum => out1, carry => notOut1);

    Mux16Out1: process(f, out1, andX2Y2)
    begin
        if f = '1' then
            out1 <= sumaX2Y2;
        else
            out1 <= andX2Y2;
        end if;
    end process Mux16Out1;

Mux16Out2: process(no, notOut1)
begin
    if no = '1' then
        ng <= notOut1(15);
    else
        ng <= '0'; -- Otra asignación válida según los requerimientos
    end if;
end process Mux16Out2;

end Arch;
