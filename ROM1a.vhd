library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM1a;

architecture arc_ROM1a of ROM1a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "000000110001000" when address = "0000" else --ROM0 possui os valores 6, 1 e D no round 0.
		    "000101001000000" when address = "0001" else
			 "100000100010000" when address = "0010" else
			 "000010011000000" when address = "0011" else
			 "001000000100001" when address = "0100" else
			 "010000100001000" when address = "0101" else
			 "000001000100010" when address = "0110" else
			 "001000010001000" when address = "0111" else
			 "100000010000001" when address = "1000" else
			 "000100000100010" when address = "1001" else
			 "010010100000000" when address = "1010" else
			 "000000001010100" when address = "1011" else
			 "100001000000010" when address = "1100" else
			 "000100000100001" when address = "1101" else
			 "000101010000000" when address = "1110" else
			 "000010000010100";
			 
end arc_ROM1a;