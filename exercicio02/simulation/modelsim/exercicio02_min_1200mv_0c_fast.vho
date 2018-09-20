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

-- DATE "09/20/2018 16:07:08"

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

ENTITY 	exercicio02 IS
    PORT (
	enter : IN std_logic;
	data : IN std_logic_vector(3 DOWNTO 0);
	s : OUT std_logic_vector(3 DOWNTO 0)
	);
END exercicio02;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \enter~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \enter~inputclkctrl_outclk\ : std_logic;
SIGNAL \s[0]$latch~combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \s[1]$latch~combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \s[2]$latch~combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \s[3]$latch~combout\ : std_logic;

BEGIN

ww_enter <= enter;
ww_data <= data;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\enter~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \enter~input_o\);

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X1_Y73_N23
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

-- Location: IOIBUF_X1_Y0_N15
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\enter~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: CLKCTRL_G2
\enter~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \enter~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \enter~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y1_N24
\s[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[0]$latch~combout\ = (GLOBAL(\enter~inputclkctrl_outclk\) & (\data[0]~input_o\)) # (!GLOBAL(\enter~inputclkctrl_outclk\) & ((\s[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[0]~input_o\,
	datac => \enter~inputclkctrl_outclk\,
	datad => \s[0]$latch~combout\,
	combout => \s[0]$latch~combout\);

-- Location: IOIBUF_X1_Y73_N15
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X2_Y72_N0
\s[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[1]$latch~combout\ = (GLOBAL(\enter~inputclkctrl_outclk\) & (\data[1]~input_o\)) # (!GLOBAL(\enter~inputclkctrl_outclk\) & ((\s[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[1]~input_o\,
	datac => \enter~inputclkctrl_outclk\,
	datad => \s[1]$latch~combout\,
	combout => \s[1]$latch~combout\);

-- Location: IOIBUF_X0_Y24_N15
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N16
\s[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[2]$latch~combout\ = (GLOBAL(\enter~inputclkctrl_outclk\) & (\data[2]~input_o\)) # (!GLOBAL(\enter~inputclkctrl_outclk\) & ((\s[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datac => \enter~inputclkctrl_outclk\,
	datad => \s[2]$latch~combout\,
	combout => \s[2]$latch~combout\);

-- Location: IOIBUF_X1_Y73_N8
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X1_Y72_N0
\s[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \s[3]$latch~combout\ = (GLOBAL(\enter~inputclkctrl_outclk\) & (\data[3]~input_o\)) # (!GLOBAL(\enter~inputclkctrl_outclk\) & ((\s[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[3]~input_o\,
	datac => \enter~inputclkctrl_outclk\,
	datad => \s[3]$latch~combout\,
	combout => \s[3]$latch~combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;
END structure;


