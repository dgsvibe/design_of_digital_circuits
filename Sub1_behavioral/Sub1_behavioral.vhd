LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Sub1_behavioral IS
PORT(	e: IN STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000000000";
		s: OUT STD_LOGIC_VECTOR(9 DOWNTO 0):= "0000000000"
		);
END Sub1_behavioral;

ARCHITECTURE behavioral OF Sub1_behavioral IS
SIGNAL ss: STD_LOGIC_VECTOR(9 DOWNTO 0);
BEGIN
ss <= e(9 DOWNTO 0)-"0000000001";
s <= ss(9 DOWNTO 0);
END behavioral;