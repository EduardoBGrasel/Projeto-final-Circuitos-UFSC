library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM2;

architecture arc_ROM2 of ROM2 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1000"	& "1111" & "1111" & "1011"	& "1111" & "0111" & "1111" & "1111" when address = "0000" else
--         4        des       des      B       des       7       des       des

          "1111"	& "1110" & "1111" & "1111"	& "1111" & "0000" & "1111" & "0010" when address = "0001" else
--          des        D       des       des      des       0       des       2

			 "1111"	& "1111" & "1000" & "1111"	& "1011" & "1111" & "1111" & "0001" when address = "0010" else
--         des       des      8       des       B      des       des        1

			 "0101"	& "1111" & "1111" & "0110"	& "1111" & "1111" & "0011" & "1111" when address = "0011" else
--         5           des       des       6       des           3      des       des

			 "1111"	& "1111" & "1010" & "1111"	& "1111" & "1001" & "1111" & "1000" when address = "0100" else
--         des        des       A        des      des       9       des      8

			 "1111"	& "0110" & "1000" & "1111"	& "0010" & "1111" & "1111" & "1111" when address = "0101" else
--          des        6      4      des      2       des       des       des

			 "1110"	& "1111" & "1111" & "1101"	& "1111" & "0111" & "1111" & "1111" when address = "0110" else
--         E        des       des      D      des           7       des        des			 
			 
			 "1111"	& "1111" & "1111" & "1111"	& "1001" & "0100" & "0111" & "1111" when address = "0111" else
--          des        des      des       des        9       4      7      des

			 "0000"	& "1111" & "1100" & "1111"	& "1111" & "1111" & "1111" & "1010" when address = "1000" else
--         0        des       C       des       des      des       des       A

			 "1111"	& "1101" & "1111" & "1111"	& "1111" & "0001" & "0011" & "1111" when address = "1001" else
--         des       D       des       des      des       1           3       des

			 "1111"	& "1111" & "1000" & "1111"	& "0110" & "1000" & "1111" & "1111" when address = "1010" else
--          des        des      8       des       6       4       des       des

			 "1111"	& "1001" & "1111" & "0000"	& "1111" & "1111" & "1111" & "1101" when address = "1011" else
--         des        9       des      0       des       des       des       E

			 "0101"	& "1111" & "1111" & "1111"	& "0111" & "1111" & "0010" & "1111" when address = "1100" else
--         5        des       des       des       7       des       2      des

			 "1111"	& "1111" & "1111" & "1100"	& "1111" & "0000" & "1111" & "0001" when address = "1101" else
--          des        des      des      C       des       0      des       1

			 "1111"	& "0011" & "1111" & "1111"	& "1011" & "1111" & "1001" & "1111" when address = "1110" else
--         des       3       des       des      B       des        9       des

			 "1100"	& "1111" & "1111" & "1111"	& "1101" & "1111" & "1111" & "1110";
--         c        des       des       des       D      des      des       E
			 
end arc_ROM2;