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

-- DATE "09/06/2018 17:11:18"

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

ENTITY 	exercicio01 IS
    PORT (
	s9 : OUT std_logic;
	rst : IN std_logic;
	ck : IN std_logic;
	c9 : IN std_logic;
	c0 : IN std_logic;
	c1 : IN std_logic;
	c2 : IN std_logic;
	c3 : IN std_logic;
	c4 : IN std_logic;
	c5 : IN std_logic;
	c6 : IN std_logic;
	c7 : IN std_logic;
	c8 : IN std_logic;
	s8 : OUT std_logic;
	s7 : OUT std_logic;
	s6 : OUT std_logic;
	s5 : OUT std_logic;
	s4 : OUT std_logic;
	s3 : OUT std_logic;
	s2 : OUT std_logic;
	s1 : OUT std_logic;
	s0 : OUT std_logic
	);
END exercicio01;

-- Design Ports Information
-- s9	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s8	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s7	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c9	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c8	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c7	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c6	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c5	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c4	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c3	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s9 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_c9 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_c3 : std_logic;
SIGNAL ww_c4 : std_logic;
SIGNAL ww_c5 : std_logic;
SIGNAL ww_c6 : std_logic;
SIGNAL ww_c7 : std_logic;
SIGNAL ww_c8 : std_logic;
SIGNAL ww_s8 : std_logic;
SIGNAL ww_s7 : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s9~output_o\ : std_logic;
SIGNAL \s8~output_o\ : std_logic;
SIGNAL \s7~output_o\ : std_logic;
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \c9~input_o\ : std_logic;
SIGNAL \c8~input_o\ : std_logic;
SIGNAL \c5~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \inst2|s[0]~9_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|ff0|q~q\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \inst2|s[1]~8_combout\ : std_logic;
SIGNAL \inst4|ff1|q~q\ : std_logic;
SIGNAL \c2~input_o\ : std_logic;
SIGNAL \inst17|sum|fa_2|s_cout~0_combout\ : std_logic;
SIGNAL \inst2|s[2]~7_combout\ : std_logic;
SIGNAL \inst4|ff2|q~q\ : std_logic;
SIGNAL \c3~input_o\ : std_logic;
SIGNAL \inst17|sum|fa_3|s_cout~0_combout\ : std_logic;
SIGNAL \inst2|s[3]~6_combout\ : std_logic;
SIGNAL \inst4|ff3|q~q\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \c4~input_o\ : std_logic;
SIGNAL \inst2|s[4]~5_combout\ : std_logic;
SIGNAL \inst4|ff4|q~q\ : std_logic;
SIGNAL \inst17|sum|fa_5|s_cout~0_combout\ : std_logic;
SIGNAL \inst2|s[5]~4_combout\ : std_logic;
SIGNAL \inst4|ff5|q~q\ : std_logic;
SIGNAL \c6~input_o\ : std_logic;
SIGNAL \inst17|sum|fa_6|s_cout~0_combout\ : std_logic;
SIGNAL \inst2|s[6]~3_combout\ : std_logic;
SIGNAL \inst4|ff6|q~q\ : std_logic;
SIGNAL \inst15~1_combout\ : std_logic;
SIGNAL \c7~input_o\ : std_logic;
SIGNAL \inst2|s[7]~2_combout\ : std_logic;
SIGNAL \inst4|ff7|q~q\ : std_logic;
SIGNAL \inst15~3_combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst15~2_combout\ : std_logic;
SIGNAL \inst2|s[8]~1_combout\ : std_logic;
SIGNAL \inst4|ff8|q~q\ : std_logic;
SIGNAL \inst2|s[9]~0_combout\ : std_logic;
SIGNAL \inst4|ff9|q~q\ : std_logic;

BEGIN

s9 <= ww_s9;
ww_rst <= rst;
ww_ck <= ck;
ww_c9 <= c9;
ww_c0 <= c0;
ww_c1 <= c1;
ww_c2 <= c2;
ww_c3 <= c3;
ww_c4 <= c4;
ww_c5 <= c5;
ww_c6 <= c6;
ww_c7 <= c7;
ww_c8 <= c8;
s8 <= ww_s8;
s7 <= ww_s7;
s6 <= ww_s6;
s5 <= ww_s5;
s4 <= ww_s4;
s3 <= ww_s3;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);

-- Location: IOOBUF_X69_Y0_N9
\s9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff9|q~q\,
	devoe => ww_devoe,
	o => \s9~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\s8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff8|q~q\,
	devoe => ww_devoe,
	o => \s8~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\s7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff7|q~q\,
	devoe => ww_devoe,
	o => \s7~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff6|q~q\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff5|q~q\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff4|q~q\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff3|q~q\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff2|q~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff1|q~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ff0|q~q\,
	devoe => ww_devoe,
	o => \s0~output_o\);

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

-- Location: IOIBUF_X81_Y0_N22
\c9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c9,
	o => \c9~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\c8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c8,
	o => \c8~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\c5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c5,
	o => \c5~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\c0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: LCCOMB_X74_Y1_N12
\inst2|s[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[0]~9_combout\ = (\inst15~combout\ & ((!\inst4|ff0|q~q\))) # (!\inst15~combout\ & (\c0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~input_o\,
	datac => \inst4|ff0|q~q\,
	datad => \inst15~combout\,
	combout => \inst2|s[0]~9_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X74_Y1_N13
\inst4|ff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[0]~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff0|q~q\);

-- Location: IOIBUF_X74_Y0_N8
\c1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: LCCOMB_X74_Y1_N22
\inst2|s[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[1]~8_combout\ = (\inst15~combout\ & (\inst4|ff0|q~q\ $ (((!\inst4|ff1|q~q\))))) # (!\inst15~combout\ & (((\c1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff0|q~q\,
	datab => \c1~input_o\,
	datac => \inst4|ff1|q~q\,
	datad => \inst15~combout\,
	combout => \inst2|s[1]~8_combout\);

-- Location: FF_X74_Y1_N23
\inst4|ff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[1]~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff1|q~q\);

-- Location: IOIBUF_X67_Y0_N15
\c2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c2,
	o => \c2~input_o\);

-- Location: LCCOMB_X73_Y1_N0
\inst17|sum|fa_2|s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|sum|fa_2|s_cout~0_combout\ = \inst4|ff2|q~q\ $ (((\inst4|ff1|q~q\) # (\inst4|ff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ff1|q~q\,
	datac => \inst4|ff0|q~q\,
	datad => \inst4|ff2|q~q\,
	combout => \inst17|sum|fa_2|s_cout~0_combout\);

-- Location: LCCOMB_X74_Y1_N16
\inst2|s[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[2]~7_combout\ = (\inst15~combout\ & ((!\inst17|sum|fa_2|s_cout~0_combout\))) # (!\inst15~combout\ & (\c2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2~input_o\,
	datac => \inst17|sum|fa_2|s_cout~0_combout\,
	datad => \inst15~combout\,
	combout => \inst2|s[2]~7_combout\);

-- Location: FF_X74_Y1_N17
\inst4|ff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[2]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff2|q~q\);

-- Location: IOIBUF_X74_Y0_N15
\c3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c3,
	o => \c3~input_o\);

-- Location: LCCOMB_X73_Y1_N14
\inst17|sum|fa_3|s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|sum|fa_3|s_cout~0_combout\ = \inst4|ff3|q~q\ $ (((\inst4|ff1|q~q\) # ((\inst4|ff0|q~q\) # (\inst4|ff2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff1|q~q\,
	datab => \inst4|ff0|q~q\,
	datac => \inst4|ff3|q~q\,
	datad => \inst4|ff2|q~q\,
	combout => \inst17|sum|fa_3|s_cout~0_combout\);

-- Location: LCCOMB_X74_Y1_N14
\inst2|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[3]~6_combout\ = (\inst15~combout\ & ((!\inst17|sum|fa_3|s_cout~0_combout\))) # (!\inst15~combout\ & (\c3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c3~input_o\,
	datac => \inst15~combout\,
	datad => \inst17|sum|fa_3|s_cout~0_combout\,
	combout => \inst2|s[3]~6_combout\);

-- Location: FF_X74_Y1_N15
\inst4|ff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[3]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff3|q~q\);

-- Location: LCCOMB_X74_Y1_N18
\inst15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (!\inst4|ff1|q~q\ & (!\inst4|ff2|q~q\ & (!\inst4|ff3|q~q\ & !\inst4|ff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff1|q~q\,
	datab => \inst4|ff2|q~q\,
	datac => \inst4|ff3|q~q\,
	datad => \inst4|ff0|q~q\,
	combout => \inst15~0_combout\);

-- Location: IOIBUF_X79_Y0_N8
\c4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c4,
	o => \c4~input_o\);

-- Location: LCCOMB_X74_Y1_N8
\inst2|s[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[4]~5_combout\ = (\inst15~combout\ & (\inst15~0_combout\ $ (((\inst4|ff4|q~q\))))) # (!\inst15~combout\ & (((\c4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~0_combout\,
	datab => \c4~input_o\,
	datac => \inst4|ff4|q~q\,
	datad => \inst15~combout\,
	combout => \inst2|s[4]~5_combout\);

-- Location: FF_X74_Y1_N9
\inst4|ff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[4]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff4|q~q\);

-- Location: LCCOMB_X74_Y1_N26
\inst17|sum|fa_5|s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|sum|fa_5|s_cout~0_combout\ = \inst4|ff5|q~q\ $ (((\inst4|ff4|q~q\) # (!\inst15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff5|q~q\,
	datac => \inst4|ff4|q~q\,
	datad => \inst15~0_combout\,
	combout => \inst17|sum|fa_5|s_cout~0_combout\);

-- Location: LCCOMB_X74_Y1_N6
\inst2|s[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[5]~4_combout\ = (\inst15~combout\ & ((!\inst17|sum|fa_5|s_cout~0_combout\))) # (!\inst15~combout\ & (\c5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c5~input_o\,
	datac => \inst17|sum|fa_5|s_cout~0_combout\,
	datad => \inst15~combout\,
	combout => \inst2|s[5]~4_combout\);

-- Location: FF_X74_Y1_N7
\inst4|ff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[5]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff5|q~q\);

-- Location: IOIBUF_X74_Y0_N1
\c6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c6,
	o => \c6~input_o\);

-- Location: LCCOMB_X74_Y1_N24
\inst17|sum|fa_6|s_cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|sum|fa_6|s_cout~0_combout\ = \inst4|ff6|q~q\ $ (((\inst4|ff5|q~q\) # ((\inst4|ff4|q~q\) # (!\inst15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff5|q~q\,
	datab => \inst4|ff6|q~q\,
	datac => \inst4|ff4|q~q\,
	datad => \inst15~0_combout\,
	combout => \inst17|sum|fa_6|s_cout~0_combout\);

-- Location: LCCOMB_X74_Y1_N28
\inst2|s[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[6]~3_combout\ = (\inst15~combout\ & ((!\inst17|sum|fa_6|s_cout~0_combout\))) # (!\inst15~combout\ & (\c6~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c6~input_o\,
	datac => \inst15~combout\,
	datad => \inst17|sum|fa_6|s_cout~0_combout\,
	combout => \inst2|s[6]~3_combout\);

-- Location: FF_X74_Y1_N29
\inst4|ff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[6]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff6|q~q\);

-- Location: LCCOMB_X74_Y1_N20
\inst15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~1_combout\ = (!\inst4|ff5|q~q\ & (!\inst4|ff6|q~q\ & (!\inst4|ff4|q~q\ & \inst15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff5|q~q\,
	datab => \inst4|ff6|q~q\,
	datac => \inst4|ff4|q~q\,
	datad => \inst15~0_combout\,
	combout => \inst15~1_combout\);

-- Location: IOIBUF_X65_Y0_N15
\c7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c7,
	o => \c7~input_o\);

-- Location: LCCOMB_X73_Y1_N16
\inst2|s[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[7]~2_combout\ = (\inst15~combout\ & (\inst15~1_combout\ $ (((\inst4|ff7|q~q\))))) # (!\inst15~combout\ & (((\c7~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~1_combout\,
	datab => \c7~input_o\,
	datac => \inst4|ff7|q~q\,
	datad => \inst15~combout\,
	combout => \inst2|s[7]~2_combout\);

-- Location: FF_X73_Y1_N17
\inst4|ff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[7]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff7|q~q\);

-- Location: LCCOMB_X74_Y1_N4
\inst15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~3_combout\ = (\inst4|ff8|q~q\) # ((\inst4|ff6|q~q\) # ((\inst4|ff4|q~q\) # (\inst4|ff5|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff8|q~q\,
	datab => \inst4|ff6|q~q\,
	datac => \inst4|ff4|q~q\,
	datad => \inst4|ff5|q~q\,
	combout => \inst15~3_combout\);

-- Location: LCCOMB_X74_Y1_N2
inst15 : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\inst4|ff7|q~q\) # ((\inst4|ff9|q~q\) # ((\inst15~3_combout\) # (!\inst15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff7|q~q\,
	datab => \inst4|ff9|q~q\,
	datac => \inst15~3_combout\,
	datad => \inst15~0_combout\,
	combout => \inst15~combout\);

-- Location: LCCOMB_X74_Y1_N10
\inst15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~2_combout\ = (!\inst4|ff7|q~q\ & \inst15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ff7|q~q\,
	datad => \inst15~1_combout\,
	combout => \inst15~2_combout\);

-- Location: LCCOMB_X74_Y1_N30
\inst2|s[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[8]~1_combout\ = (\inst15~combout\ & ((\inst4|ff8|q~q\ $ (\inst15~2_combout\)))) # (!\inst15~combout\ & (\c8~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c8~input_o\,
	datab => \inst15~combout\,
	datac => \inst4|ff8|q~q\,
	datad => \inst15~2_combout\,
	combout => \inst2|s[8]~1_combout\);

-- Location: FF_X74_Y1_N31
\inst4|ff8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[8]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff8|q~q\);

-- Location: LCCOMB_X74_Y1_N0
\inst2|s[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s[9]~0_combout\ = (\inst4|ff8|q~q\ & (((\inst4|ff9|q~q\)))) # (!\inst4|ff8|q~q\ & ((\inst4|ff9|q~q\ & ((!\inst15~2_combout\))) # (!\inst4|ff9|q~q\ & (\c9~input_o\ & \inst15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c9~input_o\,
	datab => \inst4|ff8|q~q\,
	datac => \inst4|ff9|q~q\,
	datad => \inst15~2_combout\,
	combout => \inst2|s[9]~0_combout\);

-- Location: FF_X74_Y1_N1
\inst4|ff9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|s[9]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff9|q~q\);

ww_s9 <= \s9~output_o\;

ww_s8 <= \s8~output_o\;

ww_s7 <= \s7~output_o\;

ww_s6 <= \s6~output_o\;

ww_s5 <= \s5~output_o\;

ww_s4 <= \s4~output_o\;

ww_s3 <= \s3~output_o\;

ww_s2 <= \s2~output_o\;

ww_s1 <= \s1~output_o\;

ww_s0 <= \s0~output_o\;
END structure;


