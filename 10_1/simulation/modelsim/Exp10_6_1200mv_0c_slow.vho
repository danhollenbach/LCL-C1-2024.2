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

-- DATE "02/04/2025 08:56:44"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exp10 IS
    PORT (
	GREEN_C : OUT std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOCK : IN std_logic;
	RED_C : OUT std_logic;
	YELLOW_C : OUT std_logic;
	GREEN_P : OUT std_logic;
	RED_P : OUT std_logic
	);
END Exp10;

-- Design Ports Information
-- GREEN_C	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED_C	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- YELLOW_C	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GREEN_P	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RED_P	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GREEN_C : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RED_C : std_logic;
SIGNAL ww_YELLOW_C : std_logic;
SIGNAL ww_GREEN_P : std_logic;
SIGNAL ww_RED_P : std_logic;
SIGNAL \SW[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GREEN_C~output_o\ : std_logic;
SIGNAL \RED_C~output_o\ : std_logic;
SIGNAL \YELLOW_C~output_o\ : std_logic;
SIGNAL \GREEN_P~output_o\ : std_logic;
SIGNAL \RED_P~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|next.ESTADO_2~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state.ESTADO_2~q\ : std_logic;
SIGNAL \inst|next.ESTADO_31~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_31~q\ : std_logic;
SIGNAL \inst|next.ESTADO_32~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_32~q\ : std_logic;
SIGNAL \inst|next.ESTADO_33~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_33~q\ : std_logic;
SIGNAL \inst|next.ESTADO_34~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_34~q\ : std_logic;
SIGNAL \inst|next.ESTADO_41~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_41~q\ : std_logic;
SIGNAL \inst|next.ESTADO_42~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_42~q\ : std_logic;
SIGNAL \inst|next.ESTADO_43~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_43~q\ : std_logic;
SIGNAL \inst|next.ESTADO_44~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_44~q\ : std_logic;
SIGNAL \inst|next.ESTADO_45~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_45~q\ : std_logic;
SIGNAL \inst|state.APAGA_TODAS~feeder_combout\ : std_logic;
SIGNAL \inst|state.APAGA_TODAS~q\ : std_logic;
SIGNAL \inst|Selector1~6_combout\ : std_logic;
SIGNAL \inst|Selector1~5_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|next.ESTADO_5B~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_5B~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~3_combout\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|Selector1~4_combout\ : std_logic;
SIGNAL \inst|Selector1~7_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_5A~q\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0_wirecell_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_11~q\ : std_logic;
SIGNAL \inst|next.ESTADO_12~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_12~q\ : std_logic;
SIGNAL \inst|next.ESTADO_13~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_13~q\ : std_logic;
SIGNAL \inst|next.ESTADO_14~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_14~q\ : std_logic;
SIGNAL \inst|next.ESTADO_15~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_15~q\ : std_logic;
SIGNAL \inst|next.ESTADO_16~0_combout\ : std_logic;
SIGNAL \inst|state.ESTADO_16~q\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst|yc~combout\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr2~1_combout\ : std_logic;

BEGIN

GREEN_C <= ww_GREEN_C;
ww_SW <= SW;
ww_CLOCK <= CLOCK;
RED_C <= ww_RED_C;
YELLOW_C <= ww_YELLOW_C;
GREEN_P <= ww_GREEN_P;
RED_P <= ww_RED_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SW[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[1]~input_o\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\ALT_INV_SW[1]~inputclkctrl_outclk\ <= NOT \SW[1]~inputclkctrl_outclk\;
\inst|ALT_INV_WideOr4~combout\ <= NOT \inst|WideOr4~combout\;
\inst|ALT_INV_WideOr2~1_combout\ <= NOT \inst|WideOr2~1_combout\;

-- Location: IOOBUF_X24_Y0_N2
\GREEN_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr1~combout\,
	devoe => ww_devoe,
	o => \GREEN_C~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\RED_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr2~combout\,
	devoe => ww_devoe,
	o => \RED_C~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\YELLOW_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|yc~combout\,
	devoe => ww_devoe,
	o => \YELLOW_C~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\GREEN_P~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \GREEN_P~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\RED_P~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \RED_P~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLOCK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G17
\CLOCK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y12_N1
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X25_Y12_N26
\inst|next.ESTADO_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_2~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_16~q\,
	combout => \inst|next.ESTADO_2~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: CLKCTRL_G19
\SW[1]~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[1]~inputclkctrl_outclk\);

-- Location: FF_X25_Y12_N27
\inst|state.ESTADO_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_2~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_2~q\);

-- Location: LCCOMB_X25_Y12_N14
\inst|next.ESTADO_31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_31~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \inst|state.ESTADO_2~q\,
	combout => \inst|next.ESTADO_31~0_combout\);

-- Location: FF_X25_Y12_N15
\inst|state.ESTADO_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_31~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_31~q\);

-- Location: LCCOMB_X25_Y12_N20
\inst|next.ESTADO_32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_32~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_31~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_31~q\,
	combout => \inst|next.ESTADO_32~0_combout\);

-- Location: FF_X25_Y12_N21
\inst|state.ESTADO_32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_32~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_32~q\);

-- Location: LCCOMB_X25_Y12_N30
\inst|next.ESTADO_33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_33~0_combout\ = (\inst|state.ESTADO_32~q\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_32~q\,
	datac => \SW[0]~input_o\,
	combout => \inst|next.ESTADO_33~0_combout\);

-- Location: FF_X25_Y12_N31
\inst|state.ESTADO_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_33~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_33~q\);

-- Location: LCCOMB_X26_Y12_N8
\inst|next.ESTADO_34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_34~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_33~q\,
	combout => \inst|next.ESTADO_34~0_combout\);

-- Location: FF_X26_Y12_N9
\inst|state.ESTADO_34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_34~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_34~q\);

-- Location: LCCOMB_X26_Y12_N10
\inst|next.ESTADO_41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_41~0_combout\ = (\inst|state.ESTADO_34~q\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ESTADO_34~q\,
	datad => \SW[0]~input_o\,
	combout => \inst|next.ESTADO_41~0_combout\);

-- Location: FF_X26_Y12_N11
\inst|state.ESTADO_41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_41~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_41~q\);

-- Location: LCCOMB_X26_Y12_N18
\inst|next.ESTADO_42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_42~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_41~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_41~q\,
	combout => \inst|next.ESTADO_42~0_combout\);

-- Location: FF_X26_Y12_N19
\inst|state.ESTADO_42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_42~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_42~q\);

-- Location: LCCOMB_X26_Y12_N16
\inst|next.ESTADO_43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_43~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_42~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_42~q\,
	combout => \inst|next.ESTADO_43~0_combout\);

-- Location: FF_X26_Y12_N17
\inst|state.ESTADO_43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_43~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_43~q\);

-- Location: LCCOMB_X26_Y12_N24
\inst|next.ESTADO_44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_44~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_43~q\,
	combout => \inst|next.ESTADO_44~0_combout\);

-- Location: FF_X26_Y12_N25
\inst|state.ESTADO_44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_44~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_44~q\);

-- Location: LCCOMB_X26_Y12_N6
\inst|next.ESTADO_45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_45~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_44~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_44~q\,
	combout => \inst|next.ESTADO_45~0_combout\);

-- Location: FF_X26_Y12_N7
\inst|state.ESTADO_45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_45~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_45~q\);

-- Location: LCCOMB_X27_Y12_N6
\inst|state.APAGA_TODAS~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|state.APAGA_TODAS~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|state.APAGA_TODAS~feeder_combout\);

-- Location: FF_X27_Y12_N7
\inst|state.APAGA_TODAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|state.APAGA_TODAS~feeder_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.APAGA_TODAS~q\);

-- Location: LCCOMB_X26_Y12_N2
\inst|Selector1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~6_combout\ = (\inst|state.ESTADO_45~q\) # ((\SW[0]~input_o\ & ((\inst|state.ESTADO_11~q\) # (!\inst|state.APAGA_TODAS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_45~q\,
	datab => \SW[0]~input_o\,
	datac => \inst|state.ESTADO_11~q\,
	datad => \inst|state.APAGA_TODAS~q\,
	combout => \inst|Selector1~6_combout\);

-- Location: LCCOMB_X25_Y12_N6
\inst|Selector1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~5_combout\ = (\SW[0]~input_o\ & ((\inst|state.ESTADO_13~q\) # ((\inst|state.ESTADO_12~q\) # (\inst|state.ESTADO_14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|state.ESTADO_13~q\,
	datac => \inst|state.ESTADO_12~q\,
	datad => \inst|state.ESTADO_14~q\,
	combout => \inst|Selector1~5_combout\);

-- Location: LCCOMB_X26_Y12_N26
\inst|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\SW[0]~input_o\ & ((\inst|state.ESTADO_41~q\) # ((\inst|state.ESTADO_34~q\) # (\inst|state.ESTADO_42~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_41~q\,
	datab => \SW[0]~input_o\,
	datac => \inst|state.ESTADO_34~q\,
	datad => \inst|state.ESTADO_42~q\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst|next.ESTADO_5B~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_5B~0_combout\ = (\SW[0]~input_o\ & \inst|state.ESTADO_5A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_5A~q\,
	combout => \inst|next.ESTADO_5B~0_combout\);

-- Location: FF_X26_Y12_N15
\inst|state.ESTADO_5B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_5B~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_5B~q\);

-- Location: LCCOMB_X26_Y12_N28
\inst|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\SW[0]~input_o\ & ((\inst|state.ESTADO_43~q\) # ((\inst|state.ESTADO_5B~q\) # (\inst|state.ESTADO_44~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|state.ESTADO_43~q\,
	datac => \inst|state.ESTADO_5B~q\,
	datad => \inst|state.ESTADO_44~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\inst|Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~3_combout\ = (\SW[0]~input_o\ & ((\inst|state.ESTADO_2~q\) # ((\inst|state.ESTADO_15~q\) # (\inst|state.ESTADO_16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_2~q\,
	datab => \SW[0]~input_o\,
	datac => \inst|state.ESTADO_15~q\,
	datad => \inst|state.ESTADO_16~q\,
	combout => \inst|Selector1~3_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\SW[0]~input_o\ & ((\inst|state.ESTADO_33~q\) # ((\inst|state.ESTADO_31~q\) # (\inst|state.ESTADO_32~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_33~q\,
	datab => \SW[0]~input_o\,
	datac => \inst|state.ESTADO_31~q\,
	datad => \inst|state.ESTADO_32~q\,
	combout => \inst|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y12_N20
\inst|Selector1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~4_combout\ = (\inst|Selector1~1_combout\) # ((\inst|Selector1~0_combout\) # ((\inst|Selector1~3_combout\) # (\inst|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector1~1_combout\,
	datab => \inst|Selector1~0_combout\,
	datac => \inst|Selector1~3_combout\,
	datad => \inst|Selector1~2_combout\,
	combout => \inst|Selector1~4_combout\);

-- Location: LCCOMB_X26_Y12_N12
\inst|Selector1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Selector1~7_combout\ = (\inst|Selector1~6_combout\) # ((\inst|Selector1~5_combout\) # (\inst|Selector1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector1~6_combout\,
	datac => \inst|Selector1~5_combout\,
	datad => \inst|Selector1~4_combout\,
	combout => \inst|Selector1~7_combout\);

-- Location: FF_X26_Y12_N13
\inst|state.ESTADO_5A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|Selector1~7_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_5A~q\);

-- Location: LCCOMB_X26_Y12_N0
\inst|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (!\inst|state.ESTADO_5A~q\ & (!\inst|state.ESTADO_5B~q\ & \inst|state.APAGA_TODAS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_5A~q\,
	datac => \inst|state.ESTADO_5B~q\,
	datad => \inst|state.APAGA_TODAS~q\,
	combout => \inst|WideOr4~0_combout\);

-- Location: LCCOMB_X26_Y12_N4
\inst|WideOr4~0_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_wirecell_combout\ = !\inst|WideOr4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr4~0_combout\,
	combout => \inst|WideOr4~0_wirecell_combout\);

-- Location: FF_X26_Y12_N5
\inst|state.ESTADO_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|WideOr4~0_wirecell_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_11~q\);

-- Location: LCCOMB_X25_Y12_N4
\inst|next.ESTADO_12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_12~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_11~q\,
	combout => \inst|next.ESTADO_12~0_combout\);

-- Location: FF_X25_Y12_N5
\inst|state.ESTADO_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_12~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_12~q\);

-- Location: LCCOMB_X25_Y12_N18
\inst|next.ESTADO_13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_13~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \inst|state.ESTADO_12~q\,
	combout => \inst|next.ESTADO_13~0_combout\);

-- Location: FF_X25_Y12_N19
\inst|state.ESTADO_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_13~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_13~q\);

-- Location: LCCOMB_X25_Y12_N0
\inst|next.ESTADO_14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_14~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_13~q\,
	combout => \inst|next.ESTADO_14~0_combout\);

-- Location: FF_X25_Y12_N1
\inst|state.ESTADO_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_14~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_14~q\);

-- Location: LCCOMB_X25_Y12_N22
\inst|next.ESTADO_15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_15~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_14~q\,
	combout => \inst|next.ESTADO_15~0_combout\);

-- Location: FF_X25_Y12_N23
\inst|state.ESTADO_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_15~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_15~q\);

-- Location: LCCOMB_X25_Y12_N10
\inst|next.ESTADO_16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|next.ESTADO_16~0_combout\ = (!\SW[0]~input_o\ & \inst|state.ESTADO_15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \inst|state.ESTADO_15~q\,
	combout => \inst|next.ESTADO_16~0_combout\);

-- Location: FF_X25_Y12_N11
\inst|state.ESTADO_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst|next.ESTADO_16~0_combout\,
	clrn => \ALT_INV_SW[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ESTADO_16~q\);

-- Location: LCCOMB_X25_Y12_N8
\inst|WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst|state.ESTADO_14~q\) # ((\inst|state.ESTADO_12~q\) # ((\inst|state.ESTADO_15~q\) # (\inst|state.ESTADO_13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_14~q\,
	datab => \inst|state.ESTADO_12~q\,
	datac => \inst|state.ESTADO_15~q\,
	datad => \inst|state.ESTADO_13~q\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X25_Y12_N12
\inst|WideOr1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr1~combout\ = (\inst|state.ESTADO_16~q\) # ((\inst|WideOr1~0_combout\) # (\inst|state.ESTADO_11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_16~q\,
	datac => \inst|WideOr1~0_combout\,
	datad => \inst|state.ESTADO_11~q\,
	combout => \inst|WideOr1~combout\);

-- Location: LCCOMB_X27_Y12_N4
\inst|WideOr2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|state.ESTADO_41~q\) # ((\inst|state.ESTADO_45~q\) # (\inst|state.ESTADO_43~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_41~q\,
	datab => \inst|state.ESTADO_45~q\,
	datac => \inst|state.ESTADO_43~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X25_Y12_N28
\inst|WideOr2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|state.ESTADO_33~q\ & (!\inst|state.ESTADO_31~q\ & (!\inst|state.ESTADO_34~q\ & !\inst|state.ESTADO_32~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ESTADO_33~q\,
	datab => \inst|state.ESTADO_31~q\,
	datac => \inst|state.ESTADO_34~q\,
	datad => \inst|state.ESTADO_32~q\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X26_Y12_N30
\inst|WideOr2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|WideOr2~0_combout\) # ((\inst|state.ESTADO_44~q\) # ((\inst|state.ESTADO_42~q\) # (!\inst|WideOr2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|state.ESTADO_44~q\,
	datac => \inst|state.ESTADO_42~q\,
	datad => \inst|WideOr2~1_combout\,
	combout => \inst|WideOr2~combout\);

-- Location: LCCOMB_X25_Y12_N24
\inst|yc\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|yc~combout\ = (\inst|state.ESTADO_5A~q\) # (\inst|state.ESTADO_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ESTADO_5A~q\,
	datac => \inst|state.ESTADO_2~q\,
	combout => \inst|yc~combout\);

-- Location: LCCOMB_X26_Y12_N22
\inst|WideOr4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = ((\inst|state.ESTADO_44~q\) # ((\inst|state.ESTADO_42~q\) # (!\inst|WideOr2~1_combout\))) # (!\inst|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~0_combout\,
	datab => \inst|state.ESTADO_44~q\,
	datac => \inst|state.ESTADO_42~q\,
	datad => \inst|WideOr2~1_combout\,
	combout => \inst|WideOr4~combout\);

ww_GREEN_C <= \GREEN_C~output_o\;

ww_RED_C <= \RED_C~output_o\;

ww_YELLOW_C <= \YELLOW_C~output_o\;

ww_GREEN_P <= \GREEN_P~output_o\;

ww_RED_P <= \RED_P~output_o\;
END structure;


