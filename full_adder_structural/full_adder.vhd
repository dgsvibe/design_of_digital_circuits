LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY full_adder IS
PORT(	x, y, cin: IN STD_LOGIC;
		sum: OUT STD_LOGIC;
		cout: BUFFER STD_LOGIC);
END full_adder;

--

ARCHITECTURE arquitetura OF full_adder IS
SIGNAL s_cout, s_sum: STD_LOGIC;
BEGIN
s_sum <= ((NOT x) AND (NOT y) AND cin) OR ((NOT x) AND y AND (NOT cin)) OR (x AND (NOT y) AND (NOT cin)) OR (x AND y AND cin);
s_cout <= ((NOT x) AND y AND cin) OR (x AND (NOT y) AND cin) OR (x AND y AND (NOT cin)) OR (x AND y AND cin);
sum <= s_sum;
cout <= s_cout;
END arquitetura;