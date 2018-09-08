LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--

ENTITY Mux2x1x10 IS
	PORT(	e0: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			e1: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			c: IN STD_LOGIC;
			s: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END Mux2x1x10;

--

ARCHITECTURE arch OF Mux2x1x10 IS
	SIGNAL s_e0, s_e1, s_s: STD_LOGIC_VECTOR(9 DOWNTO 0);
	
	BEGIN
	s_e0(9 DOWNTO 0)<=e0(9 DOWNTO 0);
	s_e1(9 DOWNTO 0)<=e1(9 DOWNTO 0);
	s_s(9)<=((e0(9)) AND (NOT c)) OR ((e1(9)) AND (c));
	s_s(8)<=((e0(8)) AND (NOT c)) OR ((e1(8)) AND (c));
	s_s(7)<=((e0(7)) AND (NOT c)) OR ((e1(7)) AND (c));
	s_s(6)<=((e0(6)) AND (NOT c)) OR ((e1(6)) AND (c));
	s_s(5)<=((e0(5)) AND (NOT c)) OR ((e1(5)) AND (c));
	s_s(4)<=((e0(4)) AND (NOT c)) OR ((e1(4)) AND (c));
	s_s(3)<=((e0(3)) AND (NOT c)) OR ((e1(3)) AND (c));
	s_s(2)<=((e0(2)) AND (NOT c)) OR ((e1(2)) AND (c));
	s_s(1)<=((e0(1)) AND (NOT c)) OR ((e1(1)) AND (c));
	s_s(0)<=((e0(0)) AND (NOT c)) OR ((e1(0)) AND (c));
	
	s(9 DOWNTO 0)<=s_s(9 DOWNTO 0);
	
END arch;