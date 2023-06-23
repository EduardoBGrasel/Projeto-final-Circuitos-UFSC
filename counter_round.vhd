library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter_round is
    port (
        R, E, clock: in std_logic;
        Q: out std_logic_vector(3 downto 0);
        tc: out std_logic
    );
end entity counter_round;

architecture Behavioral of counter_round is
    signal contador: std_logic_vector(3 downto 0);
begin
    process (clock, R, E)
    begin
        if R = '1' then
            contador <= "0000";
				tc <= '0';
        elsif clock'event and clock = '1' then
            if E = '1' then
                contador <= contador + 1;
                if contador > "1110" then
                    tc <= '1';
                    contador <= "1111";
                else
                    tc <= '0';
                end if;
            end if;
        end if;
    end process;
Q <= contador;
end architecture Behavioral;
    