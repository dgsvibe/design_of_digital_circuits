LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sum6b IS

	PORT(	m, n: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			s: BUFFER STD_LOGIC_VECTOR (6 DOWNTO 0));
	END sum6b;

--

ARCHITECTURE arch OF sum6b IS
	
	COMPONENT half_adder
		PORT(	x: IN STD_LOGIC;
				y: IN STD_LOGIC;
				sum: OUT STD_LOGIC;
				cout: BUFFER STD_LOGIC);
	END COMPONENT;

	--
	
	COMPONENT full_adder
		PORT(	x, y, cin: IN STD_LOGIC;
				sum: OUT STD_LOGIC;
				cout: BUFFER STD_LOGIC);
	END COMPONENT;
	
	SIGNAL s_sum: STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL s_cout: STD_LOGIC_VECTOR(5 DOWNTO 0);
	
	BEGIN
	ha_0: half_adder PORT MAP (m(0), n(0), s_sum(0), s_cout(0));
	fa_1: full_adder PORT MAP (m(1), n(1), s_cout(0), s_sum(1), s_cout(1));
	fa_2: full_adder PORT MAP (m(2), n(2), s_cout(1), s_sum(2), s_cout(2));
	fa_3: full_adder PORT MAP (m(3), n(3), s_cout(2), s_sum(3), s_cout(3));
	fa_4: full_adder PORT MAP (m(4), n(4), s_cout(3), s_sum(4), s_cout(4));
	fa_5: full_adder PORT MAP (m(5), n(5), s_cout(4), s_sum(5), s_cout(5));
	s_sum(6)<=s_cout(5);
	
	s(6 DOWNTO 0)<=s_sum;
END arch;