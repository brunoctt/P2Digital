-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/08/2021 10:17:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testecontdisp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testecontdisp_vhd_vec_tst IS
END testecontdisp_vhd_vec_tst;
ARCHITECTURE testecontdisp_arch OF testecontdisp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL button1 : STD_LOGIC;
SIGNAL button2 : STD_LOGIC;
SIGNAL button3 : STD_LOGIC;
SIGNAL button4 : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL led : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rs : STD_LOGIC;
SIGNAL rw : STD_LOGIC;
COMPONENT testecontdisp
	PORT (
	button1 : IN STD_LOGIC;
	button2 : IN STD_LOGIC;
	button3 : IN STD_LOGIC;
	button4 : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	e : OUT STD_LOGIC;
	lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	led : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rs : OUT STD_LOGIC;
	rw : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testecontdisp
	PORT MAP (
-- list connections between master ports and signals
	button1 => button1,
	button2 => button2,
	button3 => button3,
	button4 => button4,
	clock => clock,
	e => e,
	lcd_data => lcd_data,
	led => led,
	rs => rs,
	rw => rw
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END testecontdisp_arch;
