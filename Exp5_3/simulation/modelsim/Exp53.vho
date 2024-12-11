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

-- DATE "12/10/2024 11:01:23"

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

ENTITY 	Exp53 IS
    PORT (
	S : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	E : IN std_logic;
	F : IN std_logic;
	G : IN std_logic
	);
END Exp53;

-- Design Ports Information
-- S	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp53 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \G~input_o\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~5_combout\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~6_combout\ : std_logic;

BEGIN

S <= ww_S;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_E <= E;
ww_F <= F;
ww_G <= G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\S~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~6_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\E~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\C~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\G~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G,
	o => \G~input_o\);

-- Location: LCCOMB_X19_Y2_N6
\inst|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\E~input_o\ & ((\G~input_o\) # ((\B~input_o\ & !\C~input_o\)))) # (!\E~input_o\ & (\G~input_o\ & (\B~input_o\ $ (!\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \B~input_o\,
	datac => \C~input_o\,
	datad => \G~input_o\,
	combout => \inst|Mux0~3_combout\);

-- Location: IOIBUF_X14_Y0_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\F~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F,
	o => \F~input_o\);

-- Location: LCCOMB_X19_Y2_N26
\inst|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\F~input_o\ & ((\G~input_o\) # ((!\A~input_o\ & \D~input_o\)))) # (!\F~input_o\ & (\A~input_o\ & (\D~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \D~input_o\,
	datac => \F~input_o\,
	datad => \G~input_o\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y2_N12
\inst|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\C~input_o\ & ((\G~input_o\) # (\E~input_o\ $ (\B~input_o\)))) # (!\C~input_o\ & (\G~input_o\ & ((\E~input_o\) # (\B~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \B~input_o\,
	datac => \C~input_o\,
	datad => \G~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y2_N2
\inst|Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~5_combout\ = (\inst|Mux0~2_combout\ & ((\inst|Mux0~1_combout\))) # (!\inst|Mux0~2_combout\ & (\inst|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~5_combout\);

-- Location: LCCOMB_X19_Y2_N24
\inst|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (\inst|Mux0~3_combout\ & (\inst|Mux0~1_combout\ & \inst|Mux0~2_combout\)) # (!\inst|Mux0~3_combout\ & (\inst|Mux0~1_combout\ $ (\inst|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~4_combout\);

-- Location: LCCOMB_X19_Y2_N0
\inst|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\D~input_o\ & ((\G~input_o\ & ((!\F~input_o\))) # (!\G~input_o\ & (\A~input_o\)))) # (!\D~input_o\ & (\A~input_o\ & (\F~input_o\ $ (\G~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \D~input_o\,
	datac => \F~input_o\,
	datad => \G~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y2_N28
\inst|Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Mux0~6_combout\ = (\E~input_o\ & (\inst|Mux0~4_combout\ & (\inst|Mux0~5_combout\ $ (\inst|Mux0~0_combout\)))) # (!\E~input_o\ & (\inst|Mux0~5_combout\ & ((\inst|Mux0~4_combout\) # (!\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \inst|Mux0~5_combout\,
	datac => \inst|Mux0~4_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst|Mux0~6_combout\);

ww_S <= \S~output_o\;
END structure;


