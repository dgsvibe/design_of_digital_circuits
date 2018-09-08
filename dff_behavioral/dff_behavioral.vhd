LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY dff_behavioral IS
	PORT(	rst, ck, d: IN STD_LOGIC;
			q: OUT STD_LOGIC);
END dff_behavioral;

		--
		
ARCHITECTURE comportamento OF dff_behavioral IS
BEGIN
	p: PROCESS(rst, ck)
	BEGIN
		IF (rst='0') THEN q<='0';
			ELSIF (ck'EVENT AND ck='1') THEN q<=d;
		END IF;
	END PROCESS;
END comportamento;