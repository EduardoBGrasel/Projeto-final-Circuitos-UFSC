library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1_32bits is
  Port (
    E0, E1, E2, E3: in STD_LOGIC_VECTOR(31 downto 0);
    sel: in STD_LOGIC_VECTOR(1 downto 0);
    saida: out STD_LOGIC_VECTOR(31 downto 0)
  );
end mux4x1_32bits;

architecture Behavioral of mux4x1_32bits is
begin
  process (E0, E1, E2, E3, sel)
  begin
    
      if sel = "00" then
        saida <= E0;
      elsif sel = "01" then
        saida <= E1;
      elsif sel = "10" then
        saida <= E2;
      else
        saida <= E3;
    end if;
  end process;
end Behavioral;