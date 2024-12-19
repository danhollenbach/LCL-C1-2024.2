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

-- DATE "12/07/2024 16:13:24"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pre1 IS
    PORT (
	A : OUT std_logic;
	B1 : IN std_logic;
	B0 : IN std_logic;
	B : OUT std_logic;
	B2 : IN std_logic;
	B5 : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	C : OUT std_logic;
	B6 : IN std_logic;
	B7 : IN std_logic;
	D : OUT std_logic;
	B8 : IN std_logic
	);
END Pre1;

-- Design Ports Information
-- A	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B5	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B6	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B7	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B8	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pre1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_B8 : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B5~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \B6~input_o\ : std_logic;
SIGNAL \B7~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \B8~input_o\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;

BEGIN

A <= ww_A;
ww_B1 <= B1;
ww_B0 <= B0;
B <= ww_B;
ww_B2 <= B2;
ww_B5 <= B5;
ww_B4 <= B4;
ww_B3 <= B3;
C <= ww_C;
ww_B6 <= B6;
ww_B7 <= B7;
D <= ww_D;
ww_B8 <= B8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N2
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X0_Y8_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X1_Y5_N8
inst : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\B0~input_o\) # (\B1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B0~input_o\,
	datad => \B1~input_o\,
	combout => \inst~combout\);

-- Location: IOIBUF_X0_Y4_N22
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\B5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B5,
	o => \B5~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\B4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: LCCOMB_X1_Y5_N2
\inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (!\B0~input_o\ & (!\B3~input_o\ & (!\B4~input_o\ & !\B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B0~input_o\,
	datab => \B3~input_o\,
	datac => \B4~input_o\,
	datad => \B1~input_o\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X1_Y5_N20
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\B2~input_o\) # ((\B5~input_o\) # (!\inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \B5~input_o\,
	datad => \inst3~0_combout\,
	combout => \inst3~combout\);

-- Location: IOIBUF_X0_Y4_N15
\B6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B6,
	o => \B6~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\B7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B7,
	o => \B7~input_o\);

-- Location: LCCOMB_X1_Y5_N6
\inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\B6~input_o\) # ((\B5~input_o\) # ((\B4~input_o\) # (\B7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datab => \B5~input_o\,
	datac => \B4~input_o\,
	datad => \B7~input_o\,
	combout => \inst2~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\B8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B8,
	o => \B8~input_o\);

-- Location: LCCOMB_X1_Y5_N24
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\B7~input_o\) # ((\B8~input_o\) # (!\inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B7~input_o\,
	datac => \B8~input_o\,
	datad => \inst3~0_combout\,
	combout => \inst5~combout\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


