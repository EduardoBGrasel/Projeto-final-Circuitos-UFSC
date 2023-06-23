library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity registrador_sel is
  Port (
    R, E, clock: in STD_LOGIC;
    D: in STD_LOGIC_VECTOR(3 downto 0);
    Q: out STD_LOGIC_VECTOR(3 downto 0)
  );
end registrador_sel;

architecture Behavioral of registrador_sel is
  signal reg: STD_LOGIC_VECTOR(3 downto 0);
begin
  process (R, E, clock, D)
  begin
    if rising_edge(clock) then
      if R = '1' then
        reg <= (others => '0'); -- Reset
      elsif E = '1' then
        reg <= D; -- Carregar dado
      end if;
    end if;
  end process;

  Q <= std_logic_vector(reg);
end Behavioral;