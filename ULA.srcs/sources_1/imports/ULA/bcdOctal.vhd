library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity SEGconversorOctal is
    Port ( InputBCD : in integer;
           Dmode : in STD_LOGIC_VECTOR(1 downto 0);
           seg : out STD_LOGIC_VECTOR (0 to 6));
end SEGconversorOctal;

architecture Behavioral of SEGconversorOctal is
begin
display: process(Dmode, InputBCD)
begin
    case Dmode is
    	when "11" =>
    		case InputBCD is
    			when 0 =>
    				seg <= "0000001";
    			when 1 =>
    				seg <= "1001111";
    			when 2 =>
    				seg <= "0010010";
    			when 3 =>
    				seg <= "0000110";
    			when 4 =>
    				seg <= "1001100";
    			when 5 =>
    				seg <= "0100100";
    			when 6 =>
    				seg <= "0100000";
    			when 7 =>
    				seg <= "0001111";
    		end case;
    end case;
end process;
end Behavioral;
