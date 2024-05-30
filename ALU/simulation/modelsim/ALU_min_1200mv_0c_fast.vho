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

-- DATE "05/30/2024 15:33:06"

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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	Result : OUT std_logic_vector(7 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Result_temp~1_combout\ : std_logic;
SIGNAL \Result_temp~2_combout\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Result_temp~0_combout\ : std_logic;
SIGNAL \Result_temp~3_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Result_temp~6_combout\ : std_logic;
SIGNAL \Result_temp~7_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Result_temp~4_combout\ : std_logic;
SIGNAL \Result_temp~5_combout\ : std_logic;
SIGNAL \Result_temp~8_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Result_temp~11_combout\ : std_logic;
SIGNAL \Result_temp~12_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Result_temp~9_combout\ : std_logic;
SIGNAL \Result_temp~10_combout\ : std_logic;
SIGNAL \Result_temp~13_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Result_temp~37_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Result_temp~38_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Result_temp~14_combout\ : std_logic;
SIGNAL \Result_temp~15_combout\ : std_logic;
SIGNAL \Result_temp~16_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Result_temp~35_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Result_temp~36_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Result_temp~17_combout\ : std_logic;
SIGNAL \Result_temp~18_combout\ : std_logic;
SIGNAL \Result_temp~19_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Result_temp~20_combout\ : std_logic;
SIGNAL \Result_temp~21_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Result_temp~33_combout\ : std_logic;
SIGNAL \Result_temp~34_combout\ : std_logic;
SIGNAL \Result_temp~22_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Result_temp~31_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Result_temp~32_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Result_temp~23_combout\ : std_logic;
SIGNAL \Result_temp~24_combout\ : std_logic;
SIGNAL \Result_temp~25_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Result_temp~27_combout\ : std_logic;
SIGNAL \Result_temp~26_combout\ : std_logic;
SIGNAL \Result_temp~28_combout\ : std_logic;
SIGNAL \Result_temp~29_combout\ : std_logic;
SIGNAL \Result_temp~30_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \NZVC~2_combout\ : std_logic;
SIGNAL \NZVC~3_combout\ : std_logic;
SIGNAL \NZVC~4_combout\ : std_logic;
SIGNAL \NZVC~7_combout\ : std_logic;
SIGNAL \NZVC~5_combout\ : std_logic;
SIGNAL \NZVC~6_combout\ : std_logic;
SIGNAL \NZVC~8_combout\ : std_logic;
SIGNAL \NZVC~12_combout\ : std_logic;
SIGNAL \NZVC~13_combout\ : std_logic;
SIGNAL \NZVC~14_combout\ : std_logic;
SIGNAL \NZVC~9_combout\ : std_logic;
SIGNAL \NZVC~10_combout\ : std_logic;
SIGNAL \NZVC~11_combout\ : std_logic;
SIGNAL \NZVC~15_combout\ : std_logic;
SIGNAL \NZVC~16_combout\ : std_logic;
SIGNAL \NZVC~17_combout\ : std_logic;
SIGNAL \NZVC~18_combout\ : std_logic;
SIGNAL \NZVC~19_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
Result <= ww_Result;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X23_Y0_N30
\Result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~3_combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\Result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~8_combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\Result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~13_combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\Result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~16_combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\Result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~19_combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\Result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~22_combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\Result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~25_combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\Result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Result_temp~30_combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC~4_combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC~8_combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC~18_combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC~19_combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X19_Y0_N8
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X20_Y3_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X23_Y0_N1
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X20_Y3_N24
\Result_temp~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~1_combout\ = (\ALU_Sel[2]~input_o\ & ((\A[1]~input_o\))) # (!\ALU_Sel[2]~input_o\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Result_temp~1_combout\);

-- Location: LCCOMB_X20_Y3_N2
\Result_temp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~2_combout\ = (\ALU_Sel[1]~input_o\ & ((\Result_temp~1_combout\))) # (!\ALU_Sel[1]~input_o\ & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Result_temp~1_combout\,
	combout => \Result_temp~2_combout\);

-- Location: IOIBUF_X19_Y0_N15
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X21_Y3_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\A[0]~input_o\ & ((GND) # (!\B[0]~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y3_N24
\Result_temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~0_combout\ = (\ALU_Sel[1]~input_o\ & (\A[0]~input_o\ & ((!\ALU_Sel[2]~input_o\)))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_Sel[2]~input_o\ & (!\A[0]~input_o\)) # (!\ALU_Sel[2]~input_o\ & ((\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \Add1~0_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Result_temp~0_combout\);

-- Location: LCCOMB_X22_Y3_N26
\Result_temp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~3_combout\ = (\Result_temp~2_combout\ & ((\Result_temp~0_combout\) # (\ALU_Sel[0]~input_o\ $ (!\ALU_Sel[1]~input_o\)))) # (!\Result_temp~2_combout\ & (\ALU_Sel[0]~input_o\ & ((\Result_temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~2_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \Result_temp~0_combout\,
	combout => \Result_temp~3_combout\);

-- Location: IOIBUF_X26_Y0_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X21_Y3_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X20_Y3_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add0~1\)) # (!\B[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\Add0~1\)) # (!\A[1]~input_o\ & ((!\Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X22_Y3_N0
\Result_temp~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~6_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~2_combout\) # ((\ALU_Sel[2]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & (((\Add0~2_combout\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~2_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Result_temp~6_combout\);

-- Location: LCCOMB_X22_Y3_N2
\Result_temp~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~7_combout\ = (\ALU_Sel[2]~input_o\ & (\A[1]~input_o\ $ (((\B[1]~input_o\) # (\Result_temp~6_combout\))))) # (!\ALU_Sel[2]~input_o\ & (((\Result_temp~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Result_temp~6_combout\,
	combout => \Result_temp~7_combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X22_Y3_N28
\Result_temp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~4_combout\ = (\B[1]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \A[1]~input_o\)))) # (!\B[1]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Result_temp~4_combout\);

-- Location: LCCOMB_X22_Y3_N14
\Result_temp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~5_combout\ = (\ALU_Sel[2]~input_o\ & ((\Result_temp~4_combout\ & ((\A[2]~input_o\))) # (!\Result_temp~4_combout\ & (\A[0]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & (((\Result_temp~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Result_temp~4_combout\,
	combout => \Result_temp~5_combout\);

-- Location: LCCOMB_X22_Y3_N12
\Result_temp~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~8_combout\ = (\ALU_Sel[1]~input_o\ & ((\Result_temp~5_combout\))) # (!\ALU_Sel[1]~input_o\ & (\Result_temp~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result_temp~7_combout\,
	datac => \Result_temp~5_combout\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Result_temp~8_combout\);

-- Location: IOIBUF_X26_Y0_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X20_Y3_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X21_Y3_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A[2]~input_o\ & ((!\Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y3_N26
\Result_temp~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~11_combout\ = (\ALU_Sel[0]~input_o\ & (((\Add1~4_combout\) # (\ALU_Sel[2]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & (\Add0~4_combout\ & ((!\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add1~4_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Result_temp~11_combout\);

-- Location: LCCOMB_X22_Y3_N18
\Result_temp~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~12_combout\ = (\ALU_Sel[2]~input_o\ & (\A[2]~input_o\ $ (((\Result_temp~11_combout\) # (\B[2]~input_o\))))) # (!\ALU_Sel[2]~input_o\ & (\Result_temp~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~11_combout\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Result_temp~12_combout\);

-- Location: IOIBUF_X23_Y0_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X22_Y3_N30
\Result_temp~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~9_combout\ = (\A[2]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \B[2]~input_o\)))) # (!\A[2]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Result_temp~9_combout\);

-- Location: LCCOMB_X22_Y3_N16
\Result_temp~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~10_combout\ = (\Result_temp~9_combout\ & ((\A[3]~input_o\) # ((!\ALU_Sel[2]~input_o\)))) # (!\Result_temp~9_combout\ & (((\A[1]~input_o\ & \ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \Result_temp~9_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Result_temp~10_combout\);

-- Location: LCCOMB_X22_Y3_N4
\Result_temp~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~13_combout\ = (\ALU_Sel[1]~input_o\ & ((\Result_temp~10_combout\))) # (!\ALU_Sel[1]~input_o\ & (\Result_temp~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result_temp~12_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \Result_temp~10_combout\,
	combout => \Result_temp~13_combout\);

-- Location: IOIBUF_X26_Y0_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X22_Y3_N20
\Result_temp~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~37_combout\ = (\ALU_Sel[2]~input_o\ & (((!\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & ((\B[3]~input_o\ & ((\ALU_Sel[0]~input_o\) # (\A[3]~input_o\))) # (!\B[3]~input_o\ & (\ALU_Sel[0]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Result_temp~37_combout\);

-- Location: IOIBUF_X19_Y0_N1
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X22_Y3_N22
\Result_temp~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~38_combout\ = (\Result_temp~37_combout\ & (((\A[2]~input_o\)) # (!\ALU_Sel[2]~input_o\))) # (!\Result_temp~37_combout\ & (\ALU_Sel[2]~input_o\ & (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~37_combout\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Result_temp~38_combout\);

-- Location: LCCOMB_X21_Y3_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add1~5\)) # (!\B[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X20_Y3_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\Add0~5\ & VCC)) # (!\A[3]~input_o\ & (!\Add0~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\Add0~5\)) # (!\A[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\Add0~5\)) # (!\B[3]~input_o\ & ((!\Add0~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X21_Y3_N28
\Result_temp~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~14_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~6_combout\) # ((\ALU_Sel[2]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & (((\Add0~6_combout\ & !\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~6_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Result_temp~14_combout\);

-- Location: LCCOMB_X21_Y3_N30
\Result_temp~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~15_combout\ = (\ALU_Sel[2]~input_o\ & (\A[3]~input_o\ $ (((\Result_temp~14_combout\) # (\B[3]~input_o\))))) # (!\ALU_Sel[2]~input_o\ & (\Result_temp~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \Result_temp~14_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Result_temp~15_combout\);

-- Location: LCCOMB_X22_Y3_N6
\Result_temp~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~16_combout\ = (\ALU_Sel[1]~input_o\ & (\Result_temp~38_combout\)) # (!\ALU_Sel[1]~input_o\ & ((\Result_temp~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~38_combout\,
	datab => \Result_temp~15_combout\,
	datac => \ALU_Sel[1]~input_o\,
	combout => \Result_temp~16_combout\);

-- Location: IOIBUF_X28_Y0_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X19_Y3_N20
\Result_temp~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~35_combout\ = (\ALU_Sel[2]~input_o\ & (((!\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & ((\A[4]~input_o\ & ((\B[4]~input_o\) # (\ALU_Sel[0]~input_o\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Result_temp~35_combout\);

-- Location: IOIBUF_X16_Y0_N8
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X19_Y3_N22
\Result_temp~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~36_combout\ = (\ALU_Sel[2]~input_o\ & ((\Result_temp~35_combout\ & ((\A[3]~input_o\))) # (!\Result_temp~35_combout\ & (\A[5]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & (\Result_temp~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \Result_temp~35_combout\,
	datac => \A[5]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Result_temp~36_combout\);

-- Location: LCCOMB_X20_Y3_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X21_Y3_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\A[4]~input_o\ & ((!\Add1~7\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X21_Y3_N24
\Result_temp~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~17_combout\ = (\ALU_Sel[0]~input_o\ & (((\Add1~8_combout\) # (\ALU_Sel[2]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & (\Add0~8_combout\ & ((!\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add1~8_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \Result_temp~17_combout\);

-- Location: LCCOMB_X19_Y3_N8
\Result_temp~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~18_combout\ = (\ALU_Sel[2]~input_o\ & (\A[4]~input_o\ $ (((\Result_temp~17_combout\) # (\B[4]~input_o\))))) # (!\ALU_Sel[2]~input_o\ & (\Result_temp~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~17_combout\,
	datab => \B[4]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Result_temp~18_combout\);

-- Location: LCCOMB_X19_Y3_N26
\Result_temp~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~19_combout\ = (\ALU_Sel[1]~input_o\ & (\Result_temp~36_combout\)) # (!\ALU_Sel[1]~input_o\ & ((\Result_temp~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~36_combout\,
	datab => \Result_temp~18_combout\,
	datac => \ALU_Sel[1]~input_o\,
	combout => \Result_temp~19_combout\);

-- Location: IOIBUF_X16_Y0_N22
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X21_Y3_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add1~9\)) # (!\A[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\B[5]~input_o\ & ((!\Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X20_Y3_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (\Add0~9\ & VCC)) # (!\A[5]~input_o\ & (!\Add0~9\)))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (!\Add0~9\)) # (!\A[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\B[5]~input_o\ & (!\A[5]~input_o\ & !\Add0~9\)) # (!\B[5]~input_o\ & ((!\Add0~9\) # (!\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y3_N28
\Result_temp~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~20_combout\ = (\ALU_Sel[2]~input_o\ & (((\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & ((\ALU_Sel[0]~input_o\ & (\Add1~10_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add0~10_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Result_temp~20_combout\);

-- Location: LCCOMB_X19_Y3_N14
\Result_temp~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~21_combout\ = (\ALU_Sel[2]~input_o\ & (\A[5]~input_o\ $ (((\B[5]~input_o\) # (\Result_temp~20_combout\))))) # (!\ALU_Sel[2]~input_o\ & (((\Result_temp~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Result_temp~20_combout\,
	combout => \Result_temp~21_combout\);

-- Location: IOIBUF_X16_Y0_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X19_Y3_N24
\Result_temp~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~33_combout\ = (\ALU_Sel[2]~input_o\ & (((!\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & ((\B[5]~input_o\ & ((\A[5]~input_o\) # (\ALU_Sel[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & \ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Result_temp~33_combout\);

-- Location: LCCOMB_X19_Y3_N2
\Result_temp~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~34_combout\ = (\ALU_Sel[2]~input_o\ & ((\Result_temp~33_combout\ & ((\A[4]~input_o\))) # (!\Result_temp~33_combout\ & (\A[6]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & (((\Result_temp~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Result_temp~33_combout\,
	combout => \Result_temp~34_combout\);

-- Location: LCCOMB_X19_Y3_N16
\Result_temp~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~22_combout\ = (\ALU_Sel[1]~input_o\ & ((\Result_temp~34_combout\))) # (!\ALU_Sel[1]~input_o\ & (\Result_temp~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Sel[1]~input_o\,
	datac => \Result_temp~21_combout\,
	datad => \Result_temp~34_combout\,
	combout => \Result_temp~22_combout\);

-- Location: IOIBUF_X14_Y0_N22
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X19_Y3_N12
\Result_temp~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~31_combout\ = (\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & ((\A[6]~input_o\) # (\B[6]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # ((\A[6]~input_o\ & \B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Result_temp~31_combout\);

-- Location: IOIBUF_X19_Y0_N29
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X19_Y3_N30
\Result_temp~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~32_combout\ = (\Result_temp~31_combout\ & ((\A[5]~input_o\) # ((!\ALU_Sel[2]~input_o\)))) # (!\Result_temp~31_combout\ & (((\ALU_Sel[2]~input_o\ & \A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~31_combout\,
	datab => \A[5]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Result_temp~32_combout\);

-- Location: LCCOMB_X21_Y3_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\Add1~11\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X20_Y3_N16
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y3_N10
\Result_temp~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~23_combout\ = (\ALU_Sel[2]~input_o\ & (((\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & ((\ALU_Sel[0]~input_o\ & (\Add1~12_combout\)) # (!\ALU_Sel[0]~input_o\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add0~12_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \Result_temp~23_combout\);

-- Location: LCCOMB_X19_Y3_N4
\Result_temp~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~24_combout\ = (\ALU_Sel[2]~input_o\ & (\A[6]~input_o\ $ (((\Result_temp~23_combout\) # (\B[6]~input_o\))))) # (!\ALU_Sel[2]~input_o\ & (\Result_temp~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~23_combout\,
	datab => \A[6]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Result_temp~24_combout\);

-- Location: LCCOMB_X19_Y3_N6
\Result_temp~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~25_combout\ = (\ALU_Sel[1]~input_o\ & (\Result_temp~32_combout\)) # (!\ALU_Sel[1]~input_o\ & ((\Result_temp~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~32_combout\,
	datab => \Result_temp~24_combout\,
	datac => \ALU_Sel[1]~input_o\,
	combout => \Result_temp~25_combout\);

-- Location: IOIBUF_X21_Y0_N29
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X20_Y3_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\ & (\Add0~13\ & VCC)) # (!\B[7]~input_o\ & (!\Add0~13\)))) # (!\A[7]~input_o\ & ((\B[7]~input_o\ & (!\Add0~13\)) # (!\B[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\A[7]~input_o\ & (!\B[7]~input_o\ & !\Add0~13\)) # (!\A[7]~input_o\ & ((!\Add0~13\) # (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X21_Y3_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ & (!\Add1~13\)) # (!\A[7]~input_o\ & ((\Add1~13\) # (GND))))) # (!\B[7]~input_o\ & ((\A[7]~input_o\ & (\Add1~13\ & VCC)) # (!\A[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\B[7]~input_o\ & ((!\Add1~13\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (!\A[7]~input_o\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X20_Y2_N26
\Result_temp~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~27_combout\ = (\ALU_Sel[0]~input_o\ & ((\Add1~14_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~14_combout\,
	combout => \Result_temp~27_combout\);

-- Location: LCCOMB_X20_Y2_N24
\Result_temp~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~26_combout\ = \A[7]~input_o\ $ (((\ALU_Sel[0]~input_o\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Result_temp~26_combout\);

-- Location: LCCOMB_X20_Y2_N20
\Result_temp~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~28_combout\ = (\ALU_Sel[2]~input_o\ & (((\Result_temp~26_combout\) # (\ALU_Sel[1]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & (\Result_temp~27_combout\ & ((!\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~27_combout\,
	datab => \Result_temp~26_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \Result_temp~28_combout\);

-- Location: LCCOMB_X20_Y2_N18
\Result_temp~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~29_combout\ = (\ALU_Sel[0]~input_o\ & (!\Result_temp~28_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & ((\Result_temp~28_combout\) # ((\A[7]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \Result_temp~28_combout\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Result_temp~29_combout\);

-- Location: LCCOMB_X20_Y2_N28
\Result_temp~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Result_temp~30_combout\ = (\ALU_Sel[1]~input_o\ & (\Result_temp~29_combout\ & ((\A[6]~input_o\) # (!\Result_temp~28_combout\)))) # (!\ALU_Sel[1]~input_o\ & (((\Result_temp~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \Result_temp~29_combout\,
	datac => \A[6]~input_o\,
	datad => \Result_temp~28_combout\,
	combout => \Result_temp~30_combout\);

-- Location: LCCOMB_X20_Y3_N20
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X21_Y3_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X20_Y3_N22
\NZVC~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~2_combout\ = (\ALU_Sel[1]~input_o\ & (((\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_Sel[0]~input_o\ & ((\Add1~16_combout\))) # (!\ALU_Sel[0]~input_o\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \Add0~16_combout\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \Add1~16_combout\,
	combout => \NZVC~2_combout\);

-- Location: LCCOMB_X20_Y3_N0
\NZVC~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~3_combout\ = (\NZVC~2_combout\ & (((\A[0]~input_o\) # (!\ALU_Sel[1]~input_o\)))) # (!\NZVC~2_combout\ & (\A[7]~input_o\ & ((\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[0]~input_o\,
	datac => \NZVC~2_combout\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \NZVC~3_combout\);

-- Location: LCCOMB_X20_Y2_N22
\NZVC~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~4_combout\ = (\NZVC~3_combout\ & (\ALU_Sel[1]~input_o\ $ (!\ALU_Sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \NZVC~3_combout\,
	datac => \ALU_Sel[2]~input_o\,
	combout => \NZVC~4_combout\);

-- Location: LCCOMB_X20_Y2_N12
\NZVC~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~7_combout\ = (\ALU_Sel[0]~input_o\ & (\B[7]~input_o\ & ((\Add1~14_combout\)))) # (!\ALU_Sel[0]~input_o\ & (!\B[7]~input_o\ & (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~14_combout\,
	combout => \NZVC~7_combout\);

-- Location: LCCOMB_X20_Y2_N0
\NZVC~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~5_combout\ = (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[2]~input_o\,
	combout => \NZVC~5_combout\);

-- Location: LCCOMB_X20_Y2_N10
\NZVC~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~6_combout\ = (\ALU_Sel[0]~input_o\ & (!\B[7]~input_o\ & ((!\Add1~14_combout\)))) # (!\ALU_Sel[0]~input_o\ & (\B[7]~input_o\ & (!\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \B[7]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~14_combout\,
	combout => \NZVC~6_combout\);

-- Location: LCCOMB_X20_Y2_N14
\NZVC~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~8_combout\ = (\NZVC~5_combout\ & ((\A[7]~input_o\ & ((\NZVC~6_combout\))) # (!\A[7]~input_o\ & (\NZVC~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC~7_combout\,
	datab => \NZVC~5_combout\,
	datac => \A[7]~input_o\,
	datad => \NZVC~6_combout\,
	combout => \NZVC~8_combout\);

-- Location: LCCOMB_X20_Y3_N26
\NZVC~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~12_combout\ = (!\Add0~2_combout\ & (!\ALU_Sel[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Add0~14_combout\,
	combout => \NZVC~12_combout\);

-- Location: LCCOMB_X20_Y3_N28
\NZVC~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~13_combout\ = (!\Add0~4_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \NZVC~13_combout\);

-- Location: LCCOMB_X20_Y3_N30
\NZVC~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~14_combout\ = (!\Add0~8_combout\ & (\NZVC~13_combout\ & (!\Add0~10_combout\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \NZVC~13_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~12_combout\,
	combout => \NZVC~14_combout\);

-- Location: LCCOMB_X21_Y3_N18
\NZVC~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~9_combout\ = (!\Add1~0_combout\ & (!\Add1~2_combout\ & (!\Add1~14_combout\ & \ALU_Sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~2_combout\,
	datac => \Add1~14_combout\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \NZVC~9_combout\);

-- Location: LCCOMB_X21_Y3_N20
\NZVC~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~10_combout\ = (!\Add1~6_combout\ & (!\Add1~4_combout\ & (!\Add1~8_combout\ & !\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~8_combout\,
	datad => \Add1~10_combout\,
	combout => \NZVC~10_combout\);

-- Location: LCCOMB_X21_Y3_N22
\NZVC~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~11_combout\ = (!\Add1~12_combout\ & (\NZVC~9_combout\ & \NZVC~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \NZVC~9_combout\,
	datad => \NZVC~10_combout\,
	combout => \NZVC~11_combout\);

-- Location: LCCOMB_X19_Y3_N0
\NZVC~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~15_combout\ = (\NZVC~5_combout\ & ((\NZVC~11_combout\) # ((\NZVC~12_combout\ & \NZVC~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC~12_combout\,
	datab => \NZVC~5_combout\,
	datac => \NZVC~14_combout\,
	datad => \NZVC~11_combout\,
	combout => \NZVC~15_combout\);

-- Location: LCCOMB_X22_Y3_N8
\NZVC~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~16_combout\ = (!\NZVC~5_combout\ & (!\Result_temp~13_combout\ & (!\Result_temp~3_combout\ & !\Result_temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NZVC~5_combout\,
	datab => \Result_temp~13_combout\,
	datac => \Result_temp~3_combout\,
	datad => \Result_temp~8_combout\,
	combout => \NZVC~16_combout\);

-- Location: LCCOMB_X22_Y3_N10
\NZVC~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~17_combout\ = (!\Result_temp~30_combout\ & (!\Result_temp~19_combout\ & (\NZVC~16_combout\ & !\Result_temp~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~30_combout\,
	datab => \Result_temp~19_combout\,
	datac => \NZVC~16_combout\,
	datad => \Result_temp~16_combout\,
	combout => \NZVC~17_combout\);

-- Location: LCCOMB_X19_Y3_N18
\NZVC~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~18_combout\ = (\NZVC~15_combout\) # ((!\Result_temp~22_combout\ & (\NZVC~17_combout\ & !\Result_temp~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~22_combout\,
	datab => \NZVC~15_combout\,
	datac => \NZVC~17_combout\,
	datad => \Result_temp~25_combout\,
	combout => \NZVC~18_combout\);

-- Location: LCCOMB_X20_Y2_N8
\NZVC~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \NZVC~19_combout\ = (\ALU_Sel[2]~input_o\ & (((\Result_temp~30_combout\)))) # (!\ALU_Sel[2]~input_o\ & ((\ALU_Sel[1]~input_o\ & ((\Result_temp~30_combout\))) # (!\ALU_Sel[1]~input_o\ & (\Result_temp~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result_temp~27_combout\,
	datab => \Result_temp~30_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[1]~input_o\,
	combout => \NZVC~19_combout\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


