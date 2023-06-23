library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador_user is
  Port (
    R, E, clock: in STD_LOGIC;
    D: in STD_LOGIC_VECTOR(14 downto 0);
    Q: out STD_LOGIC_VECTOR(14 downto 0)
  );
end registrador_user;

architecture Behavioral of registrador_user is
  signal reg: STD_LOGIC_VECTOR(14 downto 0);
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

  Q <= reg;
end Behavioral;