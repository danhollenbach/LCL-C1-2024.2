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

-- DATE "01/22/2025 17:50:13"

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

ENTITY 	exp8 IS
    PORT (
	COUNT : OUT std_logic_vector(2 DOWNTO 0);
	RESET : IN std_logic;
	CLOCK : IN std_logic
	);
END exp8;

-- Design Ports Information
-- COUNT[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exp8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_COUNT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL \COUNT[2]~output_o\ : std_logic;
SIGNAL \COUNT[1]~output_o\ : std_logic;
SIGNAL \COUNT[0]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

BEGIN

COUNT <= ww_COUNT;
ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;

-- Location: IOOBUF_X29_Y31_N2
\COUNT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \COUNT[2]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\COUNT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \COUNT[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\COUNT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \COUNT[0]~output_o\);

-- Location: IOIBUF_X12_Y31_N1
\CLOCK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: LCCOMB_X12_Y30_N12
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	combout => \inst~0_combout\);

-- Location: IOIBUF_X12_Y31_N8
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X12_Y30_N13
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \inst~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

ww_COUNT(2) <= \COUNT[2]~output_o\;

ww_COUNT(1) <= \COUNT[1]~output_o\;

ww_COUNT(0) <= \COUNT[0]~output_o\;
END structure;


