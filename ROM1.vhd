library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM1;

architecture arc_ROM1 of ROM1 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "0111"	& "1111" & "1111" & "1111"	& "0011" & "1111" & "1111" & "1000" when address = "0000" else
--         7        des       des      des       3       des       des       8

          "1111"	& "1111" & "1001" & "1111"	& "1111" & "0110" & "1011" & "1111" when address = "0001" else
--          des        des       9       des      des       6       B       des

			 "1111"	& "1111" & "1111" & "1110"	& "1111" & "1111" & "1000" & "0100" when address = "0010" else
--         des       des      des       E       des      des       8           4

			 "0110"	& "1010" & "0111" & "1111"	& "1111" & "1111" & "1111" & "1111" when address = "0011" else
--         6           10       7       des       des       des      des       des

			 "1111"	& "0101" & "1111" & "1100"	& "1111" & "1111" & "1111" & "0000" when address = "0100" else
--         des        5       des        C      des       des       des      0

			 "1111"	& "1111" & "1111" & "1101"	& "1111" & "0011" & "1111" & "1000" when address = "0101" else
--          des        des      des      D      des       3       des       des

			 "0001"	& "1111" & "1111" & "1111"	& "0101" & "1111" & "1001" & "1111" when address = "0110" else
--         1        des       des      des      5           des       9        des			 
			 
			 "1111"	& "1100" & "1111" & "1111"	& "1111" & "0111" & "1111" & "0011" when address = "0111" else
--          des        C      des       des        des       7      des      3

			 "1110"	& "1111" & "1111" & "0111"	& "1111" & "0000" & "1111" & "1111" when address = "1000" else
--         E        des       des       7       des      0       des       des

			 "1111"	& "1011" & "1111" & "1111"	& "1111" & "0001" & "0101" & "1111" when address = "1001" else
--         des       des       des       des      des       1       5       des

			 "1111"	& "1111" & "1010" & "1001"	& "1101" & "1111" & "1111" & "1111" when address = "1010" else
--          des        des      A       9       D       des       des       des

			 "1111"	& "0100" & "1111" & "1111"	& "1111" & "0010" & "1111" & "0110" when address = "1011" else
--         des        4       des      des       des       2       des       6

			 "1111"	& "0001" & "1111" & "1111"	& "1110" & "1111" & "1001" & "1111" when address = "1100" else
--         des        1       des       des       E       des       9      des

			 "0101"	& "1111" & "1111" & "1011"	& "1111" & "0000" & "1111" & "1111" when address = "1101" else
--          5        des      des      B       des       0      des       des

			 "1111"	& "1011" & "1111" & "1001"	& "1111" & "1111" & "1111" & "0111" when address = "1110" else
--         des       des       des       9      des       des        des       des

			 "1111"	& "0100" & "1111" & "0010"	& "1111" & "1111" & "1111" & "1010";
--         des        4       des       2       des      des      des       A
			 
end arc_ROM1;