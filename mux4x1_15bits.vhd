library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1_15bits is
  Port (
    E0, E1, E2, E3: in STD_LOGIC_VECTOR(14 downto 0);
    sel: in STD_LOGIC_VECTOR(1 downto 0);
    saida: out STD_LOGIC_VECTOR(14 downto 0)
  );
end mux4x1_15bits;

architecture Behavioral of mux4x1_15bits is
begin
  process (E0, E1, E2, E3, sel)
  begin
    case sel is
      when "00" =>
        saida <= E0;
      when "01" =>
        saida <= E1;
      when "10" =>
        saida <= E2;
      when others =>
        saida <= E3;
    end case;
  end process;
end Behavioral;