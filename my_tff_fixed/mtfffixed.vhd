LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY mtfffixed IS
PORT(	t: IN STD_LOGIC;
		ck: IN STD_LOGIC;
		q: BUFFER STD_LOGIC;
		pr: IN STD_LOGIC;
		clr: IN STD_LOGIC);
END mtfffixed;

ARCHITECTURE behavioral OF mtfffixed IS
SIGNAL sgn_q: STD_LOGIC;

BEGIN

	p: PROCESS(t,ck) BEGIN
		IF (ck'EVENT AND ck='1') THEN
			IF (t='1') THEN sgn_q<=NOT(q);
			ELSIF (t='0') THEN sgn_q<=q;
			END IF;
		END IF;
	END PROCESS p;
	
	k: PROCESS(pr,clr) BEGIN
		IF(pr='0') THEN sgn_q<='1';
		ELSIF(clr='0') THEN sgn_q<='0';
		END IF;
	END PROCESS k;
	
END behavioral;
