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

-- DATE "09/05/2018 18:00:39"

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

ENTITY 	Mux2x1x6 IS
    PORT (
	e0 : IN std_logic_vector(5 DOWNTO 0);
	e1 : IN std_logic_vector(5 DOWNTO 0);
	c : IN std_logic;
	s : OUT std_logic_vector(5 DOWNTO 0)
	);
END Mux2x1x6;

-- Design Ports Information
-- s[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e0[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux2x1x6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_e0 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_e1 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_c : std_logic;
SIGNAL ww_s : std_logic_vector(5 DOWNTO 0);
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \e1[0]~input_o\ : std_logic;
SIGNAL \e0[0]~input_o\ : std_logic;
SIGNAL \s_s~0_combout\ : std_logic;
SIGNAL \e1[1]~input_o\ : std_logic;
SIGNAL \e0[1]~input_o\ : std_logic;
SIGNAL \s_s~1_combout\ : std_logic;
SIGNAL \e1[2]~input_o\ : std_logic;
SIGNAL \e0[2]~input_o\ : std_logic;
SIGNAL \s_s~2_combout\ : std_logic;
SIGNAL \e1[3]~input_o\ : std_logic;
SIGNAL \e0[3]~input_o\ : std_logic;
SIGNAL \s_s~3_combout\ : std_logic;
SIGNAL \e0[4]~input_o\ : std_logic;
SIGNAL \e1[4]~input_o\ : std_logic;
SIGNAL \s_s~4_combout\ : std_logic;
SIGNAL \e1[5]~input_o\ : std_logic;
SIGNAL \e0[5]~input_o\ : std_logic;
SIGNAL \s_s~5_combout\ : std_logic;

BEGIN

ww_e0 <= e0;
ww_e1 <= e1;
ww_c <= c;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y47_N16
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_s~0_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_s~1_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_s~2_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_s~3_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_s~4_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_s~5_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOIBUF_X0_Y48_N8
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\e1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1(0),
	o => \e1[0]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\e0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0(0),
	o => \e0[0]~input_o\);

-- Location: LCCOMB_X1_Y48_N24
\s_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_s~0_combout\ = (\c~input_o\ & (\e1[0]~input_o\)) # (!\c~input_o\ & ((\e0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c~input_o\,
	datab => \e1[0]~input_o\,
	datad => \e0[0]~input_o\,
	combout => \s_s~0_combout\);

-- Location: IOIBUF_X0_Y44_N15
\e1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1(1),
	o => \e1[1]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\e0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0(1),
	o => \e0[1]~input_o\);

-- Location: LCCOMB_X1_Y48_N10
\s_s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_s~1_combout\ = (\c~input_o\ & (\e1[1]~input_o\)) # (!\c~input_o\ & ((\e0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e1[1]~input_o\,
	datac => \e0[1]~input_o\,
	datad => \c~input_o\,
	combout => \s_s~1_combout\);

-- Location: IOIBUF_X0_Y48_N1
\e1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1(2),
	o => \e1[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\e0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0(2),
	o => \e0[2]~input_o\);

-- Location: LCCOMB_X1_Y48_N28
\s_s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_s~2_combout\ = (\c~input_o\ & (\e1[2]~input_o\)) # (!\c~input_o\ & ((\e0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1[2]~input_o\,
	datac => \e0[2]~input_o\,
	datad => \c~input_o\,
	combout => \s_s~2_combout\);

-- Location: IOIBUF_X0_Y47_N1
\e1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1(3),
	o => \e1[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\e0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0(3),
	o => \e0[3]~input_o\);

-- Location: LCCOMB_X1_Y48_N30
\s_s~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_s~3_combout\ = (\c~input_o\ & (\e1[3]~input_o\)) # (!\c~input_o\ & ((\e0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1[3]~input_o\,
	datac => \e0[3]~input_o\,
	datad => \c~input_o\,
	combout => \s_s~3_combout\);

-- Location: IOIBUF_X0_Y45_N22
\e0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0(4),
	o => \e0[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\e1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1(4),
	o => \e1[4]~input_o\);

-- Location: LCCOMB_X1_Y48_N8
\s_s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_s~4_combout\ = (\c~input_o\ & ((\e1[4]~input_o\))) # (!\c~input_o\ & (\e0[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e0[4]~input_o\,
	datac => \e1[4]~input_o\,
	datad => \c~input_o\,
	combout => \s_s~4_combout\);

-- Location: IOIBUF_X0_Y46_N15
\e1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e1(5),
	o => \e1[5]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\e0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e0(5),
	o => \e0[5]~input_o\);

-- Location: LCCOMB_X1_Y48_N26
\s_s~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_s~5_combout\ = (\c~input_o\ & (\e1[5]~input_o\)) # (!\c~input_o\ & ((\e0[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e1[5]~input_o\,
	datac => \e0[5]~input_o\,
	datad => \c~input_o\,
	combout => \s_s~5_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;
END structure;


