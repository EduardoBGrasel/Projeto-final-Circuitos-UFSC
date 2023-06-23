library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1_16bits is
  Port (
    E0, E1: in STD_LOGIC_VECTOR(15 downto 0);
    sel: in STD_LOGIC;
    saida: out STD_LOGIC_VECTOR(15 downto 0)
  );
end mux2x1_16bits;

architecture Behavioral of mux2x1_16bits is
begin
  process (E0, E1, sel)
  begin
    if (sel = '0') then
      saida <= E0;
    else
      saida <= E1;
    end if;
  end process;
end Behavioral;