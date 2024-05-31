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

-- DATE "05/30/2024 17:52:09"

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

ENTITY 	ALU_TEST IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	segments_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	NZVC : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ALU_TEST;

-- Design Ports Information
-- segments_0[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_0[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[4]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments_1[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_TEST IS
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
SIGNAL ww_segments_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_inst|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segments_0[0]~output_o\ : std_logic;
SIGNAL \segments_0[1]~output_o\ : std_logic;
SIGNAL \segments_0[2]~output_o\ : std_logic;
SIGNAL \segments_0[3]~output_o\ : std_logic;
SIGNAL \segments_0[4]~output_o\ : std_logic;
SIGNAL \segments_0[5]~output_o\ : std_logic;
SIGNAL \segments_0[6]~output_o\ : std_logic;
SIGNAL \segments_1[0]~output_o\ : std_logic;
SIGNAL \segments_1[1]~output_o\ : std_logic;
SIGNAL \segments_1[2]~output_o\ : std_logic;
SIGNAL \segments_1[3]~output_o\ : std_logic;
SIGNAL \segments_1[4]~output_o\ : std_logic;
SIGNAL \segments_1[5]~output_o\ : std_logic;
SIGNAL \segments_1[6]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~1\ : std_logic;
SIGNAL \ALU_inst|Add1~2_combout\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU_inst|Equal0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~3\ : std_logic;
SIGNAL \ALU_inst|Add1~4_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~5\ : std_logic;
SIGNAL \ALU_inst|Add1~6_combout\ : std_logic;
SIGNAL \display_lower|Mux6~0_combout\ : std_logic;
SIGNAL \display_lower|Mux5~0_combout\ : std_logic;
SIGNAL \display_lower|Mux4~0_combout\ : std_logic;
SIGNAL \display_lower|Mux3~0_combout\ : std_logic;
SIGNAL \display_lower|Mux2~0_combout\ : std_logic;
SIGNAL \display_lower|Mux1~0_combout\ : std_logic;
SIGNAL \display_lower|Mux0~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~7\ : std_logic;
SIGNAL \ALU_inst|Add1~9\ : std_logic;
SIGNAL \ALU_inst|Add1~11\ : std_logic;
SIGNAL \ALU_inst|Add1~12_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ALU_inst|Add1~13\ : std_logic;
SIGNAL \ALU_inst|Add1~14_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~8_combout\ : std_logic;
SIGNAL \ALU_inst|Add1~10_combout\ : std_logic;
SIGNAL \display_upper|Mux6~0_combout\ : std_logic;
SIGNAL \display_upper|Mux5~0_combout\ : std_logic;
SIGNAL \display_upper|Mux4~0_combout\ : std_logic;
SIGNAL \display_upper|Mux3~0_combout\ : std_logic;
SIGNAL \display_upper|Mux2~0_combout\ : std_logic;
SIGNAL \display_upper|Mux1~0_combout\ : std_logic;
SIGNAL \display_upper|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~1\ : std_logic;
SIGNAL \ALU_inst|Add0~3\ : std_logic;
SIGNAL \ALU_inst|Add0~5\ : std_logic;
SIGNAL \ALU_inst|Add0~7\ : std_logic;
SIGNAL \ALU_inst|Add0~9\ : std_logic;
SIGNAL \ALU_inst|Add0~11\ : std_logic;
SIGNAL \ALU_inst|Add0~13\ : std_logic;
SIGNAL \ALU_inst|Add0~15\ : std_logic;
SIGNAL \ALU_inst|Add0~16_combout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \ALU_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[0]~0_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[0]~1_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[0]~2_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~14_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[1]~4_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[1]~3_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[1]~5_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~10_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~9_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~11_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[0]~29_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~0_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[0]~30_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[0]~28_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[0]~31_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~8_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~3_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~2_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[4]~15_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[4]~16_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[4]~17_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~5_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[4]~18_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~10_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[5]~19_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[5]~20_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[5]~21_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[5]~22_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[3]~11_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[3]~12_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~6_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[3]~13_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[3]~14_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~12_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~23_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~24_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~25_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[6]~26_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~7_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~2_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[1]~0_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[1]~1_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[1]~4_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[1]~6_combout\ : std_logic;
SIGNAL \ALU_inst|Add0~4_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[2]~7_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[2]~8_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[2]~9_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[2]~10_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~6_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[0]~16_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[0]~19_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[7]~27_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[7]~32_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp[7]~33_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~8_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~12_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~13_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~14_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[2]~15_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[3]~17_combout\ : std_logic;
SIGNAL \ALU_inst|NZVC[3]~18_combout\ : std_logic;
SIGNAL \ALU_inst|Result_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU_inst|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \display_upper|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \display_lower|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
segments_0 <= ww_segments_0;
segments_1 <= ww_segments_1;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ALU_inst|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ALU_inst|Equal0~0_combout\);
\display_upper|ALT_INV_Mux6~0_combout\ <= NOT \display_upper|Mux6~0_combout\;
\display_lower|ALT_INV_Mux6~0_combout\ <= NOT \display_lower|Mux6~0_combout\;

-- Location: IOOBUF_X30_Y29_N16
\segments_0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\segments_0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\segments_0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\segments_0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\segments_0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\segments_0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\segments_0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_lower|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segments_0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\segments_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\segments_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\segments_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\segments_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\segments_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\segments_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\segments_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_upper|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \segments_1[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC[0]~2_combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC[1]~5_combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC[2]~15_combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_inst|NZVC[3]~18_combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOIBUF_X28_Y29_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X29_Y28_N16
\ALU_inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \ALU_inst|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \ALU_inst|Add1~0_combout\,
	cout => \ALU_inst|Add1~1\);

-- Location: LCCOMB_X29_Y28_N18
\ALU_inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\ALU_inst|Add1~1\)) # (!\B[1]~input_o\ & (\ALU_inst|Add1~1\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\ALU_inst|Add1~1\) # (GND))) # (!\B[1]~input_o\ & (!\ALU_inst|Add1~1\))))
-- \ALU_inst|Add1~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\ALU_inst|Add1~1\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\ALU_inst|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~1\,
	combout => \ALU_inst|Add1~2_combout\,
	cout => \ALU_inst|Add1~3\);

-- Location: IOIBUF_X21_Y29_N15
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X23_Y28_N26
\ALU_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & \ALU_Sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \ALU_inst|Equal0~0_combout\);

-- Location: CLKCTRL_G13
\ALU_inst|Equal0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALU_inst|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALU_inst|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y28_N30
\ALU_inst|Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(1) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~2_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~2_combout\,
	datac => \ALU_inst|Result\(1),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(1));

-- Location: IOIBUF_X21_Y29_N29
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X29_Y28_N20
\ALU_inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (\ALU_inst|Add1~3\)))) # (GND)
-- \ALU_inst|Add1~5\ = CARRY((\B[2]~input_o\ & (\A[2]~input_o\ & !\ALU_inst|Add1~3\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (!\ALU_inst|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~3\,
	combout => \ALU_inst|Add1~4_combout\,
	cout => \ALU_inst|Add1~5\);

-- Location: LCCOMB_X30_Y28_N8
\ALU_inst|Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(2) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~4_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~4_combout\,
	datac => \ALU_inst|Result\(2),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(2));

-- Location: LCCOMB_X30_Y28_N4
\ALU_inst|Result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(0) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~0_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~0_combout\,
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(0));

-- Location: IOIBUF_X21_Y29_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y28_N22
\ALU_inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (!\ALU_inst|Add1~5\)) # (!\A[3]~input_o\ & ((\ALU_inst|Add1~5\) # (GND))))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (\ALU_inst|Add1~5\ & VCC)) # (!\A[3]~input_o\ & (!\ALU_inst|Add1~5\))))
-- \ALU_inst|Add1~7\ = CARRY((\B[3]~input_o\ & ((!\ALU_inst|Add1~5\) # (!\A[3]~input_o\))) # (!\B[3]~input_o\ & (!\A[3]~input_o\ & !\ALU_inst|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~5\,
	combout => \ALU_inst|Add1~6_combout\,
	cout => \ALU_inst|Add1~7\);

-- Location: LCCOMB_X30_Y28_N26
\ALU_inst|Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(3) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~6_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~6_combout\,
	datac => \ALU_inst|Result\(3),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(3));

-- Location: LCCOMB_X30_Y28_N28
\display_lower|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux6~0_combout\ = (\ALU_inst|Result\(0) & ((\ALU_inst|Result\(3)) # (\ALU_inst|Result\(1) $ (\ALU_inst|Result\(2))))) # (!\ALU_inst|Result\(0) & ((\ALU_inst|Result\(1)) # (\ALU_inst|Result\(2) $ (\ALU_inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y28_N22
\display_lower|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux5~0_combout\ = (\ALU_inst|Result\(1) & (!\ALU_inst|Result\(3) & ((\ALU_inst|Result\(0)) # (!\ALU_inst|Result\(2))))) # (!\ALU_inst|Result\(1) & (\ALU_inst|Result\(0) & (\ALU_inst|Result\(2) $ (!\ALU_inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y28_N24
\display_lower|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux4~0_combout\ = (\ALU_inst|Result\(1) & (((\ALU_inst|Result\(0) & !\ALU_inst|Result\(3))))) # (!\ALU_inst|Result\(1) & ((\ALU_inst|Result\(2) & ((!\ALU_inst|Result\(3)))) # (!\ALU_inst|Result\(2) & (\ALU_inst|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y28_N14
\display_lower|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux3~0_combout\ = (\ALU_inst|Result\(1) & ((\ALU_inst|Result\(2) & (\ALU_inst|Result\(0))) # (!\ALU_inst|Result\(2) & (!\ALU_inst|Result\(0) & \ALU_inst|Result\(3))))) # (!\ALU_inst|Result\(1) & (!\ALU_inst|Result\(3) & 
-- (\ALU_inst|Result\(2) $ (\ALU_inst|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y28_N20
\display_lower|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux2~0_combout\ = (\ALU_inst|Result\(2) & (\ALU_inst|Result\(3) & ((\ALU_inst|Result\(1)) # (!\ALU_inst|Result\(0))))) # (!\ALU_inst|Result\(2) & (\ALU_inst|Result\(1) & (!\ALU_inst|Result\(0) & !\ALU_inst|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y28_N10
\display_lower|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux1~0_combout\ = (\ALU_inst|Result\(1) & ((\ALU_inst|Result\(0) & ((\ALU_inst|Result\(3)))) # (!\ALU_inst|Result\(0) & (\ALU_inst|Result\(2))))) # (!\ALU_inst|Result\(1) & (\ALU_inst|Result\(2) & (\ALU_inst|Result\(0) $ 
-- (\ALU_inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y28_N16
\display_lower|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_lower|Mux0~0_combout\ = (\ALU_inst|Result\(2) & (!\ALU_inst|Result\(1) & (\ALU_inst|Result\(0) $ (!\ALU_inst|Result\(3))))) # (!\ALU_inst|Result\(2) & (\ALU_inst|Result\(0) & (\ALU_inst|Result\(1) $ (!\ALU_inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(1),
	datab => \ALU_inst|Result\(2),
	datac => \ALU_inst|Result\(0),
	datad => \ALU_inst|Result\(3),
	combout => \display_lower|Mux0~0_combout\);

-- Location: IOIBUF_X23_Y29_N8
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X32_Y29_N8
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X29_Y28_N24
\ALU_inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (\ALU_inst|Add1~7\)))) # (GND)
-- \ALU_inst|Add1~9\ = CARRY((\A[4]~input_o\ & ((!\ALU_inst|Add1~7\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\ALU_inst|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~7\,
	combout => \ALU_inst|Add1~8_combout\,
	cout => \ALU_inst|Add1~9\);

-- Location: LCCOMB_X29_Y28_N26
\ALU_inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\ALU_inst|Add1~9\)) # (!\A[5]~input_o\ & ((\ALU_inst|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\ALU_inst|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\ALU_inst|Add1~9\))))
-- \ALU_inst|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\ALU_inst|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\ALU_inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~9\,
	combout => \ALU_inst|Add1~10_combout\,
	cout => \ALU_inst|Add1~11\);

-- Location: LCCOMB_X29_Y28_N28
\ALU_inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (\ALU_inst|Add1~11\)))) # (GND)
-- \ALU_inst|Add1~13\ = CARRY((\B[6]~input_o\ & (\A[6]~input_o\ & !\ALU_inst|Add1~11\)) # (!\B[6]~input_o\ & ((\A[6]~input_o\) # (!\ALU_inst|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add1~11\,
	combout => \ALU_inst|Add1~12_combout\,
	cout => \ALU_inst|Add1~13\);

-- Location: LCCOMB_X28_Y28_N26
\ALU_inst|Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(6) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~12_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~12_combout\,
	datac => \ALU_inst|Result\(6),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(6));

-- Location: IOIBUF_X21_Y0_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X29_Y28_N30
\ALU_inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add1~14_combout\ = \A[7]~input_o\ $ (\ALU_inst|Add1~13\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \ALU_inst|Add1~13\,
	combout => \ALU_inst|Add1~14_combout\);

-- Location: LCCOMB_X28_Y28_N4
\ALU_inst|Result[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(7) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~14_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~14_combout\,
	datac => \ALU_inst|Result\(7),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(7));

-- Location: LCCOMB_X28_Y28_N22
\ALU_inst|Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(4) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Add1~8_combout\)) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~8_combout\,
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(4));

-- Location: LCCOMB_X28_Y28_N12
\ALU_inst|Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result\(5) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Add1~10_combout\))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(5),
	datac => \ALU_inst|Add1~10_combout\,
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result\(5));

-- Location: LCCOMB_X28_Y28_N20
\display_upper|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux6~0_combout\ = (\ALU_inst|Result\(4) & ((\ALU_inst|Result\(7)) # (\ALU_inst|Result\(6) $ (\ALU_inst|Result\(5))))) # (!\ALU_inst|Result\(4) & ((\ALU_inst|Result\(5)) # (\ALU_inst|Result\(6) $ (\ALU_inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y28_N6
\display_upper|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux5~0_combout\ = (\ALU_inst|Result\(6) & (\ALU_inst|Result\(4) & (\ALU_inst|Result\(7) $ (\ALU_inst|Result\(5))))) # (!\ALU_inst|Result\(6) & (!\ALU_inst|Result\(7) & ((\ALU_inst|Result\(4)) # (\ALU_inst|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\display_upper|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux4~0_combout\ = (\ALU_inst|Result\(5) & (((!\ALU_inst|Result\(7) & \ALU_inst|Result\(4))))) # (!\ALU_inst|Result\(5) & ((\ALU_inst|Result\(6) & (!\ALU_inst|Result\(7))) # (!\ALU_inst|Result\(6) & ((\ALU_inst|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y28_N30
\display_upper|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux3~0_combout\ = (\ALU_inst|Result\(5) & ((\ALU_inst|Result\(6) & ((\ALU_inst|Result\(4)))) # (!\ALU_inst|Result\(6) & (\ALU_inst|Result\(7) & !\ALU_inst|Result\(4))))) # (!\ALU_inst|Result\(5) & (!\ALU_inst|Result\(7) & 
-- (\ALU_inst|Result\(6) $ (\ALU_inst|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y28_N28
\display_upper|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux2~0_combout\ = (\ALU_inst|Result\(6) & (\ALU_inst|Result\(7) & ((\ALU_inst|Result\(5)) # (!\ALU_inst|Result\(4))))) # (!\ALU_inst|Result\(6) & (!\ALU_inst|Result\(7) & (!\ALU_inst|Result\(4) & \ALU_inst|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y28_N18
\display_upper|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux1~0_combout\ = (\ALU_inst|Result\(7) & ((\ALU_inst|Result\(4) & ((\ALU_inst|Result\(5)))) # (!\ALU_inst|Result\(4) & (\ALU_inst|Result\(6))))) # (!\ALU_inst|Result\(7) & (\ALU_inst|Result\(6) & (\ALU_inst|Result\(4) $ 
-- (\ALU_inst|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\display_upper|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_upper|Mux0~0_combout\ = (\ALU_inst|Result\(6) & (!\ALU_inst|Result\(5) & (\ALU_inst|Result\(7) $ (!\ALU_inst|Result\(4))))) # (!\ALU_inst|Result\(6) & (\ALU_inst|Result\(4) & (\ALU_inst|Result\(7) $ (!\ALU_inst|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result\(6),
	datab => \ALU_inst|Result\(7),
	datac => \ALU_inst|Result\(4),
	datad => \ALU_inst|Result\(5),
	combout => \display_upper|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y28_N10
\ALU_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \ALU_inst|Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \ALU_inst|Add0~0_combout\,
	cout => \ALU_inst|Add0~1\);

-- Location: LCCOMB_X24_Y28_N12
\ALU_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\ALU_inst|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\ALU_inst|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\ALU_inst|Add0~1\)) # (!\A[1]~input_o\ & ((\ALU_inst|Add0~1\) # (GND)))))
-- \ALU_inst|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\ALU_inst|Add0~1\)) # (!\B[1]~input_o\ & ((!\ALU_inst|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~1\,
	combout => \ALU_inst|Add0~2_combout\,
	cout => \ALU_inst|Add0~3\);

-- Location: LCCOMB_X24_Y28_N14
\ALU_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\ALU_inst|Add0~3\)))) # (GND)
-- \ALU_inst|Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\ALU_inst|Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\ALU_inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~3\,
	combout => \ALU_inst|Add0~4_combout\,
	cout => \ALU_inst|Add0~5\);

-- Location: LCCOMB_X24_Y28_N16
\ALU_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\ALU_inst|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\ALU_inst|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\ALU_inst|Add0~5\)) # (!\B[3]~input_o\ & ((\ALU_inst|Add0~5\) # (GND)))))
-- \ALU_inst|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\ALU_inst|Add0~5\)) # (!\A[3]~input_o\ & ((!\ALU_inst|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~5\,
	combout => \ALU_inst|Add0~6_combout\,
	cout => \ALU_inst|Add0~7\);

-- Location: LCCOMB_X24_Y28_N18
\ALU_inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\ALU_inst|Add0~7\)))) # (GND)
-- \ALU_inst|Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\ALU_inst|Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\ALU_inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~7\,
	combout => \ALU_inst|Add0~8_combout\,
	cout => \ALU_inst|Add0~9\);

-- Location: LCCOMB_X24_Y28_N20
\ALU_inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\ALU_inst|Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\ALU_inst|Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\ALU_inst|Add0~9\)) # (!\B[5]~input_o\ & ((\ALU_inst|Add0~9\) # (GND)))))
-- \ALU_inst|Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\ALU_inst|Add0~9\)) # (!\A[5]~input_o\ & ((!\ALU_inst|Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~9\,
	combout => \ALU_inst|Add0~10_combout\,
	cout => \ALU_inst|Add0~11\);

-- Location: LCCOMB_X24_Y28_N22
\ALU_inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\ALU_inst|Add0~11\)))) # (GND)
-- \ALU_inst|Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\ALU_inst|Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\ALU_inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~11\,
	combout => \ALU_inst|Add0~12_combout\,
	cout => \ALU_inst|Add0~13\);

-- Location: LCCOMB_X24_Y28_N24
\ALU_inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~14_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\ & (\ALU_inst|Add0~13\ & VCC)) # (!\B[7]~input_o\ & (!\ALU_inst|Add0~13\)))) # (!\A[7]~input_o\ & ((\B[7]~input_o\ & (!\ALU_inst|Add0~13\)) # (!\B[7]~input_o\ & ((\ALU_inst|Add0~13\) # 
-- (GND)))))
-- \ALU_inst|Add0~15\ = CARRY((\A[7]~input_o\ & (!\B[7]~input_o\ & !\ALU_inst|Add0~13\)) # (!\A[7]~input_o\ & ((!\ALU_inst|Add0~13\) # (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \ALU_inst|Add0~13\,
	combout => \ALU_inst|Add0~14_combout\,
	cout => \ALU_inst|Add0~15\);

-- Location: LCCOMB_X24_Y28_N26
\ALU_inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Add0~16_combout\ = !\ALU_inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU_inst|Add0~15\,
	combout => \ALU_inst|Add0~16_combout\);

-- Location: LCCOMB_X29_Y28_N0
\ALU_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~1_cout\ = CARRY((\B[0]~input_o\ & !\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cout => \ALU_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y28_N2
\ALU_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~3_cout\ = CARRY((\A[1]~input_o\ & ((!\ALU_inst|LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & !\ALU_inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~1_cout\,
	cout => \ALU_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y28_N4
\ALU_inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & ((!\ALU_inst|LessThan0~3_cout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\A[2]~input_o\ & !\ALU_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~3_cout\,
	cout => \ALU_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y28_N6
\ALU_inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (\A[3]~input_o\ & !\ALU_inst|LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((\A[3]~input_o\) # (!\ALU_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~5_cout\,
	cout => \ALU_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y28_N8
\ALU_inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~9_cout\ = CARRY((\A[4]~input_o\ & (\B[4]~input_o\ & !\ALU_inst|LessThan0~7_cout\)) # (!\A[4]~input_o\ & ((\B[4]~input_o\) # (!\ALU_inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~7_cout\,
	cout => \ALU_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y28_N10
\ALU_inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~11_cout\ = CARRY((\B[5]~input_o\ & (\A[5]~input_o\ & !\ALU_inst|LessThan0~9_cout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (!\ALU_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~9_cout\,
	cout => \ALU_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y28_N12
\ALU_inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\ALU_inst|LessThan0~11_cout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (!\A[6]~input_o\ & !\ALU_inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \ALU_inst|LessThan0~11_cout\,
	cout => \ALU_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y28_N14
\ALU_inst|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|LessThan0~14_combout\ = (\A[7]~input_o\ & (\ALU_inst|LessThan0~13_cout\ & \B[7]~input_o\)) # (!\A[7]~input_o\ & ((\ALU_inst|LessThan0~13_cout\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \ALU_inst|LessThan0~13_cout\,
	combout => \ALU_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y28_N28
\ALU_inst|NZVC[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[0]~0_combout\ = (\ALU_Sel[1]~input_o\ & (((\ALU_Sel[0]~input_o\)))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_Sel[0]~input_o\ & ((\ALU_inst|LessThan0~14_combout\))) # (!\ALU_Sel[0]~input_o\ & (\ALU_inst|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~16_combout\,
	datab => \ALU_inst|LessThan0~14_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \ALU_inst|NZVC[0]~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\ALU_inst|NZVC[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[0]~1_combout\ = (\ALU_Sel[1]~input_o\ & ((\ALU_inst|NZVC[0]~0_combout\ & ((\A[0]~input_o\))) # (!\ALU_inst|NZVC[0]~0_combout\ & (\A[7]~input_o\)))) # (!\ALU_Sel[1]~input_o\ & (((\ALU_inst|NZVC[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_inst|NZVC[0]~0_combout\,
	combout => \ALU_inst|NZVC[0]~1_combout\);

-- Location: LCCOMB_X24_Y28_N0
\ALU_inst|NZVC[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[0]~2_combout\ = (\ALU_inst|NZVC[0]~1_combout\ & (\ALU_Sel[2]~input_o\ $ (!\ALU_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_inst|NZVC[0]~1_combout\,
	combout => \ALU_inst|NZVC[0]~2_combout\);

-- Location: LCCOMB_X23_Y28_N28
\ALU_inst|NZVC[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[1]~4_combout\ = (!\ALU_Sel[0]~input_o\ & ((\A[7]~input_o\ & (\B[7]~input_o\ & !\ALU_inst|Add0~14_combout\)) # (!\A[7]~input_o\ & (!\B[7]~input_o\ & \ALU_inst|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~14_combout\,
	combout => \ALU_inst|NZVC[1]~4_combout\);

-- Location: LCCOMB_X23_Y28_N20
\ALU_inst|NZVC[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[1]~3_combout\ = (\ALU_Sel[0]~input_o\ & ((\A[7]~input_o\ & (!\ALU_inst|Add1~14_combout\ & !\B[7]~input_o\)) # (!\A[7]~input_o\ & (\ALU_inst|Add1~14_combout\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ALU_Sel[0]~input_o\,
	datac => \ALU_inst|Add1~14_combout\,
	datad => \B[7]~input_o\,
	combout => \ALU_inst|NZVC[1]~3_combout\);

-- Location: LCCOMB_X23_Y28_N4
\ALU_inst|NZVC[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[1]~5_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & ((\ALU_inst|NZVC[1]~4_combout\) # (\ALU_inst|NZVC[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_inst|NZVC[1]~4_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_inst|NZVC[1]~3_combout\,
	combout => \ALU_inst|NZVC[1]~5_combout\);

-- Location: LCCOMB_X28_Y28_N14
\ALU_inst|NZVC[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~10_combout\ = (!\ALU_inst|Add1~12_combout\ & (!\ALU_inst|Add1~10_combout\ & !\ALU_inst|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Add1~12_combout\,
	datac => \ALU_inst|Add1~10_combout\,
	datad => \ALU_inst|Add1~8_combout\,
	combout => \ALU_inst|NZVC[2]~10_combout\);

-- Location: LCCOMB_X30_Y28_N18
\ALU_inst|NZVC[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~9_combout\ = (!\ALU_inst|Add1~4_combout\ & (!\ALU_inst|Add1~6_combout\ & (!\ALU_inst|Add1~0_combout\ & !\ALU_inst|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add1~4_combout\,
	datab => \ALU_inst|Add1~6_combout\,
	datac => \ALU_inst|Add1~0_combout\,
	datad => \ALU_inst|Add1~2_combout\,
	combout => \ALU_inst|NZVC[2]~9_combout\);

-- Location: LCCOMB_X23_Y28_N22
\ALU_inst|NZVC[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~11_combout\ = (\ALU_inst|Equal0~0_combout\ & (\ALU_inst|NZVC[2]~10_combout\ & (!\ALU_inst|Add1~14_combout\ & \ALU_inst|NZVC[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Equal0~0_combout\,
	datab => \ALU_inst|NZVC[2]~10_combout\,
	datac => \ALU_inst|Add1~14_combout\,
	datad => \ALU_inst|NZVC[2]~9_combout\,
	combout => \ALU_inst|NZVC[2]~11_combout\);

-- Location: LCCOMB_X24_Y28_N8
\ALU_inst|Result_temp[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[0]~29_combout\ = (\ALU_Sel[2]~input_o\ & (\A[1]~input_o\)) # (!\ALU_Sel[2]~input_o\ & ((\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ALU_inst|Result_temp[0]~29_combout\);

-- Location: LCCOMB_X24_Y28_N6
\ALU_inst|Result_temp[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[0]~30_combout\ = (\ALU_Sel[1]~input_o\ & (\ALU_inst|Result_temp[0]~29_combout\)) # (!\ALU_Sel[1]~input_o\ & ((\ALU_inst|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result_temp[0]~29_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_inst|Add0~0_combout\,
	combout => \ALU_inst|Result_temp[0]~30_combout\);

-- Location: LCCOMB_X23_Y28_N18
\ALU_inst|Result_temp[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[0]~28_combout\ = (\A[0]~input_o\ & (\ALU_Sel[1]~input_o\ & !\ALU_Sel[2]~input_o\)) # (!\A[0]~input_o\ & (!\ALU_Sel[1]~input_o\ & \ALU_Sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[0]~28_combout\);

-- Location: LCCOMB_X23_Y28_N10
\ALU_inst|Result_temp[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[0]~31_combout\ = (\ALU_inst|Result_temp[0]~30_combout\ & ((\ALU_inst|Result_temp[0]~28_combout\) # (\ALU_Sel[1]~input_o\ $ (!\ALU_Sel[0]~input_o\)))) # (!\ALU_inst|Result_temp[0]~30_combout\ & (((\ALU_Sel[0]~input_o\ & 
-- \ALU_inst|Result_temp[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp[0]~30_combout\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Result_temp[0]~28_combout\,
	combout => \ALU_inst|Result_temp[0]~31_combout\);

-- Location: LCCOMB_X23_Y28_N12
\ALU_inst|Result_temp[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(0) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(0))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(0),
	datac => \ALU_inst|Result_temp[0]~31_combout\,
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result_temp\(0));

-- Location: LCCOMB_X27_Y28_N12
\ALU_inst|Result_temp[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~3_combout\ = (\ALU_Sel[1]~input_o\) # ((\ALU_Sel[0]~input_o\ & \ALU_Sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[6]~3_combout\);

-- Location: LCCOMB_X27_Y28_N2
\ALU_inst|Result_temp[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~2_combout\ = (\ALU_Sel[1]~input_o\) # ((!\ALU_Sel[0]~input_o\ & !\ALU_Sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[6]~2_combout\);

-- Location: LCCOMB_X26_Y28_N18
\ALU_inst|Result_temp[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[4]~15_combout\ = (\A[4]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \B[4]~input_o\)))) # (!\A[4]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \ALU_inst|Result_temp[4]~15_combout\);

-- Location: LCCOMB_X26_Y28_N4
\ALU_inst|Result_temp[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[4]~16_combout\ = (\ALU_inst|Result_temp[4]~15_combout\ & ((\A[5]~input_o\) # ((!\ALU_Sel[2]~input_o\)))) # (!\ALU_inst|Result_temp[4]~15_combout\ & (((\ALU_Sel[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ALU_inst|Result_temp[4]~15_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \ALU_inst|Result_temp[4]~16_combout\);

-- Location: LCCOMB_X26_Y28_N10
\ALU_inst|Result_temp[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[4]~17_combout\ = (\ALU_inst|Result_temp[6]~3_combout\ & (((\ALU_inst|Result_temp[4]~16_combout\) # (!\ALU_inst|Result_temp[6]~2_combout\)))) # (!\ALU_inst|Result_temp[6]~3_combout\ & (\ALU_inst|Add0~8_combout\ & 
-- (\ALU_inst|Result_temp[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~8_combout\,
	datab => \ALU_inst|Result_temp[6]~3_combout\,
	datac => \ALU_inst|Result_temp[6]~2_combout\,
	datad => \ALU_inst|Result_temp[4]~16_combout\,
	combout => \ALU_inst|Result_temp[4]~17_combout\);

-- Location: LCCOMB_X22_Y28_N8
\ALU_inst|Result_temp[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~5_combout\ = (!\ALU_Sel[1]~input_o\ & \ALU_Sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[6]~5_combout\);

-- Location: LCCOMB_X26_Y28_N28
\ALU_inst|Result_temp[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[4]~18_combout\ = (\ALU_inst|Result_temp[6]~5_combout\ & (\A[4]~input_o\ $ (((\ALU_inst|Result_temp[4]~17_combout\) # (\B[4]~input_o\))))) # (!\ALU_inst|Result_temp[6]~5_combout\ & (\ALU_inst|Result_temp[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp[4]~17_combout\,
	datab => \B[4]~input_o\,
	datac => \ALU_inst|Result_temp[6]~5_combout\,
	datad => \A[4]~input_o\,
	combout => \ALU_inst|Result_temp[4]~18_combout\);

-- Location: LCCOMB_X26_Y28_N6
\ALU_inst|Result_temp[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(4) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(4))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(4),
	datac => \ALU_inst|Equal0~0clkctrl_outclk\,
	datad => \ALU_inst|Result_temp[4]~18_combout\,
	combout => \ALU_inst|Result_temp\(4));

-- Location: LCCOMB_X26_Y28_N30
\ALU_inst|Result_temp[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[5]~19_combout\ = (\A[5]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \B[5]~input_o\)))) # (!\A[5]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \ALU_inst|Result_temp[5]~19_combout\);

-- Location: LCCOMB_X26_Y28_N24
\ALU_inst|Result_temp[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[5]~20_combout\ = (\ALU_Sel[2]~input_o\ & ((\ALU_inst|Result_temp[5]~19_combout\ & ((\A[6]~input_o\))) # (!\ALU_inst|Result_temp[5]~19_combout\ & (\A[4]~input_o\)))) # (!\ALU_Sel[2]~input_o\ & 
-- (((\ALU_inst|Result_temp[5]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_inst|Result_temp[5]~19_combout\,
	datad => \A[6]~input_o\,
	combout => \ALU_inst|Result_temp[5]~20_combout\);

-- Location: LCCOMB_X26_Y28_N14
\ALU_inst|Result_temp[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[5]~21_combout\ = (\ALU_inst|Result_temp[6]~2_combout\ & ((\ALU_inst|Result_temp[6]~3_combout\ & ((\ALU_inst|Result_temp[5]~20_combout\))) # (!\ALU_inst|Result_temp[6]~3_combout\ & (\ALU_inst|Add0~10_combout\)))) # 
-- (!\ALU_inst|Result_temp[6]~2_combout\ & (((\ALU_inst|Result_temp[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~10_combout\,
	datab => \ALU_inst|Result_temp[5]~20_combout\,
	datac => \ALU_inst|Result_temp[6]~2_combout\,
	datad => \ALU_inst|Result_temp[6]~3_combout\,
	combout => \ALU_inst|Result_temp[5]~21_combout\);

-- Location: LCCOMB_X26_Y28_N16
\ALU_inst|Result_temp[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[5]~22_combout\ = (\ALU_inst|Result_temp[6]~5_combout\ & (\A[5]~input_o\ $ (((\B[5]~input_o\) # (\ALU_inst|Result_temp[5]~21_combout\))))) # (!\ALU_inst|Result_temp[6]~5_combout\ & (((\ALU_inst|Result_temp[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ALU_inst|Result_temp[6]~5_combout\,
	datad => \ALU_inst|Result_temp[5]~21_combout\,
	combout => \ALU_inst|Result_temp[5]~22_combout\);

-- Location: LCCOMB_X26_Y28_N0
\ALU_inst|Result_temp[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(5) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(5))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[5]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(5),
	datab => \ALU_inst|Result_temp[5]~22_combout\,
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result_temp\(5));

-- Location: LCCOMB_X27_Y28_N24
\ALU_inst|Result_temp[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[3]~11_combout\ = (\A[3]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((\B[3]~input_o\ & !\ALU_Sel[2]~input_o\)))) # (!\A[3]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\B[3]~input_o\) # (\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[3]~11_combout\);

-- Location: LCCOMB_X27_Y28_N30
\ALU_inst|Result_temp[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[3]~12_combout\ = (\ALU_inst|Result_temp[3]~11_combout\ & (((\A[4]~input_o\) # (!\ALU_Sel[2]~input_o\)))) # (!\ALU_inst|Result_temp[3]~11_combout\ & (\A[2]~input_o\ & ((\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \ALU_inst|Result_temp[3]~11_combout\,
	datac => \A[4]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[3]~12_combout\);

-- Location: LCCOMB_X27_Y28_N28
\ALU_inst|Result_temp[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[3]~13_combout\ = (\ALU_inst|Result_temp[6]~2_combout\ & ((\ALU_inst|Result_temp[6]~3_combout\ & (\ALU_inst|Result_temp[3]~12_combout\)) # (!\ALU_inst|Result_temp[6]~3_combout\ & ((\ALU_inst|Add0~6_combout\))))) # 
-- (!\ALU_inst|Result_temp[6]~2_combout\ & (((\ALU_inst|Result_temp[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp[3]~12_combout\,
	datab => \ALU_inst|Add0~6_combout\,
	datac => \ALU_inst|Result_temp[6]~2_combout\,
	datad => \ALU_inst|Result_temp[6]~3_combout\,
	combout => \ALU_inst|Result_temp[3]~13_combout\);

-- Location: LCCOMB_X27_Y28_N14
\ALU_inst|Result_temp[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[3]~14_combout\ = (\ALU_inst|Result_temp[6]~5_combout\ & (\A[3]~input_o\ $ (((\B[3]~input_o\) # (\ALU_inst|Result_temp[3]~13_combout\))))) # (!\ALU_inst|Result_temp[6]~5_combout\ & (((\ALU_inst|Result_temp[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ALU_inst|Result_temp[6]~5_combout\,
	datad => \ALU_inst|Result_temp[3]~13_combout\,
	combout => \ALU_inst|Result_temp[3]~14_combout\);

-- Location: LCCOMB_X27_Y28_N10
\ALU_inst|Result_temp[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(3) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(3))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(3),
	datac => \ALU_inst|Equal0~0clkctrl_outclk\,
	datad => \ALU_inst|Result_temp[3]~14_combout\,
	combout => \ALU_inst|Result_temp\(3));

-- Location: LCCOMB_X26_Y28_N22
\ALU_inst|Result_temp[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~23_combout\ = (\A[6]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \B[6]~input_o\)))) # (!\A[6]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \B[6]~input_o\,
	combout => \ALU_inst|Result_temp[6]~23_combout\);

-- Location: LCCOMB_X26_Y28_N8
\ALU_inst|Result_temp[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~24_combout\ = (\ALU_Sel[2]~input_o\ & ((\ALU_inst|Result_temp[6]~23_combout\ & (\A[7]~input_o\)) # (!\ALU_inst|Result_temp[6]~23_combout\ & ((\A[5]~input_o\))))) # (!\ALU_Sel[2]~input_o\ & 
-- (((\ALU_inst|Result_temp[6]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \A[5]~input_o\,
	datad => \ALU_inst|Result_temp[6]~23_combout\,
	combout => \ALU_inst|Result_temp[6]~24_combout\);

-- Location: LCCOMB_X26_Y28_N26
\ALU_inst|Result_temp[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~25_combout\ = (\ALU_inst|Result_temp[6]~3_combout\ & (((\ALU_inst|Result_temp[6]~24_combout\) # (!\ALU_inst|Result_temp[6]~2_combout\)))) # (!\ALU_inst|Result_temp[6]~3_combout\ & (\ALU_inst|Add0~12_combout\ & 
-- (\ALU_inst|Result_temp[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~12_combout\,
	datab => \ALU_inst|Result_temp[6]~3_combout\,
	datac => \ALU_inst|Result_temp[6]~2_combout\,
	datad => \ALU_inst|Result_temp[6]~24_combout\,
	combout => \ALU_inst|Result_temp[6]~25_combout\);

-- Location: LCCOMB_X26_Y28_N12
\ALU_inst|Result_temp[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[6]~26_combout\ = (\ALU_inst|Result_temp[6]~5_combout\ & (\A[6]~input_o\ $ (((\B[6]~input_o\) # (\ALU_inst|Result_temp[6]~25_combout\))))) # (!\ALU_inst|Result_temp[6]~5_combout\ & (((\ALU_inst|Result_temp[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \ALU_inst|Result_temp[6]~5_combout\,
	datad => \ALU_inst|Result_temp[6]~25_combout\,
	combout => \ALU_inst|Result_temp[6]~26_combout\);

-- Location: LCCOMB_X26_Y28_N2
\ALU_inst|Result_temp[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(6) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp\(6)))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp[6]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp[6]~26_combout\,
	datab => \ALU_inst|Result_temp\(6),
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result_temp\(6));

-- Location: LCCOMB_X26_Y28_N20
\ALU_inst|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~7_combout\ = (!\ALU_inst|Result_temp\(4) & (!\ALU_inst|Result_temp\(5) & (!\ALU_inst|Result_temp\(3) & !\ALU_inst|Result_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(4),
	datab => \ALU_inst|Result_temp\(5),
	datac => \ALU_inst|Result_temp\(3),
	datad => \ALU_inst|Result_temp\(6),
	combout => \ALU_inst|NZVC[2]~7_combout\);

-- Location: LCCOMB_X27_Y28_N18
\ALU_inst|Result_temp[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[1]~0_combout\ = (\A[1]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \B[1]~input_o\)))) # (!\A[1]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ALU_inst|Result_temp[1]~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\ALU_inst|Result_temp[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[1]~1_combout\ = (\ALU_inst|Result_temp[1]~0_combout\ & (((\A[2]~input_o\) # (!\ALU_Sel[2]~input_o\)))) # (!\ALU_inst|Result_temp[1]~0_combout\ & (\A[0]~input_o\ & (\ALU_Sel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ALU_inst|Result_temp[1]~0_combout\,
	datac => \ALU_Sel[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_inst|Result_temp[1]~1_combout\);

-- Location: LCCOMB_X27_Y28_N6
\ALU_inst|Result_temp[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[1]~4_combout\ = (\ALU_inst|Result_temp[6]~3_combout\ & (((\ALU_inst|Result_temp[1]~1_combout\) # (!\ALU_inst|Result_temp[6]~2_combout\)))) # (!\ALU_inst|Result_temp[6]~3_combout\ & (\ALU_inst|Add0~2_combout\ & 
-- ((\ALU_inst|Result_temp[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~2_combout\,
	datab => \ALU_inst|Result_temp[6]~3_combout\,
	datac => \ALU_inst|Result_temp[1]~1_combout\,
	datad => \ALU_inst|Result_temp[6]~2_combout\,
	combout => \ALU_inst|Result_temp[1]~4_combout\);

-- Location: LCCOMB_X28_Y28_N8
\ALU_inst|Result_temp[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[1]~6_combout\ = (\ALU_inst|Result_temp[6]~5_combout\ & (\A[1]~input_o\ $ (((\B[1]~input_o\) # (\ALU_inst|Result_temp[1]~4_combout\))))) # (!\ALU_inst|Result_temp[6]~5_combout\ & (((\ALU_inst|Result_temp[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ALU_inst|Result_temp[6]~5_combout\,
	datac => \ALU_inst|Result_temp[1]~4_combout\,
	datad => \A[1]~input_o\,
	combout => \ALU_inst|Result_temp[1]~6_combout\);

-- Location: LCCOMB_X28_Y28_N10
\ALU_inst|Result_temp[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(1) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(1))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(1),
	datac => \ALU_inst|Result_temp[1]~6_combout\,
	datad => \ALU_inst|Equal0~0clkctrl_outclk\,
	combout => \ALU_inst|Result_temp\(1));

-- Location: LCCOMB_X27_Y28_N16
\ALU_inst|Result_temp[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[2]~7_combout\ = (\B[2]~input_o\ & ((\ALU_Sel[0]~input_o\) # ((!\ALU_Sel[2]~input_o\ & \A[2]~input_o\)))) # (!\B[2]~input_o\ & (\ALU_Sel[0]~input_o\ & ((\ALU_Sel[2]~input_o\) # (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ALU_inst|Result_temp[2]~7_combout\);

-- Location: LCCOMB_X27_Y28_N26
\ALU_inst|Result_temp[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[2]~8_combout\ = (\ALU_inst|Result_temp[2]~7_combout\ & ((\A[3]~input_o\) # ((!\ALU_Sel[2]~input_o\)))) # (!\ALU_inst|Result_temp[2]~7_combout\ & (((\A[1]~input_o\ & \ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \ALU_inst|Result_temp[2]~7_combout\,
	datac => \A[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|Result_temp[2]~8_combout\);

-- Location: LCCOMB_X27_Y28_N4
\ALU_inst|Result_temp[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[2]~9_combout\ = (\ALU_inst|Result_temp[6]~3_combout\ & (((\ALU_inst|Result_temp[2]~8_combout\) # (!\ALU_inst|Result_temp[6]~2_combout\)))) # (!\ALU_inst|Result_temp[6]~3_combout\ & (\ALU_inst|Add0~4_combout\ & 
-- (\ALU_inst|Result_temp[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~4_combout\,
	datab => \ALU_inst|Result_temp[6]~3_combout\,
	datac => \ALU_inst|Result_temp[6]~2_combout\,
	datad => \ALU_inst|Result_temp[2]~8_combout\,
	combout => \ALU_inst|Result_temp[2]~9_combout\);

-- Location: LCCOMB_X27_Y28_N22
\ALU_inst|Result_temp[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[2]~10_combout\ = (\ALU_inst|Result_temp[6]~5_combout\ & (\A[2]~input_o\ $ (((\B[2]~input_o\) # (\ALU_inst|Result_temp[2]~9_combout\))))) # (!\ALU_inst|Result_temp[6]~5_combout\ & (((\ALU_inst|Result_temp[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \ALU_inst|Result_temp[6]~5_combout\,
	datad => \ALU_inst|Result_temp[2]~9_combout\,
	combout => \ALU_inst|Result_temp[2]~10_combout\);

-- Location: LCCOMB_X27_Y28_N20
\ALU_inst|Result_temp[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(2) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(2))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result_temp\(2),
	datac => \ALU_inst|Equal0~0clkctrl_outclk\,
	datad => \ALU_inst|Result_temp[2]~10_combout\,
	combout => \ALU_inst|Result_temp\(2));

-- Location: LCCOMB_X27_Y28_N0
\ALU_inst|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~6_combout\ = (!\ALU_inst|Result_temp\(1) & (!\ALU_inst|Result_temp\(2) & ((\ALU_Sel[1]~input_o\) # (\ALU_Sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(1),
	datab => \ALU_inst|Result_temp\(2),
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|NZVC[2]~6_combout\);

-- Location: LCCOMB_X26_Y27_N24
\ALU_inst|NZVC[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[0]~16_combout\ = (!\ALU_Sel[0]~input_o\ & \ALU_inst|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~14_combout\,
	combout => \ALU_inst|NZVC[0]~16_combout\);

-- Location: LCCOMB_X26_Y27_N28
\ALU_inst|NZVC[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[0]~19_combout\ = \A[7]~input_o\ $ (((\ALU_Sel[0]~input_o\) # (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \ALU_inst|NZVC[0]~19_combout\);

-- Location: LCCOMB_X26_Y27_N26
\ALU_inst|Result_temp[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[7]~27_combout\ = (\ALU_Sel[2]~input_o\ & (((\ALU_Sel[1]~input_o\) # (\ALU_inst|NZVC[0]~19_combout\)))) # (!\ALU_Sel[2]~input_o\ & (\ALU_inst|NZVC[0]~16_combout\ & (!\ALU_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_inst|NZVC[0]~16_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_inst|NZVC[0]~19_combout\,
	combout => \ALU_inst|Result_temp[7]~27_combout\);

-- Location: LCCOMB_X26_Y27_N4
\ALU_inst|Result_temp[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[7]~32_combout\ = (\ALU_Sel[0]~input_o\ & (!\ALU_inst|Result_temp[7]~27_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\)))) # (!\ALU_Sel[0]~input_o\ & ((\ALU_inst|Result_temp[7]~27_combout\) # ((\A[7]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Result_temp[7]~27_combout\,
	combout => \ALU_inst|Result_temp[7]~32_combout\);

-- Location: LCCOMB_X26_Y27_N22
\ALU_inst|Result_temp[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp[7]~33_combout\ = (\ALU_Sel[1]~input_o\ & (\ALU_inst|Result_temp[7]~32_combout\ & ((\A[6]~input_o\) # (!\ALU_inst|Result_temp[7]~27_combout\)))) # (!\ALU_Sel[1]~input_o\ & (((\ALU_inst|Result_temp[7]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \ALU_inst|Result_temp[7]~27_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_inst|Result_temp[7]~32_combout\,
	combout => \ALU_inst|Result_temp[7]~33_combout\);

-- Location: LCCOMB_X26_Y27_N8
\ALU_inst|Result_temp[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|Result_temp\(7) = (GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & (\ALU_inst|Result_temp\(7))) # (!GLOBAL(\ALU_inst|Equal0~0clkctrl_outclk\) & ((\ALU_inst|Result_temp[7]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_inst|Result_temp\(7),
	datac => \ALU_inst|Equal0~0clkctrl_outclk\,
	datad => \ALU_inst|Result_temp[7]~33_combout\,
	combout => \ALU_inst|Result_temp\(7));

-- Location: LCCOMB_X23_Y28_N24
\ALU_inst|NZVC[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~8_combout\ = (!\ALU_inst|Result_temp\(0) & (\ALU_inst|NZVC[2]~7_combout\ & (\ALU_inst|NZVC[2]~6_combout\ & !\ALU_inst|Result_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(0),
	datab => \ALU_inst|NZVC[2]~7_combout\,
	datac => \ALU_inst|NZVC[2]~6_combout\,
	datad => \ALU_inst|Result_temp\(7),
	combout => \ALU_inst|NZVC[2]~8_combout\);

-- Location: LCCOMB_X23_Y28_N8
\ALU_inst|NZVC[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~12_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[0]~input_o\ & !\ALU_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_Sel[0]~input_o\,
	datad => \ALU_inst|Add0~14_combout\,
	combout => \ALU_inst|NZVC[2]~12_combout\);

-- Location: LCCOMB_X24_Y28_N30
\ALU_inst|NZVC[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~13_combout\ = (!\ALU_inst|Add0~0_combout\ & (!\ALU_inst|Add0~6_combout\ & (!\ALU_inst|Add0~4_combout\ & !\ALU_inst|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Add0~0_combout\,
	datab => \ALU_inst|Add0~6_combout\,
	datac => \ALU_inst|Add0~4_combout\,
	datad => \ALU_inst|Add0~2_combout\,
	combout => \ALU_inst|NZVC[2]~13_combout\);

-- Location: LCCOMB_X24_Y28_N4
\ALU_inst|NZVC[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~14_combout\ = (\ALU_inst|NZVC[2]~13_combout\ & (!\ALU_inst|Add0~10_combout\ & (!\ALU_inst|Add0~12_combout\ & !\ALU_inst|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|NZVC[2]~13_combout\,
	datab => \ALU_inst|Add0~10_combout\,
	datac => \ALU_inst|Add0~12_combout\,
	datad => \ALU_inst|Add0~8_combout\,
	combout => \ALU_inst|NZVC[2]~14_combout\);

-- Location: LCCOMB_X23_Y28_N2
\ALU_inst|NZVC[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[2]~15_combout\ = (\ALU_inst|NZVC[2]~11_combout\) # ((\ALU_inst|NZVC[2]~8_combout\) # ((\ALU_inst|NZVC[2]~12_combout\ & \ALU_inst|NZVC[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|NZVC[2]~11_combout\,
	datab => \ALU_inst|NZVC[2]~8_combout\,
	datac => \ALU_inst|NZVC[2]~12_combout\,
	datad => \ALU_inst|NZVC[2]~14_combout\,
	combout => \ALU_inst|NZVC[2]~15_combout\);

-- Location: LCCOMB_X26_Y27_N18
\ALU_inst|NZVC[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[3]~17_combout\ = (\ALU_Sel[1]~input_o\ & (\ALU_inst|Result_temp\(7))) # (!\ALU_Sel[1]~input_o\ & ((\ALU_Sel[2]~input_o\ & (\ALU_inst|Result_temp\(7))) # (!\ALU_Sel[2]~input_o\ & ((\ALU_inst|NZVC[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Result_temp\(7),
	datab => \ALU_Sel[1]~input_o\,
	datac => \ALU_inst|NZVC[0]~16_combout\,
	datad => \ALU_Sel[2]~input_o\,
	combout => \ALU_inst|NZVC[3]~17_combout\);

-- Location: LCCOMB_X23_Y28_N16
\ALU_inst|NZVC[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU_inst|NZVC[3]~18_combout\ = (\ALU_inst|NZVC[3]~17_combout\) # ((\ALU_inst|Equal0~0_combout\ & \ALU_inst|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_inst|Equal0~0_combout\,
	datac => \ALU_inst|Add1~14_combout\,
	datad => \ALU_inst|NZVC[3]~17_combout\,
	combout => \ALU_inst|NZVC[3]~18_combout\);

ww_segments_0(0) <= \segments_0[0]~output_o\;

ww_segments_0(1) <= \segments_0[1]~output_o\;

ww_segments_0(2) <= \segments_0[2]~output_o\;

ww_segments_0(3) <= \segments_0[3]~output_o\;

ww_segments_0(4) <= \segments_0[4]~output_o\;

ww_segments_0(5) <= \segments_0[5]~output_o\;

ww_segments_0(6) <= \segments_0[6]~output_o\;

ww_segments_1(0) <= \segments_1[0]~output_o\;

ww_segments_1(1) <= \segments_1[1]~output_o\;

ww_segments_1(2) <= \segments_1[2]~output_o\;

ww_segments_1(3) <= \segments_1[3]~output_o\;

ww_segments_1(4) <= \segments_1[4]~output_o\;

ww_segments_1(5) <= \segments_1[5]~output_o\;

ww_segments_1(6) <= \segments_1[6]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


