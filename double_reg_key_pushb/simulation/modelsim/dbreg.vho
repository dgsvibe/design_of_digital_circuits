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

-- DATE "10/06/2018 17:47:46"

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

ENTITY 	dbreg IS
    PORT (
	s9 : OUT std_logic;
	sel_mux : IN std_logic;
	rst : IN std_logic;
	push_button : IN std_logic;
	key : IN std_logic;
	data9 : IN std_logic;
	data8 : IN std_logic;
	data7 : IN std_logic;
	data6 : IN std_logic;
	data5 : IN std_logic;
	data4 : IN std_logic;
	data3 : IN std_logic;
	data2 : IN std_logic;
	data1 : IN std_logic;
	data0 : IN std_logic;
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
END dbreg;

-- Design Ports Information
-- s9	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s8	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s7	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_mux	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_button	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data9	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data8	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data7	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data6	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data5	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data4	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dbreg IS
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
SIGNAL ww_sel_mux : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_push_button : std_logic;
SIGNAL ww_key : std_logic;
SIGNAL ww_data9 : std_logic;
SIGNAL ww_data8 : std_logic;
SIGNAL ww_data7 : std_logic;
SIGNAL ww_data6 : std_logic;
SIGNAL ww_data5 : std_logic;
SIGNAL ww_data4 : std_logic;
SIGNAL ww_data3 : std_logic;
SIGNAL ww_data2 : std_logic;
SIGNAL ww_data1 : std_logic;
SIGNAL ww_data0 : std_logic;
SIGNAL ww_s8 : std_logic;
SIGNAL ww_s7 : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL \key~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \push_button~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \push_button~input_o\ : std_logic;
SIGNAL \push_button~inputclkctrl_outclk\ : std_logic;
SIGNAL \key~input_o\ : std_logic;
SIGNAL \key~inputclkctrl_outclk\ : std_logic;
SIGNAL \data9~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|ff9|q~q\ : std_logic;
SIGNAL \inst3|ff9|q~q\ : std_logic;
SIGNAL \sel_mux~input_o\ : std_logic;
SIGNAL \inst5|s[9]~0_combout\ : std_logic;
SIGNAL \data8~input_o\ : std_logic;
SIGNAL \inst4|ff8|q~q\ : std_logic;
SIGNAL \inst3|ff8|q~q\ : std_logic;
SIGNAL \inst5|s[8]~1_combout\ : std_logic;
SIGNAL \data7~input_o\ : std_logic;
SIGNAL \inst4|ff7|q~q\ : std_logic;
SIGNAL \inst3|ff7|q~q\ : std_logic;
SIGNAL \inst5|s[7]~2_combout\ : std_logic;
SIGNAL \data6~input_o\ : std_logic;
SIGNAL \inst4|ff6|q~q\ : std_logic;
SIGNAL \inst3|ff6|q~q\ : std_logic;
SIGNAL \inst5|s[6]~3_combout\ : std_logic;
SIGNAL \data5~input_o\ : std_logic;
SIGNAL \inst4|ff5|q~q\ : std_logic;
SIGNAL \inst3|ff5|q~q\ : std_logic;
SIGNAL \inst5|s[5]~4_combout\ : std_logic;
SIGNAL \data4~input_o\ : std_logic;
SIGNAL \inst3|ff4|q~q\ : std_logic;
SIGNAL \inst4|ff4|q~q\ : std_logic;
SIGNAL \inst5|s[4]~5_combout\ : std_logic;
SIGNAL \data3~input_o\ : std_logic;
SIGNAL \inst4|ff3|q~q\ : std_logic;
SIGNAL \inst3|ff3|q~q\ : std_logic;
SIGNAL \inst5|s[3]~6_combout\ : std_logic;
SIGNAL \data2~input_o\ : std_logic;
SIGNAL \inst3|ff2|q~q\ : std_logic;
SIGNAL \inst4|ff2|q~q\ : std_logic;
SIGNAL \inst5|s[2]~7_combout\ : std_logic;
SIGNAL \data1~input_o\ : std_logic;
SIGNAL \inst4|ff1|q~q\ : std_logic;
SIGNAL \inst3|ff1|q~q\ : std_logic;
SIGNAL \inst5|s[1]~8_combout\ : std_logic;
SIGNAL \data0~input_o\ : std_logic;
SIGNAL \inst4|ff0|q~q\ : std_logic;
SIGNAL \inst3|ff0|q~q\ : std_logic;
SIGNAL \inst5|s[0]~9_combout\ : std_logic;
SIGNAL \inst2|s1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|s0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|s\ : std_logic_vector(9 DOWNTO 0);

BEGIN

s9 <= ww_s9;
ww_sel_mux <= sel_mux;
ww_rst <= rst;
ww_push_button <= push_button;
ww_key <= key;
ww_data9 <= data9;
ww_data8 <= data8;
ww_data7 <= data7;
ww_data6 <= data6;
ww_data5 <= data5;
ww_data4 <= data4;
ww_data3 <= data3;
ww_data2 <= data2;
ww_data1 <= data1;
ww_data0 <= data0;
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

\key~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \key~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\push_button~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \push_button~input_o\);

-- Location: IOOBUF_X5_Y73_N9
\s9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[9]~0_combout\,
	devoe => ww_devoe,
	o => \s9~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\s8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[8]~1_combout\,
	devoe => ww_devoe,
	o => \s8~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\s7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[7]~2_combout\,
	devoe => ww_devoe,
	o => \s7~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[6]~3_combout\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[5]~4_combout\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[4]~5_combout\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[3]~6_combout\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[2]~7_combout\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[1]~8_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|s[0]~9_combout\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\push_button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_button,
	o => \push_button~input_o\);

-- Location: CLKCTRL_G2
\push_button~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \push_button~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \push_button~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key,
	o => \key~input_o\);

-- Location: CLKCTRL_G4
\key~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key~inputclkctrl_outclk\);

-- Location: IOIBUF_X11_Y73_N15
\data9~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data9,
	o => \data9~input_o\);

-- Location: LCCOMB_X10_Y72_N12
\inst|s[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(9) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data9~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data9~input_o\,
	datac => \inst|s\(9),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(9));

-- Location: LCCOMB_X10_Y72_N28
\inst2|s1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(9) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(9)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(9),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(9),
	combout => \inst2|s1\(9));

-- Location: IOIBUF_X0_Y36_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G3
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

-- Location: FF_X10_Y72_N29
\inst4|ff9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(9),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff9|q~q\);

-- Location: LCCOMB_X10_Y72_N4
\inst2|s0[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(9) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(9))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s0\(9),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(9),
	combout => \inst2|s0\(9));

-- Location: FF_X10_Y72_N27
\inst3|ff9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(9),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff9|q~q\);

-- Location: IOIBUF_X13_Y73_N1
\sel_mux~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_mux,
	o => \sel_mux~input_o\);

-- Location: LCCOMB_X10_Y72_N26
\inst5|s[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[9]~0_combout\ = (\sel_mux~input_o\ & (\inst4|ff9|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff9|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff9|q~q\,
	datac => \inst3|ff9|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[9]~0_combout\);

-- Location: IOIBUF_X7_Y73_N15
\data8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data8,
	o => \data8~input_o\);

-- Location: LCCOMB_X10_Y72_N18
\inst|s[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(8) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data8~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data8~input_o\,
	datac => \inst|s\(8),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(8));

-- Location: LCCOMB_X10_Y72_N24
\inst2|s1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(8) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(8)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(8),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(8),
	combout => \inst2|s1\(8));

-- Location: FF_X10_Y72_N25
\inst4|ff8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(8),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff8|q~q\);

-- Location: LCCOMB_X10_Y72_N30
\inst2|s0[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(8) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(8))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s0\(8),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(8),
	combout => \inst2|s0\(8));

-- Location: FF_X10_Y72_N3
\inst3|ff8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(8),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff8|q~q\);

-- Location: LCCOMB_X10_Y72_N2
\inst5|s[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[8]~1_combout\ = (\sel_mux~input_o\ & (\inst4|ff8|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff8|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff8|q~q\,
	datac => \inst3|ff8|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[8]~1_combout\);

-- Location: IOIBUF_X11_Y73_N22
\data7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data7,
	o => \data7~input_o\);

-- Location: LCCOMB_X10_Y72_N16
\inst|s[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(7) = (GLOBAL(\push_button~inputclkctrl_outclk\) & ((\data7~input_o\))) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & (\inst|s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s\(7),
	datac => \data7~input_o\,
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(7));

-- Location: LCCOMB_X10_Y72_N0
\inst2|s1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(7) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(7)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(7),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(7),
	combout => \inst2|s1\(7));

-- Location: FF_X10_Y72_N1
\inst4|ff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(7),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff7|q~q\);

-- Location: LCCOMB_X10_Y72_N8
\inst2|s0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(7) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(7))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s0\(7),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(7),
	combout => \inst2|s0\(7));

-- Location: FF_X10_Y72_N15
\inst3|ff7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(7),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff7|q~q\);

-- Location: LCCOMB_X10_Y72_N14
\inst5|s[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[7]~2_combout\ = (\sel_mux~input_o\ & (\inst4|ff7|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff7|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff7|q~q\,
	datac => \inst3|ff7|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[7]~2_combout\);

-- Location: IOIBUF_X11_Y73_N8
\data6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data6,
	o => \data6~input_o\);

-- Location: LCCOMB_X10_Y72_N6
\inst|s[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(6) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data6~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data6~input_o\,
	datac => \inst|s\(6),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(6));

-- Location: LCCOMB_X10_Y72_N20
\inst2|s1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(6) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(6)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(6),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(6),
	combout => \inst2|s1\(6));

-- Location: FF_X10_Y72_N21
\inst4|ff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(6),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff6|q~q\);

-- Location: LCCOMB_X10_Y72_N22
\inst2|s0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(6) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(6))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s0\(6),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(6),
	combout => \inst2|s0\(6));

-- Location: FF_X10_Y72_N11
\inst3|ff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(6),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff6|q~q\);

-- Location: LCCOMB_X10_Y72_N10
\inst5|s[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[6]~3_combout\ = (\sel_mux~input_o\ & (\inst4|ff6|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff6|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff6|q~q\,
	datac => \inst3|ff6|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[6]~3_combout\);

-- Location: IOIBUF_X18_Y73_N15
\data5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data5,
	o => \data5~input_o\);

-- Location: LCCOMB_X17_Y72_N12
\inst|s[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(5) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data5~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data5~input_o\,
	datac => \inst|s\(5),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(5));

-- Location: LCCOMB_X17_Y72_N24
\inst2|s1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(5) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(5)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(5),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(5),
	combout => \inst2|s1\(5));

-- Location: FF_X17_Y72_N25
\inst4|ff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(5),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff5|q~q\);

-- Location: LCCOMB_X17_Y72_N4
\inst2|s0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(5) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(5))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s0\(5),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(5),
	combout => \inst2|s0\(5));

-- Location: FF_X17_Y72_N11
\inst3|ff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(5),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff5|q~q\);

-- Location: LCCOMB_X17_Y72_N10
\inst5|s[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[5]~4_combout\ = (\sel_mux~input_o\ & (\inst4|ff5|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff5|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ff5|q~q\,
	datac => \inst3|ff5|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[5]~4_combout\);

-- Location: IOIBUF_X16_Y73_N15
\data4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data4,
	o => \data4~input_o\);

-- Location: LCCOMB_X17_Y72_N2
\inst|s[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(4) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data4~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data4~input_o\,
	datac => \inst|s\(4),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(4));

-- Location: LCCOMB_X17_Y72_N14
\inst2|s0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(4) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(4))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s0\(4),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(4),
	combout => \inst2|s0\(4));

-- Location: FF_X17_Y72_N7
\inst3|ff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(4),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff4|q~q\);

-- Location: LCCOMB_X17_Y72_N20
\inst2|s1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(4) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(4)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(4),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(4),
	combout => \inst2|s1\(4));

-- Location: FF_X17_Y72_N21
\inst4|ff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(4),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff4|q~q\);

-- Location: LCCOMB_X17_Y72_N6
\inst5|s[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[4]~5_combout\ = (\sel_mux~input_o\ & ((\inst4|ff4|q~q\))) # (!\sel_mux~input_o\ & (\inst3|ff4|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux~input_o\,
	datac => \inst3|ff4|q~q\,
	datad => \inst4|ff4|q~q\,
	combout => \inst5|s[4]~5_combout\);

-- Location: IOIBUF_X20_Y73_N15
\data3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3,
	o => \data3~input_o\);

-- Location: LCCOMB_X17_Y72_N16
\inst|s[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(3) = (GLOBAL(\push_button~inputclkctrl_outclk\) & ((\data3~input_o\))) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & (\inst|s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s\(3),
	datac => \data3~input_o\,
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(3));

-- Location: LCCOMB_X17_Y72_N0
\inst2|s1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(3) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(3)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(3),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(3),
	combout => \inst2|s1\(3));

-- Location: FF_X17_Y72_N1
\inst4|ff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(3),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff3|q~q\);

-- Location: LCCOMB_X17_Y72_N8
\inst2|s0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(3) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(3))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s0\(3),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(3),
	combout => \inst2|s0\(3));

-- Location: FF_X17_Y72_N27
\inst3|ff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(3),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff3|q~q\);

-- Location: LCCOMB_X17_Y72_N26
\inst5|s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[3]~6_combout\ = (\sel_mux~input_o\ & (\inst4|ff3|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff3|q~q\,
	datac => \inst3|ff3|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[3]~6_combout\);

-- Location: IOIBUF_X18_Y73_N22
\data2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2,
	o => \data2~input_o\);

-- Location: LCCOMB_X17_Y72_N18
\inst|s[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(2) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data2~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data2~input_o\,
	datac => \inst|s\(2),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(2));

-- Location: LCCOMB_X17_Y72_N30
\inst2|s0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(2) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(2))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s0\(2),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(2),
	combout => \inst2|s0\(2));

-- Location: FF_X17_Y72_N23
\inst3|ff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(2),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff2|q~q\);

-- Location: LCCOMB_X17_Y72_N28
\inst2|s1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(2) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(2)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(2),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(2),
	combout => \inst2|s1\(2));

-- Location: FF_X17_Y72_N29
\inst4|ff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(2),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff2|q~q\);

-- Location: LCCOMB_X17_Y72_N22
\inst5|s[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[2]~7_combout\ = (\sel_mux~input_o\ & ((\inst4|ff2|q~q\))) # (!\sel_mux~input_o\ & (\inst3|ff2|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_mux~input_o\,
	datac => \inst3|ff2|q~q\,
	datad => \inst4|ff2|q~q\,
	combout => \inst5|s[2]~7_combout\);

-- Location: IOIBUF_X13_Y73_N15
\data1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1,
	o => \data1~input_o\);

-- Location: LCCOMB_X13_Y72_N28
\inst|s[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(1) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data1~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data1~input_o\,
	datac => \inst|s\(1),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(1));

-- Location: LCCOMB_X13_Y72_N8
\inst2|s1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(1) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(1)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(1),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(1),
	combout => \inst2|s1\(1));

-- Location: FF_X13_Y72_N9
\inst4|ff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(1),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff1|q~q\);

-- Location: LCCOMB_X13_Y72_N4
\inst2|s0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(1) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(1))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s0\(1),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(1),
	combout => \inst2|s0\(1));

-- Location: FF_X13_Y72_N11
\inst3|ff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(1),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff1|q~q\);

-- Location: LCCOMB_X13_Y72_N10
\inst5|s[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[1]~8_combout\ = (\sel_mux~input_o\ & (\inst4|ff1|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ff1|q~q\,
	datac => \inst3|ff1|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[1]~8_combout\);

-- Location: IOIBUF_X13_Y73_N22
\data0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0,
	o => \data0~input_o\);

-- Location: LCCOMB_X13_Y72_N6
\inst|s[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s\(0) = (GLOBAL(\push_button~inputclkctrl_outclk\) & (\data0~input_o\)) # (!GLOBAL(\push_button~inputclkctrl_outclk\) & ((\inst|s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data0~input_o\,
	datac => \inst|s\(0),
	datad => \push_button~inputclkctrl_outclk\,
	combout => \inst|s\(0));

-- Location: LCCOMB_X13_Y72_N24
\inst2|s1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s1\(0) = (GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(0)))) # (!GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s1\(0),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(0),
	combout => \inst2|s1\(0));

-- Location: FF_X13_Y72_N25
\inst4|ff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	d => \inst2|s1\(0),
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ff0|q~q\);

-- Location: LCCOMB_X13_Y72_N30
\inst2|s0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s0\(0) = (GLOBAL(\key~inputclkctrl_outclk\) & (\inst2|s0\(0))) # (!GLOBAL(\key~inputclkctrl_outclk\) & ((\inst|s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s0\(0),
	datac => \key~inputclkctrl_outclk\,
	datad => \inst|s\(0),
	combout => \inst2|s0\(0));

-- Location: FF_X13_Y72_N27
\inst3|ff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push_button~inputclkctrl_outclk\,
	asdata => \inst2|s0\(0),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ff0|q~q\);

-- Location: LCCOMB_X13_Y72_N26
\inst5|s[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s[0]~9_combout\ = (\sel_mux~input_o\ & (\inst4|ff0|q~q\)) # (!\sel_mux~input_o\ & ((\inst3|ff0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ff0|q~q\,
	datac => \inst3|ff0|q~q\,
	datad => \sel_mux~input_o\,
	combout => \inst5|s[0]~9_combout\);

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


