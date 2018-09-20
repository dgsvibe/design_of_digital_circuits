LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY exercicio02_modified IS
PORT(	enter: IN STD_LOGIC;
		data: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		s: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END exercicio02_modified;

ARCHITECTURE arch OF exercicio02_modified IS
BEGIN
	p: PROCESS(enter, data) BEGIN
		IF(enter'EVENT AND enter='1') THEN s(3 DOWNTO 0)<=data(3 DOWNTO 0); 
		END IF;
	END PROCESS p;
END arch;