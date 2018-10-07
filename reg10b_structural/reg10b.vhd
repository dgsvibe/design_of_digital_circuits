LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY reg10b IS
PORT(	rst: IN STD_LOGIC;
		ck: IN STD_LOGIC;
		d: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		q: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END reg10b;

			
ARCHITECTURE comportamento OF reg10b IS
	COMPONENT dff_behavioral
		PORT(	rst, ck, d: IN STD_LOGIC;
				q: OUT STD_LOGIC);
	END COMPONENT;
	
	BEGIN
	
	ff9: dff_behavioral PORT MAP (rst, ck, d(9), q(9));
	ff8: dff_behavioral PORT MAP (rst, ck, d(8), q(8));
	ff7: dff_behavioral PORT MAP (rst, ck, d(7), q(7));
	ff6: dff_behavioral PORT MAP (rst, ck, d(6), q(6));
	ff5: dff_behavioral PORT MAP (rst, ck, d(5), q(5));
	ff4: dff_behavioral PORT MAP (rst, ck, d(4), q(4));
	ff3: dff_behavioral PORT MAP (rst, ck, d(3), q(3));
	ff2: dff_behavioral PORT MAP (rst, ck, d(2), q(2));
	ff1: dff_behavioral PORT MAP (rst, ck, d(1), q(1));
	ff0: dff_behavioral PORT MAP (rst, ck, d(0), q(0));

END comportamento;
	