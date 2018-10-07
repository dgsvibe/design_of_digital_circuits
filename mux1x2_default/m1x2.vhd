LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY m1x2 IS
PORT(	input: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		output_0: BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
		output_1: BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
		sel: IN STD_LOGIC);
END m1x2;

ARCHITECTURE behavioral OF m1x2 IS
--s_input: STD_LOGIC_VECTOR(9 DOWNTO 0);
--s_output_0: STD_LOGIC_VECTOR(9 DOWNTO 0);
--s_output_1: STD_LOGIC_VECTOR(9 DOWNTO 0);
BEGIN
	p: PROCESS(input, output_0, output_1, sel) BEGIN
			IF (sel = '0') THEN output_0 <= input;
			ELSIF (sel = '1') THEN output_1 <= input;
			END IF;
		END PROCESS p;
END behavioral;