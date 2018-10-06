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

-- DATE "10/01/2018 21:39:16"

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

ENTITY 	mtfffixed IS
    PORT (
	t : IN std_logic;
	ck : IN std_logic;
	q : BUFFER std_logic;
	pr : IN std_logic;
	clr : IN std_logic
	);
END mtfffixed;

-- Design Ports Information
-- q	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pr	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mtfffixed IS
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
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \t~input_o\ : std_logic;
SIGNAL \pr~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \q~reg0_q\ : std_logic;

BEGIN

ww_t <= t;
ww_ck <= ck;
q <= ww_q;
ww_pr <= pr;
ww_clr <= clr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y68_N16
\q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q~reg0_q\,
	devoe => ww_devoe,
	o => \q~output_o\);

-- Location: IOIBUF_X0_Y68_N8
\ck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\t~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_t,
	o => \t~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\pr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pr,
	o => \pr~input_o\);

-- Location: LCCOMB_X1_Y68_N16
\q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\pr~input_o\ & ((\t~input_o\ $ (\q~reg0_q\)))) # (!\pr~input_o\ & (\clr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datab => \t~input_o\,
	datac => \q~reg0_q\,
	datad => \pr~input_o\,
	combout => \q~0_combout\);

-- Location: FF_X1_Y68_N17
\q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q~reg0_q\);

ww_q <= \q~output_o\;
END structure;


