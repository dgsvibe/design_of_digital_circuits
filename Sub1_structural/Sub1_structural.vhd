LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Sub1_structural IS
	PORT(	E: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		S: BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0));
END Sub1_structural;

		--
	
ARCHITECTURE arch OF Sub1_structural IS
	CONSTANT bit_aux: STD_LOGIC_VECTOR(9 DOWNTO 0):= "1111111111";
	SIGNAL s_aux: STD_LOGIC_VECTOR(10 DOWNTO 0);
	COMPONENT sum10b
		PORT(	m, n: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
				s: BUFFER STD_LOGIC_VECTOR (10 DOWNTO 0));
	END COMPONENT;
	
	--
	BEGIN
	
	sum: sum10b PORT MAP (E(9 DOWNTO 0), bit_aux(9 DOWNTO 0),s_aux);
	
	S(0)<=s_aux(0);
	S(1)<=s_aux(1);
	S(2)<=s_aux(2);
	S(3)<=s_aux(3);
	S(4)<=s_aux(4);
	S(5)<=s_aux(5);
	S(6)<=s_aux(6);
	S(7)<=s_aux(7);
	S(8)<=s_aux(8);
	S(9)<=s_aux(9);
END arch;