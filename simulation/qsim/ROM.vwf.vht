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
-- Generated on "12/04/2018 09:07:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM_16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_16_vhd_vec_tst IS
END ROM_16_vhd_vec_tst;
ARCHITECTURE ROM_16_arch OF ROM_16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL INSTRUCTION : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PC_address : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ROM_16
	PORT (
	INSTRUCTION : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	PC_address : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM_16
	PORT MAP (
-- list connections between master ports and signals
	INSTRUCTION => INSTRUCTION,
	PC_address => PC_address
	);
-- PC_address[15]
t_prcs_PC_address_15: PROCESS
BEGIN
	PC_address(15) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_15;
-- PC_address[14]
t_prcs_PC_address_14: PROCESS
BEGIN
	PC_address(14) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_14;
-- PC_address[13]
t_prcs_PC_address_13: PROCESS
BEGIN
	PC_address(13) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_13;
-- PC_address[12]
t_prcs_PC_address_12: PROCESS
BEGIN
	PC_address(12) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_12;
-- PC_address[11]
t_prcs_PC_address_11: PROCESS
BEGIN
	PC_address(11) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_11;
-- PC_address[10]
t_prcs_PC_address_10: PROCESS
BEGIN
	PC_address(10) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_10;
-- PC_address[9]
t_prcs_PC_address_9: PROCESS
BEGIN
	PC_address(9) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_9;
-- PC_address[8]
t_prcs_PC_address_8: PROCESS
BEGIN
	PC_address(8) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_8;
-- PC_address[7]
t_prcs_PC_address_7: PROCESS
BEGIN
	PC_address(7) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_7;
-- PC_address[6]
t_prcs_PC_address_6: PROCESS
BEGIN
	PC_address(6) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_6;
-- PC_address[5]
t_prcs_PC_address_5: PROCESS
BEGIN
	PC_address(5) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_5;
-- PC_address[4]
t_prcs_PC_address_4: PROCESS
BEGIN
	PC_address(4) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_4;
-- PC_address[3]
t_prcs_PC_address_3: PROCESS
BEGIN
	PC_address(3) <= '1';
WAIT;
END PROCESS t_prcs_PC_address_3;
-- PC_address[2]
t_prcs_PC_address_2: PROCESS
BEGIN
	PC_address(2) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_2;
-- PC_address[1]
t_prcs_PC_address_1: PROCESS
BEGIN
	PC_address(1) <= '0';
WAIT;
END PROCESS t_prcs_PC_address_1;
-- PC_address[0]
t_prcs_PC_address_0: PROCESS
BEGIN
	PC_address(0) <= '1';
WAIT;
END PROCESS t_prcs_PC_address_0;
END ROM_16_arch;
