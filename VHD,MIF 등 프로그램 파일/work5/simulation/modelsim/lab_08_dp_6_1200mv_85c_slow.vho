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

-- DATE "05/17/2022 19:46:40"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	lab_08_dp IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	out_sel : IN std_logic;
	state_out : OUT std_logic_vector(2 DOWNTO 0);
	iNOT10_out : OUT std_logic;
	dp_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab_08_dp;

-- Design Ports Information
-- state_out[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_out[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iNOT10_out	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sel	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_08_dp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_out_sel : std_logic;
SIGNAL ww_state_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_iNOT10_out : std_logic;
SIGNAL ww_dp_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_out[0]~output_o\ : std_logic;
SIGNAL \dp_out[1]~output_o\ : std_logic;
SIGNAL \dp_out[2]~output_o\ : std_logic;
SIGNAL \dp_out[3]~output_o\ : std_logic;
SIGNAL \state_out[0]~output_o\ : std_logic;
SIGNAL \state_out[1]~output_o\ : std_logic;
SIGNAL \state_out[2]~output_o\ : std_logic;
SIGNAL \iNOT10_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \data[3]~0_combout\ : std_logic;
SIGNAL \data[3]~1_combout\ : std_logic;
SIGNAL \data[1]~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \data[2]~2_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \data[3]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \state[0]~0_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \state[2]~1_combout\ : std_logic;
SIGNAL \data[0]~3_combout\ : std_logic;
SIGNAL \dp_out[0]~8_combout\ : std_logic;
SIGNAL \dp_out[0]~9_combout\ : std_logic;
SIGNAL \dp_out[0]~reg0_q\ : std_logic;
SIGNAL \out_sel~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \dp_out[0]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[0]~en_q\ : std_logic;
SIGNAL \dp_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[1]~reg0_q\ : std_logic;
SIGNAL \dp_out[1]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[1]~en_q\ : std_logic;
SIGNAL \dp_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[2]~reg0_q\ : std_logic;
SIGNAL \dp_out[2]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[2]~en_q\ : std_logic;
SIGNAL \dp_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[3]~reg0_q\ : std_logic;
SIGNAL \dp_out[3]~en_q\ : std_logic;
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL ALT_INV_state : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_out_sel <= out_sel;
state_out <= ww_state_out;
iNOT10_out <= ww_iNOT10_out;
dp_out <= ww_dp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;
ALT_INV_state(1) <= NOT state(1);

-- Location: IOOBUF_X28_Y24_N9
\dp_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[0]~reg0_q\,
	oe => \dp_out[0]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\dp_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[1]~reg0_q\,
	oe => \dp_out[1]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\dp_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[2]~reg0_q\,
	oe => \dp_out[2]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\dp_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[3]~reg0_q\,
	oe => \dp_out[3]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\state_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(0),
	devoe => ww_devoe,
	o => \state_out[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\state_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_state(1),
	devoe => ww_devoe,
	o => \state_out[1]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\state_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => \state_out[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\iNOT10_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \iNOT10_out~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X29_Y21_N6
\data[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]~0_combout\ = (\reset_n~input_o\) # ((state(2) & (!state(1))) # (!state(2) & ((state(1)) # (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => state(2),
	datac => state(1),
	datad => state(0),
	combout => \data[3]~0_combout\);

-- Location: LCCOMB_X30_Y21_N20
\data[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]~1_combout\ = (\data[3]~0_combout\) # ((state(0) & !\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => \data[3]~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \data[3]~1_combout\);

-- Location: LCCOMB_X30_Y21_N18
\data[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[1]~5_combout\ = (\data[3]~1_combout\ & (((data(1))))) # (!\data[3]~1_combout\ & (state(2) & (data(0) $ (data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datab => state(2),
	datac => data(1),
	datad => \data[3]~1_combout\,
	combout => \data[1]~5_combout\);

-- Location: FF_X30_Y21_N19
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X30_Y21_N26
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = data(2) $ (((data(0) & data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data(0),
	datac => data(1),
	datad => data(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X30_Y21_N28
\data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[2]~2_combout\ = (\data[3]~1_combout\ & (((data(2))))) # (!\data[3]~1_combout\ & (\Add0~0_combout\ & (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => state(2),
	datac => data(2),
	datad => \data[3]~1_combout\,
	combout => \data[2]~2_combout\);

-- Location: FF_X30_Y21_N29
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X30_Y21_N10
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = data(3) $ (((data(1) & (data(0) & data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datab => data(0),
	datac => data(3),
	datad => data(2),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X30_Y21_N4
\data[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]~4_combout\ = (\data[3]~1_combout\ & (((data(3))))) # (!\data[3]~1_combout\ & (\Add0~1_combout\ & (state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => state(2),
	datac => data(3),
	datad => \data[3]~1_combout\,
	combout => \data[3]~4_combout\);

-- Location: FF_X30_Y21_N5
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X30_Y21_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (data(0)) # ((data(2)) # ((!data(1)) # (!data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datab => data(2),
	datac => data(3),
	datad => data(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y21_N16
\state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[0]~0_combout\ = (state(1) & ((state(2) & ((\Equal0~0_combout\) # (!state(0)))) # (!state(2) & (state(0))))) # (!state(1) & (((state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => state(0),
	datad => \Equal0~0_combout\,
	combout => \state[0]~0_combout\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X29_Y21_N17
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state[0]~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X29_Y21_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (state(2) & (state(1) & ((\Equal0~0_combout\) # (!state(0))))) # (!state(2) & (((state(1))) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => state(1),
	datad => \Equal0~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X29_Y21_N31
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X29_Y21_N4
\state[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[2]~1_combout\ = (state(1) & (state(2) & ((\Equal0~0_combout\) # (!state(0))))) # (!state(1) & (((state(2))) # (!state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => \Equal0~0_combout\,
	combout => \state[2]~1_combout\);

-- Location: FF_X29_Y21_N5
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state[2]~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X30_Y21_N22
\data[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~3_combout\ = (data(0) & ((\data[3]~1_combout\))) # (!data(0) & (state(2) & !\data[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => data(0),
	datad => \data[3]~1_combout\,
	combout => \data[0]~3_combout\);

-- Location: FF_X30_Y21_N23
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X29_Y21_N20
\dp_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[0]~8_combout\ = (state(1) & (!\reset_n~input_o\ & (state(2) & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \reset_n~input_o\,
	datac => state(2),
	datad => state(0),
	combout => \dp_out[0]~8_combout\);

-- Location: LCCOMB_X29_Y21_N24
\dp_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[0]~9_combout\ = (\dp_out[0]~8_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_out[0]~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \dp_out[0]~9_combout\);

-- Location: FF_X29_Y21_N25
\dp_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data(0),
	sload => VCC,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[0]~reg0_q\);

-- Location: IOIBUF_X30_Y24_N1
\out_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_sel,
	o => \out_sel~input_o\);

-- Location: LCCOMB_X29_Y21_N18
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (((\out_sel~input_o\) # (!state(0))) # (!state(2))) # (!state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => \out_sel~input_o\,
	datad => state(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X29_Y21_N14
\dp_out[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[0]~enfeeder_combout\ = \Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~0_combout\,
	combout => \dp_out[0]~enfeeder_combout\);

-- Location: FF_X29_Y21_N15
\dp_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[0]~enfeeder_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[0]~en_q\);

-- Location: LCCOMB_X29_Y21_N28
\dp_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[1]~reg0feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(1),
	combout => \dp_out[1]~reg0feeder_combout\);

-- Location: FF_X29_Y21_N29
\dp_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[1]~reg0feeder_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[1]~reg0_q\);

-- Location: LCCOMB_X29_Y21_N26
\dp_out[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[1]~enfeeder_combout\ = \Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~0_combout\,
	combout => \dp_out[1]~enfeeder_combout\);

-- Location: FF_X29_Y21_N27
\dp_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[1]~enfeeder_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[1]~en_q\);

-- Location: LCCOMB_X29_Y21_N0
\dp_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[2]~reg0feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \dp_out[2]~reg0feeder_combout\);

-- Location: FF_X29_Y21_N1
\dp_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[2]~reg0feeder_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[2]~reg0_q\);

-- Location: LCCOMB_X29_Y21_N22
\dp_out[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[2]~enfeeder_combout\ = \Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~0_combout\,
	combout => \dp_out[2]~enfeeder_combout\);

-- Location: FF_X29_Y21_N23
\dp_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[2]~enfeeder_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[2]~en_q\);

-- Location: LCCOMB_X29_Y21_N12
\dp_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp_out[3]~reg0feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \dp_out[3]~reg0feeder_combout\);

-- Location: FF_X29_Y21_N13
\dp_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[3]~reg0feeder_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[3]~reg0_q\);

-- Location: FF_X29_Y21_N19
\dp_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \dp_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[3]~en_q\);

ww_state_out(0) <= \state_out[0]~output_o\;

ww_state_out(1) <= \state_out[1]~output_o\;

ww_state_out(2) <= \state_out[2]~output_o\;

ww_iNOT10_out <= \iNOT10_out~output_o\;

ww_dp_out(0) <= \dp_out[0]~output_o\;

ww_dp_out(1) <= \dp_out[1]~output_o\;

ww_dp_out(2) <= \dp_out[2]~output_o\;

ww_dp_out(3) <= \dp_out[3]~output_o\;
END structure;


