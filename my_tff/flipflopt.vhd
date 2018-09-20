LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY flipflopt IS
PORT(	t: IN STD_LOGIC;
		ck: IN STD_LOGIC := '0';
		q: BUFFER STD_LOGIC := '0';
		pr: IN STD_LOGIC := '1';
		clr: IN STD_LOGIC := '1');
END flipflopt;

ARCHITECTURE behavioral OF flipflopt IS
	--SIGNAL sq: STD_LOGIC;

BEGIN
	p: PROCESS(t,ck,pr,clr) BEGIN
		IF (ck'EVENT AND ck='1') THEN
			IF (t='1') THEN q<=NOT(q);
			ELSIF (t='0') THEN q<=q;
			END IF;
		IF(pr='0') THEN q<='1';
		IF(clr='1') THEN q<='0';
		END IF;
		END IF;
		END IF;
	END PROCESS p;
	
END behavioral;