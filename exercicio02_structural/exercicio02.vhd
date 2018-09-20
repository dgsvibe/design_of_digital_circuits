LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY exercicio02 IS
PORT( enter: IN STD_LOGIC;
		data: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		s: BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0));
END exercicio02;

ARCHITECTURE structural OF exercicio02 IS
COMPONENT pnot
	PORT(	a: IN STD_LOGIC;
			s: OUT STD_LOGIC);
END COMPONENT;

COMPONENT pnand
	PORT(	a, b: IN STD_LOGIC;
			s: OUT STD_LOGIC);
END COMPONENT;

SIGNAL snt10, sna10, sna20, sna30: STD_LOGIC;
SIGNAL snt11, sna11, sna21, sna31: STD_LOGIC;
SIGNAL snt12, sna12, sna22, sna32: STD_LOGIC;
SIGNAL snt13, sna13, sna23, sna33: STD_LOGIC;

BEGIN

nt10: pnot PORT MAP (data(0),snt10);
na10: pnand PORT MAP (enter, snt10, sna10);
na20: pnand PORT MAP (enter, data(0), sna20);
na30: pnand PORT MAP (sna10, s(0), sna30);
na40: pnand PORT MAP (sna20, sna30, s(0));

nt11: pnot PORT MAP(data(1),snt11);
na11: pnand PORT MAP(enter, snt11, sna11);
na21: pnand PORT MAP(enter, data(1), sna21);
na31: pnand PORT MAP(sna11, s(1), sna31);
na41: pnand PORT MAP(sna21, sna31, s(1));

nt12: pnot PORT MAP(data(2),snt12);
na12: pnand PORT MAP(enter,snt12,sna12);
na22: pnand PORT MAP(enter,data(2),sna22);
na32: pnand PORT MAP(sna12,s(2),sna32);
na42: pnand PORT MAP(sna22,sna32,s(2));

nt13: pnot PORT MAP(data(3),snt13);
na13: pnand PORT MAP(enter,snt13,sna13);
na23: pnand PORT MAP(enter,data(3),sna23);
na33: pnand PORT MAP(sna13,s(3),sna33);
na43: pnand PORT MAP(sna23,sna33,s(3));

END structural;