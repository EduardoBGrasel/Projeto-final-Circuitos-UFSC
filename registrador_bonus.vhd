library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador_bonus is
    port (
        S, E, clock: in std_logic;
        D: in std_logic_vector(3 downto 0);
        Q: out std_logic_vector(3 downto 0)
    );
end entity registrador_bonus;

architecture Behavioral of registrador_bonus is
 
begin
    process(S, E, clock, D)
    begin
			if S = '1' then
				Q <= "1000";
        elsif CLOCK'event and clock ='1' then
            if E = '1' then
                Q <= D;	
            end if;
        end if;
    end process;
    
end architecture Behavioral;