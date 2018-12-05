-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/04/2018 23:31:36"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_16 IS
    PORT (
	opcode : IN std_logic_vector(2 DOWNTO 0);
	negate : IN std_logic;
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Saida : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END ULA_16;

ARCHITECTURE structure OF ULA_16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_negate : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \Saida[0]~output_o\ : std_logic;
SIGNAL \Saida[1]~output_o\ : std_logic;
SIGNAL \Saida[2]~output_o\ : std_logic;
SIGNAL \Saida[3]~output_o\ : std_logic;
SIGNAL \Saida[4]~output_o\ : std_logic;
SIGNAL \Saida[5]~output_o\ : std_logic;
SIGNAL \Saida[6]~output_o\ : std_logic;
SIGNAL \Saida[7]~output_o\ : std_logic;
SIGNAL \Saida[8]~output_o\ : std_logic;
SIGNAL \Saida[9]~output_o\ : std_logic;
SIGNAL \Saida[10]~output_o\ : std_logic;
SIGNAL \Saida[11]~output_o\ : std_logic;
SIGNAL \Saida[12]~output_o\ : std_logic;
SIGNAL \Saida[13]~output_o\ : std_logic;
SIGNAL \Saida[14]~output_o\ : std_logic;
SIGNAL \Saida[15]~output_o\ : std_logic;
SIGNAL \negate~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \P9|Mux15~0_combout\ : std_logic;
SIGNAL \P9|Mux15~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \P5|LessThan0~0_combout\ : std_logic;
SIGNAL \P5|LessThan0~1_combout\ : std_logic;
SIGNAL \P5|LessThan0~2_combout\ : std_logic;
SIGNAL \P5|LessThan0~3_combout\ : std_logic;
SIGNAL \P5|LessThan0~4_combout\ : std_logic;
SIGNAL \P5|LessThan0~5_combout\ : std_logic;
SIGNAL \P5|LessThan0~6_combout\ : std_logic;
SIGNAL \P9|Mux15~2_combout\ : std_logic;
SIGNAL \P8|Add0~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~3_combout\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \P9|Mux15~4_combout\ : std_logic;
SIGNAL \P9|Mux15~5_combout\ : std_logic;
SIGNAL \P9|Mux15~6_combout\ : std_logic;
SIGNAL \P8|Add0~2\ : std_logic;
SIGNAL \P8|Add0~5_sumout\ : std_logic;
SIGNAL \P8|Add2~1_sumout\ : std_logic;
SIGNAL \P8|Add1~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~80_combout\ : std_logic;
SIGNAL \P9|Mux14~0_combout\ : std_logic;
SIGNAL \P9|Mux15~7_combout\ : std_logic;
SIGNAL \P4|C~0_combout\ : std_logic;
SIGNAL \P9|Mux15~8_combout\ : std_logic;
SIGNAL \P9|Mux15~9_combout\ : std_logic;
SIGNAL \P8|process_0~0_combout\ : std_logic;
SIGNAL \P8|Add0~6\ : std_logic;
SIGNAL \P8|Add0~9_sumout\ : std_logic;
SIGNAL \P8|Add1~2\ : std_logic;
SIGNAL \P8|Add1~5_sumout\ : std_logic;
SIGNAL \P8|Add2~2\ : std_logic;
SIGNAL \P8|Add2~5_sumout\ : std_logic;
SIGNAL \P8|P~0_combout\ : std_logic;
SIGNAL \P8|Add3~1_sumout\ : std_logic;
SIGNAL \P8|process_0~1_combout\ : std_logic;
SIGNAL \P8|process_0~2_combout\ : std_logic;
SIGNAL \P8|Add4~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~10_combout\ : std_logic;
SIGNAL \P9|Mux15~11_combout\ : std_logic;
SIGNAL \P9|Mux13~0_combout\ : std_logic;
SIGNAL \P9|Mux15~12_combout\ : std_logic;
SIGNAL \P4|C~1_combout\ : std_logic;
SIGNAL \P9|Mux15~13_combout\ : std_logic;
SIGNAL \P9|Mux15~14_combout\ : std_logic;
SIGNAL \P8|process_0~3_combout\ : std_logic;
SIGNAL \P8|Add0~10\ : std_logic;
SIGNAL \P8|Add0~13_sumout\ : std_logic;
SIGNAL \P8|Add1~6\ : std_logic;
SIGNAL \P8|Add1~9_sumout\ : std_logic;
SIGNAL \P8|Add2~6\ : std_logic;
SIGNAL \P8|Add2~9_sumout\ : std_logic;
SIGNAL \P8|P~1_combout\ : std_logic;
SIGNAL \P8|Add3~2\ : std_logic;
SIGNAL \P8|Add3~5_sumout\ : std_logic;
SIGNAL \P8|Add4~2\ : std_logic;
SIGNAL \P8|Add4~5_sumout\ : std_logic;
SIGNAL \P8|P~2_combout\ : std_logic;
SIGNAL \P8|Add5~1_sumout\ : std_logic;
SIGNAL \P8|process_0~4_combout\ : std_logic;
SIGNAL \P8|Add6~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~15_combout\ : std_logic;
SIGNAL \P9|Mux15~16_combout\ : std_logic;
SIGNAL \P9|Mux12~0_combout\ : std_logic;
SIGNAL \P9|Mux15~17_combout\ : std_logic;
SIGNAL \P4|C~2_combout\ : std_logic;
SIGNAL \P9|Mux15~18_combout\ : std_logic;
SIGNAL \P9|Mux15~19_combout\ : std_logic;
SIGNAL \P8|process_0~5_combout\ : std_logic;
SIGNAL \P8|Add0~14\ : std_logic;
SIGNAL \P8|Add0~17_sumout\ : std_logic;
SIGNAL \P8|Add1~10\ : std_logic;
SIGNAL \P8|Add1~13_sumout\ : std_logic;
SIGNAL \P8|Add2~10\ : std_logic;
SIGNAL \P8|Add2~13_sumout\ : std_logic;
SIGNAL \P8|P~3_combout\ : std_logic;
SIGNAL \P8|Add3~6\ : std_logic;
SIGNAL \P8|Add3~9_sumout\ : std_logic;
SIGNAL \P8|Add4~6\ : std_logic;
SIGNAL \P8|Add4~9_sumout\ : std_logic;
SIGNAL \P8|P~4_combout\ : std_logic;
SIGNAL \P8|Add5~2\ : std_logic;
SIGNAL \P8|Add5~5_sumout\ : std_logic;
SIGNAL \P8|Add6~2\ : std_logic;
SIGNAL \P8|Add6~5_sumout\ : std_logic;
SIGNAL \P8|P~5_combout\ : std_logic;
SIGNAL \P8|Add7~1_sumout\ : std_logic;
SIGNAL \P8|process_0~6_combout\ : std_logic;
SIGNAL \P8|Add8~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~20_combout\ : std_logic;
SIGNAL \P9|Mux15~21_combout\ : std_logic;
SIGNAL \P9|Mux11~0_combout\ : std_logic;
SIGNAL \P9|Mux15~22_combout\ : std_logic;
SIGNAL \P4|C~3_combout\ : std_logic;
SIGNAL \P9|Mux15~23_combout\ : std_logic;
SIGNAL \P9|Mux15~24_combout\ : std_logic;
SIGNAL \P8|process_0~7_combout\ : std_logic;
SIGNAL \P8|Add0~18\ : std_logic;
SIGNAL \P8|Add0~21_sumout\ : std_logic;
SIGNAL \P8|Add1~14\ : std_logic;
SIGNAL \P8|Add1~17_sumout\ : std_logic;
SIGNAL \P8|Add2~14\ : std_logic;
SIGNAL \P8|Add2~17_sumout\ : std_logic;
SIGNAL \P8|P~6_combout\ : std_logic;
SIGNAL \P8|Add3~10\ : std_logic;
SIGNAL \P8|Add3~13_sumout\ : std_logic;
SIGNAL \P8|Add4~10\ : std_logic;
SIGNAL \P8|Add4~13_sumout\ : std_logic;
SIGNAL \P8|P~7_combout\ : std_logic;
SIGNAL \P8|Add5~6\ : std_logic;
SIGNAL \P8|Add5~9_sumout\ : std_logic;
SIGNAL \P8|Add6~6\ : std_logic;
SIGNAL \P8|Add6~9_sumout\ : std_logic;
SIGNAL \P8|P~8_combout\ : std_logic;
SIGNAL \P8|Add7~2\ : std_logic;
SIGNAL \P8|Add7~5_sumout\ : std_logic;
SIGNAL \P8|Add8~2\ : std_logic;
SIGNAL \P8|Add8~5_sumout\ : std_logic;
SIGNAL \P8|P~9_combout\ : std_logic;
SIGNAL \P8|Add9~1_sumout\ : std_logic;
SIGNAL \P8|process_0~8_combout\ : std_logic;
SIGNAL \P8|Add10~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~25_combout\ : std_logic;
SIGNAL \P9|Mux15~26_combout\ : std_logic;
SIGNAL \P9|Mux10~0_combout\ : std_logic;
SIGNAL \P9|Mux15~27_combout\ : std_logic;
SIGNAL \P4|C~4_combout\ : std_logic;
SIGNAL \P9|Mux15~28_combout\ : std_logic;
SIGNAL \P9|Mux15~29_combout\ : std_logic;
SIGNAL \P8|process_0~9_combout\ : std_logic;
SIGNAL \P8|Add0~22\ : std_logic;
SIGNAL \P8|Add0~25_sumout\ : std_logic;
SIGNAL \P8|Add1~18\ : std_logic;
SIGNAL \P8|Add1~21_sumout\ : std_logic;
SIGNAL \P8|Add2~18\ : std_logic;
SIGNAL \P8|Add2~21_sumout\ : std_logic;
SIGNAL \P8|P~10_combout\ : std_logic;
SIGNAL \P8|Add3~14\ : std_logic;
SIGNAL \P8|Add3~17_sumout\ : std_logic;
SIGNAL \P8|Add4~14\ : std_logic;
SIGNAL \P8|Add4~17_sumout\ : std_logic;
SIGNAL \P8|P~11_combout\ : std_logic;
SIGNAL \P8|Add5~10\ : std_logic;
SIGNAL \P8|Add5~13_sumout\ : std_logic;
SIGNAL \P8|Add6~10\ : std_logic;
SIGNAL \P8|Add6~13_sumout\ : std_logic;
SIGNAL \P8|P~12_combout\ : std_logic;
SIGNAL \P8|Add7~6\ : std_logic;
SIGNAL \P8|Add7~9_sumout\ : std_logic;
SIGNAL \P8|Add8~6\ : std_logic;
SIGNAL \P8|Add8~9_sumout\ : std_logic;
SIGNAL \P8|P~13_combout\ : std_logic;
SIGNAL \P8|Add9~2\ : std_logic;
SIGNAL \P8|Add9~5_sumout\ : std_logic;
SIGNAL \P8|Add10~2\ : std_logic;
SIGNAL \P8|Add10~5_sumout\ : std_logic;
SIGNAL \P8|P~14_combout\ : std_logic;
SIGNAL \P8|Add11~1_sumout\ : std_logic;
SIGNAL \P8|process_0~10_combout\ : std_logic;
SIGNAL \P8|Add12~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~30_combout\ : std_logic;
SIGNAL \P9|Mux15~31_combout\ : std_logic;
SIGNAL \P9|Mux9~0_combout\ : std_logic;
SIGNAL \P9|Mux15~32_combout\ : std_logic;
SIGNAL \P4|C~5_combout\ : std_logic;
SIGNAL \P9|Mux15~33_combout\ : std_logic;
SIGNAL \P9|Mux15~34_combout\ : std_logic;
SIGNAL \P8|Add0~26\ : std_logic;
SIGNAL \P8|Add0~29_sumout\ : std_logic;
SIGNAL \P8|Add1~22\ : std_logic;
SIGNAL \P8|Add1~25_sumout\ : std_logic;
SIGNAL \P8|Add2~22\ : std_logic;
SIGNAL \P8|Add2~25_sumout\ : std_logic;
SIGNAL \P8|P~15_combout\ : std_logic;
SIGNAL \P8|Add3~18\ : std_logic;
SIGNAL \P8|Add3~21_sumout\ : std_logic;
SIGNAL \P8|Add4~18\ : std_logic;
SIGNAL \P8|Add4~21_sumout\ : std_logic;
SIGNAL \P8|P~16_combout\ : std_logic;
SIGNAL \P8|Add5~14\ : std_logic;
SIGNAL \P8|Add5~17_sumout\ : std_logic;
SIGNAL \P8|Add6~14\ : std_logic;
SIGNAL \P8|Add6~17_sumout\ : std_logic;
SIGNAL \P8|P~17_combout\ : std_logic;
SIGNAL \P8|Add7~10\ : std_logic;
SIGNAL \P8|Add7~13_sumout\ : std_logic;
SIGNAL \P8|Add8~10\ : std_logic;
SIGNAL \P8|Add8~13_sumout\ : std_logic;
SIGNAL \P8|P~18_combout\ : std_logic;
SIGNAL \P8|Add9~6\ : std_logic;
SIGNAL \P8|Add9~9_sumout\ : std_logic;
SIGNAL \P8|Add10~6\ : std_logic;
SIGNAL \P8|Add10~9_sumout\ : std_logic;
SIGNAL \P8|P~19_combout\ : std_logic;
SIGNAL \P8|Add11~2\ : std_logic;
SIGNAL \P8|Add11~5_sumout\ : std_logic;
SIGNAL \P8|Add12~2\ : std_logic;
SIGNAL \P8|Add12~5_sumout\ : std_logic;
SIGNAL \P8|P~20_combout\ : std_logic;
SIGNAL \P8|Add13~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~35_combout\ : std_logic;
SIGNAL \P8|Add14~1_sumout\ : std_logic;
SIGNAL \P9|Mux15~36_combout\ : std_logic;
SIGNAL \P9|Mux15~37_combout\ : std_logic;
SIGNAL \P9|Mux15~38_combout\ : std_logic;
SIGNAL \P9|Mux15~39_combout\ : std_logic;
SIGNAL \P9|Mux8~0_combout\ : std_logic;
SIGNAL \P9|Mux15~40_combout\ : std_logic;
SIGNAL \P4|C~6_combout\ : std_logic;
SIGNAL \P9|Mux15~41_combout\ : std_logic;
SIGNAL \P9|Mux15~42_combout\ : std_logic;
SIGNAL \P8|Add1~26\ : std_logic;
SIGNAL \P8|Add1~29_sumout\ : std_logic;
SIGNAL \P8|Add2~26\ : std_logic;
SIGNAL \P8|Add2~29_sumout\ : std_logic;
SIGNAL \P8|P~21_combout\ : std_logic;
SIGNAL \P8|Add3~22\ : std_logic;
SIGNAL \P8|Add3~25_sumout\ : std_logic;
SIGNAL \P8|Add4~22\ : std_logic;
SIGNAL \P8|Add4~25_sumout\ : std_logic;
SIGNAL \P8|P~22_combout\ : std_logic;
SIGNAL \P8|Add5~18\ : std_logic;
SIGNAL \P8|Add5~21_sumout\ : std_logic;
SIGNAL \P8|Add6~18\ : std_logic;
SIGNAL \P8|Add6~21_sumout\ : std_logic;
SIGNAL \P8|P~23_combout\ : std_logic;
SIGNAL \P8|Add7~14\ : std_logic;
SIGNAL \P8|Add7~17_sumout\ : std_logic;
SIGNAL \P8|Add8~14\ : std_logic;
SIGNAL \P8|Add8~17_sumout\ : std_logic;
SIGNAL \P8|P~24_combout\ : std_logic;
SIGNAL \P8|Add9~10\ : std_logic;
SIGNAL \P8|Add9~13_sumout\ : std_logic;
SIGNAL \P8|Add10~10\ : std_logic;
SIGNAL \P8|Add10~13_sumout\ : std_logic;
SIGNAL \P8|P~25_combout\ : std_logic;
SIGNAL \P8|Add11~6\ : std_logic;
SIGNAL \P8|Add11~9_sumout\ : std_logic;
SIGNAL \P8|Add12~6\ : std_logic;
SIGNAL \P8|Add12~9_sumout\ : std_logic;
SIGNAL \P8|P~26_combout\ : std_logic;
SIGNAL \P8|Add13~2\ : std_logic;
SIGNAL \P8|Add13~5_sumout\ : std_logic;
SIGNAL \P8|Add14~2\ : std_logic;
SIGNAL \P8|Add14~5_sumout\ : std_logic;
SIGNAL \P9|Mux15~43_combout\ : std_logic;
SIGNAL \P9|Mux15~44_combout\ : std_logic;
SIGNAL \P9|Mux7~0_combout\ : std_logic;
SIGNAL \P9|Mux15~45_combout\ : std_logic;
SIGNAL \P4|C~7_combout\ : std_logic;
SIGNAL \P9|Mux15~46_combout\ : std_logic;
SIGNAL \P9|Mux15~47_combout\ : std_logic;
SIGNAL \P8|Add3~26\ : std_logic;
SIGNAL \P8|Add3~29_sumout\ : std_logic;
SIGNAL \P8|Add4~26\ : std_logic;
SIGNAL \P8|Add4~29_sumout\ : std_logic;
SIGNAL \P8|P~27_combout\ : std_logic;
SIGNAL \P8|Add5~22\ : std_logic;
SIGNAL \P8|Add5~25_sumout\ : std_logic;
SIGNAL \P8|Add6~22\ : std_logic;
SIGNAL \P8|Add6~25_sumout\ : std_logic;
SIGNAL \P8|P~28_combout\ : std_logic;
SIGNAL \P8|Add7~18\ : std_logic;
SIGNAL \P8|Add7~21_sumout\ : std_logic;
SIGNAL \P8|Add8~18\ : std_logic;
SIGNAL \P8|Add8~21_sumout\ : std_logic;
SIGNAL \P8|P~29_combout\ : std_logic;
SIGNAL \P8|Add9~14\ : std_logic;
SIGNAL \P8|Add9~17_sumout\ : std_logic;
SIGNAL \P8|Add10~14\ : std_logic;
SIGNAL \P8|Add10~17_sumout\ : std_logic;
SIGNAL \P8|P~30_combout\ : std_logic;
SIGNAL \P8|Add11~10\ : std_logic;
SIGNAL \P8|Add11~13_sumout\ : std_logic;
SIGNAL \P8|Add12~10\ : std_logic;
SIGNAL \P8|Add12~13_sumout\ : std_logic;
SIGNAL \P8|P~31_combout\ : std_logic;
SIGNAL \P8|Add13~6\ : std_logic;
SIGNAL \P8|Add13~9_sumout\ : std_logic;
SIGNAL \P8|Add14~6\ : std_logic;
SIGNAL \P8|Add14~9_sumout\ : std_logic;
SIGNAL \P9|Mux15~48_combout\ : std_logic;
SIGNAL \P9|Mux15~49_combout\ : std_logic;
SIGNAL \P9|Mux6~0_combout\ : std_logic;
SIGNAL \P9|Mux15~50_combout\ : std_logic;
SIGNAL \P4|C~8_combout\ : std_logic;
SIGNAL \P9|Mux15~51_combout\ : std_logic;
SIGNAL \P9|Mux15~52_combout\ : std_logic;
SIGNAL \P8|Add5~26\ : std_logic;
SIGNAL \P8|Add5~29_sumout\ : std_logic;
SIGNAL \P8|Add6~26\ : std_logic;
SIGNAL \P8|Add6~29_sumout\ : std_logic;
SIGNAL \P8|P~32_combout\ : std_logic;
SIGNAL \P8|Add7~22\ : std_logic;
SIGNAL \P8|Add7~25_sumout\ : std_logic;
SIGNAL \P8|Add8~22\ : std_logic;
SIGNAL \P8|Add8~25_sumout\ : std_logic;
SIGNAL \P8|P~33_combout\ : std_logic;
SIGNAL \P8|Add9~18\ : std_logic;
SIGNAL \P8|Add9~21_sumout\ : std_logic;
SIGNAL \P8|Add10~18\ : std_logic;
SIGNAL \P8|Add10~21_sumout\ : std_logic;
SIGNAL \P8|P~34_combout\ : std_logic;
SIGNAL \P8|Add11~14\ : std_logic;
SIGNAL \P8|Add11~17_sumout\ : std_logic;
SIGNAL \P8|Add12~14\ : std_logic;
SIGNAL \P8|Add12~17_sumout\ : std_logic;
SIGNAL \P8|P~35_combout\ : std_logic;
SIGNAL \P8|Add13~10\ : std_logic;
SIGNAL \P8|Add13~13_sumout\ : std_logic;
SIGNAL \P8|Add14~10\ : std_logic;
SIGNAL \P8|Add14~13_sumout\ : std_logic;
SIGNAL \P9|Mux15~53_combout\ : std_logic;
SIGNAL \P9|Mux15~54_combout\ : std_logic;
SIGNAL \P9|Mux5~0_combout\ : std_logic;
SIGNAL \P9|Mux15~55_combout\ : std_logic;
SIGNAL \P4|C~9_combout\ : std_logic;
SIGNAL \P9|Mux15~56_combout\ : std_logic;
SIGNAL \P9|Mux15~57_combout\ : std_logic;
SIGNAL \P8|Add7~26\ : std_logic;
SIGNAL \P8|Add7~29_sumout\ : std_logic;
SIGNAL \P8|Add8~26\ : std_logic;
SIGNAL \P8|Add8~29_sumout\ : std_logic;
SIGNAL \P8|P~36_combout\ : std_logic;
SIGNAL \P8|Add9~22\ : std_logic;
SIGNAL \P8|Add9~25_sumout\ : std_logic;
SIGNAL \P8|Add10~22\ : std_logic;
SIGNAL \P8|Add10~25_sumout\ : std_logic;
SIGNAL \P8|P~37_combout\ : std_logic;
SIGNAL \P8|Add11~18\ : std_logic;
SIGNAL \P8|Add11~21_sumout\ : std_logic;
SIGNAL \P8|Add12~18\ : std_logic;
SIGNAL \P8|Add12~21_sumout\ : std_logic;
SIGNAL \P8|P~38_combout\ : std_logic;
SIGNAL \P8|Add13~14\ : std_logic;
SIGNAL \P8|Add13~17_sumout\ : std_logic;
SIGNAL \P8|Add14~14\ : std_logic;
SIGNAL \P8|Add14~17_sumout\ : std_logic;
SIGNAL \P9|Mux15~58_combout\ : std_logic;
SIGNAL \P9|Mux15~59_combout\ : std_logic;
SIGNAL \P9|Mux4~0_combout\ : std_logic;
SIGNAL \P9|Mux15~60_combout\ : std_logic;
SIGNAL \P4|C~10_combout\ : std_logic;
SIGNAL \P9|Mux15~61_combout\ : std_logic;
SIGNAL \P9|Mux15~62_combout\ : std_logic;
SIGNAL \P8|Add9~26\ : std_logic;
SIGNAL \P8|Add9~29_sumout\ : std_logic;
SIGNAL \P8|Add10~26\ : std_logic;
SIGNAL \P8|Add10~29_sumout\ : std_logic;
SIGNAL \P8|P~39_combout\ : std_logic;
SIGNAL \P8|Add11~22\ : std_logic;
SIGNAL \P8|Add11~25_sumout\ : std_logic;
SIGNAL \P8|Add12~22\ : std_logic;
SIGNAL \P8|Add12~25_sumout\ : std_logic;
SIGNAL \P8|P~40_combout\ : std_logic;
SIGNAL \P8|Add13~18\ : std_logic;
SIGNAL \P8|Add13~21_sumout\ : std_logic;
SIGNAL \P8|Add14~18\ : std_logic;
SIGNAL \P8|Add14~21_sumout\ : std_logic;
SIGNAL \P9|Mux15~63_combout\ : std_logic;
SIGNAL \P9|Mux15~64_combout\ : std_logic;
SIGNAL \P9|Mux3~0_combout\ : std_logic;
SIGNAL \P9|Mux15~65_combout\ : std_logic;
SIGNAL \P4|C~11_combout\ : std_logic;
SIGNAL \P9|Mux15~66_combout\ : std_logic;
SIGNAL \P9|Mux15~67_combout\ : std_logic;
SIGNAL \P8|Add11~26\ : std_logic;
SIGNAL \P8|Add11~29_sumout\ : std_logic;
SIGNAL \P8|Add12~26\ : std_logic;
SIGNAL \P8|Add12~29_sumout\ : std_logic;
SIGNAL \P8|P~41_combout\ : std_logic;
SIGNAL \P8|Add13~22\ : std_logic;
SIGNAL \P8|Add13~25_sumout\ : std_logic;
SIGNAL \P9|Mux15~68_combout\ : std_logic;
SIGNAL \P8|Add14~22\ : std_logic;
SIGNAL \P8|Add14~25_sumout\ : std_logic;
SIGNAL \P9|Mux15~76_combout\ : std_logic;
SIGNAL \P9|Mux2~0_combout\ : std_logic;
SIGNAL \P9|Mux15~69_combout\ : std_logic;
SIGNAL \P4|C~12_combout\ : std_logic;
SIGNAL \P9|Mux15~70_combout\ : std_logic;
SIGNAL \P9|Mux15~71_combout\ : std_logic;
SIGNAL \P8|Add13~26\ : std_logic;
SIGNAL \P8|Add13~29_sumout\ : std_logic;
SIGNAL \P8|Add14~26\ : std_logic;
SIGNAL \P8|Add14~29_sumout\ : std_logic;
SIGNAL \P9|Mux15~72_combout\ : std_logic;
SIGNAL \P9|Mux1~0_combout\ : std_logic;
SIGNAL \P9|Mux15~73_combout\ : std_logic;
SIGNAL \P5|LessThan0~7_combout\ : std_logic;
SIGNAL \P9|Mux15~74_combout\ : std_logic;
SIGNAL \P9|Mux15~75_combout\ : std_logic;
SIGNAL \P9|Mux0~0_combout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~80_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~76_combout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \P8|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~58_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~38_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~37_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~36_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~57_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~56_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~9_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~55_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~54_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~53_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~35_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~34_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~33_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~32_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~52_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~51_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~8_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~50_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~49_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~48_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~31_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~30_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~29_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~28_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~27_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~47_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~46_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~7_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~45_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~44_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~43_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~26_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~25_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~24_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~23_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~22_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~21_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~42_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~41_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~6_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~40_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~39_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~38_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~37_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~20_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~19_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~18_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~17_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~16_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~15_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~36_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~35_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~34_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~33_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~5_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~32_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~31_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~30_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~14_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~13_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~12_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~11_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~10_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~29_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~28_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~4_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~27_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~26_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~25_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~9_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~8_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~7_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~6_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~24_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~23_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~22_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~21_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~20_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~5_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~4_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~3_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~19_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~18_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~2_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~17_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~16_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~15_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~2_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~1_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~14_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~13_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~12_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~11_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~10_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~0_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \P8|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~9_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~8_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~7_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~6_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_negate~input_o\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~75_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~74_combout\ : std_logic;
SIGNAL \P5|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~73_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~72_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~71_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~70_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~12_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~69_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~68_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~41_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~67_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~66_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~11_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~65_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~64_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~63_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~40_combout\ : std_logic;
SIGNAL \P8|ALT_INV_P~39_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~62_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~61_combout\ : std_logic;
SIGNAL \P4|ALT_INV_C~10_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~60_combout\ : std_logic;
SIGNAL \P9|ALT_INV_Mux15~59_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_negate <= negate;
ww_A <= A;
ww_B <= B;
Saida <= ww_Saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\P8|ALT_INV_Add5~17_sumout\ <= NOT \P8|Add5~17_sumout\;
\P8|ALT_INV_Add7~13_sumout\ <= NOT \P8|Add7~13_sumout\;
\P8|ALT_INV_Add9~9_sumout\ <= NOT \P8|Add9~9_sumout\;
\P8|ALT_INV_Add11~5_sumout\ <= NOT \P8|Add11~5_sumout\;
\P8|ALT_INV_Add14~1_sumout\ <= NOT \P8|Add14~1_sumout\;
\P8|ALT_INV_Add13~1_sumout\ <= NOT \P8|Add13~1_sumout\;
\P8|ALT_INV_Add12~1_sumout\ <= NOT \P8|Add12~1_sumout\;
\P8|ALT_INV_Add10~5_sumout\ <= NOT \P8|Add10~5_sumout\;
\P8|ALT_INV_Add8~9_sumout\ <= NOT \P8|Add8~9_sumout\;
\P8|ALT_INV_Add6~13_sumout\ <= NOT \P8|Add6~13_sumout\;
\P8|ALT_INV_Add4~17_sumout\ <= NOT \P8|Add4~17_sumout\;
\P8|ALT_INV_Add2~21_sumout\ <= NOT \P8|Add2~21_sumout\;
\P8|ALT_INV_Add0~25_sumout\ <= NOT \P8|Add0~25_sumout\;
\P8|ALT_INV_Add1~21_sumout\ <= NOT \P8|Add1~21_sumout\;
\P8|ALT_INV_Add3~17_sumout\ <= NOT \P8|Add3~17_sumout\;
\P8|ALT_INV_Add5~13_sumout\ <= NOT \P8|Add5~13_sumout\;
\P8|ALT_INV_Add7~9_sumout\ <= NOT \P8|Add7~9_sumout\;
\P8|ALT_INV_Add9~5_sumout\ <= NOT \P8|Add9~5_sumout\;
\P8|ALT_INV_Add11~1_sumout\ <= NOT \P8|Add11~1_sumout\;
\P8|ALT_INV_Add10~1_sumout\ <= NOT \P8|Add10~1_sumout\;
\P8|ALT_INV_Add8~5_sumout\ <= NOT \P8|Add8~5_sumout\;
\P8|ALT_INV_Add6~9_sumout\ <= NOT \P8|Add6~9_sumout\;
\P8|ALT_INV_Add4~13_sumout\ <= NOT \P8|Add4~13_sumout\;
\P8|ALT_INV_Add2~17_sumout\ <= NOT \P8|Add2~17_sumout\;
\P8|ALT_INV_Add0~21_sumout\ <= NOT \P8|Add0~21_sumout\;
\P8|ALT_INV_Add1~17_sumout\ <= NOT \P8|Add1~17_sumout\;
\P8|ALT_INV_Add3~13_sumout\ <= NOT \P8|Add3~13_sumout\;
\P8|ALT_INV_Add5~9_sumout\ <= NOT \P8|Add5~9_sumout\;
\P8|ALT_INV_Add7~5_sumout\ <= NOT \P8|Add7~5_sumout\;
\P8|ALT_INV_Add9~1_sumout\ <= NOT \P8|Add9~1_sumout\;
\P8|ALT_INV_Add8~1_sumout\ <= NOT \P8|Add8~1_sumout\;
\P8|ALT_INV_Add6~5_sumout\ <= NOT \P8|Add6~5_sumout\;
\P8|ALT_INV_Add4~9_sumout\ <= NOT \P8|Add4~9_sumout\;
\P8|ALT_INV_Add2~13_sumout\ <= NOT \P8|Add2~13_sumout\;
\P8|ALT_INV_Add0~17_sumout\ <= NOT \P8|Add0~17_sumout\;
\P8|ALT_INV_Add1~13_sumout\ <= NOT \P8|Add1~13_sumout\;
\P8|ALT_INV_Add3~9_sumout\ <= NOT \P8|Add3~9_sumout\;
\P8|ALT_INV_Add5~5_sumout\ <= NOT \P8|Add5~5_sumout\;
\P8|ALT_INV_Add7~1_sumout\ <= NOT \P8|Add7~1_sumout\;
\P8|ALT_INV_Add6~1_sumout\ <= NOT \P8|Add6~1_sumout\;
\P8|ALT_INV_Add4~5_sumout\ <= NOT \P8|Add4~5_sumout\;
\P8|ALT_INV_Add2~9_sumout\ <= NOT \P8|Add2~9_sumout\;
\P8|ALT_INV_Add0~13_sumout\ <= NOT \P8|Add0~13_sumout\;
\P8|ALT_INV_Add1~9_sumout\ <= NOT \P8|Add1~9_sumout\;
\P8|ALT_INV_Add3~5_sumout\ <= NOT \P8|Add3~5_sumout\;
\P8|ALT_INV_Add5~1_sumout\ <= NOT \P8|Add5~1_sumout\;
\P8|ALT_INV_Add4~1_sumout\ <= NOT \P8|Add4~1_sumout\;
\P8|ALT_INV_Add2~5_sumout\ <= NOT \P8|Add2~5_sumout\;
\P8|ALT_INV_Add0~9_sumout\ <= NOT \P8|Add0~9_sumout\;
\P8|ALT_INV_Add1~5_sumout\ <= NOT \P8|Add1~5_sumout\;
\P8|ALT_INV_Add3~1_sumout\ <= NOT \P8|Add3~1_sumout\;
\P8|ALT_INV_Add2~1_sumout\ <= NOT \P8|Add2~1_sumout\;
\P8|ALT_INV_Add1~1_sumout\ <= NOT \P8|Add1~1_sumout\;
\P8|ALT_INV_Add0~5_sumout\ <= NOT \P8|Add0~5_sumout\;
\P8|ALT_INV_Add0~1_sumout\ <= NOT \P8|Add0~1_sumout\;
\P5|ALT_INV_LessThan0~6_combout\ <= NOT \P5|LessThan0~6_combout\;
\P5|ALT_INV_LessThan0~5_combout\ <= NOT \P5|LessThan0~5_combout\;
\P5|ALT_INV_LessThan0~4_combout\ <= NOT \P5|LessThan0~4_combout\;
\P5|ALT_INV_LessThan0~3_combout\ <= NOT \P5|LessThan0~3_combout\;
\P5|ALT_INV_LessThan0~2_combout\ <= NOT \P5|LessThan0~2_combout\;
\P5|ALT_INV_LessThan0~1_combout\ <= NOT \P5|LessThan0~1_combout\;
\P5|ALT_INV_LessThan0~0_combout\ <= NOT \P5|LessThan0~0_combout\;
\P9|ALT_INV_Mux15~1_combout\ <= NOT \P9|Mux15~1_combout\;
\P9|ALT_INV_Mux15~0_combout\ <= NOT \P9|Mux15~0_combout\;
\P9|ALT_INV_Mux15~80_combout\ <= NOT \P9|Mux15~80_combout\;
\P9|ALT_INV_Mux15~76_combout\ <= NOT \P9|Mux15~76_combout\;
\P8|ALT_INV_Add14~29_sumout\ <= NOT \P8|Add14~29_sumout\;
\P8|ALT_INV_Add13~29_sumout\ <= NOT \P8|Add13~29_sumout\;
\P8|ALT_INV_Add12~29_sumout\ <= NOT \P8|Add12~29_sumout\;
\P8|ALT_INV_Add11~29_sumout\ <= NOT \P8|Add11~29_sumout\;
\P8|ALT_INV_Add14~25_sumout\ <= NOT \P8|Add14~25_sumout\;
\P8|ALT_INV_Add13~25_sumout\ <= NOT \P8|Add13~25_sumout\;
\P8|ALT_INV_Add12~25_sumout\ <= NOT \P8|Add12~25_sumout\;
\P8|ALT_INV_Add10~29_sumout\ <= NOT \P8|Add10~29_sumout\;
\P8|ALT_INV_Add9~29_sumout\ <= NOT \P8|Add9~29_sumout\;
\P8|ALT_INV_Add11~25_sumout\ <= NOT \P8|Add11~25_sumout\;
\P8|ALT_INV_Add14~21_sumout\ <= NOT \P8|Add14~21_sumout\;
\P8|ALT_INV_Add13~21_sumout\ <= NOT \P8|Add13~21_sumout\;
\P8|ALT_INV_Add12~21_sumout\ <= NOT \P8|Add12~21_sumout\;
\P8|ALT_INV_Add10~25_sumout\ <= NOT \P8|Add10~25_sumout\;
\P8|ALT_INV_Add8~29_sumout\ <= NOT \P8|Add8~29_sumout\;
\P8|ALT_INV_Add7~29_sumout\ <= NOT \P8|Add7~29_sumout\;
\P8|ALT_INV_Add9~25_sumout\ <= NOT \P8|Add9~25_sumout\;
\P8|ALT_INV_Add11~21_sumout\ <= NOT \P8|Add11~21_sumout\;
\P8|ALT_INV_Add14~17_sumout\ <= NOT \P8|Add14~17_sumout\;
\P8|ALT_INV_Add13~17_sumout\ <= NOT \P8|Add13~17_sumout\;
\P8|ALT_INV_Add12~17_sumout\ <= NOT \P8|Add12~17_sumout\;
\P8|ALT_INV_Add10~21_sumout\ <= NOT \P8|Add10~21_sumout\;
\P8|ALT_INV_Add8~25_sumout\ <= NOT \P8|Add8~25_sumout\;
\P8|ALT_INV_Add6~29_sumout\ <= NOT \P8|Add6~29_sumout\;
\P8|ALT_INV_Add5~29_sumout\ <= NOT \P8|Add5~29_sumout\;
\P8|ALT_INV_Add7~25_sumout\ <= NOT \P8|Add7~25_sumout\;
\P8|ALT_INV_Add9~21_sumout\ <= NOT \P8|Add9~21_sumout\;
\P8|ALT_INV_Add11~17_sumout\ <= NOT \P8|Add11~17_sumout\;
\P8|ALT_INV_Add14~13_sumout\ <= NOT \P8|Add14~13_sumout\;
\P8|ALT_INV_Add13~13_sumout\ <= NOT \P8|Add13~13_sumout\;
\P8|ALT_INV_Add12~13_sumout\ <= NOT \P8|Add12~13_sumout\;
\P8|ALT_INV_Add10~17_sumout\ <= NOT \P8|Add10~17_sumout\;
\P8|ALT_INV_Add8~21_sumout\ <= NOT \P8|Add8~21_sumout\;
\P8|ALT_INV_Add6~25_sumout\ <= NOT \P8|Add6~25_sumout\;
\P8|ALT_INV_Add4~29_sumout\ <= NOT \P8|Add4~29_sumout\;
\P8|ALT_INV_Add3~29_sumout\ <= NOT \P8|Add3~29_sumout\;
\P8|ALT_INV_Add5~25_sumout\ <= NOT \P8|Add5~25_sumout\;
\P8|ALT_INV_Add7~21_sumout\ <= NOT \P8|Add7~21_sumout\;
\P8|ALT_INV_Add9~17_sumout\ <= NOT \P8|Add9~17_sumout\;
\P8|ALT_INV_Add11~13_sumout\ <= NOT \P8|Add11~13_sumout\;
\P8|ALT_INV_Add14~9_sumout\ <= NOT \P8|Add14~9_sumout\;
\P8|ALT_INV_Add13~9_sumout\ <= NOT \P8|Add13~9_sumout\;
\P8|ALT_INV_Add12~9_sumout\ <= NOT \P8|Add12~9_sumout\;
\P8|ALT_INV_Add10~13_sumout\ <= NOT \P8|Add10~13_sumout\;
\P8|ALT_INV_Add8~17_sumout\ <= NOT \P8|Add8~17_sumout\;
\P8|ALT_INV_Add6~21_sumout\ <= NOT \P8|Add6~21_sumout\;
\P8|ALT_INV_Add4~25_sumout\ <= NOT \P8|Add4~25_sumout\;
\P8|ALT_INV_Add2~29_sumout\ <= NOT \P8|Add2~29_sumout\;
\P8|ALT_INV_Add1~29_sumout\ <= NOT \P8|Add1~29_sumout\;
\P8|ALT_INV_Add3~25_sumout\ <= NOT \P8|Add3~25_sumout\;
\P8|ALT_INV_Add5~21_sumout\ <= NOT \P8|Add5~21_sumout\;
\P8|ALT_INV_Add7~17_sumout\ <= NOT \P8|Add7~17_sumout\;
\P8|ALT_INV_Add9~13_sumout\ <= NOT \P8|Add9~13_sumout\;
\P8|ALT_INV_Add11~9_sumout\ <= NOT \P8|Add11~9_sumout\;
\P8|ALT_INV_Add14~5_sumout\ <= NOT \P8|Add14~5_sumout\;
\P8|ALT_INV_Add13~5_sumout\ <= NOT \P8|Add13~5_sumout\;
\P8|ALT_INV_Add12~5_sumout\ <= NOT \P8|Add12~5_sumout\;
\P8|ALT_INV_Add10~9_sumout\ <= NOT \P8|Add10~9_sumout\;
\P8|ALT_INV_Add8~13_sumout\ <= NOT \P8|Add8~13_sumout\;
\P8|ALT_INV_Add6~17_sumout\ <= NOT \P8|Add6~17_sumout\;
\P8|ALT_INV_Add4~21_sumout\ <= NOT \P8|Add4~21_sumout\;
\P8|ALT_INV_Add2~25_sumout\ <= NOT \P8|Add2~25_sumout\;
\P8|ALT_INV_Add0~29_sumout\ <= NOT \P8|Add0~29_sumout\;
\P8|ALT_INV_Add1~25_sumout\ <= NOT \P8|Add1~25_sumout\;
\P8|ALT_INV_Add3~21_sumout\ <= NOT \P8|Add3~21_sumout\;
\P9|ALT_INV_Mux15~58_combout\ <= NOT \P9|Mux15~58_combout\;
\P8|ALT_INV_P~38_combout\ <= NOT \P8|P~38_combout\;
\P8|ALT_INV_P~37_combout\ <= NOT \P8|P~37_combout\;
\P8|ALT_INV_P~36_combout\ <= NOT \P8|P~36_combout\;
\P9|ALT_INV_Mux15~57_combout\ <= NOT \P9|Mux15~57_combout\;
\P9|ALT_INV_Mux15~56_combout\ <= NOT \P9|Mux15~56_combout\;
\P4|ALT_INV_C~9_combout\ <= NOT \P4|C~9_combout\;
\P9|ALT_INV_Mux15~55_combout\ <= NOT \P9|Mux15~55_combout\;
\P9|ALT_INV_Mux15~54_combout\ <= NOT \P9|Mux15~54_combout\;
\P9|ALT_INV_Mux15~53_combout\ <= NOT \P9|Mux15~53_combout\;
\P8|ALT_INV_P~35_combout\ <= NOT \P8|P~35_combout\;
\P8|ALT_INV_P~34_combout\ <= NOT \P8|P~34_combout\;
\P8|ALT_INV_P~33_combout\ <= NOT \P8|P~33_combout\;
\P8|ALT_INV_P~32_combout\ <= NOT \P8|P~32_combout\;
\P9|ALT_INV_Mux15~52_combout\ <= NOT \P9|Mux15~52_combout\;
\P9|ALT_INV_Mux15~51_combout\ <= NOT \P9|Mux15~51_combout\;
\P4|ALT_INV_C~8_combout\ <= NOT \P4|C~8_combout\;
\P9|ALT_INV_Mux15~50_combout\ <= NOT \P9|Mux15~50_combout\;
\P9|ALT_INV_Mux15~49_combout\ <= NOT \P9|Mux15~49_combout\;
\P9|ALT_INV_Mux15~48_combout\ <= NOT \P9|Mux15~48_combout\;
\P8|ALT_INV_P~31_combout\ <= NOT \P8|P~31_combout\;
\P8|ALT_INV_P~30_combout\ <= NOT \P8|P~30_combout\;
\P8|ALT_INV_P~29_combout\ <= NOT \P8|P~29_combout\;
\P8|ALT_INV_P~28_combout\ <= NOT \P8|P~28_combout\;
\P8|ALT_INV_P~27_combout\ <= NOT \P8|P~27_combout\;
\P9|ALT_INV_Mux15~47_combout\ <= NOT \P9|Mux15~47_combout\;
\P9|ALT_INV_Mux15~46_combout\ <= NOT \P9|Mux15~46_combout\;
\P4|ALT_INV_C~7_combout\ <= NOT \P4|C~7_combout\;
\P9|ALT_INV_Mux15~45_combout\ <= NOT \P9|Mux15~45_combout\;
\P9|ALT_INV_Mux15~44_combout\ <= NOT \P9|Mux15~44_combout\;
\P9|ALT_INV_Mux15~43_combout\ <= NOT \P9|Mux15~43_combout\;
\P8|ALT_INV_P~26_combout\ <= NOT \P8|P~26_combout\;
\P8|ALT_INV_P~25_combout\ <= NOT \P8|P~25_combout\;
\P8|ALT_INV_P~24_combout\ <= NOT \P8|P~24_combout\;
\P8|ALT_INV_P~23_combout\ <= NOT \P8|P~23_combout\;
\P8|ALT_INV_P~22_combout\ <= NOT \P8|P~22_combout\;
\P8|ALT_INV_P~21_combout\ <= NOT \P8|P~21_combout\;
\P9|ALT_INV_Mux15~42_combout\ <= NOT \P9|Mux15~42_combout\;
\P9|ALT_INV_Mux15~41_combout\ <= NOT \P9|Mux15~41_combout\;
\P4|ALT_INV_C~6_combout\ <= NOT \P4|C~6_combout\;
\P9|ALT_INV_Mux15~40_combout\ <= NOT \P9|Mux15~40_combout\;
\P9|ALT_INV_Mux15~39_combout\ <= NOT \P9|Mux15~39_combout\;
\P9|ALT_INV_Mux15~38_combout\ <= NOT \P9|Mux15~38_combout\;
\P9|ALT_INV_Mux15~37_combout\ <= NOT \P9|Mux15~37_combout\;
\P8|ALT_INV_P~20_combout\ <= NOT \P8|P~20_combout\;
\P8|ALT_INV_P~19_combout\ <= NOT \P8|P~19_combout\;
\P8|ALT_INV_P~18_combout\ <= NOT \P8|P~18_combout\;
\P8|ALT_INV_P~17_combout\ <= NOT \P8|P~17_combout\;
\P8|ALT_INV_P~16_combout\ <= NOT \P8|P~16_combout\;
\P8|ALT_INV_P~15_combout\ <= NOT \P8|P~15_combout\;
\P9|ALT_INV_Mux15~36_combout\ <= NOT \P9|Mux15~36_combout\;
\P9|ALT_INV_Mux15~35_combout\ <= NOT \P9|Mux15~35_combout\;
\P9|ALT_INV_Mux15~34_combout\ <= NOT \P9|Mux15~34_combout\;
\P9|ALT_INV_Mux15~33_combout\ <= NOT \P9|Mux15~33_combout\;
\P4|ALT_INV_C~5_combout\ <= NOT \P4|C~5_combout\;
\P9|ALT_INV_Mux15~32_combout\ <= NOT \P9|Mux15~32_combout\;
\P9|ALT_INV_Mux15~31_combout\ <= NOT \P9|Mux15~31_combout\;
\P9|ALT_INV_Mux15~30_combout\ <= NOT \P9|Mux15~30_combout\;
\P8|ALT_INV_process_0~10_combout\ <= NOT \P8|process_0~10_combout\;
\P8|ALT_INV_P~14_combout\ <= NOT \P8|P~14_combout\;
\P8|ALT_INV_P~13_combout\ <= NOT \P8|P~13_combout\;
\P8|ALT_INV_P~12_combout\ <= NOT \P8|P~12_combout\;
\P8|ALT_INV_P~11_combout\ <= NOT \P8|P~11_combout\;
\P8|ALT_INV_P~10_combout\ <= NOT \P8|P~10_combout\;
\P8|ALT_INV_process_0~9_combout\ <= NOT \P8|process_0~9_combout\;
\P9|ALT_INV_Mux15~29_combout\ <= NOT \P9|Mux15~29_combout\;
\P9|ALT_INV_Mux15~28_combout\ <= NOT \P9|Mux15~28_combout\;
\P4|ALT_INV_C~4_combout\ <= NOT \P4|C~4_combout\;
\P9|ALT_INV_Mux15~27_combout\ <= NOT \P9|Mux15~27_combout\;
\P9|ALT_INV_Mux15~26_combout\ <= NOT \P9|Mux15~26_combout\;
\P9|ALT_INV_Mux15~25_combout\ <= NOT \P9|Mux15~25_combout\;
\P8|ALT_INV_process_0~8_combout\ <= NOT \P8|process_0~8_combout\;
\P8|ALT_INV_P~9_combout\ <= NOT \P8|P~9_combout\;
\P8|ALT_INV_P~8_combout\ <= NOT \P8|P~8_combout\;
\P8|ALT_INV_P~7_combout\ <= NOT \P8|P~7_combout\;
\P8|ALT_INV_P~6_combout\ <= NOT \P8|P~6_combout\;
\P8|ALT_INV_process_0~7_combout\ <= NOT \P8|process_0~7_combout\;
\P9|ALT_INV_Mux15~24_combout\ <= NOT \P9|Mux15~24_combout\;
\P9|ALT_INV_Mux15~23_combout\ <= NOT \P9|Mux15~23_combout\;
\P4|ALT_INV_C~3_combout\ <= NOT \P4|C~3_combout\;
\P9|ALT_INV_Mux15~22_combout\ <= NOT \P9|Mux15~22_combout\;
\P9|ALT_INV_Mux15~21_combout\ <= NOT \P9|Mux15~21_combout\;
\P9|ALT_INV_Mux15~20_combout\ <= NOT \P9|Mux15~20_combout\;
\P8|ALT_INV_process_0~6_combout\ <= NOT \P8|process_0~6_combout\;
\P8|ALT_INV_P~5_combout\ <= NOT \P8|P~5_combout\;
\P8|ALT_INV_P~4_combout\ <= NOT \P8|P~4_combout\;
\P8|ALT_INV_P~3_combout\ <= NOT \P8|P~3_combout\;
\P8|ALT_INV_process_0~5_combout\ <= NOT \P8|process_0~5_combout\;
\P9|ALT_INV_Mux15~19_combout\ <= NOT \P9|Mux15~19_combout\;
\P9|ALT_INV_Mux15~18_combout\ <= NOT \P9|Mux15~18_combout\;
\P4|ALT_INV_C~2_combout\ <= NOT \P4|C~2_combout\;
\P9|ALT_INV_Mux15~17_combout\ <= NOT \P9|Mux15~17_combout\;
\P9|ALT_INV_Mux15~16_combout\ <= NOT \P9|Mux15~16_combout\;
\P9|ALT_INV_Mux15~15_combout\ <= NOT \P9|Mux15~15_combout\;
\P8|ALT_INV_process_0~4_combout\ <= NOT \P8|process_0~4_combout\;
\P8|ALT_INV_P~2_combout\ <= NOT \P8|P~2_combout\;
\P8|ALT_INV_P~1_combout\ <= NOT \P8|P~1_combout\;
\P8|ALT_INV_process_0~3_combout\ <= NOT \P8|process_0~3_combout\;
\P9|ALT_INV_Mux15~14_combout\ <= NOT \P9|Mux15~14_combout\;
\P9|ALT_INV_Mux15~13_combout\ <= NOT \P9|Mux15~13_combout\;
\P4|ALT_INV_C~1_combout\ <= NOT \P4|C~1_combout\;
\P9|ALT_INV_Mux15~12_combout\ <= NOT \P9|Mux15~12_combout\;
\P9|ALT_INV_Mux15~11_combout\ <= NOT \P9|Mux15~11_combout\;
\P9|ALT_INV_Mux15~10_combout\ <= NOT \P9|Mux15~10_combout\;
\P8|ALT_INV_process_0~2_combout\ <= NOT \P8|process_0~2_combout\;
\P8|ALT_INV_P~0_combout\ <= NOT \P8|P~0_combout\;
\P8|ALT_INV_process_0~1_combout\ <= NOT \P8|process_0~1_combout\;
\P8|ALT_INV_process_0~0_combout\ <= NOT \P8|process_0~0_combout\;
\P9|ALT_INV_Mux15~9_combout\ <= NOT \P9|Mux15~9_combout\;
\P9|ALT_INV_Mux15~8_combout\ <= NOT \P9|Mux15~8_combout\;
\P4|ALT_INV_C~0_combout\ <= NOT \P4|C~0_combout\;
\P9|ALT_INV_Mux15~7_combout\ <= NOT \P9|Mux15~7_combout\;
\P9|ALT_INV_Mux15~6_combout\ <= NOT \P9|Mux15~6_combout\;
\P9|ALT_INV_Mux15~5_combout\ <= NOT \P9|Mux15~5_combout\;
\P9|ALT_INV_Mux15~3_combout\ <= NOT \P9|Mux15~3_combout\;
\P9|ALT_INV_Mux15~2_combout\ <= NOT \P9|Mux15~2_combout\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_negate~input_o\ <= NOT \negate~input_o\;
\P9|ALT_INV_Mux15~75_combout\ <= NOT \P9|Mux15~75_combout\;
\P9|ALT_INV_Mux15~74_combout\ <= NOT \P9|Mux15~74_combout\;
\P5|ALT_INV_LessThan0~7_combout\ <= NOT \P5|LessThan0~7_combout\;
\P9|ALT_INV_Mux15~73_combout\ <= NOT \P9|Mux15~73_combout\;
\P9|ALT_INV_Mux15~72_combout\ <= NOT \P9|Mux15~72_combout\;
\P9|ALT_INV_Mux15~71_combout\ <= NOT \P9|Mux15~71_combout\;
\P9|ALT_INV_Mux15~70_combout\ <= NOT \P9|Mux15~70_combout\;
\P4|ALT_INV_C~12_combout\ <= NOT \P4|C~12_combout\;
\P9|ALT_INV_Mux15~69_combout\ <= NOT \P9|Mux15~69_combout\;
\P9|ALT_INV_Mux15~68_combout\ <= NOT \P9|Mux15~68_combout\;
\P8|ALT_INV_P~41_combout\ <= NOT \P8|P~41_combout\;
\P9|ALT_INV_Mux15~67_combout\ <= NOT \P9|Mux15~67_combout\;
\P9|ALT_INV_Mux15~66_combout\ <= NOT \P9|Mux15~66_combout\;
\P4|ALT_INV_C~11_combout\ <= NOT \P4|C~11_combout\;
\P9|ALT_INV_Mux15~65_combout\ <= NOT \P9|Mux15~65_combout\;
\P9|ALT_INV_Mux15~64_combout\ <= NOT \P9|Mux15~64_combout\;
\P9|ALT_INV_Mux15~63_combout\ <= NOT \P9|Mux15~63_combout\;
\P8|ALT_INV_P~40_combout\ <= NOT \P8|P~40_combout\;
\P8|ALT_INV_P~39_combout\ <= NOT \P8|P~39_combout\;
\P9|ALT_INV_Mux15~62_combout\ <= NOT \P9|Mux15~62_combout\;
\P9|ALT_INV_Mux15~61_combout\ <= NOT \P9|Mux15~61_combout\;
\P4|ALT_INV_C~10_combout\ <= NOT \P4|C~10_combout\;
\P9|ALT_INV_Mux15~60_combout\ <= NOT \P9|Mux15~60_combout\;
\P9|ALT_INV_Mux15~59_combout\ <= NOT \P9|Mux15~59_combout\;

\Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \Saida[0]~output_o\);

\Saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Saida[1]~output_o\);

\Saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Saida[2]~output_o\);

\Saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \Saida[3]~output_o\);

\Saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Saida[4]~output_o\);

\Saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \Saida[5]~output_o\);

\Saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Saida[6]~output_o\);

\Saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Saida[7]~output_o\);

\Saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Saida[8]~output_o\);

\Saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Saida[9]~output_o\);

\Saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Saida[10]~output_o\);

\Saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Saida[11]~output_o\);

\Saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Saida[12]~output_o\);

\Saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Saida[13]~output_o\);

\Saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Saida[14]~output_o\);

\Saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P9|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Saida[15]~output_o\);

\negate~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_negate,
	o => \negate~input_o\);

\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\P9|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~0_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\B[0]~input_o\) # (!\A[0]~input_o\))) # (\opcode[0]~input_o\ & (!\B[0]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \P9|Mux15~0_combout\);

\P9|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~1_combout\ = !\B[0]~input_o\ $ (!\A[0]~input_o\ $ (((\negate~input_o\ & !\opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100010010111011010001001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \P9|Mux15~1_combout\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\P5|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~0_combout\ = (!\A[1]~input_o\ & (((\B[0]~input_o\ & !\A[0]~input_o\)) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (\B[0]~input_o\ & (!\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110100010000001111010001000000111101000100000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \P5|LessThan0~0_combout\);

\P5|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~1_combout\ = ( \P5|LessThan0~0_combout\ & ( (!\A[3]~input_o\ & (((!\A[2]~input_o\) # (\B[2]~input_o\)) # (\B[3]~input_o\))) # (\A[3]~input_o\ & (\B[3]~input_o\ & ((!\A[2]~input_o\) # (\B[2]~input_o\)))) ) ) # ( !\P5|LessThan0~0_combout\ & ( 
-- (!\A[3]~input_o\ & (((!\A[2]~input_o\ & \B[2]~input_o\)) # (\B[3]~input_o\))) # (\A[3]~input_o\ & (\B[3]~input_o\ & (!\A[2]~input_o\ & \B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \P5|ALT_INV_LessThan0~0_combout\,
	combout => \P5|LessThan0~1_combout\);

\P5|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~2_combout\ = ( \P5|LessThan0~1_combout\ & ( (!\A[5]~input_o\ & (((!\A[4]~input_o\) # (\B[4]~input_o\)) # (\B[5]~input_o\))) # (\A[5]~input_o\ & (\B[5]~input_o\ & ((!\A[4]~input_o\) # (\B[4]~input_o\)))) ) ) # ( !\P5|LessThan0~1_combout\ & ( 
-- (!\A[5]~input_o\ & (((!\A[4]~input_o\ & \B[4]~input_o\)) # (\B[5]~input_o\))) # (\A[5]~input_o\ & (\B[5]~input_o\ & (!\A[4]~input_o\ & \B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \P5|ALT_INV_LessThan0~1_combout\,
	combout => \P5|LessThan0~2_combout\);

\P5|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~3_combout\ = ( \P5|LessThan0~2_combout\ & ( (!\A[7]~input_o\ & (((!\A[6]~input_o\) # (\B[6]~input_o\)) # (\B[7]~input_o\))) # (\A[7]~input_o\ & (\B[7]~input_o\ & ((!\A[6]~input_o\) # (\B[6]~input_o\)))) ) ) # ( !\P5|LessThan0~2_combout\ & ( 
-- (!\A[7]~input_o\ & (((!\A[6]~input_o\ & \B[6]~input_o\)) # (\B[7]~input_o\))) # (\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[6]~input_o\ & \B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \P5|ALT_INV_LessThan0~2_combout\,
	combout => \P5|LessThan0~3_combout\);

\P5|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~4_combout\ = ( \P5|LessThan0~3_combout\ & ( (!\A[9]~input_o\ & (((!\A[8]~input_o\) # (\B[8]~input_o\)) # (\B[9]~input_o\))) # (\A[9]~input_o\ & (\B[9]~input_o\ & ((!\A[8]~input_o\) # (\B[8]~input_o\)))) ) ) # ( !\P5|LessThan0~3_combout\ & ( 
-- (!\A[9]~input_o\ & (((!\A[8]~input_o\ & \B[8]~input_o\)) # (\B[9]~input_o\))) # (\A[9]~input_o\ & (\B[9]~input_o\ & (!\A[8]~input_o\ & \B[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \P5|ALT_INV_LessThan0~3_combout\,
	combout => \P5|LessThan0~4_combout\);

\P5|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~5_combout\ = ( \P5|LessThan0~4_combout\ & ( (!\A[11]~input_o\ & (((!\A[10]~input_o\) # (\B[10]~input_o\)) # (\B[11]~input_o\))) # (\A[11]~input_o\ & (\B[11]~input_o\ & ((!\A[10]~input_o\) # (\B[10]~input_o\)))) ) ) # ( 
-- !\P5|LessThan0~4_combout\ & ( (!\A[11]~input_o\ & (((!\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\))) # (\A[11]~input_o\ & (\B[11]~input_o\ & (!\A[10]~input_o\ & \B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \P5|ALT_INV_LessThan0~4_combout\,
	combout => \P5|LessThan0~5_combout\);

\P5|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~6_combout\ = ( \P5|LessThan0~5_combout\ & ( (!\A[13]~input_o\ & (((!\A[12]~input_o\) # (\B[12]~input_o\)) # (\B[13]~input_o\))) # (\A[13]~input_o\ & (\B[13]~input_o\ & ((!\A[12]~input_o\) # (\B[12]~input_o\)))) ) ) # ( 
-- !\P5|LessThan0~5_combout\ & ( (!\A[13]~input_o\ & (((!\A[12]~input_o\ & \B[12]~input_o\)) # (\B[13]~input_o\))) # (\A[13]~input_o\ & (\B[13]~input_o\ & (!\A[12]~input_o\ & \B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101100100010101100101011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \P5|ALT_INV_LessThan0~5_combout\,
	combout => \P5|LessThan0~6_combout\);

\P9|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~2_combout\ = ( \B[14]~input_o\ & ( \P5|LessThan0~6_combout\ & ( (!\opcode[0]~input_o\ & ((!\A[15]~input_o\) # (\B[15]~input_o\))) ) ) ) # ( !\B[14]~input_o\ & ( \P5|LessThan0~6_combout\ & ( (!\opcode[0]~input_o\ & ((!\A[15]~input_o\ & 
-- ((!\A[14]~input_o\) # (\B[15]~input_o\))) # (\A[15]~input_o\ & (\B[15]~input_o\ & !\A[14]~input_o\)))) ) ) ) # ( \B[14]~input_o\ & ( !\P5|LessThan0~6_combout\ & ( (!\opcode[0]~input_o\ & ((!\A[15]~input_o\ & ((!\A[14]~input_o\) # (\B[15]~input_o\))) # 
-- (\A[15]~input_o\ & (\B[15]~input_o\ & !\A[14]~input_o\)))) ) ) ) # ( !\B[14]~input_o\ & ( !\P5|LessThan0~6_combout\ & ( (!\opcode[0]~input_o\ & (!\A[15]~input_o\ & \B[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100010100000100010001010000010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \P5|ALT_INV_LessThan0~6_combout\,
	combout => \P9|Mux15~2_combout\);

\P8|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~1_sumout\ = SUM(( !\A[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \P8|Add0~2\ = CARRY(( !\A[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add0~1_sumout\,
	cout => \P8|Add0~2\);

\P9|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~3_combout\ = (!\opcode[0]~input_o\ & (((\A[2]~input_o\)))) # (\opcode[0]~input_o\ & (\B[0]~input_o\ & ((\P8|Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101100001010000110110000101000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \P8|ALT_INV_Add0~1_sumout\,
	combout => \P9|Mux15~3_combout\);

\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

\P9|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~4_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~3_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~2_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~1_combout\ ) 
-- ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~0_combout\,
	datab => \P9|ALT_INV_Mux15~1_combout\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	datad => \P9|ALT_INV_Mux15~3_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux15~4_combout\);

\P9|Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~5_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[1]~input_o\) # (!\B[1]~input_o\))) # (\opcode[0]~input_o\ & (!\A[1]~input_o\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \P9|Mux15~5_combout\);

\P9|Mux15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~6_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\opcode[0]~input_o\ & (\negate~input_o\)) # (\opcode[0]~input_o\ & (\B[0]~input_o\ & (!\negate~input_o\ $ (!\A[0]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( 
-- (!\opcode[0]~input_o\ & (!\negate~input_o\)) # (\opcode[0]~input_o\ & ((!\B[0]~input_o\) # (!\negate~input_o\ $ (\A[0]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\opcode[0]~input_o\ & (!\negate~input_o\)) # (\opcode[0]~input_o\ & 
-- ((!\B[0]~input_o\) # (!\negate~input_o\ $ (\A[0]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\opcode[0]~input_o\ & (\negate~input_o\)) # (\opcode[0]~input_o\ & (\B[0]~input_o\ & (!\negate~input_o\ $ (!\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000110101110101011100110111010101110010100010101000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \P9|Mux15~6_combout\);

\P8|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~5_sumout\ = SUM(( !\A[1]~input_o\ ) + ( GND ) + ( \P8|Add0~2\ ))
-- \P8|Add0~6\ = CARRY(( !\A[1]~input_o\ ) + ( GND ) + ( \P8|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add0~2\,
	sumout => \P8|Add0~5_sumout\,
	cout => \P8|Add0~6\);

\P8|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~1_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~5_sumout\) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add2~2\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~5_sumout\) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~5_sumout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add2~1_sumout\,
	cout => \P8|Add2~2\);

\P8|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~1_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~5_sumout\) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add1~2\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~5_sumout\) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add1~1_sumout\,
	cout => \P8|Add1~2\);

\P9|Mux15~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~80_combout\ = ( !\B[1]~input_o\ & ( ((!\opcode[0]~input_o\ & (((\A[3]~input_o\)))) # (\opcode[0]~input_o\ & (\B[0]~input_o\ & (\P8|Add1~1_sumout\)))) ) ) # ( \B[1]~input_o\ & ( (!\opcode[0]~input_o\ & ((((\A[3]~input_o\))))) # 
-- (\opcode[0]~input_o\ & ((!\B[0]~input_o\ & (\P8|Add2~1_sumout\)) # (\B[0]~input_o\ & (((\P8|Add0~5_sumout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100000011000000110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_Add2~1_sumout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \P8|ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	datag => \P8|ALT_INV_Add1~1_sumout\,
	combout => \P9|Mux15~80_combout\);

\P9|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux14~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~80_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~2_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~6_combout\ 
-- ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~5_combout\,
	datab => \P9|ALT_INV_Mux15~6_combout\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	datad => \P9|ALT_INV_Mux15~80_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux14~0_combout\);

\P9|Mux15~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~7_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[2]~input_o\) # (!\B[2]~input_o\))) # (\opcode[0]~input_o\ & (!\A[2]~input_o\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \P9|Mux15~7_combout\);

\P4|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~0_combout\ = ( \B[1]~input_o\ & ( (!\negate~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\))) # (\negate~input_o\ & (\A[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) ) ) # ( !\B[1]~input_o\ & ( (!\negate~input_o\ & 
-- (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) # (\negate~input_o\ & ((!\B[0]~input_o\) # ((\A[1]~input_o\) # (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010111000000101110111101000101010101110000001011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \P4|C~0_combout\);

\P9|Mux15~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~8_combout\ = ( \P4|C~0_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) # ( !\P4|C~0_combout\ & ( !\negate~input_o\ $ (!\A[2]~input_o\ $ (\B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \P4|ALT_INV_C~0_combout\,
	combout => \P9|Mux15~8_combout\);

\P9|Mux15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~9_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~9_combout\);

\P8|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~0_combout\ = (!\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	combout => \P8|process_0~0_combout\);

\P8|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~9_sumout\ = SUM(( !\A[2]~input_o\ ) + ( GND ) + ( \P8|Add0~6\ ))
-- \P8|Add0~10\ = CARRY(( !\A[2]~input_o\ ) + ( GND ) + ( \P8|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add0~6\,
	sumout => \P8|Add0~9_sumout\,
	cout => \P8|Add0~10\);

\P8|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~5_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~9_sumout\) ) + ( \A[1]~input_o\ ) + ( \P8|Add1~2\ ))
-- \P8|Add1~6\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~9_sumout\) ) + ( \A[1]~input_o\ ) + ( \P8|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add1~2\,
	sumout => \P8|Add1~5_sumout\,
	cout => \P8|Add1~6\);

\P8|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~5_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~9_sumout\) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add2~2\ ))
-- \P8|Add2~6\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~9_sumout\) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~9_sumout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add2~2\,
	sumout => \P8|Add2~5_sumout\,
	cout => \P8|Add2~6\);

\P8|P~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~0_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~5_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~9_sumout\,
	datad => \P8|ALT_INV_Add2~5_sumout\,
	combout => \P8|P~0_combout\);

\P8|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~1_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~0_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~5_sumout\)) # (\B[1]~input_o\ & ((\P8|P~0_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add3~2\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~0_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~5_sumout\)) # (\B[1]~input_o\ & ((\P8|P~0_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~5_sumout\,
	datad => \P8|ALT_INV_P~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add3~1_sumout\,
	cout => \P8|Add3~2\);

\P8|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~1_combout\ = (\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	combout => \P8|process_0~1_combout\);

\P8|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~2_combout\ = (\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	combout => \P8|process_0~2_combout\);

\P8|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~1_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~0_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~5_sumout\)) # (\B[1]~input_o\ & ((\P8|P~0_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add4~2\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~0_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~5_sumout\)) # (\B[1]~input_o\ & ((\P8|P~0_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~5_sumout\,
	datad => \P8|ALT_INV_P~0_combout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add4~1_sumout\,
	cout => \P8|Add4~2\);

\P9|Mux15~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~10_combout\ = ( \P8|Add4~1_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~0_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~5_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~1_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~0_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011000000000001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_Add1~5_sumout\,
	datac => \P8|ALT_INV_P~0_combout\,
	datad => \P8|ALT_INV_process_0~2_combout\,
	datae => \P8|ALT_INV_Add4~1_sumout\,
	combout => \P9|Mux15~10_combout\);

\P9|Mux15~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~11_combout\ = ( \P9|Mux15~10_combout\ & ( (!\opcode[0]~input_o\ & (\A[4]~input_o\)) # (\opcode[0]~input_o\ & (((!\P8|process_0~0_combout\) # (\P8|Add3~1_sumout\)))) ) ) # ( !\P9|Mux15~10_combout\ & ( (!\opcode[0]~input_o\ & (\A[4]~input_o\)) # 
-- (\opcode[0]~input_o\ & (((\P8|process_0~0_combout\ & \P8|Add3~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001001110111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \P8|ALT_INV_process_0~0_combout\,
	datad => \P8|ALT_INV_Add3~1_sumout\,
	datae => \P9|ALT_INV_Mux15~10_combout\,
	combout => \P9|Mux15~11_combout\);

\P9|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux13~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~11_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~9_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~8_combout\ 
-- ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~7_combout\,
	datab => \P9|ALT_INV_Mux15~8_combout\,
	datac => \P9|ALT_INV_Mux15~9_combout\,
	datad => \P9|ALT_INV_Mux15~11_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux13~0_combout\);

\P9|Mux15~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~12_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[3]~input_o\) # (!\B[3]~input_o\))) # (\opcode[0]~input_o\ & (!\A[3]~input_o\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \P9|Mux15~12_combout\);

\P4|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~1_combout\ = (!\A[2]~input_o\ & (\P4|C~0_combout\ & (!\negate~input_o\ $ (!\B[2]~input_o\)))) # (\A[2]~input_o\ & ((!\negate~input_o\ $ (!\B[2]~input_o\)) # (\P4|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \P4|ALT_INV_C~0_combout\,
	combout => \P4|C~1_combout\);

\P9|Mux15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~13_combout\ = ( \P4|C~1_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[3]~input_o\ $ (!\B[3]~input_o\))) ) ) # ( !\P4|C~1_combout\ & ( !\negate~input_o\ $ (!\A[3]~input_o\ $ (\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \P4|ALT_INV_C~1_combout\,
	combout => \P9|Mux15~13_combout\);

\P9|Mux15~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~14_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~14_combout\);

\P8|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~3_combout\ = (!\B[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \P8|process_0~3_combout\);

\P8|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~13_sumout\ = SUM(( !\A[3]~input_o\ ) + ( GND ) + ( \P8|Add0~10\ ))
-- \P8|Add0~14\ = CARRY(( !\A[3]~input_o\ ) + ( GND ) + ( \P8|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add0~10\,
	sumout => \P8|Add0~13_sumout\,
	cout => \P8|Add0~14\);

\P8|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~9_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~13_sumout\) ) + ( \A[2]~input_o\ ) + ( \P8|Add1~6\ ))
-- \P8|Add1~10\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~13_sumout\) ) + ( \A[2]~input_o\ ) + ( \P8|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add1~6\,
	sumout => \P8|Add1~9_sumout\,
	cout => \P8|Add1~10\);

\P8|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~9_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~13_sumout\) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add2~6\ ))
-- \P8|Add2~10\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~13_sumout\) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~13_sumout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add2~6\,
	sumout => \P8|Add2~9_sumout\,
	cout => \P8|Add2~10\);

\P8|P~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~1_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~9_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~13_sumout\,
	datad => \P8|ALT_INV_Add2~9_sumout\,
	combout => \P8|P~1_combout\);

\P8|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~5_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~1_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~9_sumout\)) # (\B[1]~input_o\ & ((\P8|P~1_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add3~2\ ))
-- \P8|Add3~6\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~1_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~9_sumout\)) # (\B[1]~input_o\ & ((\P8|P~1_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~9_sumout\,
	datad => \P8|ALT_INV_P~1_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add3~2\,
	sumout => \P8|Add3~5_sumout\,
	cout => \P8|Add3~6\);

\P8|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~5_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~1_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~9_sumout\)) # (\B[1]~input_o\ & ((\P8|P~1_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add4~2\ ))
-- \P8|Add4~6\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~1_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~9_sumout\)) # (\B[1]~input_o\ & ((\P8|P~1_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~9_sumout\,
	datad => \P8|ALT_INV_P~1_combout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add4~2\,
	sumout => \P8|Add4~5_sumout\,
	cout => \P8|Add4~6\);

\P8|P~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~2_combout\ = ( \P8|Add4~5_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~1_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~9_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~5_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~1_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~9_sumout\,
	datad => \P8|ALT_INV_P~1_combout\,
	datae => \P8|ALT_INV_Add4~5_sumout\,
	combout => \P8|P~2_combout\);

\P8|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~1_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~2_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~5_sumout\)) # (\B[2]~input_o\ & ((\P8|P~2_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add5~2\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~2_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~5_sumout\)) # (\B[2]~input_o\ & ((\P8|P~2_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~5_sumout\,
	datad => \P8|ALT_INV_P~2_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add5~1_sumout\,
	cout => \P8|Add5~2\);

\P8|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~4_combout\ = (\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \P8|process_0~4_combout\);

\P8|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~1_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~2_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~5_sumout\)) # (\B[2]~input_o\ & ((\P8|P~2_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add6~2\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~2_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~5_sumout\)) # (\B[2]~input_o\ & ((\P8|P~2_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~5_sumout\,
	datad => \P8|ALT_INV_P~2_combout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add6~1_sumout\,
	cout => \P8|Add6~2\);

\P9|Mux15~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~15_combout\ = ( \P8|Add6~1_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~2_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~5_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~1_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~2_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011000000000001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_Add3~5_sumout\,
	datac => \P8|ALT_INV_P~2_combout\,
	datad => \P8|ALT_INV_process_0~4_combout\,
	datae => \P8|ALT_INV_Add6~1_sumout\,
	combout => \P9|Mux15~15_combout\);

\P9|Mux15~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~16_combout\ = ( \P9|Mux15~15_combout\ & ( (!\opcode[0]~input_o\ & (\A[5]~input_o\)) # (\opcode[0]~input_o\ & (((!\P8|process_0~3_combout\) # (\P8|Add5~1_sumout\)))) ) ) # ( !\P9|Mux15~15_combout\ & ( (!\opcode[0]~input_o\ & (\A[5]~input_o\)) # 
-- (\opcode[0]~input_o\ & (((\P8|process_0~3_combout\ & \P8|Add5~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001001110111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \P8|ALT_INV_process_0~3_combout\,
	datad => \P8|ALT_INV_Add5~1_sumout\,
	datae => \P9|ALT_INV_Mux15~15_combout\,
	combout => \P9|Mux15~16_combout\);

\P9|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux12~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~16_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~14_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~13_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~12_combout\,
	datab => \P9|ALT_INV_Mux15~13_combout\,
	datac => \P9|ALT_INV_Mux15~14_combout\,
	datad => \P9|ALT_INV_Mux15~16_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux12~0_combout\);

\P9|Mux15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~17_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[4]~input_o\) # (!\B[4]~input_o\))) # (\opcode[0]~input_o\ & (!\A[4]~input_o\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \P9|Mux15~17_combout\);

\P4|C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~2_combout\ = (!\A[3]~input_o\ & (\P4|C~1_combout\ & (!\negate~input_o\ $ (!\B[3]~input_o\)))) # (\A[3]~input_o\ & ((!\negate~input_o\ $ (!\B[3]~input_o\)) # (\P4|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \P4|ALT_INV_C~1_combout\,
	combout => \P4|C~2_combout\);

\P9|Mux15~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~18_combout\ = ( \P4|C~2_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[4]~input_o\ $ (!\B[4]~input_o\))) ) ) # ( !\P4|C~2_combout\ & ( !\negate~input_o\ $ (!\A[4]~input_o\ $ (\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \P4|ALT_INV_C~2_combout\,
	combout => \P9|Mux15~18_combout\);

\P9|Mux15~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~19_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~19_combout\);

\P8|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~5_combout\ = (!\B[4]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \P8|process_0~5_combout\);

\P8|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~17_sumout\ = SUM(( !\A[4]~input_o\ ) + ( GND ) + ( \P8|Add0~14\ ))
-- \P8|Add0~18\ = CARRY(( !\A[4]~input_o\ ) + ( GND ) + ( \P8|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add0~14\,
	sumout => \P8|Add0~17_sumout\,
	cout => \P8|Add0~18\);

\P8|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~13_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~17_sumout\) ) + ( \A[3]~input_o\ ) + ( \P8|Add1~10\ ))
-- \P8|Add1~14\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~17_sumout\) ) + ( \A[3]~input_o\ ) + ( \P8|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add1~10\,
	sumout => \P8|Add1~13_sumout\,
	cout => \P8|Add1~14\);

\P8|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~13_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~17_sumout\) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add2~10\ ))
-- \P8|Add2~14\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~17_sumout\) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~17_sumout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add2~10\,
	sumout => \P8|Add2~13_sumout\,
	cout => \P8|Add2~14\);

\P8|P~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~3_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~13_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~17_sumout\,
	datad => \P8|ALT_INV_Add2~13_sumout\,
	combout => \P8|P~3_combout\);

\P8|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~9_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~3_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~13_sumout\)) # (\B[1]~input_o\ & ((\P8|P~3_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add3~6\ ))
-- \P8|Add3~10\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~3_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~13_sumout\)) # (\B[1]~input_o\ & ((\P8|P~3_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~13_sumout\,
	datad => \P8|ALT_INV_P~3_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add3~6\,
	sumout => \P8|Add3~9_sumout\,
	cout => \P8|Add3~10\);

\P8|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~9_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~3_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~13_sumout\)) # (\B[1]~input_o\ & ((\P8|P~3_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add4~6\ ))
-- \P8|Add4~10\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~3_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~13_sumout\)) # (\B[1]~input_o\ & ((\P8|P~3_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~13_sumout\,
	datad => \P8|ALT_INV_P~3_combout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add4~6\,
	sumout => \P8|Add4~9_sumout\,
	cout => \P8|Add4~10\);

\P8|P~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~4_combout\ = ( \P8|Add4~9_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~3_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~13_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~9_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~3_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~13_sumout\,
	datad => \P8|ALT_INV_P~3_combout\,
	datae => \P8|ALT_INV_Add4~9_sumout\,
	combout => \P8|P~4_combout\);

\P8|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~5_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~4_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~9_sumout\)) # (\B[2]~input_o\ & ((\P8|P~4_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add5~2\ ))
-- \P8|Add5~6\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~4_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~9_sumout\)) # (\B[2]~input_o\ & ((\P8|P~4_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~9_sumout\,
	datad => \P8|ALT_INV_P~4_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add5~2\,
	sumout => \P8|Add5~5_sumout\,
	cout => \P8|Add5~6\);

\P8|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~5_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~4_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~9_sumout\)) # (\B[2]~input_o\ & ((\P8|P~4_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add6~2\ ))
-- \P8|Add6~6\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~4_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~9_sumout\)) # (\B[2]~input_o\ & ((\P8|P~4_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~9_sumout\,
	datad => \P8|ALT_INV_P~4_combout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add6~2\,
	sumout => \P8|Add6~5_sumout\,
	cout => \P8|Add6~6\);

\P8|P~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~5_combout\ = ( \P8|Add6~5_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~4_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~9_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~5_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~4_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~9_sumout\,
	datad => \P8|ALT_INV_P~4_combout\,
	datae => \P8|ALT_INV_Add6~5_sumout\,
	combout => \P8|P~5_combout\);

\P8|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~1_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~5_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~5_sumout\)) # (\B[3]~input_o\ & ((\P8|P~5_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add7~2\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~5_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~5_sumout\)) # (\B[3]~input_o\ & ((\P8|P~5_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~5_sumout\,
	datad => \P8|ALT_INV_P~5_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add7~1_sumout\,
	cout => \P8|Add7~2\);

\P8|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~6_combout\ = (\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \P8|process_0~6_combout\);

\P8|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~1_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~5_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~5_sumout\)) # (\B[3]~input_o\ & ((\P8|P~5_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add8~2\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~5_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~5_sumout\)) # (\B[3]~input_o\ & ((\P8|P~5_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~5_sumout\,
	datad => \P8|ALT_INV_P~5_combout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add8~1_sumout\,
	cout => \P8|Add8~2\);

\P9|Mux15~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~20_combout\ = ( \P8|Add8~1_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~5_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~5_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~1_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~5_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011000000000001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_Add5~5_sumout\,
	datac => \P8|ALT_INV_P~5_combout\,
	datad => \P8|ALT_INV_process_0~6_combout\,
	datae => \P8|ALT_INV_Add8~1_sumout\,
	combout => \P9|Mux15~20_combout\);

\P9|Mux15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~21_combout\ = ( \P9|Mux15~20_combout\ & ( (!\opcode[0]~input_o\ & (\A[6]~input_o\)) # (\opcode[0]~input_o\ & (((!\P8|process_0~5_combout\) # (\P8|Add7~1_sumout\)))) ) ) # ( !\P9|Mux15~20_combout\ & ( (!\opcode[0]~input_o\ & (\A[6]~input_o\)) # 
-- (\opcode[0]~input_o\ & (((\P8|process_0~5_combout\ & \P8|Add7~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001001110111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \P8|ALT_INV_process_0~5_combout\,
	datad => \P8|ALT_INV_Add7~1_sumout\,
	datae => \P9|ALT_INV_Mux15~20_combout\,
	combout => \P9|Mux15~21_combout\);

\P9|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux11~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~21_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~19_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~18_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~17_combout\,
	datab => \P9|ALT_INV_Mux15~18_combout\,
	datac => \P9|ALT_INV_Mux15~19_combout\,
	datad => \P9|ALT_INV_Mux15~21_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux11~0_combout\);

\P9|Mux15~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~22_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[5]~input_o\) # (!\B[5]~input_o\))) # (\opcode[0]~input_o\ & (!\A[5]~input_o\ & !\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \P9|Mux15~22_combout\);

\P4|C~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~3_combout\ = (!\A[4]~input_o\ & (\P4|C~2_combout\ & (!\negate~input_o\ $ (!\B[4]~input_o\)))) # (\A[4]~input_o\ & ((!\negate~input_o\ $ (!\B[4]~input_o\)) # (\P4|C~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \P4|ALT_INV_C~2_combout\,
	combout => \P4|C~3_combout\);

\P9|Mux15~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~23_combout\ = ( \P4|C~3_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[5]~input_o\ $ (!\B[5]~input_o\))) ) ) # ( !\P4|C~3_combout\ & ( !\negate~input_o\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \P4|ALT_INV_C~3_combout\,
	combout => \P9|Mux15~23_combout\);

\P9|Mux15~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~24_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~24_combout\);

\P8|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~7_combout\ = (!\B[5]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \P8|process_0~7_combout\);

\P8|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~21_sumout\ = SUM(( !\A[5]~input_o\ ) + ( GND ) + ( \P8|Add0~18\ ))
-- \P8|Add0~22\ = CARRY(( !\A[5]~input_o\ ) + ( GND ) + ( \P8|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add0~18\,
	sumout => \P8|Add0~21_sumout\,
	cout => \P8|Add0~22\);

\P8|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~17_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~21_sumout\) ) + ( \A[4]~input_o\ ) + ( \P8|Add1~14\ ))
-- \P8|Add1~18\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~21_sumout\) ) + ( \A[4]~input_o\ ) + ( \P8|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add1~14\,
	sumout => \P8|Add1~17_sumout\,
	cout => \P8|Add1~18\);

\P8|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~17_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~21_sumout\) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add2~14\ ))
-- \P8|Add2~18\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~21_sumout\) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~21_sumout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add2~14\,
	sumout => \P8|Add2~17_sumout\,
	cout => \P8|Add2~18\);

\P8|P~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~6_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~17_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~21_sumout\,
	datad => \P8|ALT_INV_Add2~17_sumout\,
	combout => \P8|P~6_combout\);

\P8|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~13_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~6_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~17_sumout\)) # (\B[1]~input_o\ & ((\P8|P~6_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add3~10\ ))
-- \P8|Add3~14\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~6_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~17_sumout\)) # (\B[1]~input_o\ & ((\P8|P~6_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~17_sumout\,
	datad => \P8|ALT_INV_P~6_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add3~10\,
	sumout => \P8|Add3~13_sumout\,
	cout => \P8|Add3~14\);

\P8|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~13_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~6_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~17_sumout\)) # (\B[1]~input_o\ & ((\P8|P~6_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add4~10\ ))
-- \P8|Add4~14\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~6_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~17_sumout\)) # (\B[1]~input_o\ & ((\P8|P~6_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~17_sumout\,
	datad => \P8|ALT_INV_P~6_combout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add4~10\,
	sumout => \P8|Add4~13_sumout\,
	cout => \P8|Add4~14\);

\P8|P~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~7_combout\ = ( \P8|Add4~13_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~6_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~17_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~13_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~6_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~17_sumout\,
	datad => \P8|ALT_INV_P~6_combout\,
	datae => \P8|ALT_INV_Add4~13_sumout\,
	combout => \P8|P~7_combout\);

\P8|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~9_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~7_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~13_sumout\)) # (\B[2]~input_o\ & ((\P8|P~7_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add5~6\ ))
-- \P8|Add5~10\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~7_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~13_sumout\)) # (\B[2]~input_o\ & ((\P8|P~7_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~13_sumout\,
	datad => \P8|ALT_INV_P~7_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add5~6\,
	sumout => \P8|Add5~9_sumout\,
	cout => \P8|Add5~10\);

\P8|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~9_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~7_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~13_sumout\)) # (\B[2]~input_o\ & ((\P8|P~7_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add6~6\ ))
-- \P8|Add6~10\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~7_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~13_sumout\)) # (\B[2]~input_o\ & ((\P8|P~7_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~13_sumout\,
	datad => \P8|ALT_INV_P~7_combout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add6~6\,
	sumout => \P8|Add6~9_sumout\,
	cout => \P8|Add6~10\);

\P8|P~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~8_combout\ = ( \P8|Add6~9_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~7_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~13_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~9_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~7_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~13_sumout\,
	datad => \P8|ALT_INV_P~7_combout\,
	datae => \P8|ALT_INV_Add6~9_sumout\,
	combout => \P8|P~8_combout\);

\P8|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~5_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~8_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~9_sumout\)) # (\B[3]~input_o\ & ((\P8|P~8_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add7~2\ ))
-- \P8|Add7~6\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~8_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~9_sumout\)) # (\B[3]~input_o\ & ((\P8|P~8_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~9_sumout\,
	datad => \P8|ALT_INV_P~8_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add7~2\,
	sumout => \P8|Add7~5_sumout\,
	cout => \P8|Add7~6\);

\P8|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~5_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~8_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~9_sumout\)) # (\B[3]~input_o\ & ((\P8|P~8_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add8~2\ ))
-- \P8|Add8~6\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~8_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~9_sumout\)) # (\B[3]~input_o\ & ((\P8|P~8_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~9_sumout\,
	datad => \P8|ALT_INV_P~8_combout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add8~2\,
	sumout => \P8|Add8~5_sumout\,
	cout => \P8|Add8~6\);

\P8|P~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~9_combout\ = ( \P8|Add8~5_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~8_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~9_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~5_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~8_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~9_sumout\,
	datad => \P8|ALT_INV_P~8_combout\,
	datae => \P8|ALT_INV_Add8~5_sumout\,
	combout => \P8|P~9_combout\);

\P8|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~1_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~9_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~5_sumout\)) # (\B[4]~input_o\ & ((\P8|P~9_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add9~2\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~9_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~5_sumout\)) # (\B[4]~input_o\ & ((\P8|P~9_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~5_sumout\,
	datad => \P8|ALT_INV_P~9_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add9~1_sumout\,
	cout => \P8|Add9~2\);

\P8|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~8_combout\ = (\B[5]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \P8|process_0~8_combout\);

\P8|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~1_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~9_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~5_sumout\)) # (\B[4]~input_o\ & ((\P8|P~9_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add10~2\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~9_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~5_sumout\)) # (\B[4]~input_o\ & ((\P8|P~9_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~5_sumout\,
	datad => \P8|ALT_INV_P~9_combout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add10~1_sumout\,
	cout => \P8|Add10~2\);

\P9|Mux15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~25_combout\ = ( \P8|Add10~1_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~9_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~5_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~1_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~9_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011000000000001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_Add7~5_sumout\,
	datac => \P8|ALT_INV_P~9_combout\,
	datad => \P8|ALT_INV_process_0~8_combout\,
	datae => \P8|ALT_INV_Add10~1_sumout\,
	combout => \P9|Mux15~25_combout\);

\P9|Mux15~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~26_combout\ = ( \P9|Mux15~25_combout\ & ( (!\opcode[0]~input_o\ & (\A[7]~input_o\)) # (\opcode[0]~input_o\ & (((!\P8|process_0~7_combout\) # (\P8|Add9~1_sumout\)))) ) ) # ( !\P9|Mux15~25_combout\ & ( (!\opcode[0]~input_o\ & (\A[7]~input_o\)) # 
-- (\opcode[0]~input_o\ & (((\P8|process_0~7_combout\ & \P8|Add9~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001001110111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \P8|ALT_INV_process_0~7_combout\,
	datad => \P8|ALT_INV_Add9~1_sumout\,
	datae => \P9|ALT_INV_Mux15~25_combout\,
	combout => \P9|Mux15~26_combout\);

\P9|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux10~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~26_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~24_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~23_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~22_combout\,
	datab => \P9|ALT_INV_Mux15~23_combout\,
	datac => \P9|ALT_INV_Mux15~24_combout\,
	datad => \P9|ALT_INV_Mux15~26_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux10~0_combout\);

\P9|Mux15~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~27_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[6]~input_o\) # (!\B[6]~input_o\))) # (\opcode[0]~input_o\ & (!\A[6]~input_o\ & !\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	combout => \P9|Mux15~27_combout\);

\P4|C~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~4_combout\ = (!\A[5]~input_o\ & (\P4|C~3_combout\ & (!\negate~input_o\ $ (!\B[5]~input_o\)))) # (\A[5]~input_o\ & ((!\negate~input_o\ $ (!\B[5]~input_o\)) # (\P4|C~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \P4|ALT_INV_C~3_combout\,
	combout => \P4|C~4_combout\);

\P9|Mux15~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~28_combout\ = ( \P4|C~4_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[6]~input_o\ $ (!\B[6]~input_o\))) ) ) # ( !\P4|C~4_combout\ & ( !\negate~input_o\ $ (!\A[6]~input_o\ $ (\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \P4|ALT_INV_C~4_combout\,
	combout => \P9|Mux15~28_combout\);

\P9|Mux15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~29_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~29_combout\);

\P8|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~9_combout\ = (!\B[6]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \P8|process_0~9_combout\);

\P8|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~25_sumout\ = SUM(( !\A[6]~input_o\ ) + ( GND ) + ( \P8|Add0~22\ ))
-- \P8|Add0~26\ = CARRY(( !\A[6]~input_o\ ) + ( GND ) + ( \P8|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add0~22\,
	sumout => \P8|Add0~25_sumout\,
	cout => \P8|Add0~26\);

\P8|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~21_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~25_sumout\) ) + ( \A[5]~input_o\ ) + ( \P8|Add1~18\ ))
-- \P8|Add1~22\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~25_sumout\) ) + ( \A[5]~input_o\ ) + ( \P8|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add1~18\,
	sumout => \P8|Add1~21_sumout\,
	cout => \P8|Add1~22\);

\P8|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~21_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~25_sumout\) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add2~18\ ))
-- \P8|Add2~22\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~25_sumout\) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~25_sumout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add2~18\,
	sumout => \P8|Add2~21_sumout\,
	cout => \P8|Add2~22\);

\P8|P~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~10_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~21_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~25_sumout\,
	datad => \P8|ALT_INV_Add2~21_sumout\,
	combout => \P8|P~10_combout\);

\P8|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~17_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~10_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~21_sumout\)) # (\B[1]~input_o\ & ((\P8|P~10_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add3~14\ ))
-- \P8|Add3~18\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~10_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~21_sumout\)) # (\B[1]~input_o\ & ((\P8|P~10_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~21_sumout\,
	datad => \P8|ALT_INV_P~10_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add3~14\,
	sumout => \P8|Add3~17_sumout\,
	cout => \P8|Add3~18\);

\P8|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~17_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~10_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~21_sumout\)) # (\B[1]~input_o\ & ((\P8|P~10_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add4~14\ ))
-- \P8|Add4~18\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~10_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~21_sumout\)) # (\B[1]~input_o\ & ((\P8|P~10_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~21_sumout\,
	datad => \P8|ALT_INV_P~10_combout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add4~14\,
	sumout => \P8|Add4~17_sumout\,
	cout => \P8|Add4~18\);

\P8|P~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~11_combout\ = ( \P8|Add4~17_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~10_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~21_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~17_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~10_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~21_sumout\,
	datad => \P8|ALT_INV_P~10_combout\,
	datae => \P8|ALT_INV_Add4~17_sumout\,
	combout => \P8|P~11_combout\);

\P8|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~13_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~11_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~17_sumout\)) # (\B[2]~input_o\ & ((\P8|P~11_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add5~10\ ))
-- \P8|Add5~14\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~11_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~17_sumout\)) # (\B[2]~input_o\ & ((\P8|P~11_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~17_sumout\,
	datad => \P8|ALT_INV_P~11_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add5~10\,
	sumout => \P8|Add5~13_sumout\,
	cout => \P8|Add5~14\);

\P8|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~13_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~11_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~17_sumout\)) # (\B[2]~input_o\ & ((\P8|P~11_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add6~10\ ))
-- \P8|Add6~14\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~11_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~17_sumout\)) # (\B[2]~input_o\ & ((\P8|P~11_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~17_sumout\,
	datad => \P8|ALT_INV_P~11_combout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add6~10\,
	sumout => \P8|Add6~13_sumout\,
	cout => \P8|Add6~14\);

\P8|P~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~12_combout\ = ( \P8|Add6~13_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~11_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~17_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~13_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~11_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~17_sumout\,
	datad => \P8|ALT_INV_P~11_combout\,
	datae => \P8|ALT_INV_Add6~13_sumout\,
	combout => \P8|P~12_combout\);

\P8|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~9_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~12_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~13_sumout\)) # (\B[3]~input_o\ & ((\P8|P~12_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add7~6\ ))
-- \P8|Add7~10\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~12_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~13_sumout\)) # (\B[3]~input_o\ & ((\P8|P~12_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~13_sumout\,
	datad => \P8|ALT_INV_P~12_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add7~6\,
	sumout => \P8|Add7~9_sumout\,
	cout => \P8|Add7~10\);

\P8|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~9_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~12_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~13_sumout\)) # (\B[3]~input_o\ & ((\P8|P~12_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add8~6\ ))
-- \P8|Add8~10\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~12_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~13_sumout\)) # (\B[3]~input_o\ & ((\P8|P~12_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~13_sumout\,
	datad => \P8|ALT_INV_P~12_combout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add8~6\,
	sumout => \P8|Add8~9_sumout\,
	cout => \P8|Add8~10\);

\P8|P~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~13_combout\ = ( \P8|Add8~9_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~12_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~13_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~9_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~12_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~13_sumout\,
	datad => \P8|ALT_INV_P~12_combout\,
	datae => \P8|ALT_INV_Add8~9_sumout\,
	combout => \P8|P~13_combout\);

\P8|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~5_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~13_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~9_sumout\)) # (\B[4]~input_o\ & ((\P8|P~13_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add9~2\ ))
-- \P8|Add9~6\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~13_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~9_sumout\)) # (\B[4]~input_o\ & ((\P8|P~13_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~9_sumout\,
	datad => \P8|ALT_INV_P~13_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add9~2\,
	sumout => \P8|Add9~5_sumout\,
	cout => \P8|Add9~6\);

\P8|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~5_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~13_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~9_sumout\)) # (\B[4]~input_o\ & ((\P8|P~13_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add10~2\ ))
-- \P8|Add10~6\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~13_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~9_sumout\)) # (\B[4]~input_o\ & ((\P8|P~13_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~9_sumout\,
	datad => \P8|ALT_INV_P~13_combout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add10~2\,
	sumout => \P8|Add10~5_sumout\,
	cout => \P8|Add10~6\);

\P8|P~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~14_combout\ = ( \P8|Add10~5_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~13_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~9_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~5_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~13_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~9_sumout\,
	datad => \P8|ALT_INV_P~13_combout\,
	datae => \P8|ALT_INV_Add10~5_sumout\,
	combout => \P8|P~14_combout\);

\P8|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~1_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~14_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~5_sumout\)) # (\B[5]~input_o\ & ((\P8|P~14_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add11~2\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~14_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~5_sumout\)) # (\B[5]~input_o\ & ((\P8|P~14_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~5_sumout\,
	datad => \P8|ALT_INV_P~14_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add11~1_sumout\,
	cout => \P8|Add11~2\);

\P8|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|process_0~10_combout\ = (\B[6]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \P8|process_0~10_combout\);

\P8|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~1_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~14_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~5_sumout\)) # (\B[5]~input_o\ & ((\P8|P~14_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add12~2\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~14_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~5_sumout\)) # (\B[5]~input_o\ & ((\P8|P~14_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~5_sumout\,
	datad => \P8|ALT_INV_P~14_combout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add12~1_sumout\,
	cout => \P8|Add12~2\);

\P9|Mux15~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~30_combout\ = ( \P8|Add12~1_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~14_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~5_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~1_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~14_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011000000000001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_Add9~5_sumout\,
	datac => \P8|ALT_INV_P~14_combout\,
	datad => \P8|ALT_INV_process_0~10_combout\,
	datae => \P8|ALT_INV_Add12~1_sumout\,
	combout => \P9|Mux15~30_combout\);

\P9|Mux15~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~31_combout\ = ( \P9|Mux15~30_combout\ & ( (!\opcode[0]~input_o\ & (\A[8]~input_o\)) # (\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\) # (\P8|Add11~1_sumout\)))) ) ) # ( !\P9|Mux15~30_combout\ & ( (!\opcode[0]~input_o\ & (\A[8]~input_o\)) # 
-- (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P8|Add11~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111011100100111011100100010001001110111001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P8|ALT_INV_Add11~1_sumout\,
	datae => \P9|ALT_INV_Mux15~30_combout\,
	combout => \P9|Mux15~31_combout\);

\P9|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux9~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~31_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~29_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~28_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~27_combout\,
	datab => \P9|ALT_INV_Mux15~28_combout\,
	datac => \P9|ALT_INV_Mux15~29_combout\,
	datad => \P9|ALT_INV_Mux15~31_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux9~0_combout\);

\P9|Mux15~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~32_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[7]~input_o\) # (!\B[7]~input_o\))) # (\opcode[0]~input_o\ & (!\A[7]~input_o\ & !\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	combout => \P9|Mux15~32_combout\);

\P4|C~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~5_combout\ = (!\A[6]~input_o\ & (\P4|C~4_combout\ & (!\negate~input_o\ $ (!\B[6]~input_o\)))) # (\A[6]~input_o\ & ((!\negate~input_o\ $ (!\B[6]~input_o\)) # (\P4|C~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \P4|ALT_INV_C~4_combout\,
	combout => \P4|C~5_combout\);

\P9|Mux15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~33_combout\ = ( \P4|C~5_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[7]~input_o\ $ (!\B[7]~input_o\))) ) ) # ( !\P4|C~5_combout\ & ( !\negate~input_o\ $ (!\A[7]~input_o\ $ (\B[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \P4|ALT_INV_C~5_combout\,
	combout => \P9|Mux15~33_combout\);

\P9|Mux15~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~34_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~34_combout\);

\P8|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add0~29_sumout\ = SUM(( !\A[7]~input_o\ ) + ( GND ) + ( \P8|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add0~26\,
	sumout => \P8|Add0~29_sumout\);

\P8|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~25_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~29_sumout\) ) + ( \A[6]~input_o\ ) + ( \P8|Add1~22\ ))
-- \P8|Add1~26\ = CARRY(( (\B[0]~input_o\ & \P8|Add0~29_sumout\) ) + ( \A[6]~input_o\ ) + ( \P8|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add1~22\,
	sumout => \P8|Add1~25_sumout\,
	cout => \P8|Add1~26\);

\P8|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~25_sumout\ = SUM(( (\P8|Add0~29_sumout\ & \B[0]~input_o\) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add2~22\ ))
-- \P8|Add2~26\ = CARRY(( (\P8|Add0~29_sumout\ & \B[0]~input_o\) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add2~22\,
	sumout => \P8|Add2~25_sumout\,
	cout => \P8|Add2~26\);

\P8|P~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~15_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~25_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~29_sumout\,
	datad => \P8|ALT_INV_Add2~25_sumout\,
	combout => \P8|P~15_combout\);

\P8|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~21_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~15_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~25_sumout\)) # (\B[1]~input_o\ & ((\P8|P~15_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add3~18\ ))
-- \P8|Add3~22\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~15_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~25_sumout\)) # (\B[1]~input_o\ & ((\P8|P~15_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~25_sumout\,
	datad => \P8|ALT_INV_P~15_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add3~18\,
	sumout => \P8|Add3~21_sumout\,
	cout => \P8|Add3~22\);

\P8|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~21_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~15_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~25_sumout\)) # (\B[1]~input_o\ & ((\P8|P~15_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add4~18\ ))
-- \P8|Add4~22\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~15_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~25_sumout\)) # (\B[1]~input_o\ & ((\P8|P~15_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~25_sumout\,
	datad => \P8|ALT_INV_P~15_combout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add4~18\,
	sumout => \P8|Add4~21_sumout\,
	cout => \P8|Add4~22\);

\P8|P~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~16_combout\ = ( \P8|Add4~21_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~15_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~25_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~21_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~15_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~25_sumout\,
	datad => \P8|ALT_INV_P~15_combout\,
	datae => \P8|ALT_INV_Add4~21_sumout\,
	combout => \P8|P~16_combout\);

\P8|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~17_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~16_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~21_sumout\)) # (\B[2]~input_o\ & ((\P8|P~16_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add5~14\ ))
-- \P8|Add5~18\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~16_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~21_sumout\)) # (\B[2]~input_o\ & ((\P8|P~16_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~21_sumout\,
	datad => \P8|ALT_INV_P~16_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add5~14\,
	sumout => \P8|Add5~17_sumout\,
	cout => \P8|Add5~18\);

\P8|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~17_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~16_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~21_sumout\)) # (\B[2]~input_o\ & ((\P8|P~16_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add6~14\ ))
-- \P8|Add6~18\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~16_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~21_sumout\)) # (\B[2]~input_o\ & ((\P8|P~16_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~21_sumout\,
	datad => \P8|ALT_INV_P~16_combout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add6~14\,
	sumout => \P8|Add6~17_sumout\,
	cout => \P8|Add6~18\);

\P8|P~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~17_combout\ = ( \P8|Add6~17_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~16_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~21_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~17_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~16_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~21_sumout\,
	datad => \P8|ALT_INV_P~16_combout\,
	datae => \P8|ALT_INV_Add6~17_sumout\,
	combout => \P8|P~17_combout\);

\P8|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~13_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~17_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~17_sumout\)) # (\B[3]~input_o\ & ((\P8|P~17_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add7~10\ ))
-- \P8|Add7~14\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~17_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~17_sumout\)) # (\B[3]~input_o\ & ((\P8|P~17_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~17_sumout\,
	datad => \P8|ALT_INV_P~17_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add7~10\,
	sumout => \P8|Add7~13_sumout\,
	cout => \P8|Add7~14\);

\P8|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~13_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~17_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~17_sumout\)) # (\B[3]~input_o\ & ((\P8|P~17_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add8~10\ ))
-- \P8|Add8~14\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~17_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~17_sumout\)) # (\B[3]~input_o\ & ((\P8|P~17_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~17_sumout\,
	datad => \P8|ALT_INV_P~17_combout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add8~10\,
	sumout => \P8|Add8~13_sumout\,
	cout => \P8|Add8~14\);

\P8|P~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~18_combout\ = ( \P8|Add8~13_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~17_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~17_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~13_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~17_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~17_sumout\,
	datad => \P8|ALT_INV_P~17_combout\,
	datae => \P8|ALT_INV_Add8~13_sumout\,
	combout => \P8|P~18_combout\);

\P8|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~9_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~18_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~13_sumout\)) # (\B[4]~input_o\ & ((\P8|P~18_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add9~6\ ))
-- \P8|Add9~10\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~18_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~13_sumout\)) # (\B[4]~input_o\ & ((\P8|P~18_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~13_sumout\,
	datad => \P8|ALT_INV_P~18_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add9~6\,
	sumout => \P8|Add9~9_sumout\,
	cout => \P8|Add9~10\);

\P8|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~9_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~18_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~13_sumout\)) # (\B[4]~input_o\ & ((\P8|P~18_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add10~6\ ))
-- \P8|Add10~10\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~18_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~13_sumout\)) # (\B[4]~input_o\ & ((\P8|P~18_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~13_sumout\,
	datad => \P8|ALT_INV_P~18_combout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add10~6\,
	sumout => \P8|Add10~9_sumout\,
	cout => \P8|Add10~10\);

\P8|P~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~19_combout\ = ( \P8|Add10~9_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~18_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~13_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~9_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~18_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~13_sumout\,
	datad => \P8|ALT_INV_P~18_combout\,
	datae => \P8|ALT_INV_Add10~9_sumout\,
	combout => \P8|P~19_combout\);

\P8|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~5_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~19_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~9_sumout\)) # (\B[5]~input_o\ & ((\P8|P~19_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add11~2\ ))
-- \P8|Add11~6\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~19_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~9_sumout\)) # (\B[5]~input_o\ & ((\P8|P~19_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~9_sumout\,
	datad => \P8|ALT_INV_P~19_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add11~2\,
	sumout => \P8|Add11~5_sumout\,
	cout => \P8|Add11~6\);

\P8|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~5_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~19_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~9_sumout\)) # (\B[5]~input_o\ & ((\P8|P~19_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add12~2\ ))
-- \P8|Add12~6\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~19_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~9_sumout\)) # (\B[5]~input_o\ & ((\P8|P~19_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~9_sumout\,
	datad => \P8|ALT_INV_P~19_combout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add12~2\,
	sumout => \P8|Add12~5_sumout\,
	cout => \P8|Add12~6\);

\P8|P~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~20_combout\ = ( \P8|Add12~5_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~19_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~9_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~5_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~19_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~9_sumout\,
	datad => \P8|ALT_INV_P~19_combout\,
	datae => \P8|ALT_INV_Add12~5_sumout\,
	combout => \P8|P~20_combout\);

\P8|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~1_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~20_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~5_sumout\)) # (\B[6]~input_o\ & ((\P8|P~20_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \P8|Add13~2\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~20_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~5_sumout\)) # (\B[6]~input_o\ & ((\P8|P~20_combout\))))) ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~5_sumout\,
	datad => \P8|ALT_INV_P~20_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \P8|Add13~1_sumout\,
	cout => \P8|Add13~2\);

\P9|Mux15~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~35_combout\ = (\opcode[0]~input_o\ & (!\B[7]~input_o\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	combout => \P9|Mux15~35_combout\);

\P8|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~1_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~20_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~5_sumout\)) # (\B[6]~input_o\ & ((\P8|P~20_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))
-- \P8|Add14~2\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~20_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~5_sumout\)) # (\B[6]~input_o\ & ((\P8|P~20_combout\))))) ) + ( \P8|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~5_sumout\,
	datad => \P8|ALT_INV_P~20_combout\,
	dataf => \P8|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \P8|Add14~1_sumout\,
	cout => \P8|Add14~2\);

\P9|Mux15~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~36_combout\ = (\opcode[0]~input_o\ & (\B[7]~input_o\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	combout => \P9|Mux15~36_combout\);

\P9|Mux15~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~37_combout\ = (\opcode[0]~input_o\ & (!\B[7]~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000101000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	combout => \P9|Mux15~37_combout\);

\P9|Mux15~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~38_combout\ = ( \P8|P~20_combout\ & ( \P9|Mux15~37_combout\ & ( (!\P8|process_0~9_combout\) # (((!\opcode[0]~input_o\ & \A[9]~input_o\)) # (\P8|Add11~5_sumout\)) ) ) ) # ( !\P8|P~20_combout\ & ( \P9|Mux15~37_combout\ & ( (!\opcode[0]~input_o\ & 
-- (((\P8|process_0~9_combout\ & \P8|Add11~5_sumout\)) # (\A[9]~input_o\))) # (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P8|Add11~5_sumout\)))) ) ) ) # ( \P8|P~20_combout\ & ( !\P9|Mux15~37_combout\ & ( (!\opcode[0]~input_o\ & \A[9]~input_o\) ) ) 
-- ) # ( !\P8|P~20_combout\ & ( !\P9|Mux15~37_combout\ & ( (!\opcode[0]~input_o\ & \A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001011111111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P8|ALT_INV_Add11~5_sumout\,
	datae => \P8|ALT_INV_P~20_combout\,
	dataf => \P9|ALT_INV_Mux15~37_combout\,
	combout => \P9|Mux15~38_combout\);

\P9|Mux15~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~39_combout\ = ( !\P9|Mux15~38_combout\ & ( (!\P8|Add13~1_sumout\ & (((!\P8|Add14~1_sumout\) # (!\P9|Mux15~36_combout\)))) # (\P8|Add13~1_sumout\ & (!\P9|Mux15~35_combout\ & ((!\P8|Add14~1_sumout\) # (!\P9|Mux15~36_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000000000000000000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_Add13~1_sumout\,
	datab => \P9|ALT_INV_Mux15~35_combout\,
	datac => \P8|ALT_INV_Add14~1_sumout\,
	datad => \P9|ALT_INV_Mux15~36_combout\,
	datae => \P9|ALT_INV_Mux15~38_combout\,
	combout => \P9|Mux15~39_combout\);

\P9|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux8~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~39_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~34_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~33_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~32_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~32_combout\,
	datab => \P9|ALT_INV_Mux15~33_combout\,
	datac => \P9|ALT_INV_Mux15~34_combout\,
	datad => \P9|ALT_INV_Mux15~39_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux8~0_combout\);

\P9|Mux15~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~40_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[8]~input_o\) # (!\B[8]~input_o\))) # (\opcode[0]~input_o\ & (!\A[8]~input_o\ & !\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \P9|Mux15~40_combout\);

\P4|C~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~6_combout\ = (!\A[7]~input_o\ & (\P4|C~5_combout\ & (!\negate~input_o\ $ (!\B[7]~input_o\)))) # (\A[7]~input_o\ & ((!\negate~input_o\ $ (!\B[7]~input_o\)) # (\P4|C~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \P4|ALT_INV_C~5_combout\,
	combout => \P4|C~6_combout\);

\P9|Mux15~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~41_combout\ = ( \P4|C~6_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[8]~input_o\ $ (!\B[8]~input_o\))) ) ) # ( !\P4|C~6_combout\ & ( !\negate~input_o\ $ (!\A[8]~input_o\ $ (\B[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \P4|ALT_INV_C~6_combout\,
	combout => \P9|Mux15~41_combout\);

\P9|Mux15~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~42_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~42_combout\);

\P8|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add1~29_sumout\ = SUM(( (\B[0]~input_o\ & \P8|Add0~29_sumout\) ) + ( \A[7]~input_o\ ) + ( \P8|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datad => \P8|ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add1~26\,
	sumout => \P8|Add1~29_sumout\);

\P8|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add2~29_sumout\ = SUM(( (\P8|Add0~29_sumout\ & \B[0]~input_o\) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => \P8|Add2~26\,
	sumout => \P8|Add2~29_sumout\);

\P8|P~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~21_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\P8|Add2~29_sumout\)))) # (\B[0]~input_o\ & (((\P8|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add0~29_sumout\,
	datad => \P8|ALT_INV_Add2~29_sumout\,
	combout => \P8|P~21_combout\);

\P8|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~25_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~21_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~29_sumout\)) # (\B[1]~input_o\ & ((\P8|P~21_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add3~22\ ))
-- \P8|Add3~26\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~21_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~29_sumout\)) # (\B[1]~input_o\ & ((\P8|P~21_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~29_sumout\,
	datad => \P8|ALT_INV_P~21_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add3~22\,
	sumout => \P8|Add3~25_sumout\,
	cout => \P8|Add3~26\);

\P8|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~25_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~21_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~29_sumout\)) # (\B[1]~input_o\ & ((\P8|P~21_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add4~22\ ))
-- \P8|Add4~26\ = CARRY(( (!\B[0]~input_o\ & (((\P8|P~21_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~29_sumout\)) # (\B[1]~input_o\ & ((\P8|P~21_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~29_sumout\,
	datad => \P8|ALT_INV_P~21_combout\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add4~22\,
	sumout => \P8|Add4~25_sumout\,
	cout => \P8|Add4~26\);

\P8|P~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~22_combout\ = ( \P8|Add4~25_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~21_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~29_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~25_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~21_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~29_sumout\,
	datad => \P8|ALT_INV_P~21_combout\,
	datae => \P8|ALT_INV_Add4~25_sumout\,
	combout => \P8|P~22_combout\);

\P8|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~21_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~22_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~25_sumout\)) # (\B[2]~input_o\ & ((\P8|P~22_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add5~18\ ))
-- \P8|Add5~22\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~22_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~25_sumout\)) # (\B[2]~input_o\ & ((\P8|P~22_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~25_sumout\,
	datad => \P8|ALT_INV_P~22_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add5~18\,
	sumout => \P8|Add5~21_sumout\,
	cout => \P8|Add5~22\);

\P8|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~21_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~22_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~25_sumout\)) # (\B[2]~input_o\ & ((\P8|P~22_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add6~18\ ))
-- \P8|Add6~22\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~22_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~25_sumout\)) # (\B[2]~input_o\ & ((\P8|P~22_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~25_sumout\,
	datad => \P8|ALT_INV_P~22_combout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add6~18\,
	sumout => \P8|Add6~21_sumout\,
	cout => \P8|Add6~22\);

\P8|P~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~23_combout\ = ( \P8|Add6~21_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~22_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~25_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~21_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~22_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~25_sumout\,
	datad => \P8|ALT_INV_P~22_combout\,
	datae => \P8|ALT_INV_Add6~21_sumout\,
	combout => \P8|P~23_combout\);

\P8|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~17_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~23_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~21_sumout\)) # (\B[3]~input_o\ & ((\P8|P~23_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add7~14\ ))
-- \P8|Add7~18\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~23_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~21_sumout\)) # (\B[3]~input_o\ & ((\P8|P~23_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~21_sumout\,
	datad => \P8|ALT_INV_P~23_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add7~14\,
	sumout => \P8|Add7~17_sumout\,
	cout => \P8|Add7~18\);

\P8|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~17_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~23_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~21_sumout\)) # (\B[3]~input_o\ & ((\P8|P~23_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add8~14\ ))
-- \P8|Add8~18\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~23_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~21_sumout\)) # (\B[3]~input_o\ & ((\P8|P~23_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~21_sumout\,
	datad => \P8|ALT_INV_P~23_combout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add8~14\,
	sumout => \P8|Add8~17_sumout\,
	cout => \P8|Add8~18\);

\P8|P~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~24_combout\ = ( \P8|Add8~17_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~23_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~21_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~17_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~23_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~21_sumout\,
	datad => \P8|ALT_INV_P~23_combout\,
	datae => \P8|ALT_INV_Add8~17_sumout\,
	combout => \P8|P~24_combout\);

\P8|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~13_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~24_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~17_sumout\)) # (\B[4]~input_o\ & ((\P8|P~24_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add9~10\ ))
-- \P8|Add9~14\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~24_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~17_sumout\)) # (\B[4]~input_o\ & ((\P8|P~24_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~17_sumout\,
	datad => \P8|ALT_INV_P~24_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add9~10\,
	sumout => \P8|Add9~13_sumout\,
	cout => \P8|Add9~14\);

\P8|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~13_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~24_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~17_sumout\)) # (\B[4]~input_o\ & ((\P8|P~24_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add10~10\ ))
-- \P8|Add10~14\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~24_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~17_sumout\)) # (\B[4]~input_o\ & ((\P8|P~24_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~17_sumout\,
	datad => \P8|ALT_INV_P~24_combout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add10~10\,
	sumout => \P8|Add10~13_sumout\,
	cout => \P8|Add10~14\);

\P8|P~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~25_combout\ = ( \P8|Add10~13_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~24_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~17_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~13_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~24_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~17_sumout\,
	datad => \P8|ALT_INV_P~24_combout\,
	datae => \P8|ALT_INV_Add10~13_sumout\,
	combout => \P8|P~25_combout\);

\P8|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~9_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~25_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~13_sumout\)) # (\B[5]~input_o\ & ((\P8|P~25_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add11~6\ ))
-- \P8|Add11~10\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~25_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~13_sumout\)) # (\B[5]~input_o\ & ((\P8|P~25_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~13_sumout\,
	datad => \P8|ALT_INV_P~25_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add11~6\,
	sumout => \P8|Add11~9_sumout\,
	cout => \P8|Add11~10\);

\P8|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~9_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~25_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~13_sumout\)) # (\B[5]~input_o\ & ((\P8|P~25_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add12~6\ ))
-- \P8|Add12~10\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~25_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~13_sumout\)) # (\B[5]~input_o\ & ((\P8|P~25_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~13_sumout\,
	datad => \P8|ALT_INV_P~25_combout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add12~6\,
	sumout => \P8|Add12~9_sumout\,
	cout => \P8|Add12~10\);

\P8|P~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~26_combout\ = ( \P8|Add12~9_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~25_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~13_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~9_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~25_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~13_sumout\,
	datad => \P8|ALT_INV_P~25_combout\,
	datae => \P8|ALT_INV_Add12~9_sumout\,
	combout => \P8|P~26_combout\);

\P8|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~5_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~26_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~9_sumout\)) # (\B[6]~input_o\ & ((\P8|P~26_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add13~2\ ))
-- \P8|Add13~6\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~26_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~9_sumout\)) # (\B[6]~input_o\ & ((\P8|P~26_combout\))))) ) + ( \A[1]~input_o\ ) + ( \P8|Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~9_sumout\,
	datad => \P8|ALT_INV_P~26_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \P8|Add13~2\,
	sumout => \P8|Add13~5_sumout\,
	cout => \P8|Add13~6\);

\P8|Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~5_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~26_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~9_sumout\)) # (\B[6]~input_o\ & ((\P8|P~26_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add14~2\ ))
-- \P8|Add14~6\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~26_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~9_sumout\)) # (\B[6]~input_o\ & ((\P8|P~26_combout\))))) ) + ( \P8|Add0~5_sumout\ ) + ( \P8|Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~9_sumout\,
	datad => \P8|ALT_INV_P~26_combout\,
	dataf => \P8|ALT_INV_Add0~5_sumout\,
	cin => \P8|Add14~2\,
	sumout => \P8|Add14~5_sumout\,
	cout => \P8|Add14~6\);

\P9|Mux15~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~43_combout\ = ( \P8|Add11~9_sumout\ & ( \P8|P~26_combout\ & ( ((!\opcode[0]~input_o\ & \A[10]~input_o\)) # (\P9|Mux15~37_combout\) ) ) ) # ( !\P8|Add11~9_sumout\ & ( \P8|P~26_combout\ & ( (!\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[10]~input_o\))) # (\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( \P8|Add11~9_sumout\ & ( !\P8|P~26_combout\ & ( (!\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[10]~input_o\))) # (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( !\P8|Add11~9_sumout\ & ( !\P8|P~26_combout\ & ( (!\opcode[0]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010111100100010111100100010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P9|ALT_INV_Mux15~37_combout\,
	datae => \P8|ALT_INV_Add11~9_sumout\,
	dataf => \P8|ALT_INV_P~26_combout\,
	combout => \P9|Mux15~43_combout\);

\P9|Mux15~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~44_combout\ = ( !\P9|Mux15~43_combout\ & ( (!\P9|Mux15~35_combout\ & ((!\P9|Mux15~36_combout\) # ((!\P8|Add14~5_sumout\)))) # (\P9|Mux15~35_combout\ & (!\P8|Add13~5_sumout\ & ((!\P9|Mux15~36_combout\) # (!\P8|Add14~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~35_combout\,
	datab => \P9|ALT_INV_Mux15~36_combout\,
	datac => \P8|ALT_INV_Add13~5_sumout\,
	datad => \P8|ALT_INV_Add14~5_sumout\,
	datae => \P9|ALT_INV_Mux15~43_combout\,
	combout => \P9|Mux15~44_combout\);

\P9|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux7~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~44_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~42_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~41_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~40_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~40_combout\,
	datab => \P9|ALT_INV_Mux15~41_combout\,
	datac => \P9|ALT_INV_Mux15~42_combout\,
	datad => \P9|ALT_INV_Mux15~44_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux7~0_combout\);

\P9|Mux15~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~45_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[9]~input_o\) # (!\B[9]~input_o\))) # (\opcode[0]~input_o\ & (!\A[9]~input_o\ & !\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	combout => \P9|Mux15~45_combout\);

\P4|C~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~7_combout\ = (!\A[8]~input_o\ & (\P4|C~6_combout\ & (!\negate~input_o\ $ (!\B[8]~input_o\)))) # (\A[8]~input_o\ & ((!\negate~input_o\ $ (!\B[8]~input_o\)) # (\P4|C~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \P4|ALT_INV_C~6_combout\,
	combout => \P4|C~7_combout\);

\P9|Mux15~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~46_combout\ = ( \P4|C~7_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) ) # ( !\P4|C~7_combout\ & ( !\negate~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	datae => \P4|ALT_INV_C~7_combout\,
	combout => \P9|Mux15~46_combout\);

\P9|Mux15~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~47_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~47_combout\);

\P8|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add3~29_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~21_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~29_sumout\)) # (\B[1]~input_o\ & ((\P8|P~21_combout\))))) ) + ( \A[7]~input_o\ ) + ( \P8|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~29_sumout\,
	datad => \P8|ALT_INV_P~21_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add3~26\,
	sumout => \P8|Add3~29_sumout\);

\P8|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add4~29_sumout\ = SUM(( (!\B[0]~input_o\ & (((\P8|P~21_combout\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\P8|Add1~29_sumout\)) # (\B[1]~input_o\ & ((\P8|P~21_combout\))))) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \P8|ALT_INV_Add1~29_sumout\,
	datad => \P8|ALT_INV_P~21_combout\,
	dataf => \P8|ALT_INV_Add0~29_sumout\,
	cin => \P8|Add4~26\,
	sumout => \P8|Add4~29_sumout\);

\P8|P~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~27_combout\ = ( \P8|Add4~29_sumout\ & ( ((!\P8|process_0~1_combout\ & ((\P8|P~21_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~29_sumout\))) # (\P8|process_0~2_combout\) ) ) # ( !\P8|Add4~29_sumout\ & ( (!\P8|process_0~2_combout\ & 
-- ((!\P8|process_0~1_combout\ & ((\P8|P~21_combout\))) # (\P8|process_0~1_combout\ & (\P8|Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~1_combout\,
	datab => \P8|ALT_INV_process_0~2_combout\,
	datac => \P8|ALT_INV_Add1~29_sumout\,
	datad => \P8|ALT_INV_P~21_combout\,
	datae => \P8|ALT_INV_Add4~29_sumout\,
	combout => \P8|P~27_combout\);

\P8|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~25_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~27_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~29_sumout\)) # (\B[2]~input_o\ & ((\P8|P~27_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add5~22\ ))
-- \P8|Add5~26\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~27_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~29_sumout\)) # (\B[2]~input_o\ & ((\P8|P~27_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~29_sumout\,
	datad => \P8|ALT_INV_P~27_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add5~22\,
	sumout => \P8|Add5~25_sumout\,
	cout => \P8|Add5~26\);

\P8|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~25_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~27_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~29_sumout\)) # (\B[2]~input_o\ & ((\P8|P~27_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add6~22\ ))
-- \P8|Add6~26\ = CARRY(( (!\B[1]~input_o\ & (((\P8|P~27_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~29_sumout\)) # (\B[2]~input_o\ & ((\P8|P~27_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~29_sumout\,
	datad => \P8|ALT_INV_P~27_combout\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add6~22\,
	sumout => \P8|Add6~25_sumout\,
	cout => \P8|Add6~26\);

\P8|P~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~28_combout\ = ( \P8|Add6~25_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~27_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~29_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~25_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~27_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~29_sumout\,
	datad => \P8|ALT_INV_P~27_combout\,
	datae => \P8|ALT_INV_Add6~25_sumout\,
	combout => \P8|P~28_combout\);

\P8|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~21_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~28_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~25_sumout\)) # (\B[3]~input_o\ & ((\P8|P~28_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add7~18\ ))
-- \P8|Add7~22\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~28_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~25_sumout\)) # (\B[3]~input_o\ & ((\P8|P~28_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~25_sumout\,
	datad => \P8|ALT_INV_P~28_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add7~18\,
	sumout => \P8|Add7~21_sumout\,
	cout => \P8|Add7~22\);

\P8|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~21_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~28_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~25_sumout\)) # (\B[3]~input_o\ & ((\P8|P~28_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add8~18\ ))
-- \P8|Add8~22\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~28_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~25_sumout\)) # (\B[3]~input_o\ & ((\P8|P~28_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~25_sumout\,
	datad => \P8|ALT_INV_P~28_combout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add8~18\,
	sumout => \P8|Add8~21_sumout\,
	cout => \P8|Add8~22\);

\P8|P~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~29_combout\ = ( \P8|Add8~21_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~28_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~25_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~21_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~28_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~25_sumout\,
	datad => \P8|ALT_INV_P~28_combout\,
	datae => \P8|ALT_INV_Add8~21_sumout\,
	combout => \P8|P~29_combout\);

\P8|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~17_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~29_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~21_sumout\)) # (\B[4]~input_o\ & ((\P8|P~29_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add9~14\ ))
-- \P8|Add9~18\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~29_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~21_sumout\)) # (\B[4]~input_o\ & ((\P8|P~29_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~21_sumout\,
	datad => \P8|ALT_INV_P~29_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add9~14\,
	sumout => \P8|Add9~17_sumout\,
	cout => \P8|Add9~18\);

\P8|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~17_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~29_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~21_sumout\)) # (\B[4]~input_o\ & ((\P8|P~29_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add10~14\ ))
-- \P8|Add10~18\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~29_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~21_sumout\)) # (\B[4]~input_o\ & ((\P8|P~29_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~21_sumout\,
	datad => \P8|ALT_INV_P~29_combout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add10~14\,
	sumout => \P8|Add10~17_sumout\,
	cout => \P8|Add10~18\);

\P8|P~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~30_combout\ = ( \P8|Add10~17_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~29_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~21_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~17_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~29_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~21_sumout\,
	datad => \P8|ALT_INV_P~29_combout\,
	datae => \P8|ALT_INV_Add10~17_sumout\,
	combout => \P8|P~30_combout\);

\P8|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~13_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~30_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~17_sumout\)) # (\B[5]~input_o\ & ((\P8|P~30_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add11~10\ ))
-- \P8|Add11~14\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~30_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~17_sumout\)) # (\B[5]~input_o\ & ((\P8|P~30_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~17_sumout\,
	datad => \P8|ALT_INV_P~30_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add11~10\,
	sumout => \P8|Add11~13_sumout\,
	cout => \P8|Add11~14\);

\P8|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~13_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~30_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~17_sumout\)) # (\B[5]~input_o\ & ((\P8|P~30_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add12~10\ ))
-- \P8|Add12~14\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~30_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~17_sumout\)) # (\B[5]~input_o\ & ((\P8|P~30_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~17_sumout\,
	datad => \P8|ALT_INV_P~30_combout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add12~10\,
	sumout => \P8|Add12~13_sumout\,
	cout => \P8|Add12~14\);

\P8|P~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~31_combout\ = ( \P8|Add12~13_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~30_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~17_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~13_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~30_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~17_sumout\,
	datad => \P8|ALT_INV_P~30_combout\,
	datae => \P8|ALT_INV_Add12~13_sumout\,
	combout => \P8|P~31_combout\);

\P8|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~9_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~31_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~13_sumout\)) # (\B[6]~input_o\ & ((\P8|P~31_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add13~6\ ))
-- \P8|Add13~10\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~31_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~13_sumout\)) # (\B[6]~input_o\ & ((\P8|P~31_combout\))))) ) + ( \A[2]~input_o\ ) + ( \P8|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~13_sumout\,
	datad => \P8|ALT_INV_P~31_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \P8|Add13~6\,
	sumout => \P8|Add13~9_sumout\,
	cout => \P8|Add13~10\);

\P8|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~9_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~31_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~13_sumout\)) # (\B[6]~input_o\ & ((\P8|P~31_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add14~6\ ))
-- \P8|Add14~10\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~31_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~13_sumout\)) # (\B[6]~input_o\ & ((\P8|P~31_combout\))))) ) + ( \P8|Add0~9_sumout\ ) + ( \P8|Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~13_sumout\,
	datad => \P8|ALT_INV_P~31_combout\,
	dataf => \P8|ALT_INV_Add0~9_sumout\,
	cin => \P8|Add14~6\,
	sumout => \P8|Add14~9_sumout\,
	cout => \P8|Add14~10\);

\P9|Mux15~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~48_combout\ = ( \P8|Add11~13_sumout\ & ( \P8|P~31_combout\ & ( ((!\opcode[0]~input_o\ & \A[11]~input_o\)) # (\P9|Mux15~37_combout\) ) ) ) # ( !\P8|Add11~13_sumout\ & ( \P8|P~31_combout\ & ( (!\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[11]~input_o\))) # (\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( \P8|Add11~13_sumout\ & ( !\P8|P~31_combout\ & ( (!\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[11]~input_o\))) # (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( !\P8|Add11~13_sumout\ & ( !\P8|P~31_combout\ & ( (!\opcode[0]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010111100100010111100100010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P9|ALT_INV_Mux15~37_combout\,
	datae => \P8|ALT_INV_Add11~13_sumout\,
	dataf => \P8|ALT_INV_P~31_combout\,
	combout => \P9|Mux15~48_combout\);

\P9|Mux15~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~49_combout\ = ( !\P9|Mux15~48_combout\ & ( (!\P9|Mux15~35_combout\ & ((!\P9|Mux15~36_combout\) # ((!\P8|Add14~9_sumout\)))) # (\P9|Mux15~35_combout\ & (!\P8|Add13~9_sumout\ & ((!\P9|Mux15~36_combout\) # (!\P8|Add14~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~35_combout\,
	datab => \P9|ALT_INV_Mux15~36_combout\,
	datac => \P8|ALT_INV_Add13~9_sumout\,
	datad => \P8|ALT_INV_Add14~9_sumout\,
	datae => \P9|ALT_INV_Mux15~48_combout\,
	combout => \P9|Mux15~49_combout\);

\P9|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux6~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~49_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~47_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~46_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~45_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~45_combout\,
	datab => \P9|ALT_INV_Mux15~46_combout\,
	datac => \P9|ALT_INV_Mux15~47_combout\,
	datad => \P9|ALT_INV_Mux15~49_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux6~0_combout\);

\P9|Mux15~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~50_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[10]~input_o\) # (!\B[10]~input_o\))) # (\opcode[0]~input_o\ & (!\A[10]~input_o\ & !\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	combout => \P9|Mux15~50_combout\);

\P4|C~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~8_combout\ = (!\A[9]~input_o\ & (\P4|C~7_combout\ & (!\negate~input_o\ $ (!\B[9]~input_o\)))) # (\A[9]~input_o\ & ((!\negate~input_o\ $ (!\B[9]~input_o\)) # (\P4|C~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \P4|ALT_INV_C~7_combout\,
	combout => \P4|C~8_combout\);

\P9|Mux15~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~51_combout\ = ( \P4|C~8_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[10]~input_o\ $ (!\B[10]~input_o\))) ) ) # ( !\P4|C~8_combout\ & ( !\negate~input_o\ $ (!\A[10]~input_o\ $ (\B[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \P4|ALT_INV_C~8_combout\,
	combout => \P9|Mux15~51_combout\);

\P9|Mux15~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~52_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~52_combout\);

\P8|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add5~29_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~27_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~29_sumout\)) # (\B[2]~input_o\ & ((\P8|P~27_combout\))))) ) + ( \A[7]~input_o\ ) + ( \P8|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~29_sumout\,
	datad => \P8|ALT_INV_P~27_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add5~26\,
	sumout => \P8|Add5~29_sumout\);

\P8|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add6~29_sumout\ = SUM(( (!\B[1]~input_o\ & (((\P8|P~27_combout\)))) # (\B[1]~input_o\ & ((!\B[2]~input_o\ & (\P8|Add3~29_sumout\)) # (\B[2]~input_o\ & ((\P8|P~27_combout\))))) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \P8|ALT_INV_Add3~29_sumout\,
	datad => \P8|ALT_INV_P~27_combout\,
	dataf => \P8|ALT_INV_Add0~29_sumout\,
	cin => \P8|Add6~26\,
	sumout => \P8|Add6~29_sumout\);

\P8|P~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~32_combout\ = ( \P8|Add6~29_sumout\ & ( ((!\P8|process_0~0_combout\ & ((\P8|P~27_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~29_sumout\))) # (\P8|process_0~4_combout\) ) ) # ( !\P8|Add6~29_sumout\ & ( (!\P8|process_0~4_combout\ & 
-- ((!\P8|process_0~0_combout\ & ((\P8|P~27_combout\))) # (\P8|process_0~0_combout\ & (\P8|Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~0_combout\,
	datab => \P8|ALT_INV_process_0~4_combout\,
	datac => \P8|ALT_INV_Add3~29_sumout\,
	datad => \P8|ALT_INV_P~27_combout\,
	datae => \P8|ALT_INV_Add6~29_sumout\,
	combout => \P8|P~32_combout\);

\P8|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~25_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~32_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~29_sumout\)) # (\B[3]~input_o\ & ((\P8|P~32_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add7~22\ ))
-- \P8|Add7~26\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~32_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~29_sumout\)) # (\B[3]~input_o\ & ((\P8|P~32_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~29_sumout\,
	datad => \P8|ALT_INV_P~32_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add7~22\,
	sumout => \P8|Add7~25_sumout\,
	cout => \P8|Add7~26\);

\P8|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~25_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~32_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~29_sumout\)) # (\B[3]~input_o\ & ((\P8|P~32_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add8~22\ ))
-- \P8|Add8~26\ = CARRY(( (!\B[2]~input_o\ & (((\P8|P~32_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~29_sumout\)) # (\B[3]~input_o\ & ((\P8|P~32_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~29_sumout\,
	datad => \P8|ALT_INV_P~32_combout\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add8~22\,
	sumout => \P8|Add8~25_sumout\,
	cout => \P8|Add8~26\);

\P8|P~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~33_combout\ = ( \P8|Add8~25_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~32_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~29_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~25_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~32_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~29_sumout\,
	datad => \P8|ALT_INV_P~32_combout\,
	datae => \P8|ALT_INV_Add8~25_sumout\,
	combout => \P8|P~33_combout\);

\P8|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~21_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~33_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~25_sumout\)) # (\B[4]~input_o\ & ((\P8|P~33_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add9~18\ ))
-- \P8|Add9~22\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~33_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~25_sumout\)) # (\B[4]~input_o\ & ((\P8|P~33_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~25_sumout\,
	datad => \P8|ALT_INV_P~33_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add9~18\,
	sumout => \P8|Add9~21_sumout\,
	cout => \P8|Add9~22\);

\P8|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~21_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~33_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~25_sumout\)) # (\B[4]~input_o\ & ((\P8|P~33_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add10~18\ ))
-- \P8|Add10~22\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~33_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~25_sumout\)) # (\B[4]~input_o\ & ((\P8|P~33_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~25_sumout\,
	datad => \P8|ALT_INV_P~33_combout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add10~18\,
	sumout => \P8|Add10~21_sumout\,
	cout => \P8|Add10~22\);

\P8|P~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~34_combout\ = ( \P8|Add10~21_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~33_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~25_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~21_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~33_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~25_sumout\,
	datad => \P8|ALT_INV_P~33_combout\,
	datae => \P8|ALT_INV_Add10~21_sumout\,
	combout => \P8|P~34_combout\);

\P8|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~17_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~34_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~21_sumout\)) # (\B[5]~input_o\ & ((\P8|P~34_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add11~14\ ))
-- \P8|Add11~18\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~34_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~21_sumout\)) # (\B[5]~input_o\ & ((\P8|P~34_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~21_sumout\,
	datad => \P8|ALT_INV_P~34_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add11~14\,
	sumout => \P8|Add11~17_sumout\,
	cout => \P8|Add11~18\);

\P8|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~17_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~34_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~21_sumout\)) # (\B[5]~input_o\ & ((\P8|P~34_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add12~14\ ))
-- \P8|Add12~18\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~34_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~21_sumout\)) # (\B[5]~input_o\ & ((\P8|P~34_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~21_sumout\,
	datad => \P8|ALT_INV_P~34_combout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add12~14\,
	sumout => \P8|Add12~17_sumout\,
	cout => \P8|Add12~18\);

\P8|P~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~35_combout\ = ( \P8|Add12~17_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~34_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~21_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~17_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~34_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~21_sumout\,
	datad => \P8|ALT_INV_P~34_combout\,
	datae => \P8|ALT_INV_Add12~17_sumout\,
	combout => \P8|P~35_combout\);

\P8|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~13_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~35_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~17_sumout\)) # (\B[6]~input_o\ & ((\P8|P~35_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add13~10\ ))
-- \P8|Add13~14\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~35_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~17_sumout\)) # (\B[6]~input_o\ & ((\P8|P~35_combout\))))) ) + ( \A[3]~input_o\ ) + ( \P8|Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~17_sumout\,
	datad => \P8|ALT_INV_P~35_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	cin => \P8|Add13~10\,
	sumout => \P8|Add13~13_sumout\,
	cout => \P8|Add13~14\);

\P8|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~13_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~35_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~17_sumout\)) # (\B[6]~input_o\ & ((\P8|P~35_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add14~10\ ))
-- \P8|Add14~14\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~35_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~17_sumout\)) # (\B[6]~input_o\ & ((\P8|P~35_combout\))))) ) + ( \P8|Add0~13_sumout\ ) + ( \P8|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~17_sumout\,
	datad => \P8|ALT_INV_P~35_combout\,
	dataf => \P8|ALT_INV_Add0~13_sumout\,
	cin => \P8|Add14~10\,
	sumout => \P8|Add14~13_sumout\,
	cout => \P8|Add14~14\);

\P9|Mux15~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~53_combout\ = ( \P8|Add11~17_sumout\ & ( \P8|P~35_combout\ & ( ((!\opcode[0]~input_o\ & \A[12]~input_o\)) # (\P9|Mux15~37_combout\) ) ) ) # ( !\P8|Add11~17_sumout\ & ( \P8|P~35_combout\ & ( (!\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[12]~input_o\))) # (\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( \P8|Add11~17_sumout\ & ( !\P8|P~35_combout\ & ( (!\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[12]~input_o\))) # (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( !\P8|Add11~17_sumout\ & ( !\P8|P~35_combout\ & ( (!\opcode[0]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010111100100010111100100010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P9|ALT_INV_Mux15~37_combout\,
	datae => \P8|ALT_INV_Add11~17_sumout\,
	dataf => \P8|ALT_INV_P~35_combout\,
	combout => \P9|Mux15~53_combout\);

\P9|Mux15~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~54_combout\ = ( !\P9|Mux15~53_combout\ & ( (!\P9|Mux15~35_combout\ & ((!\P9|Mux15~36_combout\) # ((!\P8|Add14~13_sumout\)))) # (\P9|Mux15~35_combout\ & (!\P8|Add13~13_sumout\ & ((!\P9|Mux15~36_combout\) # (!\P8|Add14~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~35_combout\,
	datab => \P9|ALT_INV_Mux15~36_combout\,
	datac => \P8|ALT_INV_Add13~13_sumout\,
	datad => \P8|ALT_INV_Add14~13_sumout\,
	datae => \P9|ALT_INV_Mux15~53_combout\,
	combout => \P9|Mux15~54_combout\);

\P9|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux5~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~54_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~52_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~51_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~50_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~50_combout\,
	datab => \P9|ALT_INV_Mux15~51_combout\,
	datac => \P9|ALT_INV_Mux15~52_combout\,
	datad => \P9|ALT_INV_Mux15~54_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux5~0_combout\);

\P9|Mux15~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~55_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[11]~input_o\) # (!\B[11]~input_o\))) # (\opcode[0]~input_o\ & (!\A[11]~input_o\ & !\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	combout => \P9|Mux15~55_combout\);

\P4|C~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~9_combout\ = (!\A[10]~input_o\ & (\P4|C~8_combout\ & (!\negate~input_o\ $ (!\B[10]~input_o\)))) # (\A[10]~input_o\ & ((!\negate~input_o\ $ (!\B[10]~input_o\)) # (\P4|C~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \P4|ALT_INV_C~8_combout\,
	combout => \P4|C~9_combout\);

\P9|Mux15~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~56_combout\ = ( \P4|C~9_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[11]~input_o\ $ (!\B[11]~input_o\))) ) ) # ( !\P4|C~9_combout\ & ( !\negate~input_o\ $ (!\A[11]~input_o\ $ (\B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	datae => \P4|ALT_INV_C~9_combout\,
	combout => \P9|Mux15~56_combout\);

\P9|Mux15~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~57_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~57_combout\);

\P8|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add7~29_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~32_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~29_sumout\)) # (\B[3]~input_o\ & ((\P8|P~32_combout\))))) ) + ( \A[7]~input_o\ ) + ( \P8|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~29_sumout\,
	datad => \P8|ALT_INV_P~32_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add7~26\,
	sumout => \P8|Add7~29_sumout\);

\P8|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add8~29_sumout\ = SUM(( (!\B[2]~input_o\ & (((\P8|P~32_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & (\P8|Add5~29_sumout\)) # (\B[3]~input_o\ & ((\P8|P~32_combout\))))) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \P8|ALT_INV_Add5~29_sumout\,
	datad => \P8|ALT_INV_P~32_combout\,
	dataf => \P8|ALT_INV_Add0~29_sumout\,
	cin => \P8|Add8~26\,
	sumout => \P8|Add8~29_sumout\);

\P8|P~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~36_combout\ = ( \P8|Add8~29_sumout\ & ( ((!\P8|process_0~3_combout\ & ((\P8|P~32_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~29_sumout\))) # (\P8|process_0~6_combout\) ) ) # ( !\P8|Add8~29_sumout\ & ( (!\P8|process_0~6_combout\ & 
-- ((!\P8|process_0~3_combout\ & ((\P8|P~32_combout\))) # (\P8|process_0~3_combout\ & (\P8|Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~3_combout\,
	datab => \P8|ALT_INV_process_0~6_combout\,
	datac => \P8|ALT_INV_Add5~29_sumout\,
	datad => \P8|ALT_INV_P~32_combout\,
	datae => \P8|ALT_INV_Add8~29_sumout\,
	combout => \P8|P~36_combout\);

\P8|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~25_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~36_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~29_sumout\)) # (\B[4]~input_o\ & ((\P8|P~36_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add9~22\ ))
-- \P8|Add9~26\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~36_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~29_sumout\)) # (\B[4]~input_o\ & ((\P8|P~36_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~29_sumout\,
	datad => \P8|ALT_INV_P~36_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add9~22\,
	sumout => \P8|Add9~25_sumout\,
	cout => \P8|Add9~26\);

\P8|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~25_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~36_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~29_sumout\)) # (\B[4]~input_o\ & ((\P8|P~36_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add10~22\ ))
-- \P8|Add10~26\ = CARRY(( (!\B[3]~input_o\ & (((\P8|P~36_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~29_sumout\)) # (\B[4]~input_o\ & ((\P8|P~36_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~29_sumout\,
	datad => \P8|ALT_INV_P~36_combout\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add10~22\,
	sumout => \P8|Add10~25_sumout\,
	cout => \P8|Add10~26\);

\P8|P~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~37_combout\ = ( \P8|Add10~25_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~36_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~29_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~25_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~36_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~29_sumout\,
	datad => \P8|ALT_INV_P~36_combout\,
	datae => \P8|ALT_INV_Add10~25_sumout\,
	combout => \P8|P~37_combout\);

\P8|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~21_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~37_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~25_sumout\)) # (\B[5]~input_o\ & ((\P8|P~37_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add11~18\ ))
-- \P8|Add11~22\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~37_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~25_sumout\)) # (\B[5]~input_o\ & ((\P8|P~37_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~25_sumout\,
	datad => \P8|ALT_INV_P~37_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add11~18\,
	sumout => \P8|Add11~21_sumout\,
	cout => \P8|Add11~22\);

\P8|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~21_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~37_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~25_sumout\)) # (\B[5]~input_o\ & ((\P8|P~37_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add12~18\ ))
-- \P8|Add12~22\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~37_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~25_sumout\)) # (\B[5]~input_o\ & ((\P8|P~37_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~25_sumout\,
	datad => \P8|ALT_INV_P~37_combout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add12~18\,
	sumout => \P8|Add12~21_sumout\,
	cout => \P8|Add12~22\);

\P8|P~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~38_combout\ = ( \P8|Add12~21_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~37_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~25_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~21_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~37_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~25_sumout\,
	datad => \P8|ALT_INV_P~37_combout\,
	datae => \P8|ALT_INV_Add12~21_sumout\,
	combout => \P8|P~38_combout\);

\P8|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~17_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~38_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~21_sumout\)) # (\B[6]~input_o\ & ((\P8|P~38_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add13~14\ ))
-- \P8|Add13~18\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~38_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~21_sumout\)) # (\B[6]~input_o\ & ((\P8|P~38_combout\))))) ) + ( \A[4]~input_o\ ) + ( \P8|Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~21_sumout\,
	datad => \P8|ALT_INV_P~38_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	cin => \P8|Add13~14\,
	sumout => \P8|Add13~17_sumout\,
	cout => \P8|Add13~18\);

\P8|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~17_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~38_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~21_sumout\)) # (\B[6]~input_o\ & ((\P8|P~38_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add14~14\ ))
-- \P8|Add14~18\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~38_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~21_sumout\)) # (\B[6]~input_o\ & ((\P8|P~38_combout\))))) ) + ( \P8|Add0~17_sumout\ ) + ( \P8|Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~21_sumout\,
	datad => \P8|ALT_INV_P~38_combout\,
	dataf => \P8|ALT_INV_Add0~17_sumout\,
	cin => \P8|Add14~14\,
	sumout => \P8|Add14~17_sumout\,
	cout => \P8|Add14~18\);

\P9|Mux15~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~58_combout\ = ( \P8|Add11~21_sumout\ & ( \P8|P~38_combout\ & ( ((!\opcode[0]~input_o\ & \A[13]~input_o\)) # (\P9|Mux15~37_combout\) ) ) ) # ( !\P8|Add11~21_sumout\ & ( \P8|P~38_combout\ & ( (!\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[13]~input_o\))) # (\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( \P8|Add11~21_sumout\ & ( !\P8|P~38_combout\ & ( (!\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[13]~input_o\))) # (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( !\P8|Add11~21_sumout\ & ( !\P8|P~38_combout\ & ( (!\opcode[0]~input_o\ & \A[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010111100100010111100100010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P9|ALT_INV_Mux15~37_combout\,
	datae => \P8|ALT_INV_Add11~21_sumout\,
	dataf => \P8|ALT_INV_P~38_combout\,
	combout => \P9|Mux15~58_combout\);

\P9|Mux15~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~59_combout\ = ( !\P9|Mux15~58_combout\ & ( (!\P9|Mux15~35_combout\ & ((!\P9|Mux15~36_combout\) # ((!\P8|Add14~17_sumout\)))) # (\P9|Mux15~35_combout\ & (!\P8|Add13~17_sumout\ & ((!\P9|Mux15~36_combout\) # (!\P8|Add14~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~35_combout\,
	datab => \P9|ALT_INV_Mux15~36_combout\,
	datac => \P8|ALT_INV_Add13~17_sumout\,
	datad => \P8|ALT_INV_Add14~17_sumout\,
	datae => \P9|ALT_INV_Mux15~58_combout\,
	combout => \P9|Mux15~59_combout\);

\P9|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux4~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~59_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~57_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~56_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~55_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~55_combout\,
	datab => \P9|ALT_INV_Mux15~56_combout\,
	datac => \P9|ALT_INV_Mux15~57_combout\,
	datad => \P9|ALT_INV_Mux15~59_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux4~0_combout\);

\P9|Mux15~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~60_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[12]~input_o\) # (!\B[12]~input_o\))) # (\opcode[0]~input_o\ & (!\A[12]~input_o\ & !\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	combout => \P9|Mux15~60_combout\);

\P4|C~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~10_combout\ = ( \B[10]~input_o\ & ( \P4|C~8_combout\ & ( (!\B[11]~input_o\ & (((\negate~input_o\ & \A[10]~input_o\)) # (\A[11]~input_o\))) # (\B[11]~input_o\ & ((!\negate~input_o\) # ((\A[11]~input_o\ & \A[10]~input_o\)))) ) ) ) # ( !\B[10]~input_o\ 
-- & ( \P4|C~8_combout\ & ( (!\B[11]~input_o\ & (((\A[11]~input_o\ & \A[10]~input_o\)) # (\negate~input_o\))) # (\B[11]~input_o\ & (((!\negate~input_o\ & \A[10]~input_o\)) # (\A[11]~input_o\))) ) ) ) # ( \B[10]~input_o\ & ( !\P4|C~8_combout\ & ( 
-- (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\A[10]~input_o\) # (\negate~input_o\)))) # (\B[11]~input_o\ & (!\negate~input_o\ & ((\A[10]~input_o\) # (\A[11]~input_o\)))) ) ) ) # ( !\B[10]~input_o\ & ( !\P4|C~8_combout\ & ( (!\B[11]~input_o\ & 
-- (\negate~input_o\ & ((\A[10]~input_o\) # (\A[11]~input_o\)))) # (\B[11]~input_o\ & (\A[11]~input_o\ & ((!\negate~input_o\) # (\A[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001010011000100100011101001010011011110110011101001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_B[10]~input_o\,
	dataf => \P4|ALT_INV_C~8_combout\,
	combout => \P4|C~10_combout\);

\P9|Mux15~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~61_combout\ = ( \P4|C~10_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[12]~input_o\ $ (!\B[12]~input_o\))) ) ) # ( !\P4|C~10_combout\ & ( !\negate~input_o\ $ (!\A[12]~input_o\ $ (\B[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \P4|ALT_INV_C~10_combout\,
	combout => \P9|Mux15~61_combout\);

\P9|Mux15~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~62_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~62_combout\);

\P8|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add9~29_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~36_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~29_sumout\)) # (\B[4]~input_o\ & ((\P8|P~36_combout\))))) ) + ( \A[7]~input_o\ ) + ( \P8|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~29_sumout\,
	datad => \P8|ALT_INV_P~36_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add9~26\,
	sumout => \P8|Add9~29_sumout\);

\P8|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add10~29_sumout\ = SUM(( (!\B[3]~input_o\ & (((\P8|P~36_combout\)))) # (\B[3]~input_o\ & ((!\B[4]~input_o\ & (\P8|Add7~29_sumout\)) # (\B[4]~input_o\ & ((\P8|P~36_combout\))))) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \P8|ALT_INV_Add7~29_sumout\,
	datad => \P8|ALT_INV_P~36_combout\,
	dataf => \P8|ALT_INV_Add0~29_sumout\,
	cin => \P8|Add10~26\,
	sumout => \P8|Add10~29_sumout\);

\P8|P~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~39_combout\ = ( \P8|Add10~29_sumout\ & ( ((!\P8|process_0~5_combout\ & ((\P8|P~36_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~29_sumout\))) # (\P8|process_0~8_combout\) ) ) # ( !\P8|Add10~29_sumout\ & ( (!\P8|process_0~8_combout\ & 
-- ((!\P8|process_0~5_combout\ & ((\P8|P~36_combout\))) # (\P8|process_0~5_combout\ & (\P8|Add7~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~5_combout\,
	datab => \P8|ALT_INV_process_0~8_combout\,
	datac => \P8|ALT_INV_Add7~29_sumout\,
	datad => \P8|ALT_INV_P~36_combout\,
	datae => \P8|ALT_INV_Add10~29_sumout\,
	combout => \P8|P~39_combout\);

\P8|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~25_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~39_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~29_sumout\)) # (\B[5]~input_o\ & ((\P8|P~39_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add11~22\ ))
-- \P8|Add11~26\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~39_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~29_sumout\)) # (\B[5]~input_o\ & ((\P8|P~39_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~29_sumout\,
	datad => \P8|ALT_INV_P~39_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add11~22\,
	sumout => \P8|Add11~25_sumout\,
	cout => \P8|Add11~26\);

\P8|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~25_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~39_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~29_sumout\)) # (\B[5]~input_o\ & ((\P8|P~39_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add12~22\ ))
-- \P8|Add12~26\ = CARRY(( (!\B[4]~input_o\ & (((\P8|P~39_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~29_sumout\)) # (\B[5]~input_o\ & ((\P8|P~39_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~29_sumout\,
	datad => \P8|ALT_INV_P~39_combout\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add12~22\,
	sumout => \P8|Add12~25_sumout\,
	cout => \P8|Add12~26\);

\P8|P~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~40_combout\ = ( \P8|Add12~25_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~39_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~29_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~25_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~39_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~29_sumout\,
	datad => \P8|ALT_INV_P~39_combout\,
	datae => \P8|ALT_INV_Add12~25_sumout\,
	combout => \P8|P~40_combout\);

\P8|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~21_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~40_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~25_sumout\)) # (\B[6]~input_o\ & ((\P8|P~40_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add13~18\ ))
-- \P8|Add13~22\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~40_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~25_sumout\)) # (\B[6]~input_o\ & ((\P8|P~40_combout\))))) ) + ( \A[5]~input_o\ ) + ( \P8|Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~25_sumout\,
	datad => \P8|ALT_INV_P~40_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	cin => \P8|Add13~18\,
	sumout => \P8|Add13~21_sumout\,
	cout => \P8|Add13~22\);

\P8|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~21_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~40_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~25_sumout\)) # (\B[6]~input_o\ & ((\P8|P~40_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add14~18\ ))
-- \P8|Add14~22\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~40_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~25_sumout\)) # (\B[6]~input_o\ & ((\P8|P~40_combout\))))) ) + ( \P8|Add0~21_sumout\ ) + ( \P8|Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~25_sumout\,
	datad => \P8|ALT_INV_P~40_combout\,
	dataf => \P8|ALT_INV_Add0~21_sumout\,
	cin => \P8|Add14~18\,
	sumout => \P8|Add14~21_sumout\,
	cout => \P8|Add14~22\);

\P9|Mux15~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~63_combout\ = ( \P8|Add11~25_sumout\ & ( \P8|P~40_combout\ & ( ((!\opcode[0]~input_o\ & \A[14]~input_o\)) # (\P9|Mux15~37_combout\) ) ) ) # ( !\P8|Add11~25_sumout\ & ( \P8|P~40_combout\ & ( (!\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[14]~input_o\))) # (\opcode[0]~input_o\ & (((!\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( \P8|Add11~25_sumout\ & ( !\P8|P~40_combout\ & ( (!\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & 
-- \P9|Mux15~37_combout\)) # (\A[14]~input_o\))) # (\opcode[0]~input_o\ & (((\P8|process_0~9_combout\ & \P9|Mux15~37_combout\)))) ) ) ) # ( !\P8|Add11~25_sumout\ & ( !\P8|P~40_combout\ & ( (!\opcode[0]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010111100100010111100100010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \P8|ALT_INV_process_0~9_combout\,
	datad => \P9|ALT_INV_Mux15~37_combout\,
	datae => \P8|ALT_INV_Add11~25_sumout\,
	dataf => \P8|ALT_INV_P~40_combout\,
	combout => \P9|Mux15~63_combout\);

\P9|Mux15~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~64_combout\ = ( !\P9|Mux15~63_combout\ & ( (!\P9|Mux15~35_combout\ & ((!\P9|Mux15~36_combout\) # ((!\P8|Add14~21_sumout\)))) # (\P9|Mux15~35_combout\ & (!\P8|Add13~21_sumout\ & ((!\P9|Mux15~36_combout\) # (!\P8|Add14~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000000000000000000011111010110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~35_combout\,
	datab => \P9|ALT_INV_Mux15~36_combout\,
	datac => \P8|ALT_INV_Add13~21_sumout\,
	datad => \P8|ALT_INV_Add14~21_sumout\,
	datae => \P9|ALT_INV_Mux15~63_combout\,
	combout => \P9|Mux15~64_combout\);

\P9|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux3~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~64_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~62_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~61_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~60_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~60_combout\,
	datab => \P9|ALT_INV_Mux15~61_combout\,
	datac => \P9|ALT_INV_Mux15~62_combout\,
	datad => \P9|ALT_INV_Mux15~64_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux3~0_combout\);

\P9|Mux15~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~65_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[13]~input_o\) # (!\B[13]~input_o\))) # (\opcode[0]~input_o\ & (!\A[13]~input_o\ & !\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	combout => \P9|Mux15~65_combout\);

\P4|C~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~11_combout\ = (!\A[12]~input_o\ & (\P4|C~10_combout\ & (!\negate~input_o\ $ (!\B[12]~input_o\)))) # (\A[12]~input_o\ & ((!\negate~input_o\ $ (!\B[12]~input_o\)) # (\P4|C~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \P4|ALT_INV_C~10_combout\,
	combout => \P4|C~11_combout\);

\P9|Mux15~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~66_combout\ = ( \P4|C~11_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) ) # ( !\P4|C~11_combout\ & ( !\negate~input_o\ $ (!\A[13]~input_o\ $ (\B[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \P4|ALT_INV_C~11_combout\,
	combout => \P9|Mux15~66_combout\);

\P9|Mux15~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~67_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~67_combout\);

\P8|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add11~29_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~39_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~29_sumout\)) # (\B[5]~input_o\ & ((\P8|P~39_combout\))))) ) + ( \A[7]~input_o\ ) + ( \P8|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~29_sumout\,
	datad => \P8|ALT_INV_P~39_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add11~26\,
	sumout => \P8|Add11~29_sumout\);

\P8|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add12~29_sumout\ = SUM(( (!\B[4]~input_o\ & (((\P8|P~39_combout\)))) # (\B[4]~input_o\ & ((!\B[5]~input_o\ & (\P8|Add9~29_sumout\)) # (\B[5]~input_o\ & ((\P8|P~39_combout\))))) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \P8|ALT_INV_Add9~29_sumout\,
	datad => \P8|ALT_INV_P~39_combout\,
	dataf => \P8|ALT_INV_Add0~29_sumout\,
	cin => \P8|Add12~26\,
	sumout => \P8|Add12~29_sumout\);

\P8|P~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|P~41_combout\ = ( \P8|Add12~29_sumout\ & ( ((!\P8|process_0~7_combout\ & ((\P8|P~39_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~29_sumout\))) # (\P8|process_0~10_combout\) ) ) # ( !\P8|Add12~29_sumout\ & ( (!\P8|process_0~10_combout\ & 
-- ((!\P8|process_0~7_combout\ & ((\P8|P~39_combout\))) # (\P8|process_0~7_combout\ & (\P8|Add9~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P8|ALT_INV_process_0~7_combout\,
	datab => \P8|ALT_INV_process_0~10_combout\,
	datac => \P8|ALT_INV_Add9~29_sumout\,
	datad => \P8|ALT_INV_P~39_combout\,
	datae => \P8|ALT_INV_Add12~29_sumout\,
	combout => \P8|P~41_combout\);

\P8|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~25_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~41_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~29_sumout\)) # (\B[6]~input_o\ & ((\P8|P~41_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add13~22\ ))
-- \P8|Add13~26\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~41_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~29_sumout\)) # (\B[6]~input_o\ & ((\P8|P~41_combout\))))) ) + ( \A[6]~input_o\ ) + ( \P8|Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~29_sumout\,
	datad => \P8|ALT_INV_P~41_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \P8|Add13~22\,
	sumout => \P8|Add13~25_sumout\,
	cout => \P8|Add13~26\);

\P9|Mux15~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~68_combout\ = ( \P8|Add11~29_sumout\ & ( \P8|P~41_combout\ & ( (\opcode[0]~input_o\ & (!\B[7]~input_o\ $ (\B[6]~input_o\))) ) ) ) # ( !\P8|Add11~29_sumout\ & ( \P8|P~41_combout\ & ( (\opcode[0]~input_o\ & ((!\B[7]~input_o\ & (!\B[6]~input_o\ & 
-- !\B[5]~input_o\)) # (\B[7]~input_o\ & (\B[6]~input_o\)))) ) ) ) # ( \P8|Add11~29_sumout\ & ( !\P8|P~41_combout\ & ( (\opcode[0]~input_o\ & (!\B[7]~input_o\ & (!\B[6]~input_o\ & \B[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001000001000000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \P8|ALT_INV_Add11~29_sumout\,
	dataf => \P8|ALT_INV_P~41_combout\,
	combout => \P9|Mux15~68_combout\);

\P8|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~25_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~41_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~29_sumout\)) # (\B[6]~input_o\ & ((\P8|P~41_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add14~22\ ))
-- \P8|Add14~26\ = CARRY(( (!\B[5]~input_o\ & (((\P8|P~41_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~29_sumout\)) # (\B[6]~input_o\ & ((\P8|P~41_combout\))))) ) + ( \P8|Add0~25_sumout\ ) + ( \P8|Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~29_sumout\,
	datad => \P8|ALT_INV_P~41_combout\,
	dataf => \P8|ALT_INV_Add0~25_sumout\,
	cin => \P8|Add14~22\,
	sumout => \P8|Add14~25_sumout\,
	cout => \P8|Add14~26\);

\P9|Mux15~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~76_combout\ = ( !\B[6]~input_o\ & ( ((!\opcode[0]~input_o\ & (\A[15]~input_o\)) # (\opcode[0]~input_o\ & (((\B[7]~input_o\ & \P8|Add14~25_sumout\))))) # (\P9|Mux15~68_combout\) ) ) # ( \B[6]~input_o\ & ( ((!\opcode[0]~input_o\ & 
-- (\A[15]~input_o\)) # (\opcode[0]~input_o\ & (((!\B[7]~input_o\ & \P8|Add13~25_sumout\))))) # (\P9|Mux15~68_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100000011010101010000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \P8|ALT_INV_Add13~25_sumout\,
	datad => \ALT_INV_opcode[0]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \P9|ALT_INV_Mux15~68_combout\,
	datag => \P8|ALT_INV_Add14~25_sumout\,
	combout => \P9|Mux15~76_combout\);

\P9|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux2~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( \P9|Mux15~76_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~67_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~66_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~65_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~65_combout\,
	datab => \P9|ALT_INV_Mux15~66_combout\,
	datac => \P9|ALT_INV_Mux15~67_combout\,
	datad => \P9|ALT_INV_Mux15~76_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux2~0_combout\);

\P9|Mux15~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~69_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[14]~input_o\) # (!\B[14]~input_o\))) # (\opcode[0]~input_o\ & (!\A[14]~input_o\ & !\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	combout => \P9|Mux15~69_combout\);

\P4|C~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \P4|C~12_combout\ = ( \B[12]~input_o\ & ( \P4|C~10_combout\ & ( (!\B[13]~input_o\ & (((\negate~input_o\ & \A[12]~input_o\)) # (\A[13]~input_o\))) # (\B[13]~input_o\ & ((!\negate~input_o\) # ((\A[13]~input_o\ & \A[12]~input_o\)))) ) ) ) # ( 
-- !\B[12]~input_o\ & ( \P4|C~10_combout\ & ( (!\B[13]~input_o\ & (((\A[13]~input_o\ & \A[12]~input_o\)) # (\negate~input_o\))) # (\B[13]~input_o\ & (((!\negate~input_o\ & \A[12]~input_o\)) # (\A[13]~input_o\))) ) ) ) # ( \B[12]~input_o\ & ( 
-- !\P4|C~10_combout\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\A[12]~input_o\) # (\negate~input_o\)))) # (\B[13]~input_o\ & (!\negate~input_o\ & ((\A[12]~input_o\) # (\A[13]~input_o\)))) ) ) ) # ( !\B[12]~input_o\ & ( !\P4|C~10_combout\ & ( 
-- (!\B[13]~input_o\ & (\negate~input_o\ & ((\A[12]~input_o\) # (\A[13]~input_o\)))) # (\B[13]~input_o\ & (\A[13]~input_o\ & ((!\negate~input_o\) # (\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001010011000100100011101001010011011110110011101001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \P4|ALT_INV_C~10_combout\,
	combout => \P4|C~12_combout\);

\P9|Mux15~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~70_combout\ = ( \P4|C~12_combout\ & ( !\negate~input_o\ $ (!\opcode[0]~input_o\ $ (!\A[14]~input_o\ $ (!\B[14]~input_o\))) ) ) # ( !\P4|C~12_combout\ & ( !\negate~input_o\ $ (!\A[14]~input_o\ $ (\B[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101011010011001011001011010101001010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \P4|ALT_INV_C~12_combout\,
	combout => \P9|Mux15~70_combout\);

\P9|Mux15~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~71_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~71_combout\);

\P8|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add13~29_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~41_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~29_sumout\)) # (\B[6]~input_o\ & ((\P8|P~41_combout\))))) ) + ( \A[7]~input_o\ ) + ( \P8|Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~29_sumout\,
	datad => \P8|ALT_INV_P~41_combout\,
	dataf => \ALT_INV_A[7]~input_o\,
	cin => \P8|Add13~26\,
	sumout => \P8|Add13~29_sumout\);

\P8|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P8|Add14~29_sumout\ = SUM(( (!\B[5]~input_o\ & (((\P8|P~41_combout\)))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & (\P8|Add11~29_sumout\)) # (\B[6]~input_o\ & ((\P8|P~41_combout\))))) ) + ( \P8|Add0~29_sumout\ ) + ( \P8|Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datac => \P8|ALT_INV_Add11~29_sumout\,
	datad => \P8|ALT_INV_P~41_combout\,
	dataf => \P8|ALT_INV_Add0~29_sumout\,
	cin => \P8|Add14~26\,
	sumout => \P8|Add14~29_sumout\);

\P9|Mux15~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~72_combout\ = ( \P8|Add14~29_sumout\ & ( (!\P9|Mux15~36_combout\ & (!\P9|Mux15~68_combout\ & ((!\P9|Mux15~35_combout\) # (!\P8|Add13~29_sumout\)))) ) ) # ( !\P8|Add14~29_sumout\ & ( (!\P9|Mux15~68_combout\ & ((!\P9|Mux15~35_combout\) # 
-- (!\P8|Add13~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000110000001000000011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~35_combout\,
	datab => \P9|ALT_INV_Mux15~36_combout\,
	datac => \P9|ALT_INV_Mux15~68_combout\,
	datad => \P8|ALT_INV_Add13~29_sumout\,
	datae => \P8|ALT_INV_Add14~29_sumout\,
	combout => \P9|Mux15~72_combout\);

\P9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux1~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~72_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~71_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~70_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~69_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~69_combout\,
	datab => \P9|ALT_INV_Mux15~70_combout\,
	datac => \P9|ALT_INV_Mux15~71_combout\,
	datad => \P9|ALT_INV_Mux15~72_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux1~0_combout\);

\P9|Mux15~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~73_combout\ = !\negate~input_o\ $ (((!\opcode[0]~input_o\ & ((!\A[15]~input_o\) # (!\B[15]~input_o\))) # (\opcode[0]~input_o\ & (!\A[15]~input_o\ & !\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100110101001010110011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	combout => \P9|Mux15~73_combout\);

\P5|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \P5|LessThan0~7_combout\ = !\A[15]~input_o\ $ (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	combout => \P5|LessThan0~7_combout\);

\P9|Mux15~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~74_combout\ = ( \P5|LessThan0~7_combout\ & ( \P4|C~12_combout\ & ( (!\opcode[0]~input_o\ & (!\negate~input_o\)) # (\opcode[0]~input_o\ & ((!\A[14]~input_o\ & ((!\B[14]~input_o\))) # (\A[14]~input_o\ & (\negate~input_o\)))) ) ) ) # ( 
-- !\P5|LessThan0~7_combout\ & ( \P4|C~12_combout\ & ( (!\opcode[0]~input_o\ & (\negate~input_o\)) # (\opcode[0]~input_o\ & ((!\A[14]~input_o\ & ((\B[14]~input_o\))) # (\A[14]~input_o\ & (!\negate~input_o\)))) ) ) ) # ( \P5|LessThan0~7_combout\ & ( 
-- !\P4|C~12_combout\ & ( (!\opcode[0]~input_o\ & (!\negate~input_o\)) # (\opcode[0]~input_o\ & ((!\A[14]~input_o\ & (!\negate~input_o\)) # (\A[14]~input_o\ & ((!\B[14]~input_o\))))) ) ) ) # ( !\P5|LessThan0~7_combout\ & ( !\P4|C~12_combout\ & ( 
-- (!\opcode[0]~input_o\ & (\negate~input_o\)) # (\opcode[0]~input_o\ & ((!\A[14]~input_o\ & (\negate~input_o\)) # (\A[14]~input_o\ & ((\B[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010111101010111010100001000110011101101011100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_negate~input_o\,
	datab => \ALT_INV_opcode[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	datae => \P5|ALT_INV_LessThan0~7_combout\,
	dataf => \P4|ALT_INV_C~12_combout\,
	combout => \P9|Mux15~74_combout\);

\P9|Mux15~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux15~75_combout\ = (!\P9|Mux15~2_combout\ & ((!\opcode[0]~input_o\) # (!\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \P9|ALT_INV_Mux15~2_combout\,
	combout => \P9|Mux15~75_combout\);

\P9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P9|Mux0~0_combout\ = ( \opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~72_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( \opcode[2]~input_o\ & ( !\P9|Mux15~75_combout\ ) ) ) # ( \opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( 
-- \P9|Mux15~74_combout\ ) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ & ( \P9|Mux15~73_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P9|ALT_INV_Mux15~73_combout\,
	datab => \P9|ALT_INV_Mux15~74_combout\,
	datac => \P9|ALT_INV_Mux15~75_combout\,
	datad => \P9|ALT_INV_Mux15~72_combout\,
	datae => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[2]~input_o\,
	combout => \P9|Mux0~0_combout\);

ww_Saida(0) <= \Saida[0]~output_o\;

ww_Saida(1) <= \Saida[1]~output_o\;

ww_Saida(2) <= \Saida[2]~output_o\;

ww_Saida(3) <= \Saida[3]~output_o\;

ww_Saida(4) <= \Saida[4]~output_o\;

ww_Saida(5) <= \Saida[5]~output_o\;

ww_Saida(6) <= \Saida[6]~output_o\;

ww_Saida(7) <= \Saida[7]~output_o\;

ww_Saida(8) <= \Saida[8]~output_o\;

ww_Saida(9) <= \Saida[9]~output_o\;

ww_Saida(10) <= \Saida[10]~output_o\;

ww_Saida(11) <= \Saida[11]~output_o\;

ww_Saida(12) <= \Saida[12]~output_o\;

ww_Saida(13) <= \Saida[13]~output_o\;

ww_Saida(14) <= \Saida[14]~output_o\;

ww_Saida(15) <= \Saida[15]~output_o\;
END structure;


