library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logica is
    Port (
        round, bonus : in std_logic_vector(3 downto 0);
        nivel : in std_logic_vector(1 downto 0);
        points : out std_logic_vector(7 downto 0)
    );
end logica;

architecture Behavioral of logica is
    signal temp : std_logic_vector(7 downto 0);
begin
    process(round, bonus, nivel)
        variable L, b, c : integer;
    begin
        L := to_integer(unsigned(nivel));
        b := to_integer(unsigned(bonus));
        c := to_integer(unsigned(round));

        temp <= std_logic_vector(to_unsigned(32 * L + 4 * (b / 2) + c/4, 8));
        points <= temp;
    end process;
end Behavioral;