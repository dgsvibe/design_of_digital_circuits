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

-- DATE "09/05/2018 16:39:38"

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

ENTITY 	Sub1_structural IS
    PORT (
	E : IN std_logic_vector(9 DOWNTO 0);
	S : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Sub1_structural;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[4]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[5]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[6]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[8]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[9]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sub1_structural IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(9 DOWNTO 0);
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \E[0]~input_o\ : std_logic;
SIGNAL \E[1]~input_o\ : std_logic;
SIGNAL \sum|fa_1|sum~0_combout\ : std_logic;
SIGNAL \E[2]~input_o\ : std_logic;
SIGNAL \sum|fa_2|sum~0_combout\ : std_logic;
SIGNAL \E[3]~input_o\ : std_logic;
SIGNAL \sum|fa_3|sum~0_combout\ : std_logic;
SIGNAL \sum|fa_3|cout~0_combout\ : std_logic;
SIGNAL \E[4]~input_o\ : std_logic;
SIGNAL \sum|fa_4|sum~0_combout\ : std_logic;
SIGNAL \E[5]~input_o\ : std_logic;
SIGNAL \sum|fa_5|sum~0_combout\ : std_logic;
SIGNAL \E[6]~input_o\ : std_logic;
SIGNAL \sum|fa_6|sum~0_combout\ : std_logic;
SIGNAL \E[7]~input_o\ : std_logic;
SIGNAL \sum|fa_6|cout~0_combout\ : std_logic;
SIGNAL \sum|fa_7|sum~0_combout\ : std_logic;
SIGNAL \E[8]~input_o\ : std_logic;
SIGNAL \sum|fa_8|sum~0_combout\ : std_logic;
SIGNAL \E[9]~input_o\ : std_logic;
SIGNAL \sum|fa_9|sum~0_combout\ : std_logic;
SIGNAL \ALT_INV_E[0]~input_o\ : std_logic;
SIGNAL \sum|fa_9|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_8|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_7|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_6|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_5|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_4|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_3|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_2|ALT_INV_sum~0_combout\ : std_logic;
SIGNAL \sum|fa_1|ALT_INV_sum~0_combout\ : std_logic;

BEGIN

ww_E <= E;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_E[0]~input_o\ <= NOT \E[0]~input_o\;
\sum|fa_9|ALT_INV_sum~0_combout\ <= NOT \sum|fa_9|sum~0_combout\;
\sum|fa_8|ALT_INV_sum~0_combout\ <= NOT \sum|fa_8|sum~0_combout\;
\sum|fa_7|ALT_INV_sum~0_combout\ <= NOT \sum|fa_7|sum~0_combout\;
\sum|fa_6|ALT_INV_sum~0_combout\ <= NOT \sum|fa_6|sum~0_combout\;
\sum|fa_5|ALT_INV_sum~0_combout\ <= NOT \sum|fa_5|sum~0_combout\;
\sum|fa_4|ALT_INV_sum~0_combout\ <= NOT \sum|fa_4|sum~0_combout\;
\sum|fa_3|ALT_INV_sum~0_combout\ <= NOT \sum|fa_3|sum~0_combout\;
\sum|fa_2|ALT_INV_sum~0_combout\ <= NOT \sum|fa_2|sum~0_combout\;
\sum|fa_1|ALT_INV_sum~0_combout\ <= NOT \sum|fa_1|sum~0_combout\;

-- Location: IOOBUF_X0_Y27_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_E[0]~input_o\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_1|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_2|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_3|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_4|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_5|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_6|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_7|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_8|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum|fa_9|ALT_INV_sum~0_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOIBUF_X0_Y30_N1
\E[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(0),
	o => \E[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\E[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(1),
	o => \E[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\sum|fa_1|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_1|sum~0_combout\ = \E[1]~input_o\ $ (\E[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E[1]~input_o\,
	datad => \E[0]~input_o\,
	combout => \sum|fa_1|sum~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\E[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(2),
	o => \E[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\sum|fa_2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_2|sum~0_combout\ = \E[2]~input_o\ $ (((\E[1]~input_o\) # (\E[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E[1]~input_o\,
	datac => \E[2]~input_o\,
	datad => \E[0]~input_o\,
	combout => \sum|fa_2|sum~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\E[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(3),
	o => \E[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\sum|fa_3|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_3|sum~0_combout\ = \E[3]~input_o\ $ (((\E[1]~input_o\) # ((\E[2]~input_o\) # (\E[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[3]~input_o\,
	datab => \E[1]~input_o\,
	datac => \E[2]~input_o\,
	datad => \E[0]~input_o\,
	combout => \sum|fa_3|sum~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\sum|fa_3|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_3|cout~0_combout\ = (\E[3]~input_o\) # ((\E[1]~input_o\) # ((\E[2]~input_o\) # (\E[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[3]~input_o\,
	datab => \E[1]~input_o\,
	datac => \E[2]~input_o\,
	datad => \E[0]~input_o\,
	combout => \sum|fa_3|cout~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\E[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(4),
	o => \E[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\sum|fa_4|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_4|sum~0_combout\ = \sum|fa_3|cout~0_combout\ $ (\E[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum|fa_3|cout~0_combout\,
	datac => \E[4]~input_o\,
	combout => \sum|fa_4|sum~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\E[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(5),
	o => \E[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N26
\sum|fa_5|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_5|sum~0_combout\ = \E[5]~input_o\ $ (((\E[4]~input_o\) # (\sum|fa_3|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[4]~input_o\,
	datac => \sum|fa_3|cout~0_combout\,
	datad => \E[5]~input_o\,
	combout => \sum|fa_5|sum~0_combout\);

-- Location: IOIBUF_X0_Y22_N22
\E[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(6),
	o => \E[6]~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\sum|fa_6|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_6|sum~0_combout\ = \E[6]~input_o\ $ (((\E[4]~input_o\) # ((\sum|fa_3|cout~0_combout\) # (\E[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[4]~input_o\,
	datab => \E[6]~input_o\,
	datac => \sum|fa_3|cout~0_combout\,
	datad => \E[5]~input_o\,
	combout => \sum|fa_6|sum~0_combout\);

-- Location: IOIBUF_X0_Y26_N15
\E[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(7),
	o => \E[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N6
\sum|fa_6|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_6|cout~0_combout\ = (\E[4]~input_o\) # ((\E[6]~input_o\) # ((\sum|fa_3|cout~0_combout\) # (\E[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[4]~input_o\,
	datab => \E[6]~input_o\,
	datac => \sum|fa_3|cout~0_combout\,
	datad => \E[5]~input_o\,
	combout => \sum|fa_6|cout~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\sum|fa_7|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_7|sum~0_combout\ = \E[7]~input_o\ $ (\sum|fa_6|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E[7]~input_o\,
	datad => \sum|fa_6|cout~0_combout\,
	combout => \sum|fa_7|sum~0_combout\);

-- Location: IOIBUF_X0_Y29_N15
\E[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(8),
	o => \E[8]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\sum|fa_8|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_8|sum~0_combout\ = \E[8]~input_o\ $ (((\E[7]~input_o\) # (\sum|fa_6|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E[7]~input_o\,
	datac => \E[8]~input_o\,
	datad => \sum|fa_6|cout~0_combout\,
	combout => \sum|fa_8|sum~0_combout\);

-- Location: IOIBUF_X0_Y24_N22
\E[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(9),
	o => \E[9]~input_o\);

-- Location: LCCOMB_X1_Y24_N20
\sum|fa_9|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum|fa_9|sum~0_combout\ = \E[9]~input_o\ $ (((\E[7]~input_o\) # ((\E[8]~input_o\) # (\sum|fa_6|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[9]~input_o\,
	datab => \E[7]~input_o\,
	datac => \E[8]~input_o\,
	datad => \sum|fa_6|cout~0_combout\,
	combout => \sum|fa_9|sum~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;
END structure;


