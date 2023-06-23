library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter_time is
    port (
        R, E, clock: in std_logic;
        Q: out std_logic_vector(3 downto 0);
        tc: out std_logic
    );
end entity counter_time;

architecture Behavioral of counter_time is
    signal counter: std_logic_vector(3 downto 0);
begin
    process (R, E, clock, counter)
    begin
		if R = '1' then -- Reset counter 1010 (binário)
             counter <= "1010";
				tc <= '0';
           elsif (clock'event AND clock = '1') then
               if (E = '1') then
                   counter <= counter - 1;
						if counter = "0000" then 
							tc <= '1'; 
						else
							 tc <= '0';
						end if;
               end if;
            end if;
    end process;

    Q <= counter;
end architecture Behavioral;