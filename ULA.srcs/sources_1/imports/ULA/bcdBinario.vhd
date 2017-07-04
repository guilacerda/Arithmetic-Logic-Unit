library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity SEGconversorBinario is
    Port ( InputBCD : in integer;
           Dmode : in STD_LOGIC_VECTOR(1 downto 0);
           seg : out STD_LOGIC_VECTOR (0 to 6));
end SEGconversorBinario;

architecture Behavioral of SEGconversorBinario is
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
    		end case;
    end case;
end process;
end Behavioral;
