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

-- DATE "12/18/2024 23:09:38"

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

ENTITY 	Pre3 IS
    PORT (
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Pre3;

-- Design Ports Information
-- LEDG[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pre3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|a~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst2|d~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst2|b~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst2|c~0_combout\ : std_logic;
SIGNAL \inst2|c~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst2|d~1_combout\ : std_logic;
SIGNAL \inst|saida[9]~13_combout\ : std_logic;
SIGNAL \inst|saida[8]~14_combout\ : std_logic;
SIGNAL \inst|saida[7]~8_combout\ : std_logic;
SIGNAL \inst|saida[6]~9_combout\ : std_logic;
SIGNAL \inst|saida[5]~10_combout\ : std_logic;
SIGNAL \inst|saida[4]~11_combout\ : std_logic;
SIGNAL \inst|saida[3]~15_combout\ : std_logic;
SIGNAL \inst|saida[2]~16_combout\ : std_logic;
SIGNAL \inst|saida[0]~12_combout\ : std_logic;
SIGNAL \inst|saida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_saida[0]~12_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_d~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_c~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_b~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_a~0_combout\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_saida[0]~12_combout\ <= NOT \inst|saida[0]~12_combout\;
\inst2|ALT_INV_d~1_combout\ <= NOT \inst2|d~1_combout\;
\inst2|ALT_INV_c~1_combout\ <= NOT \inst2|c~1_combout\;
\inst2|ALT_INV_b~0_combout\ <= NOT \inst2|b~0_combout\;
\inst2|ALT_INV_a~0_combout\ <= NOT \inst2|a~0_combout\;

-- Location: IOOBUF_X29_Y31_N9
\LEDG[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\LEDG[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_b~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\LEDG[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_c~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\LEDG[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_d~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\LEDR[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[9]~13_combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\LEDR[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[8]~14_combout\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\LEDR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[7]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\LEDR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[6]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\LEDR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[5]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\LEDR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[4]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\LEDR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[3]~15_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\LEDR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[2]~16_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\LEDR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_saida[0]~12_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X21_Y7_N8
\inst2|a~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|a~0_combout\ = (!\SW[1]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst2|a~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\SW[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\SW[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X21_Y7_N10
\inst2|d~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|d~0_combout\ = (!\SW[4]~input_o\ & !\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	combout => \inst2|d~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X21_Y7_N4
\inst2|b~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|b~0_combout\ = (\inst2|d~0_combout\ & (!\SW[2]~input_o\ & (\inst2|a~0_combout\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|d~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \inst2|a~0_combout\,
	datad => \SW[3]~input_o\,
	combout => \inst2|b~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\SW[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\SW[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X21_Y7_N6
\inst2|c~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|c~0_combout\ = (!\SW[4]~input_o\ & (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst2|c~0_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst2|c~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|c~1_combout\ = (\inst2|c~0_combout\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|c~0_combout\,
	datac => \SW[0]~input_o\,
	combout => \inst2|c~1_combout\);

-- Location: IOIBUF_X33_Y16_N22
\SW[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X21_Y7_N18
\inst2|d~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|d~1_combout\ = (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst2|d~1_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst|saida[9]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[9]~13_combout\ = (\inst2|c~0_combout\ & (!\inst2|d~1_combout\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|c~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|saida[9]~13_combout\);

-- Location: LCCOMB_X21_Y7_N2
\inst|saida[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[8]~14_combout\ = (\inst2|c~0_combout\ & (\inst2|d~1_combout\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|c~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|saida[8]~14_combout\);

-- Location: LCCOMB_X21_Y7_N20
\inst|saida[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[7]~8_combout\ = (!\inst2|b~0_combout\ & (\inst2|d~1_combout\ & (\inst2|a~0_combout\ & \inst2|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \inst2|a~0_combout\,
	datad => \inst2|c~1_combout\,
	combout => \inst|saida[7]~8_combout\);

-- Location: LCCOMB_X21_Y7_N22
\inst|saida[6]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[6]~9_combout\ = (!\inst2|b~0_combout\ & (!\inst2|d~1_combout\ & (\inst2|a~0_combout\ & \inst2|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \inst2|a~0_combout\,
	datad => \inst2|c~1_combout\,
	combout => \inst|saida[6]~9_combout\);

-- Location: LCCOMB_X21_Y7_N0
\inst|saida[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[5]~10_combout\ = (!\inst2|b~0_combout\ & (!\inst2|d~1_combout\ & (\inst2|a~0_combout\ & !\inst2|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \inst2|a~0_combout\,
	datad => \inst2|c~1_combout\,
	combout => \inst|saida[5]~10_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst|saida[4]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[4]~11_combout\ = (!\inst2|b~0_combout\ & (\inst2|d~1_combout\ & (\inst2|a~0_combout\ & !\inst2|c~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \inst2|a~0_combout\,
	datad => \inst2|c~1_combout\,
	combout => \inst|saida[4]~11_combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst|saida[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[3]~15_combout\ = (\inst2|d~1_combout\ & (\inst2|b~0_combout\ & ((\SW[0]~input_o\) # (!\inst2|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|c~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst2|b~0_combout\,
	combout => \inst|saida[3]~15_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst|saida[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[2]~16_combout\ = (!\inst2|d~1_combout\ & (\inst2|b~0_combout\ & ((\SW[0]~input_o\) # (!\inst2|c~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|c~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst2|b~0_combout\,
	combout => \inst|saida[2]~16_combout\);

-- Location: LCCOMB_X21_Y7_N12
\inst|saida[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida\(1) = (\inst2|b~0_combout\ & (!\inst2|d~1_combout\ & (!\SW[8]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b~0_combout\,
	datab => \inst2|d~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|saida\(1));

-- Location: LCCOMB_X21_Y7_N14
\inst|saida[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[0]~12_combout\ = ((\SW[8]~input_o\) # ((\SW[6]~input_o\) # (\SW[7]~input_o\))) # (!\inst2|b~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|b~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|saida[0]~12_combout\);

-- Location: IOIBUF_X31_Y31_N1
\SW[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


