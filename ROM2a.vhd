library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM2a;

architecture arc_ROM2a of ROM2a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "000100010010000" when address = "0000" else --ROM0 possui os valores 6, 1 e D no round 0.
		    "100000000000101" when address = "0001" else
			 "000100100000010" when address = "0010" else
			 "000000001101000" when address = "0011" else
			 "000011100000000" when address = "0100" else
			 "000000001010100" when address = "0101" else
			 "110000010000000" when address = "0110" else
			 "000001010010000" when address = "0111" else
			 "001010000000001" when address = "1000" else
			 "010000000001010" when address = "1001" else
			 "000000101010000" when address = "1010" else
			 "100001000000001" when address = "1011" else
			 "000000010100100" when address = "1100" else
			 "001000000000011" when address = "1101" else
			 "000101000001000" when address = "1110" else
			 "111000000000000";
			 
end arc_ROM2a;