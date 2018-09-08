LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY half_adder IS
PORT(	x: IN STD_LOGIC;
		y: IN STD_LOGIC;
		sum: OUT STD_LOGIC;
		cout: BUFFER STD_LOGIC);
END half_adder;
ARCHITECTURE estrutura OF half_adder IS
BEGIN
sum <= x xor y;
cout <= x and y;
END estrutura;