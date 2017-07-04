library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity SEGconversor is
    Port ( InputBCD : in integer;
           Dmode : in STD_LOGIC_VECTOR(1 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end SEGconversor;

architecture Behavioral of SEGconversor is

begin


end Behavioral;
