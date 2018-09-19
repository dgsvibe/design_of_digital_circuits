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

-- DATE "09/19/2018 16:50:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flipflopt IS
    PORT (
	t : IN std_logic;
	ck : IN std_logic;
	q : OUT std_logic;
	pr : IN std_logic;
	clr : IN std_logic
	);
END flipflopt;

-- Design Ports Information
-- q	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flipflopt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_pr : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \pr~input_o\ : std_logic;
SIGNAL \sq~8_combout\ : std_logic;
SIGNAL \sq~1_combout\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \t~input_o\ : std_logic;
SIGNAL \sq~3_combout\ : std_logic;
SIGNAL \sq~0_combout\ : std_logic;
SIGNAL \sq~_emulated_q\ : std_logic;
SIGNAL \sq~2_combout\ : std_logic;
SIGNAL \ALT_INV_sq~0_combout\ : std_logic;

BEGIN

ww_t <= t;
ww_ck <= ck;
q <= ww_q;
ww_pr <= pr;
ww_clr <= clr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sq~0_combout\ <= NOT \sq~0_combout\;

-- Location: IOOBUF_X0_Y14_N2
\q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sq~2_combout\,
	devoe => ww_devoe,
	o => \q~output_o\);

-- Location: IOIBUF_X0_Y14_N8
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\pr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr,
	o => \pr~input_o\);

-- Location: LCCOMB_X1_Y15_N30
\sq~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sq~8_combout\ = (\clr~input_o\ & \pr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \pr~input_o\,
	combout => \sq~8_combout\);

-- Location: LCCOMB_X1_Y15_N16
\sq~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sq~1_combout\ = (!\sq~8_combout\ & ((\sq~1_combout\) # (!\pr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq~8_combout\,
	datac => \pr~input_o\,
	datad => \sq~1_combout\,
	combout => \sq~1_combout\);

-- Location: IOIBUF_X0_Y15_N22
\ck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\t~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t,
	o => \t~input_o\);

-- Location: LCCOMB_X1_Y15_N0
\sq~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sq~3_combout\ = \sq~1_combout\ $ (\t~input_o\ $ (\sq~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sq~1_combout\,
	datac => \t~input_o\,
	datad => \sq~2_combout\,
	combout => \sq~3_combout\);

-- Location: LCCOMB_X1_Y15_N12
\sq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sq~0_combout\ = (\sq~8_combout\) # (!\pr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq~8_combout\,
	datac => \pr~input_o\,
	combout => \sq~0_combout\);

-- Location: FF_X1_Y15_N1
\sq~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \sq~3_combout\,
	clrn => \ALT_INV_sq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sq~_emulated_q\);

-- Location: LCCOMB_X1_Y15_N10
\sq~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sq~2_combout\ = (!\sq~8_combout\ & ((\sq~1_combout\ $ (\sq~_emulated_q\)) # (!\pr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sq~8_combout\,
	datab => \sq~1_combout\,
	datac => \pr~input_o\,
	datad => \sq~_emulated_q\,
	combout => \sq~2_combout\);

ww_q <= \q~output_o\;
END structure;


