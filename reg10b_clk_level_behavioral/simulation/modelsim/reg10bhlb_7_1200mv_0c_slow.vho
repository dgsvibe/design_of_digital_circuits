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

-- DATE "10/06/2018 19:55:40"

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

ENTITY 	reg10bhlb IS
    PORT (
	rst : IN std_logic;
	ck : IN std_logic;
	e : IN std_logic_vector(9 DOWNTO 0);
	s : OUT std_logic_vector(9 DOWNTO 0)
	);
END reg10bhlb;

-- Design Ports Information
-- s[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg10bhlb IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_e : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(9 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \e[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \s[0]$latch~combout\ : std_logic;
SIGNAL \e[1]~input_o\ : std_logic;
SIGNAL \s[1]$latch~combout\ : std_logic;
SIGNAL \e[2]~input_o\ : std_logic;
SIGNAL \s[2]$latch~combout\ : std_logic;
SIGNAL \e[3]~input_o\ : std_logic;
SIGNAL \s[3]$latch~combout\ : std_logic;
SIGNAL \e[4]~input_o\ : std_logic;
SIGNAL \s[4]$latch~combout\ : std_logic;
SIGNAL \e[5]~input_o\ : std_logic;
SIGNAL \s[5]$latch~combout\ : std_logic;
SIGNAL \e[6]~input_o\ : std_logic;
SIGNAL \s[6]$latch~combout\ : std_logic;
SIGNAL \e[7]~input_o\ : std_logic;
SIGNAL \s[7]$latch~combout\ : std_logic;
SIGNAL \e[8]~input_o\ : std_logic;
SIGNAL \s[8]$latch~combout\ : std_logic;
SIGNAL \e[9]~input_o\ : std_logic;
SIGNAL \s[9]$latch~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_ck <= ck;
ww_e <= e;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);

-- Location: IOOBUF_X0_Y53_N2
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[0]$latch~combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[1]$latch~combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[2]$latch~combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[3]$latch~combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[4]$latch~combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[5]$latch~combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[6]$latch~combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[7]$latch~combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[8]$latch~combout\,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s[9]$latch~combout\,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOIBUF_X0_Y46_N15
\e[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(0),
	o => \e[0]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\ck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G2
\ck~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y45_N24
\s[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[0]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[0]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[0]~input_o\,
	datab => \s[0]$latch~combout\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[0]$latch~combout\);

-- Location: IOIBUF_X0_Y50_N15
\e[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(1),
	o => \e[1]~input_o\);

-- Location: LCCOMB_X1_Y45_N26
\s[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[1]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & ((\e[1]~input_o\))) # (!GLOBAL(\ck~inputclkctrl_outclk\) & (\s[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[1]$latch~combout\,
	datab => \e[1]~input_o\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[1]$latch~combout\);

-- Location: IOIBUF_X0_Y48_N1
\e[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(2),
	o => \e[2]~input_o\);

-- Location: LCCOMB_X1_Y45_N28
\s[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[2]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[2]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[2]~input_o\,
	datab => \s[2]$latch~combout\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[2]$latch~combout\);

-- Location: IOIBUF_X0_Y44_N22
\e[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(3),
	o => \e[3]~input_o\);

-- Location: LCCOMB_X1_Y45_N14
\s[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[3]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[3]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[3]~input_o\,
	datab => \rst~input_o\,
	datac => \s[3]$latch~combout\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[3]$latch~combout\);

-- Location: IOIBUF_X0_Y46_N22
\e[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(4),
	o => \e[4]~input_o\);

-- Location: LCCOMB_X1_Y45_N0
\s[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[4]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[4]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \e[4]~input_o\,
	datac => \s[4]$latch~combout\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[4]$latch~combout\);

-- Location: IOIBUF_X0_Y51_N15
\e[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(5),
	o => \e[5]~input_o\);

-- Location: LCCOMB_X1_Y45_N10
\s[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[5]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & ((\e[5]~input_o\))) # (!GLOBAL(\ck~inputclkctrl_outclk\) & (\s[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s[5]$latch~combout\,
	datab => \e[5]~input_o\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[5]$latch~combout\);

-- Location: IOIBUF_X0_Y42_N8
\e[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(6),
	o => \e[6]~input_o\);

-- Location: LCCOMB_X1_Y45_N20
\s[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[6]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[6]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[6]~input_o\,
	datab => \s[6]$latch~combout\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[6]$latch~combout\);

-- Location: IOIBUF_X0_Y44_N8
\e[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(7),
	o => \e[7]~input_o\);

-- Location: LCCOMB_X1_Y45_N30
\s[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[7]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[7]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[7]~input_o\,
	datab => \rst~input_o\,
	datac => \s[7]$latch~combout\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[7]$latch~combout\);

-- Location: IOIBUF_X0_Y49_N1
\e[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(8),
	o => \e[8]~input_o\);

-- Location: LCCOMB_X1_Y45_N16
\s[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[8]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[8]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[8]~input_o\,
	datab => \s[8]$latch~combout\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[8]$latch~combout\);

-- Location: IOIBUF_X0_Y43_N15
\e[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(9),
	o => \e[9]~input_o\);

-- Location: LCCOMB_X1_Y45_N18
\s[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[9]$latch~combout\ = (\rst~input_o\ & ((GLOBAL(\ck~inputclkctrl_outclk\) & (\e[9]~input_o\)) # (!GLOBAL(\ck~inputclkctrl_outclk\) & ((\s[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[9]~input_o\,
	datab => \s[9]$latch~combout\,
	datac => \rst~input_o\,
	datad => \ck~inputclkctrl_outclk\,
	combout => \s[9]$latch~combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(9) <= \s[9]~output_o\;
END structure;


