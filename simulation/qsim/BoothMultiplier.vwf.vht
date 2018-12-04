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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2018 20:51:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BoothMultiplier
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BoothMultiplier_vhd_vec_tst IS
END BoothMultiplier_vhd_vec_tst;
ARCHITECTURE BoothMultiplier_arch OF BoothMultiplier_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inputA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inputB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Saida : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT BoothMultiplier
	PORT (
	inputA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	inputB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Saida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BoothMultiplier
	PORT MAP (
-- list connections between master ports and signals
	inputA => inputA,
	inputB => inputB,
	Saida => Saida
	);
-- inputA[7]
t_prcs_inputA_7: PROCESS
BEGIN
	inputA(7) <= '1';
WAIT;
END PROCESS t_prcs_inputA_7;
-- inputA[6]
t_prcs_inputA_6: PROCESS
BEGIN
	inputA(6) <= '1';
WAIT;
END PROCESS t_prcs_inputA_6;
-- inputA[5]
t_prcs_inputA_5: PROCESS
BEGIN
	inputA(5) <= '1';
WAIT;
END PROCESS t_prcs_inputA_5;
-- inputA[4]
t_prcs_inputA_4: PROCESS
BEGIN
	inputA(4) <= '1';
WAIT;
END PROCESS t_prcs_inputA_4;
-- inputA[3]
t_prcs_inputA_3: PROCESS
BEGIN
	inputA(3) <= '1';
WAIT;
END PROCESS t_prcs_inputA_3;
-- inputA[2]
t_prcs_inputA_2: PROCESS
BEGIN
	inputA(2) <= '1';
WAIT;
END PROCESS t_prcs_inputA_2;
-- inputA[1]
t_prcs_inputA_1: PROCESS
BEGIN
	inputA(1) <= '1';
WAIT;
END PROCESS t_prcs_inputA_1;
-- inputA[0]
t_prcs_inputA_0: PROCESS
BEGIN
	inputA(0) <= '1';
WAIT;
END PROCESS t_prcs_inputA_0;
-- inputB[7]
t_prcs_inputB_7: PROCESS
BEGIN
	inputB(7) <= '0';
WAIT;
END PROCESS t_prcs_inputB_7;
-- inputB[6]
t_prcs_inputB_6: PROCESS
BEGIN
	inputB(6) <= '1';
WAIT;
END PROCESS t_prcs_inputB_6;
-- inputB[5]
t_prcs_inputB_5: PROCESS
BEGIN
	inputB(5) <= '1';
WAIT;
END PROCESS t_prcs_inputB_5;
-- inputB[4]
t_prcs_inputB_4: PROCESS
BEGIN
	inputB(4) <= '1';
WAIT;
END PROCESS t_prcs_inputB_4;
-- inputB[3]
t_prcs_inputB_3: PROCESS
BEGIN
	inputB(3) <= '1';
WAIT;
END PROCESS t_prcs_inputB_3;
-- inputB[2]
t_prcs_inputB_2: PROCESS
BEGIN
	inputB(2) <= '1';
WAIT;
END PROCESS t_prcs_inputB_2;
-- inputB[1]
t_prcs_inputB_1: PROCESS
BEGIN
	inputB(1) <= '1';
WAIT;
END PROCESS t_prcs_inputB_1;
-- inputB[0]
t_prcs_inputB_0: PROCESS
BEGIN
	inputB(0) <= '1';
WAIT;
END PROCESS t_prcs_inputB_0;
END BoothMultiplier_arch;
