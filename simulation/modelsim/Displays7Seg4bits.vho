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

-- DATE "10/17/2023 16:35:59"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Displays7Seg4bits IS
    PORT (
	abcd : IN std_logic_vector(3 DOWNTO 0);
	salida1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Displays7Seg4bits;

-- Design Ports Information
-- salida1[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida1[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcd[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcd[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcd[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abcd[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Displays7Seg4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_abcd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \salida1[0]~output_o\ : std_logic;
SIGNAL \salida1[1]~output_o\ : std_logic;
SIGNAL \salida1[2]~output_o\ : std_logic;
SIGNAL \salida1[3]~output_o\ : std_logic;
SIGNAL \salida1[4]~output_o\ : std_logic;
SIGNAL \salida1[5]~output_o\ : std_logic;
SIGNAL \salida1[6]~output_o\ : std_logic;
SIGNAL \abcd[3]~input_o\ : std_logic;
SIGNAL \abcd[0]~input_o\ : std_logic;
SIGNAL \abcd[1]~input_o\ : std_logic;
SIGNAL \abcd[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_abcd <= abcd;
salida1 <= ww_salida1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y10_N9
\salida1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \salida1[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\salida1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \salida1[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\salida1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \salida1[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\salida1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \salida1[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\salida1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \salida1[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\salida1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \salida1[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\salida1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \salida1[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\abcd[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abcd(3),
	o => \abcd[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\abcd[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abcd(0),
	o => \abcd[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\abcd[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abcd(1),
	o => \abcd[1]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\abcd[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abcd(2),
	o => \abcd[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\abcd[0]~input_o\ & ((\abcd[3]~input_o\) # (\abcd[1]~input_o\ $ (\abcd[2]~input_o\)))) # (!\abcd[0]~input_o\ & ((\abcd[1]~input_o\) # (\abcd[3]~input_o\ $ (\abcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\abcd[0]~input_o\ & (\abcd[3]~input_o\ $ (((\abcd[1]~input_o\) # (!\abcd[2]~input_o\))))) # (!\abcd[0]~input_o\ & (!\abcd[3]~input_o\ & (\abcd[1]~input_o\ & !\abcd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\abcd[1]~input_o\ & (!\abcd[3]~input_o\ & (\abcd[0]~input_o\))) # (!\abcd[1]~input_o\ & ((\abcd[2]~input_o\ & (!\abcd[3]~input_o\)) # (!\abcd[2]~input_o\ & ((\abcd[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\abcd[0]~input_o\ & ((\abcd[1]~input_o\ $ (!\abcd[2]~input_o\)))) # (!\abcd[0]~input_o\ & ((\abcd[3]~input_o\ & (\abcd[1]~input_o\ & !\abcd[2]~input_o\)) # (!\abcd[3]~input_o\ & (!\abcd[1]~input_o\ & \abcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\abcd[3]~input_o\ & (\abcd[2]~input_o\ & ((\abcd[1]~input_o\) # (!\abcd[0]~input_o\)))) # (!\abcd[3]~input_o\ & (!\abcd[0]~input_o\ & (\abcd[1]~input_o\ & !\abcd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\abcd[3]~input_o\ & ((\abcd[0]~input_o\ & (\abcd[1]~input_o\)) # (!\abcd[0]~input_o\ & ((\abcd[2]~input_o\))))) # (!\abcd[3]~input_o\ & (\abcd[2]~input_o\ & (\abcd[0]~input_o\ $ (\abcd[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\abcd[3]~input_o\ & (\abcd[0]~input_o\ & (\abcd[1]~input_o\ $ (\abcd[2]~input_o\)))) # (!\abcd[3]~input_o\ & (!\abcd[1]~input_o\ & (\abcd[0]~input_o\ $ (\abcd[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd[3]~input_o\,
	datab => \abcd[0]~input_o\,
	datac => \abcd[1]~input_o\,
	datad => \abcd[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_salida1(0) <= \salida1[0]~output_o\;

ww_salida1(1) <= \salida1[1]~output_o\;

ww_salida1(2) <= \salida1[2]~output_o\;

ww_salida1(3) <= \salida1[3]~output_o\;

ww_salida1(4) <= \salida1[4]~output_o\;

ww_salida1(5) <= \salida1[5]~output_o\;

ww_salida1(6) <= \salida1[6]~output_o\;
END structure;


