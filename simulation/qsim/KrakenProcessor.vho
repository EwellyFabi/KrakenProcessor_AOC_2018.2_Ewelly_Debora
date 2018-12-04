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

-- DATE "12/03/2018 20:51:28"

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

ENTITY 	BoothMultiplier IS
    PORT (
	inputA : IN std_logic_vector(7 DOWNTO 0);
	inputB : IN std_logic_vector(7 DOWNTO 0);
	Saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END BoothMultiplier;

ARCHITECTURE structure OF BoothMultiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inputB : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \inputB[0]~input_o\ : std_logic;
SIGNAL \inputA[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \P~0_combout\ : std_logic;
SIGNAL \inputB[1]~input_o\ : std_logic;
SIGNAL \inputA[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \P~1_combout\ : std_logic;
SIGNAL \inputA[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \P~2_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \inputB[2]~input_o\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \P~92_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \inputA[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \P~3_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \P~4_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \inputB[3]~input_o\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \P~88_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \inputA[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \P~5_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \P~6_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \P~7_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \inputB[4]~input_o\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \P~84_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \inputA[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \P~8_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \P~9_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \P~10_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \P~11_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \inputB[5]~input_o\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \P~80_combout\ : std_logic;
SIGNAL \inputA[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \P~12_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \P~13_combout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \P~14_combout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \P~15_combout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \P~49_combout\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \P~16_combout\ : std_logic;
SIGNAL \inputB[6]~input_o\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \P~76_combout\ : std_logic;
SIGNAL \inputA[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \P~17_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \P~18_combout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \P~19_combout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \P~20_combout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \P~21_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \Add12~2\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \P~50_combout\ : std_logic;
SIGNAL \Add14~1_sumout\ : std_logic;
SIGNAL \P~22_combout\ : std_logic;
SIGNAL \inputB[7]~input_o\ : std_logic;
SIGNAL \Add13~1_sumout\ : std_logic;
SIGNAL \P~72_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \P~23_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \P~24_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \P~25_combout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \P~26_combout\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \P~27_combout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \P~51_combout\ : std_logic;
SIGNAL \Add14~2\ : std_logic;
SIGNAL \Add14~5_sumout\ : std_logic;
SIGNAL \P~28_combout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~5_sumout\ : std_logic;
SIGNAL \P~68_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \P~29_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \P~30_combout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \P~31_combout\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \P~32_combout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \P~52_combout\ : std_logic;
SIGNAL \Add14~6\ : std_logic;
SIGNAL \Add14~9_sumout\ : std_logic;
SIGNAL \P~33_combout\ : std_logic;
SIGNAL \Add13~6\ : std_logic;
SIGNAL \Add13~9_sumout\ : std_logic;
SIGNAL \P~64_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \P~34_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \P~35_combout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \P~36_combout\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \P~53_combout\ : std_logic;
SIGNAL \Add14~10\ : std_logic;
SIGNAL \Add14~13_sumout\ : std_logic;
SIGNAL \P~37_combout\ : std_logic;
SIGNAL \Add13~10\ : std_logic;
SIGNAL \Add13~13_sumout\ : std_logic;
SIGNAL \P~60_combout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \P~56_combout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \P~38_combout\ : std_logic;
SIGNAL \P~39_combout\ : std_logic;
SIGNAL \P~55_combout\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \P~40_combout\ : std_logic;
SIGNAL \P~54_combout\ : std_logic;
SIGNAL \Add13~14\ : std_logic;
SIGNAL \Add13~17_sumout\ : std_logic;
SIGNAL \Add14~14\ : std_logic;
SIGNAL \Add14~17_sumout\ : std_logic;
SIGNAL \P~41_combout\ : std_logic;
SIGNAL \P~42_combout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \P~58_combout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~25_sumout\ : std_logic;
SIGNAL \P~43_combout\ : std_logic;
SIGNAL \P~57_combout\ : std_logic;
SIGNAL \Add13~18\ : std_logic;
SIGNAL \Add13~21_sumout\ : std_logic;
SIGNAL \Add14~18\ : std_logic;
SIGNAL \Add14~21_sumout\ : std_logic;
SIGNAL \P~44_combout\ : std_logic;
SIGNAL \P~45_combout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add12~26\ : std_logic;
SIGNAL \Add12~29_sumout\ : std_logic;
SIGNAL \P~59_combout\ : std_logic;
SIGNAL \Add13~22\ : std_logic;
SIGNAL \Add13~25_sumout\ : std_logic;
SIGNAL \Add14~22\ : std_logic;
SIGNAL \Add14~25_sumout\ : std_logic;
SIGNAL \P~46_combout\ : std_logic;
SIGNAL \P~47_combout\ : std_logic;
SIGNAL \Add13~26\ : std_logic;
SIGNAL \Add13~29_sumout\ : std_logic;
SIGNAL \Add14~26\ : std_logic;
SIGNAL \Add14~29_sumout\ : std_logic;
SIGNAL \P~48_combout\ : std_logic;
SIGNAL \ALT_INV_P~10_combout\ : std_logic;
SIGNAL \ALT_INV_P~9_combout\ : std_logic;
SIGNAL \ALT_INV_P~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_P~7_combout\ : std_logic;
SIGNAL \ALT_INV_P~6_combout\ : std_logic;
SIGNAL \ALT_INV_P~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_P~4_combout\ : std_logic;
SIGNAL \ALT_INV_P~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_P~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \ALT_INV_inputA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_P~59_combout\ : std_logic;
SIGNAL \ALT_INV_P~58_combout\ : std_logic;
SIGNAL \ALT_INV_P~57_combout\ : std_logic;
SIGNAL \ALT_INV_P~56_combout\ : std_logic;
SIGNAL \ALT_INV_P~55_combout\ : std_logic;
SIGNAL \ALT_INV_P~54_combout\ : std_logic;
SIGNAL \ALT_INV_P~53_combout\ : std_logic;
SIGNAL \ALT_INV_P~52_combout\ : std_logic;
SIGNAL \ALT_INV_P~51_combout\ : std_logic;
SIGNAL \ALT_INV_P~50_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ALT_INV_P~49_combout\ : std_logic;
SIGNAL \ALT_INV_P~46_combout\ : std_logic;
SIGNAL \ALT_INV_P~44_combout\ : std_logic;
SIGNAL \ALT_INV_P~43_combout\ : std_logic;
SIGNAL \ALT_INV_P~41_combout\ : std_logic;
SIGNAL \ALT_INV_P~40_combout\ : std_logic;
SIGNAL \ALT_INV_P~39_combout\ : std_logic;
SIGNAL \ALT_INV_P~38_combout\ : std_logic;
SIGNAL \ALT_INV_P~37_combout\ : std_logic;
SIGNAL \ALT_INV_P~36_combout\ : std_logic;
SIGNAL \ALT_INV_P~35_combout\ : std_logic;
SIGNAL \ALT_INV_P~34_combout\ : std_logic;
SIGNAL \ALT_INV_P~33_combout\ : std_logic;
SIGNAL \ALT_INV_P~32_combout\ : std_logic;
SIGNAL \ALT_INV_P~31_combout\ : std_logic;
SIGNAL \ALT_INV_P~30_combout\ : std_logic;
SIGNAL \ALT_INV_P~29_combout\ : std_logic;
SIGNAL \ALT_INV_P~28_combout\ : std_logic;
SIGNAL \ALT_INV_P~27_combout\ : std_logic;
SIGNAL \ALT_INV_P~26_combout\ : std_logic;
SIGNAL \ALT_INV_P~25_combout\ : std_logic;
SIGNAL \ALT_INV_P~24_combout\ : std_logic;
SIGNAL \ALT_INV_P~23_combout\ : std_logic;
SIGNAL \ALT_INV_P~22_combout\ : std_logic;
SIGNAL \ALT_INV_P~21_combout\ : std_logic;
SIGNAL \ALT_INV_P~20_combout\ : std_logic;
SIGNAL \ALT_INV_P~19_combout\ : std_logic;
SIGNAL \ALT_INV_P~18_combout\ : std_logic;
SIGNAL \ALT_INV_P~17_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ALT_INV_P~16_combout\ : std_logic;
SIGNAL \ALT_INV_P~15_combout\ : std_logic;
SIGNAL \ALT_INV_P~14_combout\ : std_logic;
SIGNAL \ALT_INV_P~13_combout\ : std_logic;
SIGNAL \ALT_INV_P~12_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ALT_INV_P~11_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_inputA <= inputA;
ww_inputB <= inputB;
Saida <= ww_Saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_P~10_combout\ <= NOT \P~10_combout\;
\ALT_INV_P~9_combout\ <= NOT \P~9_combout\;
\ALT_INV_P~8_combout\ <= NOT \P~8_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_P~7_combout\ <= NOT \P~7_combout\;
\ALT_INV_P~6_combout\ <= NOT \P~6_combout\;
\ALT_INV_P~5_combout\ <= NOT \P~5_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
\ALT_INV_P~4_combout\ <= NOT \P~4_combout\;
\ALT_INV_P~3_combout\ <= NOT \P~3_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_P~2_combout\ <= NOT \P~2_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Add14~29_sumout\ <= NOT \Add14~29_sumout\;
\ALT_INV_Add13~29_sumout\ <= NOT \Add13~29_sumout\;
\ALT_INV_Add12~29_sumout\ <= NOT \Add12~29_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add14~25_sumout\ <= NOT \Add14~25_sumout\;
\ALT_INV_Add13~25_sumout\ <= NOT \Add13~25_sumout\;
\ALT_INV_Add10~29_sumout\ <= NOT \Add10~29_sumout\;
\ALT_INV_Add9~29_sumout\ <= NOT \Add9~29_sumout\;
\ALT_INV_Add12~25_sumout\ <= NOT \Add12~25_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add14~21_sumout\ <= NOT \Add14~21_sumout\;
\ALT_INV_Add13~21_sumout\ <= NOT \Add13~21_sumout\;
\ALT_INV_Add8~29_sumout\ <= NOT \Add8~29_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add10~25_sumout\ <= NOT \Add10~25_sumout\;
\ALT_INV_Add9~25_sumout\ <= NOT \Add9~25_sumout\;
\ALT_INV_Add12~21_sumout\ <= NOT \Add12~21_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add14~17_sumout\ <= NOT \Add14~17_sumout\;
\ALT_INV_Add13~17_sumout\ <= NOT \Add13~17_sumout\;
\ALT_INV_Add12~17_sumout\ <= NOT \Add12~17_sumout\;
\ALT_INV_Add10~21_sumout\ <= NOT \Add10~21_sumout\;
\ALT_INV_Add8~25_sumout\ <= NOT \Add8~25_sumout\;
\ALT_INV_Add6~29_sumout\ <= NOT \Add6~29_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add9~21_sumout\ <= NOT \Add9~21_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add14~13_sumout\ <= NOT \Add14~13_sumout\;
\ALT_INV_Add13~13_sumout\ <= NOT \Add13~13_sumout\;
\ALT_INV_Add12~13_sumout\ <= NOT \Add12~13_sumout\;
\ALT_INV_Add10~17_sumout\ <= NOT \Add10~17_sumout\;
\ALT_INV_Add8~21_sumout\ <= NOT \Add8~21_sumout\;
\ALT_INV_Add6~25_sumout\ <= NOT \Add6~25_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add9~17_sumout\ <= NOT \Add9~17_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add14~9_sumout\ <= NOT \Add14~9_sumout\;
\ALT_INV_Add13~9_sumout\ <= NOT \Add13~9_sumout\;
\ALT_INV_Add12~9_sumout\ <= NOT \Add12~9_sumout\;
\ALT_INV_Add10~13_sumout\ <= NOT \Add10~13_sumout\;
\ALT_INV_Add8~17_sumout\ <= NOT \Add8~17_sumout\;
\ALT_INV_Add6~21_sumout\ <= NOT \Add6~21_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add9~13_sumout\ <= NOT \Add9~13_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add14~5_sumout\ <= NOT \Add14~5_sumout\;
\ALT_INV_Add13~5_sumout\ <= NOT \Add13~5_sumout\;
\ALT_INV_Add12~5_sumout\ <= NOT \Add12~5_sumout\;
\ALT_INV_inputA[7]~input_o\ <= NOT \inputA[7]~input_o\;
\ALT_INV_inputA[6]~input_o\ <= NOT \inputA[6]~input_o\;
\ALT_INV_inputA[5]~input_o\ <= NOT \inputA[5]~input_o\;
\ALT_INV_inputA[4]~input_o\ <= NOT \inputA[4]~input_o\;
\ALT_INV_inputA[3]~input_o\ <= NOT \inputA[3]~input_o\;
\ALT_INV_inputA[2]~input_o\ <= NOT \inputA[2]~input_o\;
\ALT_INV_inputA[1]~input_o\ <= NOT \inputA[1]~input_o\;
\ALT_INV_inputA[0]~input_o\ <= NOT \inputA[0]~input_o\;
\ALT_INV_inputB[7]~input_o\ <= NOT \inputB[7]~input_o\;
\ALT_INV_inputB[6]~input_o\ <= NOT \inputB[6]~input_o\;
\ALT_INV_inputB[5]~input_o\ <= NOT \inputB[5]~input_o\;
\ALT_INV_inputB[4]~input_o\ <= NOT \inputB[4]~input_o\;
\ALT_INV_inputB[3]~input_o\ <= NOT \inputB[3]~input_o\;
\ALT_INV_inputB[2]~input_o\ <= NOT \inputB[2]~input_o\;
\ALT_INV_inputB[1]~input_o\ <= NOT \inputB[1]~input_o\;
\ALT_INV_inputB[0]~input_o\ <= NOT \inputB[0]~input_o\;
\ALT_INV_P~59_combout\ <= NOT \P~59_combout\;
\ALT_INV_P~58_combout\ <= NOT \P~58_combout\;
\ALT_INV_P~57_combout\ <= NOT \P~57_combout\;
\ALT_INV_P~56_combout\ <= NOT \P~56_combout\;
\ALT_INV_P~55_combout\ <= NOT \P~55_combout\;
\ALT_INV_P~54_combout\ <= NOT \P~54_combout\;
\ALT_INV_P~53_combout\ <= NOT \P~53_combout\;
\ALT_INV_P~52_combout\ <= NOT \P~52_combout\;
\ALT_INV_P~51_combout\ <= NOT \P~51_combout\;
\ALT_INV_P~50_combout\ <= NOT \P~50_combout\;
\ALT_INV_process_0~9_combout\ <= NOT \process_0~9_combout\;
\ALT_INV_P~49_combout\ <= NOT \P~49_combout\;
\ALT_INV_P~46_combout\ <= NOT \P~46_combout\;
\ALT_INV_P~44_combout\ <= NOT \P~44_combout\;
\ALT_INV_P~43_combout\ <= NOT \P~43_combout\;
\ALT_INV_P~41_combout\ <= NOT \P~41_combout\;
\ALT_INV_P~40_combout\ <= NOT \P~40_combout\;
\ALT_INV_P~39_combout\ <= NOT \P~39_combout\;
\ALT_INV_P~38_combout\ <= NOT \P~38_combout\;
\ALT_INV_P~37_combout\ <= NOT \P~37_combout\;
\ALT_INV_P~36_combout\ <= NOT \P~36_combout\;
\ALT_INV_P~35_combout\ <= NOT \P~35_combout\;
\ALT_INV_P~34_combout\ <= NOT \P~34_combout\;
\ALT_INV_P~33_combout\ <= NOT \P~33_combout\;
\ALT_INV_P~32_combout\ <= NOT \P~32_combout\;
\ALT_INV_P~31_combout\ <= NOT \P~31_combout\;
\ALT_INV_P~30_combout\ <= NOT \P~30_combout\;
\ALT_INV_P~29_combout\ <= NOT \P~29_combout\;
\ALT_INV_P~28_combout\ <= NOT \P~28_combout\;
\ALT_INV_P~27_combout\ <= NOT \P~27_combout\;
\ALT_INV_P~26_combout\ <= NOT \P~26_combout\;
\ALT_INV_P~25_combout\ <= NOT \P~25_combout\;
\ALT_INV_P~24_combout\ <= NOT \P~24_combout\;
\ALT_INV_P~23_combout\ <= NOT \P~23_combout\;
\ALT_INV_P~22_combout\ <= NOT \P~22_combout\;
\ALT_INV_P~21_combout\ <= NOT \P~21_combout\;
\ALT_INV_P~20_combout\ <= NOT \P~20_combout\;
\ALT_INV_P~19_combout\ <= NOT \P~19_combout\;
\ALT_INV_P~18_combout\ <= NOT \P~18_combout\;
\ALT_INV_P~17_combout\ <= NOT \P~17_combout\;
\ALT_INV_process_0~8_combout\ <= NOT \process_0~8_combout\;
\ALT_INV_P~16_combout\ <= NOT \P~16_combout\;
\ALT_INV_P~15_combout\ <= NOT \P~15_combout\;
\ALT_INV_P~14_combout\ <= NOT \P~14_combout\;
\ALT_INV_P~13_combout\ <= NOT \P~13_combout\;
\ALT_INV_P~12_combout\ <= NOT \P~12_combout\;
\ALT_INV_process_0~7_combout\ <= NOT \process_0~7_combout\;
\ALT_INV_P~11_combout\ <= NOT \P~11_combout\;
\ALT_INV_Add10~9_sumout\ <= NOT \Add10~9_sumout\;
\ALT_INV_Add8~13_sumout\ <= NOT \Add8~13_sumout\;
\ALT_INV_Add6~17_sumout\ <= NOT \Add6~17_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add9~9_sumout\ <= NOT \Add9~9_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add14~1_sumout\ <= NOT \Add14~1_sumout\;
\ALT_INV_Add13~1_sumout\ <= NOT \Add13~1_sumout\;
\ALT_INV_Add10~5_sumout\ <= NOT \Add10~5_sumout\;
\ALT_INV_Add8~9_sumout\ <= NOT \Add8~9_sumout\;
\ALT_INV_Add6~13_sumout\ <= NOT \Add6~13_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add9~5_sumout\ <= NOT \Add9~5_sumout\;
\ALT_INV_Add12~1_sumout\ <= NOT \Add12~1_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
\ALT_INV_Add8~5_sumout\ <= NOT \Add8~5_sumout\;
\ALT_INV_Add6~9_sumout\ <= NOT \Add6~9_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add10~1_sumout\ <= NOT \Add10~1_sumout\;
\ALT_INV_Add9~1_sumout\ <= NOT \Add9~1_sumout\;
\ALT_INV_Add6~5_sumout\ <= NOT \Add6~5_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add8~1_sumout\ <= NOT \Add8~1_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add6~1_sumout\ <= NOT \Add6~1_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

\Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \P~0_combout\,
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
	i => \P~1_combout\,
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
	i => \P~92_combout\,
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
	i => \P~88_combout\,
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
	i => \P~84_combout\,
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
	i => \P~80_combout\,
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
	i => \P~76_combout\,
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
	i => \P~72_combout\,
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
	i => \P~68_combout\,
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
	i => \P~64_combout\,
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
	i => \P~60_combout\,
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
	i => \P~42_combout\,
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
	i => \P~45_combout\,
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
	i => \P~47_combout\,
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
	i => \P~48_combout\,
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
	i => \P~48_combout\,
	devoe => ww_devoe,
	o => \Saida[15]~output_o\);

\inputB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(0),
	o => \inputB[0]~input_o\);

\inputA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(0),
	o => \inputA[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\inputA[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\inputA[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\P~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~0_combout\ = (\inputB[0]~input_o\ & \Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_Add0~1_sumout\,
	combout => \P~0_combout\);

\inputB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(1),
	o => \inputB[1]~input_o\);

\inputA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(1),
	o => \inputA[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\inputA[1]~input_o\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\inputA[1]~input_o\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~5_sumout\) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( (\inputB[0]~input_o\ & \Add0~5_sumout\) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~5_sumout\) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add2~2\ = CARRY(( (\inputB[0]~input_o\ & \Add0~5_sumout\) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

\P~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~1_combout\ = ( \Add2~1_sumout\ & ( (!\inputB[0]~input_o\ & (\inputB[1]~input_o\)) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & ((\Add1~1_sumout\))) # (\inputB[1]~input_o\ & (\Add0~5_sumout\)))) ) ) # ( !\Add2~1_sumout\ & ( (\inputB[0]~input_o\ & 
-- ((!\inputB[1]~input_o\ & ((\Add1~1_sumout\))) # (\inputB[1]~input_o\ & (\Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011100000001010001010010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_Add2~1_sumout\,
	combout => \P~1_combout\);

\inputA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(2),
	o => \inputA[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\inputA[2]~input_o\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\inputA[2]~input_o\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~9_sumout\) ) + ( \Add0~5_sumout\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( (\inputB[0]~input_o\ & \Add0~9_sumout\) ) + ( \Add0~5_sumout\ ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

\P~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~2_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~5_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add2~5_sumout\,
	combout => \P~2_combout\);

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~9_sumout\) ) + ( \inputA[1]~input_o\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( (\inputB[0]~input_o\ & \Add0~9_sumout\) ) + ( \inputA[1]~input_o\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~2_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~5_sumout\)) # (\inputB[1]~input_o\ & ((\P~2_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add4~2\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~2_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~5_sumout\)) # (\inputB[1]~input_o\ & ((\P~2_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_P~2_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

\inputB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(2),
	o => \inputB[2]~input_o\);

\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~2_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~5_sumout\)) # (\inputB[1]~input_o\ & ((\P~2_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add3~2\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~2_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~5_sumout\)) # (\inputB[1]~input_o\ & ((\P~2_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_P~2_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

\P~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~92_combout\ = ( !\inputB[2]~input_o\ & ( (!\inputB[1]~input_o\ & ((!\inputB[0]~input_o\ & (\P~2_combout\)) # (\inputB[0]~input_o\ & (((\Add1~5_sumout\)))))) # (\inputB[1]~input_o\ & ((((\Add3~1_sumout\))))) ) ) # ( \inputB[2]~input_o\ & ( 
-- (((!\inputB[1]~input_o\ & ((\Add4~1_sumout\))) # (\inputB[1]~input_o\ & (\P~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_P~2_combout\,
	datac => \ALT_INV_Add4~1_sumout\,
	datad => \ALT_INV_Add1~5_sumout\,
	datae => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	datag => \ALT_INV_Add3~1_sumout\,
	combout => \P~92_combout\);

\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\inputB[0]~input_o\ & !\inputB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	combout => \process_0~0_combout\);

\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\inputB[1]~input_o\ & \inputB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	combout => \process_0~2_combout\);

\inputA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(3),
	o => \inputA[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\inputA[3]~input_o\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\inputA[3]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~13_sumout\) ) + ( \inputA[2]~input_o\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( (\inputB[0]~input_o\ & \Add0~13_sumout\) ) + ( \inputA[2]~input_o\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~13_sumout\) ) + ( \Add0~9_sumout\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( (\inputB[0]~input_o\ & \Add0~13_sumout\) ) + ( \Add0~9_sumout\ ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

\P~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~3_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~9_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Add2~9_sumout\,
	combout => \P~3_combout\);

\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~3_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~9_sumout\)) # (\inputB[1]~input_o\ & ((\P~3_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~3_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~9_sumout\)) # (\inputB[1]~input_o\ & ((\P~3_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_P~3_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

\P~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~4_combout\ = ( \Add4~5_sumout\ & ( ((!\process_0~0_combout\ & ((\P~3_combout\))) # (\process_0~0_combout\ & (\Add1~9_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~5_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~3_combout\))) # (\process_0~0_combout\ & (\Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_P~3_combout\,
	datae => \ALT_INV_Add4~5_sumout\,
	combout => \P~4_combout\);

\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~3_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~9_sumout\)) # (\inputB[1]~input_o\ & ((\P~3_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~3_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~9_sumout\)) # (\inputB[1]~input_o\ & ((\P~3_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_P~3_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~4_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~5_sumout\)) # (\inputB[2]~input_o\ & ((\P~4_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add6~2\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~4_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~5_sumout\)) # (\inputB[2]~input_o\ & ((\P~4_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_P~4_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

\inputB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(3),
	o => \inputB[3]~input_o\);

\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~4_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~5_sumout\)) # (\inputB[2]~input_o\ & ((\P~4_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add5~2\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~4_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~5_sumout\)) # (\inputB[2]~input_o\ & ((\P~4_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_P~4_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

\P~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~88_combout\ = ( !\inputB[3]~input_o\ & ( (!\inputB[2]~input_o\ & ((!\inputB[1]~input_o\ & (\P~4_combout\)) # (\inputB[1]~input_o\ & (((\Add3~5_sumout\)))))) # (\inputB[2]~input_o\ & ((((\Add5~1_sumout\))))) ) ) # ( \inputB[3]~input_o\ & ( 
-- (((!\inputB[2]~input_o\ & ((\Add6~1_sumout\))) # (\inputB[2]~input_o\ & (\P~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_P~4_combout\,
	datac => \ALT_INV_Add6~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	datag => \ALT_INV_Add5~1_sumout\,
	combout => \P~88_combout\);

\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\inputB[1]~input_o\ & !\inputB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	combout => \process_0~1_combout\);

\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!\inputB[2]~input_o\ & \inputB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	combout => \process_0~4_combout\);

\inputA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(4),
	o => \inputA[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\inputA[4]~input_o\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\inputA[4]~input_o\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~17_sumout\) ) + ( \inputA[3]~input_o\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( (\inputB[0]~input_o\ & \Add0~17_sumout\) ) + ( \inputA[3]~input_o\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~17_sumout\) ) + ( \Add0~13_sumout\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( (\inputB[0]~input_o\ & \Add0~17_sumout\) ) + ( \Add0~13_sumout\ ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

\P~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~5_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~13_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add2~13_sumout\,
	combout => \P~5_combout\);

\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~5_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~13_sumout\)) # (\inputB[1]~input_o\ & ((\P~5_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~5_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~13_sumout\)) # (\inputB[1]~input_o\ & ((\P~5_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_P~5_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~5_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~13_sumout\)) # (\inputB[1]~input_o\ & ((\P~5_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~5_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~13_sumout\)) # (\inputB[1]~input_o\ & ((\P~5_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_P~5_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

\P~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~6_combout\ = ( \Add4~9_sumout\ & ( ((!\process_0~0_combout\ & ((\P~5_combout\))) # (\process_0~0_combout\ & (\Add1~13_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~9_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~5_combout\))) # (\process_0~0_combout\ & (\Add1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~13_sumout\,
	datad => \ALT_INV_P~5_combout\,
	datae => \ALT_INV_Add4~9_sumout\,
	combout => \P~6_combout\);

\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~6_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~9_sumout\)) # (\inputB[2]~input_o\ & ((\P~6_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~6_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~9_sumout\)) # (\inputB[2]~input_o\ & ((\P~6_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_P~6_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

\P~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~7_combout\ = ( \Add6~5_sumout\ & ( ((!\process_0~1_combout\ & ((\P~6_combout\))) # (\process_0~1_combout\ & (\Add3~9_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~5_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~6_combout\))) # (\process_0~1_combout\ & (\Add3~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_P~6_combout\,
	datae => \ALT_INV_Add6~5_sumout\,
	combout => \P~7_combout\);

\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~6_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~9_sumout\)) # (\inputB[2]~input_o\ & ((\P~6_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~6_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~9_sumout\)) # (\inputB[2]~input_o\ & ((\P~6_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_P~6_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~7_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~5_sumout\)) # (\inputB[3]~input_o\ & ((\P~7_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add8~2\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~7_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~5_sumout\)) # (\inputB[3]~input_o\ & ((\P~7_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_P~7_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

\inputB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(4),
	o => \inputB[4]~input_o\);

\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~7_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~5_sumout\)) # (\inputB[3]~input_o\ & ((\P~7_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add7~2\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~7_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~5_sumout\)) # (\inputB[3]~input_o\ & ((\P~7_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_P~7_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

\P~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~84_combout\ = ( !\inputB[4]~input_o\ & ( (!\inputB[3]~input_o\ & ((!\inputB[2]~input_o\ & (\P~7_combout\)) # (\inputB[2]~input_o\ & (((\Add5~5_sumout\)))))) # (\inputB[3]~input_o\ & ((((\Add7~1_sumout\))))) ) ) # ( \inputB[4]~input_o\ & ( 
-- (((!\inputB[3]~input_o\ & ((\Add8~1_sumout\))) # (\inputB[3]~input_o\ & (\P~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_P~7_combout\,
	datac => \ALT_INV_Add8~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	datag => \ALT_INV_Add7~1_sumout\,
	combout => \P~84_combout\);

\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\inputB[2]~input_o\ & !\inputB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	combout => \process_0~3_combout\);

\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!\inputB[3]~input_o\ & \inputB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	combout => \process_0~6_combout\);

\inputA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(5),
	o => \inputA[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\inputA[5]~input_o\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\inputA[5]~input_o\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~21_sumout\) ) + ( \inputA[4]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( (\inputB[0]~input_o\ & \Add0~21_sumout\) ) + ( \inputA[4]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~21_sumout\) ) + ( \Add0~17_sumout\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( (\inputB[0]~input_o\ & \Add0~21_sumout\) ) + ( \Add0~17_sumout\ ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

\P~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~8_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~17_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Add2~17_sumout\,
	combout => \P~8_combout\);

\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~8_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~17_sumout\)) # (\inputB[1]~input_o\ & ((\P~8_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~8_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~17_sumout\)) # (\inputB[1]~input_o\ & ((\P~8_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_P~8_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~8_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~17_sumout\)) # (\inputB[1]~input_o\ & ((\P~8_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~8_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~17_sumout\)) # (\inputB[1]~input_o\ & ((\P~8_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_P~8_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

\P~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~9_combout\ = ( \Add4~13_sumout\ & ( ((!\process_0~0_combout\ & ((\P~8_combout\))) # (\process_0~0_combout\ & (\Add1~17_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~13_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~8_combout\))) # (\process_0~0_combout\ & (\Add1~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_P~8_combout\,
	datae => \ALT_INV_Add4~13_sumout\,
	combout => \P~9_combout\);

\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~9_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~13_sumout\)) # (\inputB[2]~input_o\ & ((\P~9_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~9_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~13_sumout\)) # (\inputB[2]~input_o\ & ((\P~9_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_P~9_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~9_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~13_sumout\)) # (\inputB[2]~input_o\ & ((\P~9_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~9_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~13_sumout\)) # (\inputB[2]~input_o\ & ((\P~9_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_P~9_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

\P~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~10_combout\ = ( \Add6~9_sumout\ & ( ((!\process_0~1_combout\ & ((\P~9_combout\))) # (\process_0~1_combout\ & (\Add3~13_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~9_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~9_combout\))) # (\process_0~1_combout\ & (\Add3~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_P~9_combout\,
	datae => \ALT_INV_Add6~9_sumout\,
	combout => \P~10_combout\);

\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~10_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~9_sumout\)) # (\inputB[3]~input_o\ & ((\P~10_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~10_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~9_sumout\)) # (\inputB[3]~input_o\ & ((\P~10_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_P~10_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

\P~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~11_combout\ = ( \Add8~5_sumout\ & ( ((!\process_0~3_combout\ & ((\P~10_combout\))) # (\process_0~3_combout\ & (\Add5~9_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~5_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~10_combout\))) # (\process_0~3_combout\ & (\Add5~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_P~10_combout\,
	datae => \ALT_INV_Add8~5_sumout\,
	combout => \P~11_combout\);

\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~10_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~9_sumout\)) # (\inputB[3]~input_o\ & ((\P~10_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~10_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~9_sumout\)) # (\inputB[3]~input_o\ & ((\P~10_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_P~10_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~11_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~5_sumout\)) # (\inputB[4]~input_o\ & ((\P~11_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add10~2\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~11_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~5_sumout\)) # (\inputB[4]~input_o\ & ((\P~11_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~5_sumout\,
	datad => \ALT_INV_P~11_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

\inputB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(5),
	o => \inputB[5]~input_o\);

\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~11_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~5_sumout\)) # (\inputB[4]~input_o\ & ((\P~11_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add9~2\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~11_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~5_sumout\)) # (\inputB[4]~input_o\ & ((\P~11_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~5_sumout\,
	datad => \ALT_INV_P~11_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

\P~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~80_combout\ = ( !\inputB[5]~input_o\ & ( (!\inputB[4]~input_o\ & ((!\inputB[3]~input_o\ & (\P~11_combout\)) # (\inputB[3]~input_o\ & (((\Add7~5_sumout\)))))) # (\inputB[4]~input_o\ & ((((\Add9~1_sumout\))))) ) ) # ( \inputB[5]~input_o\ & ( 
-- (((!\inputB[4]~input_o\ & ((\Add10~1_sumout\))) # (\inputB[4]~input_o\ & (\P~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001001110111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_P~11_combout\,
	datac => \ALT_INV_Add10~1_sumout\,
	datad => \ALT_INV_Add7~5_sumout\,
	datae => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	datag => \ALT_INV_Add9~1_sumout\,
	combout => \P~80_combout\);

\inputA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(6),
	o => \inputA[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\inputA[6]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\inputA[6]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~25_sumout\) ) + ( \inputA[5]~input_o\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( (\inputB[0]~input_o\ & \Add0~25_sumout\) ) + ( \inputA[5]~input_o\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~25_sumout\) ) + ( \Add0~21_sumout\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( (\inputB[0]~input_o\ & \Add0~25_sumout\) ) + ( \Add0~21_sumout\ ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

\P~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~12_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~21_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Add2~21_sumout\,
	combout => \P~12_combout\);

\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~12_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~21_sumout\)) # (\inputB[1]~input_o\ & ((\P~12_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~12_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~21_sumout\)) # (\inputB[1]~input_o\ & ((\P~12_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_P~12_combout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~12_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~21_sumout\)) # (\inputB[1]~input_o\ & ((\P~12_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~12_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~21_sumout\)) # (\inputB[1]~input_o\ & ((\P~12_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_P~12_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

\P~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~13_combout\ = ( \Add4~17_sumout\ & ( ((!\process_0~0_combout\ & ((\P~12_combout\))) # (\process_0~0_combout\ & (\Add1~21_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~17_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~12_combout\))) # (\process_0~0_combout\ & (\Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_P~12_combout\,
	datae => \ALT_INV_Add4~17_sumout\,
	combout => \P~13_combout\);

\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~13_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~17_sumout\)) # (\inputB[2]~input_o\ & ((\P~13_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~13_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~17_sumout\)) # (\inputB[2]~input_o\ & ((\P~13_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_P~13_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~13_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~17_sumout\)) # (\inputB[2]~input_o\ & ((\P~13_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~13_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~17_sumout\)) # (\inputB[2]~input_o\ & ((\P~13_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_P~13_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

\P~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~14_combout\ = ( \Add6~13_sumout\ & ( ((!\process_0~1_combout\ & ((\P~13_combout\))) # (\process_0~1_combout\ & (\Add3~17_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~13_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~13_combout\))) # (\process_0~1_combout\ & (\Add3~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~17_sumout\,
	datad => \ALT_INV_P~13_combout\,
	datae => \ALT_INV_Add6~13_sumout\,
	combout => \P~14_combout\);

\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~14_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~13_sumout\)) # (\inputB[3]~input_o\ & ((\P~14_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~14_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~13_sumout\)) # (\inputB[3]~input_o\ & ((\P~14_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_P~14_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~14_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~13_sumout\)) # (\inputB[3]~input_o\ & ((\P~14_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~14_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~13_sumout\)) # (\inputB[3]~input_o\ & ((\P~14_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_P~14_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

\P~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~15_combout\ = ( \Add8~9_sumout\ & ( ((!\process_0~3_combout\ & ((\P~14_combout\))) # (\process_0~3_combout\ & (\Add5~13_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~9_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~14_combout\))) # (\process_0~3_combout\ & (\Add5~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_P~14_combout\,
	datae => \ALT_INV_Add8~9_sumout\,
	combout => \P~15_combout\);

\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~15_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~9_sumout\)) # (\inputB[4]~input_o\ & ((\P~15_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~15_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~9_sumout\)) # (\inputB[4]~input_o\ & ((\P~15_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_P~15_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\);

\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\inputB[3]~input_o\ & !\inputB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	combout => \process_0~5_combout\);

\process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!\inputB[4]~input_o\ & \inputB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	combout => \process_0~8_combout\);

\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~15_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~9_sumout\)) # (\inputB[4]~input_o\ & ((\P~15_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~15_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~9_sumout\)) # (\inputB[4]~input_o\ & ((\P~15_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_P~15_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

\P~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~49_combout\ = ( \Add10~5_sumout\ & ( ((!\process_0~5_combout\ & ((\P~15_combout\))) # (\process_0~5_combout\ & (\Add7~9_sumout\))) # (\process_0~8_combout\) ) ) # ( !\Add10~5_sumout\ & ( (!\process_0~8_combout\ & ((!\process_0~5_combout\ & 
-- ((\P~15_combout\))) # (\process_0~5_combout\ & (\Add7~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_Add7~9_sumout\,
	datad => \ALT_INV_P~15_combout\,
	datae => \ALT_INV_Add10~5_sumout\,
	combout => \P~49_combout\);

\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~49_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~5_sumout\)) # (\inputB[5]~input_o\ & ((\P~49_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add12~2\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~49_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~5_sumout\)) # (\inputB[5]~input_o\ & ((\P~49_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_P~49_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add12~1_sumout\,
	cout => \Add12~2\);

\P~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~16_combout\ = ( \P~15_combout\ & ( \Add10~5_sumout\ & ( ((!\inputB[4]~input_o\ & ((!\inputB[3]~input_o\) # (\Add7~9_sumout\)))) # (\inputB[5]~input_o\) ) ) ) # ( !\P~15_combout\ & ( \Add10~5_sumout\ & ( (!\inputB[4]~input_o\ & (((\inputB[3]~input_o\ & 
-- \Add7~9_sumout\)) # (\inputB[5]~input_o\))) ) ) ) # ( \P~15_combout\ & ( !\Add10~5_sumout\ & ( (!\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & ((!\inputB[3]~input_o\) # (\Add7~9_sumout\)))) # (\inputB[4]~input_o\ & (((\inputB[5]~input_o\)))) ) ) ) # ( 
-- !\P~15_combout\ & ( !\Add10~5_sumout\ & ( (\inputB[3]~input_o\ & (!\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & \Add7~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[5]~input_o\,
	datad => \ALT_INV_Add7~9_sumout\,
	datae => \ALT_INV_P~15_combout\,
	dataf => \ALT_INV_Add10~5_sumout\,
	combout => \P~16_combout\);

\inputB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(6),
	o => \inputB[6]~input_o\);

\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~49_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~5_sumout\)) # (\inputB[5]~input_o\ & ((\P~49_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add11~2\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~49_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~5_sumout\)) # (\inputB[5]~input_o\ & ((\P~49_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~5_sumout\,
	datad => \ALT_INV_P~49_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

\P~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~76_combout\ = ( !\inputB[6]~input_o\ & ( (!\inputB[5]~input_o\ & ((((\inputB[4]~input_o\ & \Add9~5_sumout\)) # (\P~16_combout\)))) # (\inputB[5]~input_o\ & ((((\Add11~1_sumout\))))) ) ) # ( \inputB[6]~input_o\ & ( (((!\inputB[5]~input_o\ & 
-- (\Add12~1_sumout\)) # (\inputB[5]~input_o\ & ((\P~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_Add9~5_sumout\,
	datac => \ALT_INV_Add12~1_sumout\,
	datad => \ALT_INV_P~16_combout\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	datag => \ALT_INV_Add11~1_sumout\,
	combout => \P~76_combout\);

\inputA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(7),
	o => \inputA[7]~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\inputA[7]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~29_sumout\) ) + ( \inputA[6]~input_o\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( (\inputB[0]~input_o\ & \Add0~29_sumout\) ) + ( \inputA[6]~input_o\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( (\Add0~29_sumout\ & \inputB[0]~input_o\) ) + ( \Add0~25_sumout\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( (\Add0~29_sumout\ & \inputB[0]~input_o\) ) + ( \Add0~25_sumout\ ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

\P~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~17_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~25_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add2~25_sumout\,
	combout => \P~17_combout\);

\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~17_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~25_sumout\)) # (\inputB[1]~input_o\ & ((\P~17_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~17_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~25_sumout\)) # (\inputB[1]~input_o\ & ((\P~17_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_P~17_combout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~17_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~25_sumout\)) # (\inputB[1]~input_o\ & ((\P~17_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~17_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~25_sumout\)) # (\inputB[1]~input_o\ & ((\P~17_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_P~17_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

\P~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~18_combout\ = ( \Add4~21_sumout\ & ( ((!\process_0~0_combout\ & ((\P~17_combout\))) # (\process_0~0_combout\ & (\Add1~25_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~21_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~17_combout\))) # (\process_0~0_combout\ & (\Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_P~17_combout\,
	datae => \ALT_INV_Add4~21_sumout\,
	combout => \P~18_combout\);

\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~18_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~21_sumout\)) # (\inputB[2]~input_o\ & ((\P~18_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~18_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~21_sumout\)) # (\inputB[2]~input_o\ & ((\P~18_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_P~18_combout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~18_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~21_sumout\)) # (\inputB[2]~input_o\ & ((\P~18_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add6~14\ ))
-- \Add6~18\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~18_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~21_sumout\)) # (\inputB[2]~input_o\ & ((\P~18_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_P~18_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add6~14\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

\P~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~19_combout\ = ( \Add6~17_sumout\ & ( ((!\process_0~1_combout\ & ((\P~18_combout\))) # (\process_0~1_combout\ & (\Add3~21_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~17_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~18_combout\))) # (\process_0~1_combout\ & (\Add3~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_P~18_combout\,
	datae => \ALT_INV_Add6~17_sumout\,
	combout => \P~19_combout\);

\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~19_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~17_sumout\)) # (\inputB[3]~input_o\ & ((\P~19_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~19_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~17_sumout\)) # (\inputB[3]~input_o\ & ((\P~19_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_P~19_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~19_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~17_sumout\)) # (\inputB[3]~input_o\ & ((\P~19_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~19_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~17_sumout\)) # (\inputB[3]~input_o\ & ((\P~19_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_P~19_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\);

\P~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~20_combout\ = ( \Add8~13_sumout\ & ( ((!\process_0~3_combout\ & ((\P~19_combout\))) # (\process_0~3_combout\ & (\Add5~17_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~13_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~19_combout\))) # (\process_0~3_combout\ & (\Add5~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_P~19_combout\,
	datae => \ALT_INV_Add8~13_sumout\,
	combout => \P~20_combout\);

\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~20_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~13_sumout\)) # (\inputB[4]~input_o\ & ((\P~20_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~20_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~13_sumout\)) # (\inputB[4]~input_o\ & ((\P~20_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_P~20_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add9~6\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\);

\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~20_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~13_sumout\)) # (\inputB[4]~input_o\ & ((\P~20_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~20_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~13_sumout\)) # (\inputB[4]~input_o\ & ((\P~20_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_P~20_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

\P~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~21_combout\ = ( \Add10~9_sumout\ & ( ((!\process_0~5_combout\ & ((\P~20_combout\))) # (\process_0~5_combout\ & (\Add7~13_sumout\))) # (\process_0~8_combout\) ) ) # ( !\Add10~9_sumout\ & ( (!\process_0~8_combout\ & ((!\process_0~5_combout\ & 
-- ((\P~20_combout\))) # (\process_0~5_combout\ & (\Add7~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_Add7~13_sumout\,
	datad => \ALT_INV_P~20_combout\,
	datae => \ALT_INV_Add10~9_sumout\,
	combout => \P~21_combout\);

\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~21_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~9_sumout\)) # (\inputB[5]~input_o\ & ((\P~21_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~21_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~9_sumout\)) # (\inputB[5]~input_o\ & ((\P~21_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~9_sumout\,
	datad => \ALT_INV_P~21_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\inputB[4]~input_o\ & !\inputB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	combout => \process_0~7_combout\);

\process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (!\inputB[5]~input_o\ & \inputB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	combout => \process_0~9_combout\);

\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~21_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~9_sumout\)) # (\inputB[5]~input_o\ & ((\P~21_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add12~2\ ))
-- \Add12~6\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~21_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~9_sumout\)) # (\inputB[5]~input_o\ & ((\P~21_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~9_sumout\,
	datad => \ALT_INV_P~21_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add12~2\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\);

\P~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~50_combout\ = ( \Add12~5_sumout\ & ( ((!\process_0~7_combout\ & ((\P~21_combout\))) # (\process_0~7_combout\ & (\Add9~9_sumout\))) # (\process_0~9_combout\) ) ) # ( !\Add12~5_sumout\ & ( (!\process_0~9_combout\ & ((!\process_0~7_combout\ & 
-- ((\P~21_combout\))) # (\process_0~7_combout\ & (\Add9~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~7_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Add9~9_sumout\,
	datad => \ALT_INV_P~21_combout\,
	datae => \ALT_INV_Add12~5_sumout\,
	combout => \P~50_combout\);

\Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~1_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~50_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~5_sumout\)) # (\inputB[6]~input_o\ & ((\P~50_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))
-- \Add14~2\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~50_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~5_sumout\)) # (\inputB[6]~input_o\ & ((\P~50_combout\))))) ) + ( \Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~5_sumout\,
	datad => \ALT_INV_P~50_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add14~1_sumout\,
	cout => \Add14~2\);

\P~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~22_combout\ = ( \P~21_combout\ & ( \Add12~5_sumout\ & ( ((!\inputB[5]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~9_sumout\)))) # (\inputB[6]~input_o\) ) ) ) # ( !\P~21_combout\ & ( \Add12~5_sumout\ & ( (!\inputB[5]~input_o\ & (((\inputB[4]~input_o\ & 
-- \Add9~9_sumout\)) # (\inputB[6]~input_o\))) ) ) ) # ( \P~21_combout\ & ( !\Add12~5_sumout\ & ( (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~9_sumout\)))) # (\inputB[5]~input_o\ & (((\inputB[6]~input_o\)))) ) ) ) # ( 
-- !\P~21_combout\ & ( !\Add12~5_sumout\ & ( (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & \Add9~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_Add9~9_sumout\,
	datae => \ALT_INV_P~21_combout\,
	dataf => \ALT_INV_Add12~5_sumout\,
	combout => \P~22_combout\);

\inputB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(7),
	o => \inputB[7]~input_o\);

\Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~1_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~50_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~5_sumout\)) # (\inputB[6]~input_o\ & ((\P~50_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))
-- \Add13~2\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~50_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~5_sumout\)) # (\inputB[6]~input_o\ & ((\P~50_combout\))))) ) + ( \inputA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~5_sumout\,
	datad => \ALT_INV_P~50_combout\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	cin => GND,
	sumout => \Add13~1_sumout\,
	cout => \Add13~2\);

\P~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~72_combout\ = ( !\inputB[7]~input_o\ & ( (!\inputB[6]~input_o\ & ((((\Add11~5_sumout\ & \inputB[5]~input_o\)) # (\P~22_combout\)))) # (\inputB[6]~input_o\ & ((((\Add13~1_sumout\))))) ) ) # ( \inputB[7]~input_o\ & ( (((!\inputB[6]~input_o\ & 
-- (\Add14~1_sumout\)) # (\inputB[6]~input_o\ & ((\P~22_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~5_sumout\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add14~1_sumout\,
	datad => \ALT_INV_P~22_combout\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	datag => \ALT_INV_Add13~1_sumout\,
	combout => \P~72_combout\);

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( (\inputB[0]~input_o\ & \Add0~29_sumout\) ) + ( \inputA[7]~input_o\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\);

\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( (\Add0~29_sumout\ & \inputB[0]~input_o\) ) + ( \Add0~29_sumout\ ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_inputB[0]~input_o\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\);

\P~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~23_combout\ = (!\inputB[0]~input_o\ & (\inputB[1]~input_o\ & ((\Add2~29_sumout\)))) # (\inputB[0]~input_o\ & (((\Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add2~29_sumout\,
	combout => \P~23_combout\);

\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~23_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~29_sumout\)) # (\inputB[1]~input_o\ & ((\P~23_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~23_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~29_sumout\)) # (\inputB[1]~input_o\ & ((\P~23_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_P~23_combout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~23_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~29_sumout\)) # (\inputB[1]~input_o\ & ((\P~23_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( (!\inputB[0]~input_o\ & (((\P~23_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~29_sumout\)) # (\inputB[1]~input_o\ & ((\P~23_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_P~23_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

\P~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~24_combout\ = ( \Add4~25_sumout\ & ( ((!\process_0~0_combout\ & ((\P~23_combout\))) # (\process_0~0_combout\ & (\Add1~29_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~25_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~23_combout\))) # (\process_0~0_combout\ & (\Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_P~23_combout\,
	datae => \ALT_INV_Add4~25_sumout\,
	combout => \P~24_combout\);

\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~24_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~25_sumout\)) # (\inputB[2]~input_o\ & ((\P~24_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~24_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~25_sumout\)) # (\inputB[2]~input_o\ & ((\P~24_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_P~24_combout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~24_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~25_sumout\)) # (\inputB[2]~input_o\ & ((\P~24_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add6~18\ ))
-- \Add6~22\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~24_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~25_sumout\)) # (\inputB[2]~input_o\ & ((\P~24_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_P~24_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add6~18\,
	sumout => \Add6~21_sumout\,
	cout => \Add6~22\);

\P~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~25_combout\ = ( \Add6~21_sumout\ & ( ((!\process_0~1_combout\ & ((\P~24_combout\))) # (\process_0~1_combout\ & (\Add3~25_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~21_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~24_combout\))) # (\process_0~1_combout\ & (\Add3~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~25_sumout\,
	datad => \ALT_INV_P~24_combout\,
	datae => \ALT_INV_Add6~21_sumout\,
	combout => \P~25_combout\);

\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~25_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~21_sumout\)) # (\inputB[3]~input_o\ & ((\P~25_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add7~14\ ))
-- \Add7~18\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~25_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~21_sumout\)) # (\inputB[3]~input_o\ & ((\P~25_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_P~25_combout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\,
	cout => \Add7~18\);

\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~25_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~21_sumout\)) # (\inputB[3]~input_o\ & ((\P~25_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~25_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~21_sumout\)) # (\inputB[3]~input_o\ & ((\P~25_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_P~25_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add8~14\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

\P~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~26_combout\ = ( \Add8~17_sumout\ & ( ((!\process_0~3_combout\ & ((\P~25_combout\))) # (\process_0~3_combout\ & (\Add5~21_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~17_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~25_combout\))) # (\process_0~3_combout\ & (\Add5~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_P~25_combout\,
	datae => \ALT_INV_Add8~17_sumout\,
	combout => \P~26_combout\);

\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~26_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~17_sumout\)) # (\inputB[4]~input_o\ & ((\P~26_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~26_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~17_sumout\)) # (\inputB[4]~input_o\ & ((\P~26_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_P~26_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add9~10\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\);

\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~26_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~17_sumout\)) # (\inputB[4]~input_o\ & ((\P~26_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~26_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~17_sumout\)) # (\inputB[4]~input_o\ & ((\P~26_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_P~26_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

\P~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~27_combout\ = ( \Add10~13_sumout\ & ( ((!\process_0~5_combout\ & ((\P~26_combout\))) # (\process_0~5_combout\ & (\Add7~17_sumout\))) # (\process_0~8_combout\) ) ) # ( !\Add10~13_sumout\ & ( (!\process_0~8_combout\ & ((!\process_0~5_combout\ & 
-- ((\P~26_combout\))) # (\process_0~5_combout\ & (\Add7~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_Add7~17_sumout\,
	datad => \ALT_INV_P~26_combout\,
	datae => \ALT_INV_Add10~13_sumout\,
	combout => \P~27_combout\);

\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~27_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~13_sumout\)) # (\inputB[5]~input_o\ & ((\P~27_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~27_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~13_sumout\)) # (\inputB[5]~input_o\ & ((\P~27_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_P~27_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~27_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~13_sumout\)) # (\inputB[5]~input_o\ & ((\P~27_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~27_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~13_sumout\)) # (\inputB[5]~input_o\ & ((\P~27_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_P~27_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add12~6\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\);

\P~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~51_combout\ = ( \Add12~9_sumout\ & ( ((!\process_0~7_combout\ & ((\P~27_combout\))) # (\process_0~7_combout\ & (\Add9~13_sumout\))) # (\process_0~9_combout\) ) ) # ( !\Add12~9_sumout\ & ( (!\process_0~9_combout\ & ((!\process_0~7_combout\ & 
-- ((\P~27_combout\))) # (\process_0~7_combout\ & (\Add9~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~7_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_P~27_combout\,
	datae => \ALT_INV_Add12~9_sumout\,
	combout => \P~51_combout\);

\Add14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~5_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~51_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~9_sumout\)) # (\inputB[6]~input_o\ & ((\P~51_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add14~2\ ))
-- \Add14~6\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~51_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~9_sumout\)) # (\inputB[6]~input_o\ & ((\P~51_combout\))))) ) + ( \Add0~5_sumout\ ) + ( \Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~9_sumout\,
	datad => \ALT_INV_P~51_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	cin => \Add14~2\,
	sumout => \Add14~5_sumout\,
	cout => \Add14~6\);

\P~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~28_combout\ = ( \P~27_combout\ & ( \Add12~9_sumout\ & ( ((!\inputB[5]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~13_sumout\)))) # (\inputB[6]~input_o\) ) ) ) # ( !\P~27_combout\ & ( \Add12~9_sumout\ & ( (!\inputB[5]~input_o\ & (((\inputB[4]~input_o\ & 
-- \Add9~13_sumout\)) # (\inputB[6]~input_o\))) ) ) ) # ( \P~27_combout\ & ( !\Add12~9_sumout\ & ( (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~13_sumout\)))) # (\inputB[5]~input_o\ & (((\inputB[6]~input_o\)))) ) ) ) # ( 
-- !\P~27_combout\ & ( !\Add12~9_sumout\ & ( (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & \Add9~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_Add9~13_sumout\,
	datae => \ALT_INV_P~27_combout\,
	dataf => \ALT_INV_Add12~9_sumout\,
	combout => \P~28_combout\);

\Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~5_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~51_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~9_sumout\)) # (\inputB[6]~input_o\ & ((\P~51_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add13~2\ ))
-- \Add13~6\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~51_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~9_sumout\)) # (\inputB[6]~input_o\ & ((\P~51_combout\))))) ) + ( \inputA[1]~input_o\ ) + ( \Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~9_sumout\,
	datad => \ALT_INV_P~51_combout\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	cin => \Add13~2\,
	sumout => \Add13~5_sumout\,
	cout => \Add13~6\);

\P~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~68_combout\ = ( !\inputB[7]~input_o\ & ( (!\inputB[6]~input_o\ & ((((\Add11~9_sumout\ & \inputB[5]~input_o\)) # (\P~28_combout\)))) # (\inputB[6]~input_o\ & ((((\Add13~5_sumout\))))) ) ) # ( \inputB[7]~input_o\ & ( (((!\inputB[6]~input_o\ & 
-- (\Add14~5_sumout\)) # (\inputB[6]~input_o\ & ((\P~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~9_sumout\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add14~5_sumout\,
	datad => \ALT_INV_P~28_combout\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	datag => \ALT_INV_Add13~5_sumout\,
	combout => \P~68_combout\);

\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~23_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~29_sumout\)) # (\inputB[1]~input_o\ & ((\P~23_combout\))))) ) + ( \inputA[7]~input_o\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_P~23_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\);

\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( (!\inputB[0]~input_o\ & (((\P~23_combout\)))) # (\inputB[0]~input_o\ & ((!\inputB[1]~input_o\ & (\Add1~29_sumout\)) # (\inputB[1]~input_o\ & ((\P~23_combout\))))) ) + ( \Add0~29_sumout\ ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[0]~input_o\,
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_P~23_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\);

\P~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~29_combout\ = ( \Add4~29_sumout\ & ( ((!\process_0~0_combout\ & ((\P~23_combout\))) # (\process_0~0_combout\ & (\Add1~29_sumout\))) # (\process_0~2_combout\) ) ) # ( !\Add4~29_sumout\ & ( (!\process_0~2_combout\ & ((!\process_0~0_combout\ & 
-- ((\P~23_combout\))) # (\process_0~0_combout\ & (\Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_P~23_combout\,
	datae => \ALT_INV_Add4~29_sumout\,
	combout => \P~29_combout\);

\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~29_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~29_sumout\)) # (\inputB[2]~input_o\ & ((\P~29_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~29_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~29_sumout\)) # (\inputB[2]~input_o\ & ((\P~29_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_P~29_combout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~29_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~29_sumout\)) # (\inputB[2]~input_o\ & ((\P~29_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add6~22\ ))
-- \Add6~26\ = CARRY(( (!\inputB[1]~input_o\ & (((\P~29_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~29_sumout\)) # (\inputB[2]~input_o\ & ((\P~29_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_P~29_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add6~22\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

\P~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~30_combout\ = ( \Add6~25_sumout\ & ( ((!\process_0~1_combout\ & ((\P~29_combout\))) # (\process_0~1_combout\ & (\Add3~29_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~25_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~29_combout\))) # (\process_0~1_combout\ & (\Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_P~29_combout\,
	datae => \ALT_INV_Add6~25_sumout\,
	combout => \P~30_combout\);

\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~30_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~25_sumout\)) # (\inputB[3]~input_o\ & ((\P~30_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add7~18\ ))
-- \Add7~22\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~30_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~25_sumout\)) # (\inputB[3]~input_o\ & ((\P~30_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_P~30_combout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add7~18\,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~30_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~25_sumout\)) # (\inputB[3]~input_o\ & ((\P~30_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~30_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~25_sumout\)) # (\inputB[3]~input_o\ & ((\P~30_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_P~30_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

\P~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~31_combout\ = ( \Add8~21_sumout\ & ( ((!\process_0~3_combout\ & ((\P~30_combout\))) # (\process_0~3_combout\ & (\Add5~25_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~21_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~30_combout\))) # (\process_0~3_combout\ & (\Add5~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~25_sumout\,
	datad => \ALT_INV_P~30_combout\,
	datae => \ALT_INV_Add8~21_sumout\,
	combout => \P~31_combout\);

\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~31_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~21_sumout\)) # (\inputB[4]~input_o\ & ((\P~31_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~31_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~21_sumout\)) # (\inputB[4]~input_o\ & ((\P~31_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_P~31_combout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add9~14\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\);

\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~31_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~21_sumout\)) # (\inputB[4]~input_o\ & ((\P~31_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~31_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~21_sumout\)) # (\inputB[4]~input_o\ & ((\P~31_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_P~31_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

\P~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~32_combout\ = ( \Add10~17_sumout\ & ( ((!\process_0~5_combout\ & ((\P~31_combout\))) # (\process_0~5_combout\ & (\Add7~21_sumout\))) # (\process_0~8_combout\) ) ) # ( !\Add10~17_sumout\ & ( (!\process_0~8_combout\ & ((!\process_0~5_combout\ & 
-- ((\P~31_combout\))) # (\process_0~5_combout\ & (\Add7~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_Add7~21_sumout\,
	datad => \ALT_INV_P~31_combout\,
	datae => \ALT_INV_Add10~17_sumout\,
	combout => \P~32_combout\);

\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~32_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~17_sumout\)) # (\inputB[5]~input_o\ & ((\P~32_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~32_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~17_sumout\)) # (\inputB[5]~input_o\ & ((\P~32_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_P~32_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~32_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~17_sumout\)) # (\inputB[5]~input_o\ & ((\P~32_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~32_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~17_sumout\)) # (\inputB[5]~input_o\ & ((\P~32_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_P~32_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add12~10\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\);

\P~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~52_combout\ = ( \Add12~13_sumout\ & ( ((!\process_0~7_combout\ & ((\P~32_combout\))) # (\process_0~7_combout\ & (\Add9~17_sumout\))) # (\process_0~9_combout\) ) ) # ( !\Add12~13_sumout\ & ( (!\process_0~9_combout\ & ((!\process_0~7_combout\ & 
-- ((\P~32_combout\))) # (\process_0~7_combout\ & (\Add9~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~7_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_P~32_combout\,
	datae => \ALT_INV_Add12~13_sumout\,
	combout => \P~52_combout\);

\Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~9_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~52_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~13_sumout\)) # (\inputB[6]~input_o\ & ((\P~52_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add14~6\ ))
-- \Add14~10\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~52_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~13_sumout\)) # (\inputB[6]~input_o\ & ((\P~52_combout\))))) ) + ( \Add0~9_sumout\ ) + ( \Add14~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_P~52_combout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	cin => \Add14~6\,
	sumout => \Add14~9_sumout\,
	cout => \Add14~10\);

\P~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~33_combout\ = ( \P~32_combout\ & ( \Add12~13_sumout\ & ( ((!\inputB[5]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~17_sumout\)))) # (\inputB[6]~input_o\) ) ) ) # ( !\P~32_combout\ & ( \Add12~13_sumout\ & ( (!\inputB[5]~input_o\ & (((\inputB[4]~input_o\ 
-- & \Add9~17_sumout\)) # (\inputB[6]~input_o\))) ) ) ) # ( \P~32_combout\ & ( !\Add12~13_sumout\ & ( (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~17_sumout\)))) # (\inputB[5]~input_o\ & (((\inputB[6]~input_o\)))) ) ) ) # 
-- ( !\P~32_combout\ & ( !\Add12~13_sumout\ & ( (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & \Add9~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_Add9~17_sumout\,
	datae => \ALT_INV_P~32_combout\,
	dataf => \ALT_INV_Add12~13_sumout\,
	combout => \P~33_combout\);

\Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~9_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~52_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~13_sumout\)) # (\inputB[6]~input_o\ & ((\P~52_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add13~6\ ))
-- \Add13~10\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~52_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~13_sumout\)) # (\inputB[6]~input_o\ & ((\P~52_combout\))))) ) + ( \inputA[2]~input_o\ ) + ( \Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_P~52_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add13~6\,
	sumout => \Add13~9_sumout\,
	cout => \Add13~10\);

\P~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~64_combout\ = ( !\inputB[7]~input_o\ & ( (!\inputB[6]~input_o\ & ((((\Add11~13_sumout\ & \inputB[5]~input_o\)) # (\P~33_combout\)))) # (\inputB[6]~input_o\ & ((((\Add13~9_sumout\))))) ) ) # ( \inputB[7]~input_o\ & ( (((!\inputB[6]~input_o\ & 
-- (\Add14~9_sumout\)) # (\inputB[6]~input_o\ & ((\P~33_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~13_sumout\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add14~9_sumout\,
	datad => \ALT_INV_P~33_combout\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	datag => \ALT_INV_Add13~9_sumout\,
	combout => \P~64_combout\);

\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~29_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~29_sumout\)) # (\inputB[2]~input_o\ & ((\P~29_combout\))))) ) + ( \inputA[7]~input_o\ ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_P~29_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\);

\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( (!\inputB[1]~input_o\ & (((\P~29_combout\)))) # (\inputB[1]~input_o\ & ((!\inputB[2]~input_o\ & (\Add3~29_sumout\)) # (\inputB[2]~input_o\ & ((\P~29_combout\))))) ) + ( \Add0~29_sumout\ ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_P~29_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\);

\P~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~34_combout\ = ( \Add6~29_sumout\ & ( ((!\process_0~1_combout\ & ((\P~29_combout\))) # (\process_0~1_combout\ & (\Add3~29_sumout\))) # (\process_0~4_combout\) ) ) # ( !\Add6~29_sumout\ & ( (!\process_0~4_combout\ & ((!\process_0~1_combout\ & 
-- ((\P~29_combout\))) # (\process_0~1_combout\ & (\Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_Add3~29_sumout\,
	datad => \ALT_INV_P~29_combout\,
	datae => \ALT_INV_Add6~29_sumout\,
	combout => \P~34_combout\);

\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~34_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~29_sumout\)) # (\inputB[3]~input_o\ & ((\P~34_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~34_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~29_sumout\)) # (\inputB[3]~input_o\ & ((\P~34_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_P~34_combout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~34_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~29_sumout\)) # (\inputB[3]~input_o\ & ((\P~34_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( (!\inputB[2]~input_o\ & (((\P~34_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~29_sumout\)) # (\inputB[3]~input_o\ & ((\P~34_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_P~34_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

\P~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~35_combout\ = ( \Add8~25_sumout\ & ( ((!\process_0~3_combout\ & ((\P~34_combout\))) # (\process_0~3_combout\ & (\Add5~29_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~25_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~34_combout\))) # (\process_0~3_combout\ & (\Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_P~34_combout\,
	datae => \ALT_INV_Add8~25_sumout\,
	combout => \P~35_combout\);

\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~35_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~25_sumout\)) # (\inputB[4]~input_o\ & ((\P~35_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~35_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~25_sumout\)) # (\inputB[4]~input_o\ & ((\P~35_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_P~35_combout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add9~18\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\);

\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~35_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~25_sumout\)) # (\inputB[4]~input_o\ & ((\P~35_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~35_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~25_sumout\)) # (\inputB[4]~input_o\ & ((\P~35_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_P~35_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

\P~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~36_combout\ = ( \Add10~21_sumout\ & ( ((!\process_0~5_combout\ & ((\P~35_combout\))) # (\process_0~5_combout\ & (\Add7~25_sumout\))) # (\process_0~8_combout\) ) ) # ( !\Add10~21_sumout\ & ( (!\process_0~8_combout\ & ((!\process_0~5_combout\ & 
-- ((\P~35_combout\))) # (\process_0~5_combout\ & (\Add7~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_Add7~25_sumout\,
	datad => \ALT_INV_P~35_combout\,
	datae => \ALT_INV_Add10~21_sumout\,
	combout => \P~36_combout\);

\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~36_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~21_sumout\)) # (\inputB[5]~input_o\ & ((\P~36_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~36_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~21_sumout\)) # (\inputB[5]~input_o\ & ((\P~36_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~21_sumout\,
	datad => \ALT_INV_P~36_combout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~36_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~21_sumout\)) # (\inputB[5]~input_o\ & ((\P~36_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add12~14\ ))
-- \Add12~18\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~36_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~21_sumout\)) # (\inputB[5]~input_o\ & ((\P~36_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~21_sumout\,
	datad => \ALT_INV_P~36_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add12~14\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\);

\P~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~53_combout\ = ( \Add12~17_sumout\ & ( ((!\process_0~7_combout\ & ((\P~36_combout\))) # (\process_0~7_combout\ & (\Add9~21_sumout\))) # (\process_0~9_combout\) ) ) # ( !\Add12~17_sumout\ & ( (!\process_0~9_combout\ & ((!\process_0~7_combout\ & 
-- ((\P~36_combout\))) # (\process_0~7_combout\ & (\Add9~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~7_combout\,
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_Add9~21_sumout\,
	datad => \ALT_INV_P~36_combout\,
	datae => \ALT_INV_Add12~17_sumout\,
	combout => \P~53_combout\);

\Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~13_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~53_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~17_sumout\)) # (\inputB[6]~input_o\ & ((\P~53_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add14~10\ ))
-- \Add14~14\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~53_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~17_sumout\)) # (\inputB[6]~input_o\ & ((\P~53_combout\))))) ) + ( \Add0~13_sumout\ ) + ( \Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~17_sumout\,
	datad => \ALT_INV_P~53_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	cin => \Add14~10\,
	sumout => \Add14~13_sumout\,
	cout => \Add14~14\);

\P~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~37_combout\ = ( \P~36_combout\ & ( \Add12~17_sumout\ & ( ((!\inputB[5]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~21_sumout\)))) # (\inputB[6]~input_o\) ) ) ) # ( !\P~36_combout\ & ( \Add12~17_sumout\ & ( (!\inputB[5]~input_o\ & (((\inputB[4]~input_o\ 
-- & \Add9~21_sumout\)) # (\inputB[6]~input_o\))) ) ) ) # ( \P~36_combout\ & ( !\Add12~17_sumout\ & ( (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & ((!\inputB[4]~input_o\) # (\Add9~21_sumout\)))) # (\inputB[5]~input_o\ & (((\inputB[6]~input_o\)))) ) ) ) # 
-- ( !\P~36_combout\ & ( !\Add12~17_sumout\ & ( (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & \Add9~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_Add9~21_sumout\,
	datae => \ALT_INV_P~36_combout\,
	dataf => \ALT_INV_Add12~17_sumout\,
	combout => \P~37_combout\);

\Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~13_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~53_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~17_sumout\)) # (\inputB[6]~input_o\ & ((\P~53_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add13~10\ ))
-- \Add13~14\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~53_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~17_sumout\)) # (\inputB[6]~input_o\ & ((\P~53_combout\))))) ) + ( \inputA[3]~input_o\ ) + ( \Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~17_sumout\,
	datad => \ALT_INV_P~53_combout\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	cin => \Add13~10\,
	sumout => \Add13~13_sumout\,
	cout => \Add13~14\);

\P~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~60_combout\ = ( !\inputB[7]~input_o\ & ( (!\inputB[6]~input_o\ & ((((\Add11~17_sumout\ & \inputB[5]~input_o\)) # (\P~37_combout\)))) # (\inputB[6]~input_o\ & ((((\Add13~13_sumout\))))) ) ) # ( \inputB[7]~input_o\ & ( (((!\inputB[6]~input_o\ & 
-- (\Add14~13_sumout\)) # (\inputB[6]~input_o\ & ((\P~37_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000111111111000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~17_sumout\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add14~13_sumout\,
	datad => \ALT_INV_P~37_combout\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	datag => \ALT_INV_Add13~13_sumout\,
	combout => \P~60_combout\);

\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~34_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~29_sumout\)) # (\inputB[3]~input_o\ & ((\P~34_combout\))))) ) + ( \inputA[7]~input_o\ ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_P~34_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\);

\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( (!\inputB[2]~input_o\ & (((\P~34_combout\)))) # (\inputB[2]~input_o\ & ((!\inputB[3]~input_o\ & (\Add5~29_sumout\)) # (\inputB[3]~input_o\ & ((\P~34_combout\))))) ) + ( \Add0~29_sumout\ ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_P~34_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\);

\P~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~56_combout\ = ( \Add8~29_sumout\ & ( ((!\process_0~3_combout\ & ((\P~34_combout\))) # (\process_0~3_combout\ & (\Add5~29_sumout\))) # (\process_0~6_combout\) ) ) # ( !\Add8~29_sumout\ & ( (!\process_0~6_combout\ & ((!\process_0~3_combout\ & 
-- ((\P~34_combout\))) # (\process_0~3_combout\ & (\Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~6_combout\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_P~34_combout\,
	datae => \ALT_INV_Add8~29_sumout\,
	combout => \P~56_combout\);

\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~56_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~29_sumout\)) # (\inputB[4]~input_o\ & ((\P~56_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~56_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~29_sumout\)) # (\inputB[4]~input_o\ & ((\P~56_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_P~56_combout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add9~22\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\);

\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~56_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~29_sumout\)) # (\inputB[4]~input_o\ & ((\P~56_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( (!\inputB[3]~input_o\ & (((\P~56_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~29_sumout\)) # (\inputB[4]~input_o\ & ((\P~56_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_P~56_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

\P~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~38_combout\ = (\process_0~5_combout\ & \Add7~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_Add7~29_sumout\,
	combout => \P~38_combout\);

\P~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~39_combout\ = ( \P~34_combout\ & ( \Add8~29_sumout\ & ( ((!\inputB[3]~input_o\ & ((!\inputB[2]~input_o\) # (\Add5~29_sumout\)))) # (\inputB[4]~input_o\) ) ) ) # ( !\P~34_combout\ & ( \Add8~29_sumout\ & ( (!\inputB[3]~input_o\ & (((\inputB[2]~input_o\ & 
-- \Add5~29_sumout\)) # (\inputB[4]~input_o\))) ) ) ) # ( \P~34_combout\ & ( !\Add8~29_sumout\ & ( (!\inputB[3]~input_o\ & (!\inputB[4]~input_o\ & ((!\inputB[2]~input_o\) # (\Add5~29_sumout\)))) # (\inputB[3]~input_o\ & (((\inputB[4]~input_o\)))) ) ) ) # ( 
-- !\P~34_combout\ & ( !\Add8~29_sumout\ & ( (\inputB[2]~input_o\ & (!\inputB[3]~input_o\ & (!\inputB[4]~input_o\ & \Add5~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_Add5~29_sumout\,
	datae => \ALT_INV_P~34_combout\,
	dataf => \ALT_INV_Add8~29_sumout\,
	combout => \P~39_combout\);

\P~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~55_combout\ = (!\process_0~8_combout\ & (((\P~39_combout\) # (\P~38_combout\)))) # (\process_0~8_combout\ & (\Add10~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datab => \ALT_INV_Add10~25_sumout\,
	datac => \ALT_INV_P~38_combout\,
	datad => \ALT_INV_P~39_combout\,
	combout => \P~55_combout\);

\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~55_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~25_sumout\)) # (\inputB[5]~input_o\ & ((\P~55_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~55_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~25_sumout\)) # (\inputB[5]~input_o\ & ((\P~55_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_P~55_combout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~55_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~25_sumout\)) # (\inputB[5]~input_o\ & ((\P~55_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~55_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~25_sumout\)) # (\inputB[5]~input_o\ & ((\P~55_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_P~55_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add12~18\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\);

\P~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~40_combout\ = ( \P~38_combout\ & ( \P~39_combout\ & ( (!\inputB[4]~input_o\ & (\inputB[5]~input_o\ & ((!\Add10~25_sumout\)))) # (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\Add9~25_sumout\))) ) ) ) # ( !\P~38_combout\ & ( \P~39_combout\ & ( 
-- (!\inputB[4]~input_o\ & (\inputB[5]~input_o\ & ((!\Add10~25_sumout\)))) # (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\Add9~25_sumout\))) ) ) ) # ( \P~38_combout\ & ( !\P~39_combout\ & ( (!\inputB[4]~input_o\ & (\inputB[5]~input_o\ & 
-- ((!\Add10~25_sumout\)))) # (\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & (!\Add9~25_sumout\))) ) ) ) # ( !\P~38_combout\ & ( !\P~39_combout\ & ( (!\inputB[4]~input_o\ & ((!\inputB[5]~input_o\) # ((!\Add10~25_sumout\)))) # (\inputB[4]~input_o\ & 
-- (((!\Add9~25_sumout\)) # (\inputB[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_Add10~25_sumout\,
	datae => \ALT_INV_P~38_combout\,
	dataf => \ALT_INV_P~39_combout\,
	combout => \P~40_combout\);

\P~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~54_combout\ = (!\process_0~9_combout\ & ((!\P~40_combout\))) # (\process_0~9_combout\ & (\Add12~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Add12~21_sumout\,
	datac => \ALT_INV_P~40_combout\,
	combout => \P~54_combout\);

\Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~17_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~54_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~21_sumout\)) # (\inputB[6]~input_o\ & ((\P~54_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add13~14\ ))
-- \Add13~18\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~54_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~21_sumout\)) # (\inputB[6]~input_o\ & ((\P~54_combout\))))) ) + ( \inputA[4]~input_o\ ) + ( \Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~21_sumout\,
	datad => \ALT_INV_P~54_combout\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	cin => \Add13~14\,
	sumout => \Add13~17_sumout\,
	cout => \Add13~18\);

\Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~17_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~54_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~21_sumout\)) # (\inputB[6]~input_o\ & ((\P~54_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add14~14\ ))
-- \Add14~18\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~54_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~21_sumout\)) # (\inputB[6]~input_o\ & ((\P~54_combout\))))) ) + ( \Add0~17_sumout\ ) + ( \Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~21_sumout\,
	datad => \ALT_INV_P~54_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	cin => \Add14~14\,
	sumout => \Add14~17_sumout\,
	cout => \Add14~18\);

\P~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~41_combout\ = ( \P~40_combout\ & ( (!\inputB[5]~input_o\ & (\inputB[6]~input_o\ & ((\Add12~21_sumout\)))) # (\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & (\Add11~21_sumout\))) ) ) # ( !\P~40_combout\ & ( (!\inputB[5]~input_o\ & ((!\inputB[6]~input_o\) 
-- # ((\Add12~21_sumout\)))) # (\inputB[5]~input_o\ & (((\Add11~21_sumout\)) # (\inputB[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110110111111000001000010011010011101101111110000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~21_sumout\,
	datad => \ALT_INV_Add12~21_sumout\,
	datae => \ALT_INV_P~40_combout\,
	combout => \P~41_combout\);

\P~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~42_combout\ = ( \P~41_combout\ & ( (!\inputB[6]~input_o\ & ((!\inputB[7]~input_o\) # ((\Add14~17_sumout\)))) # (\inputB[6]~input_o\ & (((\Add13~17_sumout\)) # (\inputB[7]~input_o\))) ) ) # ( !\P~41_combout\ & ( (!\inputB[6]~input_o\ & 
-- (\inputB[7]~input_o\ & ((\Add14~17_sumout\)))) # (\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & (\Add13~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_Add13~17_sumout\,
	datad => \ALT_INV_Add14~17_sumout\,
	datae => \ALT_INV_P~41_combout\,
	combout => \P~42_combout\);

\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~56_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~29_sumout\)) # (\inputB[4]~input_o\ & ((\P~56_combout\))))) ) + ( \inputA[7]~input_o\ ) + ( \Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_P~56_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add9~26\,
	sumout => \Add9~29_sumout\);

\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( (!\inputB[3]~input_o\ & (((\P~56_combout\)))) # (\inputB[3]~input_o\ & ((!\inputB[4]~input_o\ & (\Add7~29_sumout\)) # (\inputB[4]~input_o\ & ((\P~56_combout\))))) ) + ( \Add0~29_sumout\ ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[3]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_Add7~29_sumout\,
	datad => \ALT_INV_P~56_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\);

\P~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~58_combout\ = (!\process_0~8_combout\ & (((\P~39_combout\)) # (\P~38_combout\))) # (\process_0~8_combout\ & (((\Add10~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111001010100111111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datab => \ALT_INV_P~38_combout\,
	datac => \ALT_INV_P~39_combout\,
	datad => \ALT_INV_Add10~29_sumout\,
	combout => \P~58_combout\);

\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~58_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~29_sumout\)) # (\inputB[5]~input_o\ & ((\P~58_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~58_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~29_sumout\)) # (\inputB[5]~input_o\ & ((\P~58_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_P~58_combout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

\Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~25_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~58_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~29_sumout\)) # (\inputB[5]~input_o\ & ((\P~58_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add12~22\ ))
-- \Add12~26\ = CARRY(( (!\inputB[4]~input_o\ & (((\P~58_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~29_sumout\)) # (\inputB[5]~input_o\ & ((\P~58_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_P~58_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add12~22\,
	sumout => \Add12~25_sumout\,
	cout => \Add12~26\);

\P~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~43_combout\ = ( \Add9~29_sumout\ & ( \Add10~29_sumout\ & ( (!\P~38_combout\ & (!\P~39_combout\ & (!\inputB[4]~input_o\ $ (\inputB[5]~input_o\)))) ) ) ) # ( !\Add9~29_sumout\ & ( \Add10~29_sumout\ & ( (!\inputB[4]~input_o\ & (!\inputB[5]~input_o\ & 
-- (!\P~38_combout\ & !\P~39_combout\))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\) # ((!\P~38_combout\ & !\P~39_combout\)))) ) ) ) # ( \Add9~29_sumout\ & ( !\Add10~29_sumout\ & ( (!\inputB[4]~input_o\ & (((!\P~38_combout\ & !\P~39_combout\)) # 
-- (\inputB[5]~input_o\))) # (\inputB[4]~input_o\ & (\inputB[5]~input_o\ & (!\P~38_combout\ & !\P~39_combout\))) ) ) ) # ( !\Add9~29_sumout\ & ( !\Add10~29_sumout\ & ( (!\P~38_combout\ & ((!\P~39_combout\) # (!\inputB[4]~input_o\ $ (!\inputB[5]~input_o\)))) 
-- # (\P~38_combout\ & (!\inputB[4]~input_o\ $ ((!\inputB[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011001100110101100100010001011010100010001001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_P~38_combout\,
	datad => \ALT_INV_P~39_combout\,
	datae => \ALT_INV_Add9~29_sumout\,
	dataf => \ALT_INV_Add10~29_sumout\,
	combout => \P~43_combout\);

\P~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~57_combout\ = (!\process_0~9_combout\ & ((!\P~43_combout\))) # (\process_0~9_combout\ & (\Add12~25_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_Add12~25_sumout\,
	datac => \ALT_INV_P~43_combout\,
	combout => \P~57_combout\);

\Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~21_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~57_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~25_sumout\)) # (\inputB[6]~input_o\ & ((\P~57_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add13~18\ ))
-- \Add13~22\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~57_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~25_sumout\)) # (\inputB[6]~input_o\ & ((\P~57_combout\))))) ) + ( \inputA[5]~input_o\ ) + ( \Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~25_sumout\,
	datad => \ALT_INV_P~57_combout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add13~18\,
	sumout => \Add13~21_sumout\,
	cout => \Add13~22\);

\Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~21_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~57_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~25_sumout\)) # (\inputB[6]~input_o\ & ((\P~57_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add14~18\ ))
-- \Add14~22\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~57_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~25_sumout\)) # (\inputB[6]~input_o\ & ((\P~57_combout\))))) ) + ( \Add0~21_sumout\ ) + ( \Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~25_sumout\,
	datad => \ALT_INV_P~57_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	cin => \Add14~18\,
	sumout => \Add14~21_sumout\,
	cout => \Add14~22\);

\P~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~44_combout\ = ( \P~43_combout\ & ( (!\inputB[5]~input_o\ & (\inputB[6]~input_o\ & ((\Add12~25_sumout\)))) # (\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & (\Add11~25_sumout\))) ) ) # ( !\P~43_combout\ & ( (!\inputB[5]~input_o\ & ((!\inputB[6]~input_o\) 
-- # ((\Add12~25_sumout\)))) # (\inputB[5]~input_o\ & (((\Add11~25_sumout\)) # (\inputB[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110110111111000001000010011010011101101111110000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~25_sumout\,
	datad => \ALT_INV_Add12~25_sumout\,
	datae => \ALT_INV_P~43_combout\,
	combout => \P~44_combout\);

\P~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~45_combout\ = ( \P~44_combout\ & ( (!\inputB[6]~input_o\ & ((!\inputB[7]~input_o\) # ((\Add14~21_sumout\)))) # (\inputB[6]~input_o\ & (((\Add13~21_sumout\)) # (\inputB[7]~input_o\))) ) ) # ( !\P~44_combout\ & ( (!\inputB[6]~input_o\ & 
-- (\inputB[7]~input_o\ & ((\Add14~21_sumout\)))) # (\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & (\Add13~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_Add13~21_sumout\,
	datad => \ALT_INV_Add14~21_sumout\,
	datae => \ALT_INV_P~44_combout\,
	combout => \P~45_combout\);

\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~58_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~29_sumout\)) # (\inputB[5]~input_o\ & ((\P~58_combout\))))) ) + ( \inputA[7]~input_o\ ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_P~58_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\);

\Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~29_sumout\ = SUM(( (!\inputB[4]~input_o\ & (((\P~58_combout\)))) # (\inputB[4]~input_o\ & ((!\inputB[5]~input_o\ & (\Add9~29_sumout\)) # (\inputB[5]~input_o\ & ((\P~58_combout\))))) ) + ( \Add0~29_sumout\ ) + ( \Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputB[5]~input_o\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_P~58_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add12~26\,
	sumout => \Add12~29_sumout\);

\P~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~59_combout\ = (!\process_0~9_combout\ & (!\P~43_combout\)) # (\process_0~9_combout\ & ((\Add12~29_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101100011011000110110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_P~43_combout\,
	datac => \ALT_INV_Add12~29_sumout\,
	combout => \P~59_combout\);

\Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~25_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~59_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~29_sumout\)) # (\inputB[6]~input_o\ & ((\P~59_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add13~22\ ))
-- \Add13~26\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~59_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~29_sumout\)) # (\inputB[6]~input_o\ & ((\P~59_combout\))))) ) + ( \inputA[6]~input_o\ ) + ( \Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_P~59_combout\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	cin => \Add13~22\,
	sumout => \Add13~25_sumout\,
	cout => \Add13~26\);

\Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~25_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~59_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~29_sumout\)) # (\inputB[6]~input_o\ & ((\P~59_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add14~22\ ))
-- \Add14~26\ = CARRY(( (!\inputB[5]~input_o\ & (((\P~59_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~29_sumout\)) # (\inputB[6]~input_o\ & ((\P~59_combout\))))) ) + ( \Add0~25_sumout\ ) + ( \Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_P~59_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	cin => \Add14~22\,
	sumout => \Add14~25_sumout\,
	cout => \Add14~26\);

\P~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~46_combout\ = ( \Add11~29_sumout\ & ( \Add12~29_sumout\ & ( (!\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & ((!\P~43_combout\) # (\inputB[5]~input_o\)))) # (\inputB[6]~input_o\ & (\inputB[7]~input_o\ & ((!\inputB[5]~input_o\) # (!\P~43_combout\)))) ) ) 
-- ) # ( !\Add11~29_sumout\ & ( \Add12~29_sumout\ & ( (!\inputB[6]~input_o\ & (!\inputB[5]~input_o\ & (!\inputB[7]~input_o\ & !\P~43_combout\))) # (\inputB[6]~input_o\ & (\inputB[7]~input_o\ & ((!\inputB[5]~input_o\) # (!\P~43_combout\)))) ) ) ) # ( 
-- \Add11~29_sumout\ & ( !\Add12~29_sumout\ & ( (!\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & ((!\P~43_combout\) # (\inputB[5]~input_o\)))) # (\inputB[6]~input_o\ & (\inputB[5]~input_o\ & (\inputB[7]~input_o\ & !\P~43_combout\))) ) ) ) # ( 
-- !\Add11~29_sumout\ & ( !\Add12~29_sumout\ & ( (!\P~43_combout\ & ((!\inputB[5]~input_o\ & (!\inputB[6]~input_o\ & !\inputB[7]~input_o\)) # (\inputB[5]~input_o\ & (\inputB[6]~input_o\ & \inputB[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000000110000010100000010000011000000101100001101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_P~43_combout\,
	datae => \ALT_INV_Add11~29_sumout\,
	dataf => \ALT_INV_Add12~29_sumout\,
	combout => \P~46_combout\);

\P~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~47_combout\ = ( \P~46_combout\ ) # ( !\P~46_combout\ & ( (!\inputB[6]~input_o\ & (\inputB[7]~input_o\ & ((\Add14~25_sumout\)))) # (\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & (\Add13~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110111111111111111100000100001001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_Add13~25_sumout\,
	datad => \ALT_INV_Add14~25_sumout\,
	datae => \ALT_INV_P~46_combout\,
	combout => \P~47_combout\);

\Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add13~29_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~59_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~29_sumout\)) # (\inputB[6]~input_o\ & ((\P~59_combout\))))) ) + ( \inputA[7]~input_o\ ) + ( \Add13~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_P~59_combout\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	cin => \Add13~26\,
	sumout => \Add13~29_sumout\);

\Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add14~29_sumout\ = SUM(( (!\inputB[5]~input_o\ & (((\P~59_combout\)))) # (\inputB[5]~input_o\ & ((!\inputB[6]~input_o\ & (\Add11~29_sumout\)) # (\inputB[6]~input_o\ & ((\P~59_combout\))))) ) + ( \Add0~29_sumout\ ) + ( \Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_P~59_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	cin => \Add14~26\,
	sumout => \Add14~29_sumout\);

\P~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \P~48_combout\ = ( \Add14~29_sumout\ & ( ((!\inputB[6]~input_o\ & (\inputB[7]~input_o\)) # (\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & \Add13~29_sumout\))) # (\P~46_combout\) ) ) # ( !\Add14~29_sumout\ & ( ((\inputB[6]~input_o\ & (!\inputB[7]~input_o\ 
-- & \Add13~29_sumout\))) # (\P~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111001011110110111100001111010011110010111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_P~46_combout\,
	datad => \ALT_INV_Add13~29_sumout\,
	datae => \ALT_INV_Add14~29_sumout\,
	combout => \P~48_combout\);

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


