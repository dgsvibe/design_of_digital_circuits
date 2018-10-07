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

-- DATE "10/06/2018 10:28:25"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	m1x2 IS
    PORT (
	input : IN std_logic_vector(9 DOWNTO 0);
	output_0 : BUFFER std_logic_vector(9 DOWNTO 0);
	output_1 : BUFFER std_logic_vector(9 DOWNTO 0);
	sel : IN std_logic
	);
END m1x2;

-- Design Ports Information
-- output_0[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_0[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[8]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_1[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m1x2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_0 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL \sel~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_0[0]~output_o\ : std_logic;
SIGNAL \output_0[1]~output_o\ : std_logic;
SIGNAL \output_0[2]~output_o\ : std_logic;
SIGNAL \output_0[3]~output_o\ : std_logic;
SIGNAL \output_0[4]~output_o\ : std_logic;
SIGNAL \output_0[5]~output_o\ : std_logic;
SIGNAL \output_0[6]~output_o\ : std_logic;
SIGNAL \output_0[7]~output_o\ : std_logic;
SIGNAL \output_0[8]~output_o\ : std_logic;
SIGNAL \output_0[9]~output_o\ : std_logic;
SIGNAL \output_1[0]~output_o\ : std_logic;
SIGNAL \output_1[1]~output_o\ : std_logic;
SIGNAL \output_1[2]~output_o\ : std_logic;
SIGNAL \output_1[3]~output_o\ : std_logic;
SIGNAL \output_1[4]~output_o\ : std_logic;
SIGNAL \output_1[5]~output_o\ : std_logic;
SIGNAL \output_1[6]~output_o\ : std_logic;
SIGNAL \output_1[7]~output_o\ : std_logic;
SIGNAL \output_1[8]~output_o\ : std_logic;
SIGNAL \output_1[9]~output_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \sel~inputclkctrl_outclk\ : std_logic;
SIGNAL \output_0[0]$latch~combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \output_0[1]$latch~combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \output_0[2]$latch~combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \output_0[3]$latch~combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \output_0[4]$latch~combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \output_0[5]$latch~combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \output_0[6]$latch~combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \output_0[7]$latch~combout\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \output_0[8]$latch~combout\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \output_0[9]$latch~combout\ : std_logic;
SIGNAL \output_1[0]$latch~combout\ : std_logic;
SIGNAL \output_1[1]$latch~combout\ : std_logic;
SIGNAL \output_1[2]$latch~combout\ : std_logic;
SIGNAL \output_1[3]$latch~combout\ : std_logic;
SIGNAL \output_1[4]$latch~combout\ : std_logic;
SIGNAL \output_1[5]$latch~combout\ : std_logic;
SIGNAL \output_1[6]$latch~combout\ : std_logic;
SIGNAL \output_1[7]$latch~combout\ : std_logic;
SIGNAL \output_1[8]$latch~combout\ : std_logic;
SIGNAL \output_1[9]$latch~combout\ : std_logic;

BEGIN

ww_input <= input;
output_0 <= ww_output_0;
output_1 <= ww_output_1;
ww_sel <= sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sel~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sel~input_o\);

-- Location: IOOBUF_X26_Y0_N9
\output_0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\output_0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\output_0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\output_0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\output_0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[4]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\output_0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[5]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\output_0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[6]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\output_0[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[7]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\output_0[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[8]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\output_0[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_0[9]$latch~combout\,
	devoe => ww_devoe,
	o => \output_0[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\output_1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\output_1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\output_1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output_1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\output_1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[4]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\output_1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\output_1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\output_1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[7]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\output_1[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[8]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\output_1[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_1[9]$latch~combout\,
	devoe => ww_devoe,
	o => \output_1[9]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: CLKCTRL_G17
\sel~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sel~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sel~inputclkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N16
\output_0[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[0]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[0]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[0]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[0]$latch~combout\,
	combout => \output_0[0]$latch~combout\);

-- Location: IOIBUF_X16_Y0_N1
\input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X32_Y1_N24
\output_0[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[1]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\output_0[1]$latch~combout\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output_0[1]$latch~combout\,
	datac => \input[1]~input_o\,
	datad => \sel~inputclkctrl_outclk\,
	combout => \output_0[1]$latch~combout\);

-- Location: IOIBUF_X33_Y10_N1
\input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X32_Y11_N16
\output_0[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[2]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[2]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[2]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[2]$latch~combout\,
	combout => \output_0[2]$latch~combout\);

-- Location: IOIBUF_X24_Y0_N8
\input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N24
\output_0[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[3]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[3]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[3]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[3]$latch~combout\,
	combout => \output_0[3]$latch~combout\);

-- Location: IOIBUF_X22_Y31_N1
\input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X21_Y30_N0
\output_0[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[4]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[4]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[4]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[4]$latch~combout\,
	combout => \output_0[4]$latch~combout\);

-- Location: IOIBUF_X33_Y27_N8
\input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X32_Y27_N0
\output_0[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[5]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[5]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[5]$latch~combout\,
	combout => \output_0[5]$latch~combout\);

-- Location: IOIBUF_X33_Y22_N1
\input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X32_Y22_N16
\output_0[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[6]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[6]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[6]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[6]$latch~combout\,
	combout => \output_0[6]$latch~combout\);

-- Location: IOIBUF_X33_Y14_N8
\input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X32_Y14_N0
\output_0[7]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[7]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[7]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[7]$latch~combout\,
	combout => \output_0[7]$latch~combout\);

-- Location: IOIBUF_X31_Y0_N1
\input[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: LCCOMB_X30_Y1_N24
\output_0[8]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[8]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[8]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[8]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[8]$latch~combout\,
	combout => \output_0[8]$latch~combout\);

-- Location: IOIBUF_X22_Y0_N8
\input[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\output_0[9]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_0[9]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_0[9]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\input[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_0[9]$latch~combout\,
	combout => \output_0[9]$latch~combout\);

-- Location: LCCOMB_X27_Y1_N2
\output_1[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[0]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[0]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[0]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[0]$latch~combout\,
	combout => \output_1[0]$latch~combout\);

-- Location: LCCOMB_X32_Y1_N2
\output_1[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[1]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\input[1]~input_o\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\output_1[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \output_1[1]$latch~combout\,
	datac => \input[1]~input_o\,
	datad => \sel~inputclkctrl_outclk\,
	combout => \output_1[1]$latch~combout\);

-- Location: LCCOMB_X32_Y11_N2
\output_1[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[2]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[2]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[2]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[2]$latch~combout\,
	combout => \output_1[2]$latch~combout\);

-- Location: LCCOMB_X24_Y1_N10
\output_1[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[3]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[3]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[3]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[3]$latch~combout\,
	combout => \output_1[3]$latch~combout\);

-- Location: LCCOMB_X21_Y30_N2
\output_1[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[4]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[4]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[4]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[4]$latch~combout\,
	combout => \output_1[4]$latch~combout\);

-- Location: LCCOMB_X32_Y27_N10
\output_1[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[5]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[5]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[5]$latch~combout\,
	combout => \output_1[5]$latch~combout\);

-- Location: LCCOMB_X32_Y22_N2
\output_1[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[6]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[6]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[6]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[6]$latch~combout\,
	combout => \output_1[6]$latch~combout\);

-- Location: LCCOMB_X32_Y14_N10
\output_1[7]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[7]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[7]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[7]$latch~combout\,
	combout => \output_1[7]$latch~combout\);

-- Location: LCCOMB_X30_Y1_N10
\output_1[8]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[8]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[8]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[8]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[8]$latch~combout\,
	combout => \output_1[8]$latch~combout\);

-- Location: LCCOMB_X21_Y1_N10
\output_1[9]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output_1[9]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\input[9]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\output_1[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[9]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \output_1[9]$latch~combout\,
	combout => \output_1[9]$latch~combout\);

ww_output_0(0) <= \output_0[0]~output_o\;

ww_output_0(1) <= \output_0[1]~output_o\;

ww_output_0(2) <= \output_0[2]~output_o\;

ww_output_0(3) <= \output_0[3]~output_o\;

ww_output_0(4) <= \output_0[4]~output_o\;

ww_output_0(5) <= \output_0[5]~output_o\;

ww_output_0(6) <= \output_0[6]~output_o\;

ww_output_0(7) <= \output_0[7]~output_o\;

ww_output_0(8) <= \output_0[8]~output_o\;

ww_output_0(9) <= \output_0[9]~output_o\;

ww_output_1(0) <= \output_1[0]~output_o\;

ww_output_1(1) <= \output_1[1]~output_o\;

ww_output_1(2) <= \output_1[2]~output_o\;

ww_output_1(3) <= \output_1[3]~output_o\;

ww_output_1(4) <= \output_1[4]~output_o\;

ww_output_1(5) <= \output_1[5]~output_o\;

ww_output_1(6) <= \output_1[6]~output_o\;

ww_output_1(7) <= \output_1[7]~output_o\;

ww_output_1(8) <= \output_1[8]~output_o\;

ww_output_1(9) <= \output_1[9]~output_o\;
END structure;


