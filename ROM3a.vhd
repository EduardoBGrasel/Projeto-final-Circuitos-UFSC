library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM3a;

architecture arc_ROM3a of ROM3a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "000010000100001" when address = "0000" else --ROM0 possui os valores 6, 1 e D no round 0.
		    "101010000000000" when address = "0001" else
			 "000000000000111" when address = "0010" else
			 "000000101001000" when address = "0011" else
			 "010000010000010" when address = "0100" else
			 "000000001110000" when address = "0101" else
			 "000100010000100" when address = "0110" else
			 "010000001000010" when address = "0111" else
			 "000111000000000" when address = "1000" else
			 "100000000011000" when address = "1001" else
			 "000010100000001" when address = "1010" else
			 "000000000101010" when address = "1011" else
			 "000001010000100" when address = "1100" else
			 "001010001000000" when address = "1101" else
			 "100000100000001" when address = "1110" else
			 "000100000010100";
			 
end arc_ROM3a;