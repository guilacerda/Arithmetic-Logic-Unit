library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock is
    Port ( clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clock;

architecture Behavioral of clock is
    signal clock_temp: STD_LOGIC:= '0';  
    constant t: integer:= 833333;  
begin
    frequence_divider:process(clk_in)
        variable contador: integer:= 0;
    begin
        if rising_edge(clk_in) then
            if(contador = t) then
                clock_temp <= not(clock_temp);
                contador:= 0;
            else
                contador:= contador + 1;
            end if;
        end if;
    end process;
    clk_out <= clock_temp;
end Behavioral;
