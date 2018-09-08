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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/05/2018 09:18:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder IS
    PORT (
	x : IN std_logic;
	y : IN std_logic;
	cin : IN std_logic;
	sum : OUT std_logic;
	cout : BUFFER std_logic
	);
END full_adder;

-- Design Ports Information
-- sum	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_sum : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \sum~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \s_sum~0_combout\ : std_logic;
SIGNAL \s_cout~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
sum <= ww_sum;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y12_N23
\sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_sum~0_combout\,
	devoe => ww_devoe,
	o => \sum~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X0_Y12_N15
\y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\s_sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sum~0_combout\ = \y~input_o\ $ (\x~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \cin~input_o\,
	combout => \s_sum~0_combout\);

-- Location: LCCOMB_X1_Y13_N2
\s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cout~0_combout\ = (\y~input_o\ & ((\x~input_o\) # (\cin~input_o\))) # (!\y~input_o\ & (\x~input_o\ & \cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~input_o\,
	datab => \x~input_o\,
	datac => \cin~input_o\,
	combout => \s_cout~0_combout\);

ww_sum <= \sum~output_o\;

ww_cout <= \cout~output_o\;
END structure;


