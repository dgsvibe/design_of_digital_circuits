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

-- DATE "09/05/2018 12:06:03"

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

ENTITY 	sum10b IS
    PORT (
	m : IN std_logic_vector(9 DOWNTO 0);
	n : IN std_logic_vector(9 DOWNTO 0);
	s : BUFFER std_logic_vector(10 DOWNTO 0)
	);
END sum10b;

-- Design Ports Information
-- s[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[6]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[7]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[8]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[8]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sum10b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_n : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(10 DOWNTO 0);
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
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \n[0]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \ha_0|sum~combout\ : std_logic;
SIGNAL \ha_0|cout~combout\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \n[1]~input_o\ : std_logic;
SIGNAL \fa_1|sum~1_cout\ : std_logic;
SIGNAL \fa_1|sum~2_combout\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \n[2]~input_o\ : std_logic;
SIGNAL \fa_1|sum~3\ : std_logic;
SIGNAL \fa_1|sum~4_combout\ : std_logic;
SIGNAL \n[3]~input_o\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \fa_1|sum~5\ : std_logic;
SIGNAL \fa_1|sum~6_combout\ : std_logic;
SIGNAL \n[4]~input_o\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \fa_1|sum~7\ : std_logic;
SIGNAL \fa_1|sum~8_combout\ : std_logic;
SIGNAL \n[5]~input_o\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \fa_1|sum~9\ : std_logic;
SIGNAL \fa_1|sum~10_combout\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \n[6]~input_o\ : std_logic;
SIGNAL \fa_1|sum~11\ : std_logic;
SIGNAL \fa_1|sum~12_combout\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \n[7]~input_o\ : std_logic;
SIGNAL \fa_1|sum~13\ : std_logic;
SIGNAL \fa_1|sum~14_combout\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \n[8]~input_o\ : std_logic;
SIGNAL \fa_1|sum~15\ : std_logic;
SIGNAL \fa_1|sum~16_combout\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \n[9]~input_o\ : std_logic;
SIGNAL \fa_1|sum~17\ : std_logic;
SIGNAL \fa_1|sum~18_combout\ : std_logic;
SIGNAL \fa_1|sum~19\ : std_logic;
SIGNAL \fa_1|sum~20_combout\ : std_logic;

BEGIN

ww_m <= m;
ww_n <= n;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y51_N16
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ha_0|sum~combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~2_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~4_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~6_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~8_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~10_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~12_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~14_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\s[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~16_combout\,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\s[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~18_combout\,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\s[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa_1|sum~20_combout\,
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOIBUF_X0_Y50_N22
\n[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(0),
	o => \n[0]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: LCCOMB_X1_Y48_N0
\ha_0|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ha_0|sum~combout\ = \n[0]~input_o\ $ (\m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n[0]~input_o\,
	datac => \m[0]~input_o\,
	combout => \ha_0|sum~combout\);

-- Location: LCCOMB_X1_Y48_N2
\ha_0|cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \ha_0|cout~combout\ = (\n[0]~input_o\ & \m[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n[0]~input_o\,
	datac => \m[0]~input_o\,
	combout => \ha_0|cout~combout\);

-- Location: IOIBUF_X0_Y44_N1
\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\n[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(1),
	o => \n[1]~input_o\);

-- Location: LCCOMB_X1_Y48_N10
\fa_1|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~1_cout\ = CARRY(\n[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n[1]~input_o\,
	datad => VCC,
	cout => \fa_1|sum~1_cout\);

-- Location: LCCOMB_X1_Y48_N12
\fa_1|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~2_combout\ = (\ha_0|cout~combout\ & ((\m[1]~input_o\ & (\fa_1|sum~1_cout\ & VCC)) # (!\m[1]~input_o\ & (!\fa_1|sum~1_cout\)))) # (!\ha_0|cout~combout\ & ((\m[1]~input_o\ & (!\fa_1|sum~1_cout\)) # (!\m[1]~input_o\ & ((\fa_1|sum~1_cout\) # 
-- (GND)))))
-- \fa_1|sum~3\ = CARRY((\ha_0|cout~combout\ & (!\m[1]~input_o\ & !\fa_1|sum~1_cout\)) # (!\ha_0|cout~combout\ & ((!\fa_1|sum~1_cout\) # (!\m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ha_0|cout~combout\,
	datab => \m[1]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~1_cout\,
	combout => \fa_1|sum~2_combout\,
	cout => \fa_1|sum~3\);

-- Location: IOIBUF_X0_Y31_N15
\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\n[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(2),
	o => \n[2]~input_o\);

-- Location: LCCOMB_X1_Y48_N14
\fa_1|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~4_combout\ = ((\m[2]~input_o\ $ (\n[2]~input_o\ $ (!\fa_1|sum~3\)))) # (GND)
-- \fa_1|sum~5\ = CARRY((\m[2]~input_o\ & ((\n[2]~input_o\) # (!\fa_1|sum~3\))) # (!\m[2]~input_o\ & (\n[2]~input_o\ & !\fa_1|sum~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \n[2]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~3\,
	combout => \fa_1|sum~4_combout\,
	cout => \fa_1|sum~5\);

-- Location: IOIBUF_X0_Y53_N1
\n[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(3),
	o => \n[3]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: LCCOMB_X1_Y48_N16
\fa_1|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~6_combout\ = (\n[3]~input_o\ & ((\m[3]~input_o\ & (\fa_1|sum~5\ & VCC)) # (!\m[3]~input_o\ & (!\fa_1|sum~5\)))) # (!\n[3]~input_o\ & ((\m[3]~input_o\ & (!\fa_1|sum~5\)) # (!\m[3]~input_o\ & ((\fa_1|sum~5\) # (GND)))))
-- \fa_1|sum~7\ = CARRY((\n[3]~input_o\ & (!\m[3]~input_o\ & !\fa_1|sum~5\)) # (!\n[3]~input_o\ & ((!\fa_1|sum~5\) # (!\m[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n[3]~input_o\,
	datab => \m[3]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~5\,
	combout => \fa_1|sum~6_combout\,
	cout => \fa_1|sum~7\);

-- Location: IOIBUF_X0_Y43_N15
\n[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(4),
	o => \n[4]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\m[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

-- Location: LCCOMB_X1_Y48_N18
\fa_1|sum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~8_combout\ = ((\n[4]~input_o\ $ (\m[4]~input_o\ $ (!\fa_1|sum~7\)))) # (GND)
-- \fa_1|sum~9\ = CARRY((\n[4]~input_o\ & ((\m[4]~input_o\) # (!\fa_1|sum~7\))) # (!\n[4]~input_o\ & (\m[4]~input_o\ & !\fa_1|sum~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n[4]~input_o\,
	datab => \m[4]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~7\,
	combout => \fa_1|sum~8_combout\,
	cout => \fa_1|sum~9\);

-- Location: IOIBUF_X0_Y45_N15
\n[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(5),
	o => \n[5]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\m[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

-- Location: LCCOMB_X1_Y48_N20
\fa_1|sum~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~10_combout\ = (\n[5]~input_o\ & ((\m[5]~input_o\ & (\fa_1|sum~9\ & VCC)) # (!\m[5]~input_o\ & (!\fa_1|sum~9\)))) # (!\n[5]~input_o\ & ((\m[5]~input_o\ & (!\fa_1|sum~9\)) # (!\m[5]~input_o\ & ((\fa_1|sum~9\) # (GND)))))
-- \fa_1|sum~11\ = CARRY((\n[5]~input_o\ & (!\m[5]~input_o\ & !\fa_1|sum~9\)) # (!\n[5]~input_o\ & ((!\fa_1|sum~9\) # (!\m[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n[5]~input_o\,
	datab => \m[5]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~9\,
	combout => \fa_1|sum~10_combout\,
	cout => \fa_1|sum~11\);

-- Location: IOIBUF_X0_Y53_N8
\m[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\n[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(6),
	o => \n[6]~input_o\);

-- Location: LCCOMB_X1_Y48_N22
\fa_1|sum~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~12_combout\ = ((\m[6]~input_o\ $ (\n[6]~input_o\ $ (!\fa_1|sum~11\)))) # (GND)
-- \fa_1|sum~13\ = CARRY((\m[6]~input_o\ & ((\n[6]~input_o\) # (!\fa_1|sum~11\))) # (!\m[6]~input_o\ & (\n[6]~input_o\ & !\fa_1|sum~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[6]~input_o\,
	datab => \n[6]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~11\,
	combout => \fa_1|sum~12_combout\,
	cout => \fa_1|sum~13\);

-- Location: IOIBUF_X0_Y35_N8
\m[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\n[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(7),
	o => \n[7]~input_o\);

-- Location: LCCOMB_X1_Y48_N24
\fa_1|sum~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~14_combout\ = (\m[7]~input_o\ & ((\n[7]~input_o\ & (\fa_1|sum~13\ & VCC)) # (!\n[7]~input_o\ & (!\fa_1|sum~13\)))) # (!\m[7]~input_o\ & ((\n[7]~input_o\ & (!\fa_1|sum~13\)) # (!\n[7]~input_o\ & ((\fa_1|sum~13\) # (GND)))))
-- \fa_1|sum~15\ = CARRY((\m[7]~input_o\ & (!\n[7]~input_o\ & !\fa_1|sum~13\)) # (!\m[7]~input_o\ & ((!\fa_1|sum~13\) # (!\n[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[7]~input_o\,
	datab => \n[7]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~13\,
	combout => \fa_1|sum~14_combout\,
	cout => \fa_1|sum~15\);

-- Location: IOIBUF_X0_Y47_N1
\m[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\n[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(8),
	o => \n[8]~input_o\);

-- Location: LCCOMB_X1_Y48_N26
\fa_1|sum~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~16_combout\ = ((\m[8]~input_o\ $ (\n[8]~input_o\ $ (!\fa_1|sum~15\)))) # (GND)
-- \fa_1|sum~17\ = CARRY((\m[8]~input_o\ & ((\n[8]~input_o\) # (!\fa_1|sum~15\))) # (!\m[8]~input_o\ & (\n[8]~input_o\ & !\fa_1|sum~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[8]~input_o\,
	datab => \n[8]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~15\,
	combout => \fa_1|sum~16_combout\,
	cout => \fa_1|sum~17\);

-- Location: IOIBUF_X0_Y45_N22
\m[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\n[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n(9),
	o => \n[9]~input_o\);

-- Location: LCCOMB_X1_Y48_N28
\fa_1|sum~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~18_combout\ = (\m[9]~input_o\ & ((\n[9]~input_o\ & (\fa_1|sum~17\ & VCC)) # (!\n[9]~input_o\ & (!\fa_1|sum~17\)))) # (!\m[9]~input_o\ & ((\n[9]~input_o\ & (!\fa_1|sum~17\)) # (!\n[9]~input_o\ & ((\fa_1|sum~17\) # (GND)))))
-- \fa_1|sum~19\ = CARRY((\m[9]~input_o\ & (!\n[9]~input_o\ & !\fa_1|sum~17\)) # (!\m[9]~input_o\ & ((!\fa_1|sum~17\) # (!\n[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m[9]~input_o\,
	datab => \n[9]~input_o\,
	datad => VCC,
	cin => \fa_1|sum~17\,
	combout => \fa_1|sum~18_combout\,
	cout => \fa_1|sum~19\);

-- Location: LCCOMB_X1_Y48_N30
\fa_1|sum~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fa_1|sum~20_combout\ = !\fa_1|sum~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \fa_1|sum~19\,
	combout => \fa_1|sum~20_combout\);

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

ww_s(10) <= \s[10]~output_o\;
END structure;


