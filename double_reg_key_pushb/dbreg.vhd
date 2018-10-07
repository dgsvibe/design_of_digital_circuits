-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Sat Oct 06 20:16:14 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY dbreg IS 
	PORT
	(
		push_button :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		key :  IN  STD_LOGIC;
		sel_mux :  IN  STD_LOGIC;
		data9 :  IN  STD_LOGIC;
		data8 :  IN  STD_LOGIC;
		data7 :  IN  STD_LOGIC;
		data6 :  IN  STD_LOGIC;
		data5 :  IN  STD_LOGIC;
		data4 :  IN  STD_LOGIC;
		data3 :  IN  STD_LOGIC;
		data2 :  IN  STD_LOGIC;
		data1 :  IN  STD_LOGIC;
		data0 :  IN  STD_LOGIC;
		s9 :  OUT  STD_LOGIC;
		s8 :  OUT  STD_LOGIC;
		s7 :  OUT  STD_LOGIC;
		s6 :  OUT  STD_LOGIC;
		s5 :  OUT  STD_LOGIC;
		s4 :  OUT  STD_LOGIC;
		s3 :  OUT  STD_LOGIC;
		s2 :  OUT  STD_LOGIC;
		s1 :  OUT  STD_LOGIC;
		s0 :  OUT  STD_LOGIC
	);
END dbreg;

ARCHITECTURE bdf_type OF dbreg IS 

COMPONENT e2mod
	PORT(enter : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT demux2x1
	PORT(sel : IN STD_LOGIC;
		 e : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 s0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 s1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2x1x10
	PORT(c : IN STD_LOGIC;
		 e0 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 e1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg10bhlb
	PORT(rst : IN STD_LOGIC;
		 ck : IN STD_LOGIC;
		 e : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	data_bus :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(9 DOWNTO 0);


BEGIN 
s9 <= SYNTHESIZED_WIRE_14(9);
s8 <= SYNTHESIZED_WIRE_14(8);
s7 <= SYNTHESIZED_WIRE_14(7);
s6 <= SYNTHESIZED_WIRE_14(6);
s5 <= SYNTHESIZED_WIRE_14(5);
s4 <= SYNTHESIZED_WIRE_14(4);
s3 <= SYNTHESIZED_WIRE_14(3);
s2 <= SYNTHESIZED_WIRE_14(2);
s1 <= SYNTHESIZED_WIRE_14(1);
s0 <= SYNTHESIZED_WIRE_14(0);



b2v_inst : e2mod
PORT MAP(enter => push_button,
		 data => data_bus,
		 s => SYNTHESIZED_WIRE_0);


b2v_inst2 : demux2x1
PORT MAP(sel => key,
		 e => SYNTHESIZED_WIRE_0,
		 s0 => SYNTHESIZED_WIRE_3,
		 s1 => SYNTHESIZED_WIRE_4);


b2v_inst5 : mux2x1x10
PORT MAP(c => sel_mux,
		 e0 => SYNTHESIZED_WIRE_1,
		 e1 => SYNTHESIZED_WIRE_2,
		 s => SYNTHESIZED_WIRE_14);


b2v_inst6 : reg10bhlb
PORT MAP(rst => rst,
		 ck => push_button,
		 e => SYNTHESIZED_WIRE_3,
		 s => SYNTHESIZED_WIRE_1);


b2v_inst7 : reg10bhlb
PORT MAP(rst => rst,
		 ck => push_button,
		 e => SYNTHESIZED_WIRE_4,
		 s => SYNTHESIZED_WIRE_2);


data_bus(9) <= data9;
data_bus(8) <= data8;
data_bus(7) <= data7;
data_bus(6) <= data6;
data_bus(5) <= data5;
data_bus(4) <= data4;
data_bus(3) <= data3;
data_bus(2) <= data2;
data_bus(1) <= data1;
data_bus(0) <= data0;
END bdf_type;