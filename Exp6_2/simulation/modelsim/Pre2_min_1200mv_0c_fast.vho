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

-- DATE "12/18/2024 08:22:03"

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

ENTITY 	Pre2 IS
    PORT (
	B0 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	B1 : OUT std_logic;
	B3 : OUT std_logic;
	B4 : OUT std_logic;
	B5 : OUT std_logic;
	B6 : OUT std_logic;
	B7 : OUT std_logic;
	B8 : OUT std_logic;
	B9 : OUT std_logic;
	B2 : OUT std_logic
	);
END Pre2;

-- Design Ports Information
-- B0	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B5	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B6	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B7	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B8	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B9	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pre2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_B8 : std_logic;
SIGNAL ww_B9 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL \B0~output_o\ : std_logic;
SIGNAL \B1~output_o\ : std_logic;
SIGNAL \B3~output_o\ : std_logic;
SIGNAL \B4~output_o\ : std_logic;
SIGNAL \B5~output_o\ : std_logic;
SIGNAL \B6~output_o\ : std_logic;
SIGNAL \B7~output_o\ : std_logic;
SIGNAL \B8~output_o\ : std_logic;
SIGNAL \B9~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|saida[1]~0_combout\ : std_logic;
SIGNAL \inst|saida[3]~1_combout\ : std_logic;
SIGNAL \inst|saida[4]~2_combout\ : std_logic;
SIGNAL \inst|saida[5]~3_combout\ : std_logic;
SIGNAL \inst|saida[6]~4_combout\ : std_logic;
SIGNAL \inst|saida[7]~5_combout\ : std_logic;
SIGNAL \inst|saida[8]~6_combout\ : std_logic;
SIGNAL \inst|saida[9]~7_combout\ : std_logic;
SIGNAL \inst|saida[2]~8_combout\ : std_logic;
SIGNAL \inst|saida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_saida\ : std_logic_vector(0 DOWNTO 0);

BEGIN

B0 <= ww_B0;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
B1 <= ww_B1;
B3 <= ww_B3;
B4 <= ww_B4;
B5 <= ww_B5;
B6 <= ww_B6;
B7 <= ww_B7;
B8 <= ww_B8;
B9 <= ww_B9;
B2 <= ww_B2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_saida\(0) <= NOT \inst|saida\(0);

-- Location: IOOBUF_X26_Y0_N2
\B0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_saida\(0),
	devoe => ww_devoe,
	o => \B0~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\B1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => \B1~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\B3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[3]~1_combout\,
	devoe => ww_devoe,
	o => \B3~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\B4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[4]~2_combout\,
	devoe => ww_devoe,
	o => \B4~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\B5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => \B5~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\B6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[6]~4_combout\,
	devoe => ww_devoe,
	o => \B6~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\B7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[7]~5_combout\,
	devoe => ww_devoe,
	o => \B7~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\B8~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[8]~6_combout\,
	devoe => ww_devoe,
	o => \B8~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\B9~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[9]~7_combout\,
	devoe => ww_devoe,
	o => \B9~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\B2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|saida[2]~8_combout\,
	devoe => ww_devoe,
	o => \B2~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\C~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X21_Y2_N8
\inst|saida[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida\(0) = (\C~input_o\) # ((\B~input_o\) # ((\D~input_o\) # (\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida\(0));

-- Location: LCCOMB_X21_Y2_N10
\inst|saida[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[1]~0_combout\ = (!\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[1]~0_combout\);

-- Location: LCCOMB_X21_Y2_N28
\inst|saida[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[3]~1_combout\ = (\C~input_o\ & (!\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[3]~1_combout\);

-- Location: LCCOMB_X21_Y2_N6
\inst|saida[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[4]~2_combout\ = (\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[4]~2_combout\);

-- Location: LCCOMB_X21_Y2_N0
\inst|saida[5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[5]~3_combout\ = (\C~input_o\ & (\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[5]~3_combout\);

-- Location: LCCOMB_X21_Y2_N2
\inst|saida[6]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[6]~4_combout\ = (!\C~input_o\ & (\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[6]~4_combout\);

-- Location: LCCOMB_X21_Y2_N4
\inst|saida[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[7]~5_combout\ = (!\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[7]~5_combout\);

-- Location: LCCOMB_X21_Y2_N22
\inst|saida[8]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[8]~6_combout\ = (!\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[8]~6_combout\);

-- Location: LCCOMB_X21_Y2_N24
\inst|saida[9]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[9]~7_combout\ = (!\C~input_o\ & (\B~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[9]~7_combout\);

-- Location: LCCOMB_X21_Y2_N18
\inst|saida[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|saida[2]~8_combout\ = (\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|saida[2]~8_combout\);

ww_B0 <= \B0~output_o\;

ww_B1 <= \B1~output_o\;

ww_B3 <= \B3~output_o\;

ww_B4 <= \B4~output_o\;

ww_B5 <= \B5~output_o\;

ww_B6 <= \B6~output_o\;

ww_B7 <= \B7~output_o\;

ww_B8 <= \B8~output_o\;

ww_B9 <= \B9~output_o\;

ww_B2 <= \B2~output_o\;
END structure;


