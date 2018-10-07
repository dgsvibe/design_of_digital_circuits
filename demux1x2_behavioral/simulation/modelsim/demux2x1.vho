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

-- DATE "10/06/2018 13:41:14"

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

ENTITY 	demux2x1 IS
    PORT (
	e : IN std_logic_vector(9 DOWNTO 0);
	sel : IN std_logic;
	s0 : OUT std_logic_vector(9 DOWNTO 0);
	s1 : OUT std_logic_vector(9 DOWNTO 0)
	);
END demux2x1;

-- Design Ports Information
-- s0[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[6]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[8]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[7]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[2]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[6]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[8]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demux2x1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_e : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_s0 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(9 DOWNTO 0);
SIGNAL \sel~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s0[0]~output_o\ : std_logic;
SIGNAL \s0[1]~output_o\ : std_logic;
SIGNAL \s0[2]~output_o\ : std_logic;
SIGNAL \s0[3]~output_o\ : std_logic;
SIGNAL \s0[4]~output_o\ : std_logic;
SIGNAL \s0[5]~output_o\ : std_logic;
SIGNAL \s0[6]~output_o\ : std_logic;
SIGNAL \s0[7]~output_o\ : std_logic;
SIGNAL \s0[8]~output_o\ : std_logic;
SIGNAL \s0[9]~output_o\ : std_logic;
SIGNAL \s1[0]~output_o\ : std_logic;
SIGNAL \s1[1]~output_o\ : std_logic;
SIGNAL \s1[2]~output_o\ : std_logic;
SIGNAL \s1[3]~output_o\ : std_logic;
SIGNAL \s1[4]~output_o\ : std_logic;
SIGNAL \s1[5]~output_o\ : std_logic;
SIGNAL \s1[6]~output_o\ : std_logic;
SIGNAL \s1[7]~output_o\ : std_logic;
SIGNAL \s1[8]~output_o\ : std_logic;
SIGNAL \s1[9]~output_o\ : std_logic;
SIGNAL \e[0]~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \sel~inputclkctrl_outclk\ : std_logic;
SIGNAL \s0[0]$latch~combout\ : std_logic;
SIGNAL \e[1]~input_o\ : std_logic;
SIGNAL \s0[1]$latch~combout\ : std_logic;
SIGNAL \e[2]~input_o\ : std_logic;
SIGNAL \s0[2]$latch~combout\ : std_logic;
SIGNAL \e[3]~input_o\ : std_logic;
SIGNAL \s0[3]$latch~combout\ : std_logic;
SIGNAL \e[4]~input_o\ : std_logic;
SIGNAL \s0[4]$latch~combout\ : std_logic;
SIGNAL \e[5]~input_o\ : std_logic;
SIGNAL \s0[5]$latch~combout\ : std_logic;
SIGNAL \e[6]~input_o\ : std_logic;
SIGNAL \s0[6]$latch~combout\ : std_logic;
SIGNAL \e[7]~input_o\ : std_logic;
SIGNAL \s0[7]$latch~combout\ : std_logic;
SIGNAL \e[8]~input_o\ : std_logic;
SIGNAL \s0[8]$latch~combout\ : std_logic;
SIGNAL \e[9]~input_o\ : std_logic;
SIGNAL \s0[9]$latch~combout\ : std_logic;
SIGNAL \s1[0]$latch~combout\ : std_logic;
SIGNAL \s1[1]$latch~combout\ : std_logic;
SIGNAL \s1[2]$latch~combout\ : std_logic;
SIGNAL \s1[3]$latch~combout\ : std_logic;
SIGNAL \s1[4]$latch~combout\ : std_logic;
SIGNAL \s1[5]$latch~combout\ : std_logic;
SIGNAL \s1[6]$latch~combout\ : std_logic;
SIGNAL \s1[7]$latch~combout\ : std_logic;
SIGNAL \s1[8]$latch~combout\ : std_logic;
SIGNAL \s1[9]$latch~combout\ : std_logic;

BEGIN

ww_e <= e;
ww_sel <= sel;
s0 <= ww_s0;
s1 <= ww_s1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sel~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sel~input_o\);

-- Location: IOOBUF_X0_Y44_N23
\s0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\s0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\s0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\s0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[3]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\s0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[4]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\s0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[5]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[5]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\s0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[6]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[6]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\s0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[7]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[7]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\s0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[8]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\s0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0[9]$latch~combout\,
	devoe => ww_devoe,
	o => \s0[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\s1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\s1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[1]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\s1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\s1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\s1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[4]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\s1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[5]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\s1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[6]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[6]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\s1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[7]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[7]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\s1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[8]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\s1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1[9]$latch~combout\,
	devoe => ww_devoe,
	o => \s1[9]~output_o\);

-- Location: IOIBUF_X0_Y44_N1
\e[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(0),
	o => \e[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: CLKCTRL_G2
\sel~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X1_Y44_N16
\s0[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[0]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[0]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[0]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[0]$latch~combout\,
	combout => \s0[0]$latch~combout\);

-- Location: IOIBUF_X0_Y68_N1
\e[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(1),
	o => \e[1]~input_o\);

-- Location: LCCOMB_X1_Y68_N16
\s0[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[1]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[1]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[1]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[1]$latch~combout\,
	combout => \s0[1]$latch~combout\);

-- Location: IOIBUF_X1_Y73_N1
\e[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(2),
	o => \e[2]~input_o\);

-- Location: LCCOMB_X1_Y72_N0
\s0[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[2]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[2]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e[2]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[2]$latch~combout\,
	combout => \s0[2]$latch~combout\);

-- Location: IOIBUF_X38_Y73_N8
\e[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(3),
	o => \e[3]~input_o\);

-- Location: LCCOMB_X38_Y72_N0
\s0[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[3]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[3]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[3]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[3]$latch~combout\,
	combout => \s0[3]$latch~combout\);

-- Location: IOIBUF_X5_Y73_N22
\e[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(4),
	o => \e[4]~input_o\);

-- Location: LCCOMB_X5_Y72_N0
\s0[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[4]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[4]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[4]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[4]$latch~combout\,
	combout => \s0[4]$latch~combout\);

-- Location: IOIBUF_X0_Y47_N1
\e[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(5),
	o => \e[5]~input_o\);

-- Location: LCCOMB_X1_Y47_N16
\s0[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[5]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[5]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[5]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[5]$latch~combout\,
	combout => \s0[5]$latch~combout\);

-- Location: IOIBUF_X115_Y65_N22
\e[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(6),
	o => \e[6]~input_o\);

-- Location: LCCOMB_X114_Y65_N16
\s0[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[6]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[6]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e[6]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[6]$latch~combout\,
	combout => \s0[6]$latch~combout\);

-- Location: IOIBUF_X0_Y62_N22
\e[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(7),
	o => \e[7]~input_o\);

-- Location: LCCOMB_X1_Y59_N16
\s0[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[7]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[7]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e[7]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[7]$latch~combout\,
	combout => \s0[7]$latch~combout\);

-- Location: IOIBUF_X0_Y65_N15
\e[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(8),
	o => \e[8]~input_o\);

-- Location: LCCOMB_X1_Y66_N16
\s0[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[8]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[8]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[8]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[8]$latch~combout\,
	combout => \s0[8]$latch~combout\);

-- Location: IOIBUF_X65_Y73_N22
\e[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e(9),
	o => \e[9]~input_o\);

-- Location: LCCOMB_X65_Y72_N0
\s0[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0[9]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & ((\s0[9]$latch~combout\))) # (!GLOBAL(\sel~inputclkctrl_outclk\) & (\e[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[9]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s0[9]$latch~combout\,
	combout => \s0[9]$latch~combout\);

-- Location: LCCOMB_X1_Y44_N2
\s1[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[0]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[0]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[0]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[0]$latch~combout\,
	combout => \s1[0]$latch~combout\);

-- Location: LCCOMB_X1_Y68_N2
\s1[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[1]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[1]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[1]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[1]$latch~combout\,
	combout => \s1[1]$latch~combout\);

-- Location: LCCOMB_X1_Y72_N18
\s1[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[2]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[2]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e[2]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[2]$latch~combout\,
	combout => \s1[2]$latch~combout\);

-- Location: LCCOMB_X38_Y72_N2
\s1[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[3]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[3]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[3]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[3]$latch~combout\,
	combout => \s1[3]$latch~combout\);

-- Location: LCCOMB_X5_Y72_N2
\s1[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[4]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[4]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[4]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[4]$latch~combout\,
	combout => \s1[4]$latch~combout\);

-- Location: LCCOMB_X1_Y47_N2
\s1[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[5]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[5]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[5]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[5]$latch~combout\,
	combout => \s1[5]$latch~combout\);

-- Location: LCCOMB_X114_Y65_N18
\s1[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[6]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[6]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e[6]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[6]$latch~combout\,
	combout => \s1[6]$latch~combout\);

-- Location: LCCOMB_X1_Y59_N2
\s1[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[7]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[7]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e[7]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[7]$latch~combout\,
	combout => \s1[7]$latch~combout\);

-- Location: LCCOMB_X1_Y66_N2
\s1[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[8]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[8]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[8]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[8]$latch~combout\,
	combout => \s1[8]$latch~combout\);

-- Location: LCCOMB_X65_Y72_N2
\s1[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1[9]$latch~combout\ = (GLOBAL(\sel~inputclkctrl_outclk\) & (\e[9]~input_o\)) # (!GLOBAL(\sel~inputclkctrl_outclk\) & ((\s1[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e[9]~input_o\,
	datac => \sel~inputclkctrl_outclk\,
	datad => \s1[9]$latch~combout\,
	combout => \s1[9]$latch~combout\);

ww_s0(0) <= \s0[0]~output_o\;

ww_s0(1) <= \s0[1]~output_o\;

ww_s0(2) <= \s0[2]~output_o\;

ww_s0(3) <= \s0[3]~output_o\;

ww_s0(4) <= \s0[4]~output_o\;

ww_s0(5) <= \s0[5]~output_o\;

ww_s0(6) <= \s0[6]~output_o\;

ww_s0(7) <= \s0[7]~output_o\;

ww_s0(8) <= \s0[8]~output_o\;

ww_s0(9) <= \s0[9]~output_o\;

ww_s1(0) <= \s1[0]~output_o\;

ww_s1(1) <= \s1[1]~output_o\;

ww_s1(2) <= \s1[2]~output_o\;

ww_s1(3) <= \s1[3]~output_o\;

ww_s1(4) <= \s1[4]~output_o\;

ww_s1(5) <= \s1[5]~output_o\;

ww_s1(6) <= \s1[6]~output_o\;

ww_s1(7) <= \s1[7]~output_o\;

ww_s1(8) <= \s1[8]~output_o\;

ww_s1(9) <= \s1[9]~output_o\;
END structure;


