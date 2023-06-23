library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM3;

architecture arc_ROM3 of ROM3 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1010"	& "1111" & "1111" & "1111"	& "0000" & "1111" & "1111" & "0101" when address = "0000" else
--         a        des       des      des       0       des       des       5

          "1111"	& "1110" & "1111" & "1010"	& "1111" & "1111" & "1100" & "1111" when address = "0001" else
--          des        E       des       a      des       des       c       des

			 "1111"	& "1111" & "0000" & "1111"	& "1111" & "0001" & "1111" & "0010" when address = "0010" else
--         des       des      0       des       des      1       des           2

			 "0011"	& "1111" & "1111" & "1111"	& "0110" & "1111" & "1000" & "1111" when address = "0011" else
--         3           des       des       des       6       des      8       des

			 "1111"	& "0001" & "1111" & "1101"	& "1111" & "1111" & "1111" & "0111" when address = "0100" else
--         des        1       des        d      des       des       des        7

			 "1111"	& "1111" & "0101" & "0110"	& "0100" & "1111" & "1111" & "1111" when address = "0101" else
--          des        des      5      6      4       des       des       des

			 "0111"	& "1011" & "1111" & "1111"	& "1111" & "1111" & "1111" & "0010" when address = "0110" else
--         7           b       des      des      des      des     des          2			 
			  
			 "1111"	& "1111" & "1101" & "0110"	& "1111" & "1111" & "0001" & "1111" when address = "0111" else
--          des        des      d       6        des       des      1      des

			 "1011"	& "1111" & "1111" & "1111"	& "1001" & "1111" & "1010" & "1111" when address = "1000" else
--         b        des       des       des       9      des       a       des

			 "1111"	& "1111" & "0011" & "1111"	& "1111" & "1101" & "1111" & "0100" when address = "1001" else
--         des       des       3       des      des       e       des       4

			 "1111"	& "1000" & "1111" & "1010"	& "1111" & "1111" & "0000" & "1111" when address = "1010" else
--          des        8      des       a       des       des       0       des

			 "0011"	& "1111" & "0101" & "1111"	& "0001" & "1111" & "1111" & "1111" when address = "1011" else
--         3        des       5      des       1       des       des       des

			 "1111"	& "1001" & "1111" & "1111"	& "1111" & "0111" & "1111" & "0010" when address = "1100" else
--         des        9       des       des       des       7       des      2

			 "1111"	& "1111" & "1100" & "1111"	& "1111" & "1010" & "0110" & "1111" when address = "1101" else
--          des        des      c      des       des       a      6       des

			 "1000"	& "1111" & "1111" & "1111"	& "1101" & "1111" & "1111" & "0000" when address = "1110" else
--         8       des       des       des      E       des        des       0

			 "1111"	& "1011" & "1111" & "0100"	& "1111" & "1111" & "0010" & "1111";
--         des        b       des       4       des      des      2       des
			 
end arc_ROM3;