library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity COMP_erro is
  port (
    E0, E1: in std_logic_vector(14 downto 0);
    diferente: out std_logic
  );
end entity COMP_erro;

architecture Behavioral of COMP_erro is
begin
  process (E0, E1)
  begin
    if E0 = E1 then
      diferente <= '0';
    else
      diferente <= '1';
    end if;
  end process;
end architecture Behavioral;