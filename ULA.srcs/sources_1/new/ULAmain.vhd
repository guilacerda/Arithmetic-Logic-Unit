library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity ULAmain is
    Port ( inputA, inputB : in STD_LOGIC_VECTOR (3 downto 0);
           clk_In100MHz : in STD_LOGIC;
           displayMode : in STD_LOGIC_VECTOR(2 downto 0);
           seg : out STD_LOGIC_VECTOR(6 downto 0);
           opSel : in STD_LOGIC_VECTOR (3 downto 0));
end ULAmain;

architecture Behavioral of ULAmain is

begin


end Behavioral;
