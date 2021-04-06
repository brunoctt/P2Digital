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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/06/2021 11:28:29"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testecontdisp IS
    PORT (
	e : OUT std_logic;
	clock : IN std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	button3 : IN std_logic;
	button4 : IN std_logic;
	rw : OUT std_logic;
	rs : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(4 DOWNTO 1)
	);
END testecontdisp;

-- Design Ports Information
-- e	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button3	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testecontdisp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_button3 : std_logic;
SIGNAL ww_button4 : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|dut|Add0~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~5_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|dut|lcd_data[5]~1_combout\ : std_logic;
SIGNAL \inst|dut|state.power_up~q\ : std_logic;
SIGNAL \inst|dut|LessThan9~6_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~7_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~8_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~9_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|dut|busy~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~10_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~8_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~9_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~11_combout\ : std_logic;
SIGNAL \inst|dut|clk_count~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~7_combout\ : std_logic;
SIGNAL \inst|dut|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|dut|clk_count~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|dut|busy~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan7~2_combout\ : std_logic;
SIGNAL \inst|dut|lcd_data[5]~2_combout\ : std_logic;
SIGNAL \inst|dut|clk_count~2_combout\ : std_logic;
SIGNAL \inst|dut|clk_count[31]~3_combout\ : std_logic;
SIGNAL \inst|dut|clk_count[31]~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector32~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~1\ : std_logic;
SIGNAL \inst|dut|Add0~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector31~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~3\ : std_logic;
SIGNAL \inst|dut|Add0~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector30~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~5\ : std_logic;
SIGNAL \inst|dut|Add0~6_combout\ : std_logic;
SIGNAL \inst|dut|Selector29~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~7\ : std_logic;
SIGNAL \inst|dut|Add0~8_combout\ : std_logic;
SIGNAL \inst|dut|Selector28~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~9\ : std_logic;
SIGNAL \inst|dut|Add0~10_combout\ : std_logic;
SIGNAL \inst|dut|Selector27~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~11\ : std_logic;
SIGNAL \inst|dut|Add0~12_combout\ : std_logic;
SIGNAL \inst|dut|Selector26~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~13\ : std_logic;
SIGNAL \inst|dut|Add0~14_combout\ : std_logic;
SIGNAL \inst|dut|Selector25~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~15\ : std_logic;
SIGNAL \inst|dut|Add0~16_combout\ : std_logic;
SIGNAL \inst|dut|Selector24~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~17\ : std_logic;
SIGNAL \inst|dut|Add0~18_combout\ : std_logic;
SIGNAL \inst|dut|Selector23~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~19\ : std_logic;
SIGNAL \inst|dut|Add0~20_combout\ : std_logic;
SIGNAL \inst|dut|Selector22~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~21\ : std_logic;
SIGNAL \inst|dut|Add0~22_combout\ : std_logic;
SIGNAL \inst|dut|Selector21~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~23\ : std_logic;
SIGNAL \inst|dut|Add0~24_combout\ : std_logic;
SIGNAL \inst|dut|Selector20~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~25\ : std_logic;
SIGNAL \inst|dut|Add0~26_combout\ : std_logic;
SIGNAL \inst|dut|Selector19~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~27\ : std_logic;
SIGNAL \inst|dut|Add0~28_combout\ : std_logic;
SIGNAL \inst|dut|Selector18~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~29\ : std_logic;
SIGNAL \inst|dut|Add0~30_combout\ : std_logic;
SIGNAL \inst|dut|Selector17~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~31\ : std_logic;
SIGNAL \inst|dut|Add0~32_combout\ : std_logic;
SIGNAL \inst|dut|Selector16~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~33\ : std_logic;
SIGNAL \inst|dut|Add0~34_combout\ : std_logic;
SIGNAL \inst|dut|Selector15~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~35\ : std_logic;
SIGNAL \inst|dut|Add0~36_combout\ : std_logic;
SIGNAL \inst|dut|Selector14~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~37\ : std_logic;
SIGNAL \inst|dut|Add0~38_combout\ : std_logic;
SIGNAL \inst|dut|Selector13~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~39\ : std_logic;
SIGNAL \inst|dut|Add0~40_combout\ : std_logic;
SIGNAL \inst|dut|Selector12~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~41\ : std_logic;
SIGNAL \inst|dut|Add0~42_combout\ : std_logic;
SIGNAL \inst|dut|Selector11~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~43\ : std_logic;
SIGNAL \inst|dut|Add0~44_combout\ : std_logic;
SIGNAL \inst|dut|Selector10~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~45\ : std_logic;
SIGNAL \inst|dut|Add0~46_combout\ : std_logic;
SIGNAL \inst|dut|Selector9~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~47\ : std_logic;
SIGNAL \inst|dut|Add0~48_combout\ : std_logic;
SIGNAL \inst|dut|Selector8~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~49\ : std_logic;
SIGNAL \inst|dut|Add0~50_combout\ : std_logic;
SIGNAL \inst|dut|Selector7~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~51\ : std_logic;
SIGNAL \inst|dut|Add0~52_combout\ : std_logic;
SIGNAL \inst|dut|Selector6~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~53\ : std_logic;
SIGNAL \inst|dut|Add0~54_combout\ : std_logic;
SIGNAL \inst|dut|Selector5~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~55\ : std_logic;
SIGNAL \inst|dut|Add0~56_combout\ : std_logic;
SIGNAL \inst|dut|Selector4~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~57\ : std_logic;
SIGNAL \inst|dut|Add0~58_combout\ : std_logic;
SIGNAL \inst|dut|Selector3~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~59\ : std_logic;
SIGNAL \inst|dut|Add0~60_combout\ : std_logic;
SIGNAL \inst|dut|Selector2~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~61\ : std_logic;
SIGNAL \inst|dut|Add0~62_combout\ : std_logic;
SIGNAL \inst|dut|Selector1~0_combout\ : std_logic;
SIGNAL \inst|dut|busy~q\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|lcd_enable~feeder_combout\ : std_logic;
SIGNAL \inst|lcd_enable~q\ : std_logic;
SIGNAL \inst|dut|busy~4_combout\ : std_logic;
SIGNAL \inst|dut|busy~5_combout\ : std_logic;
SIGNAL \inst|dut|busy~6_combout\ : std_logic;
SIGNAL \inst|dut|Selector33~0_combout\ : std_logic;
SIGNAL \inst|dut|state.initialize~q\ : std_logic;
SIGNAL \inst|dut|Selector34~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector34~1_combout\ : std_logic;
SIGNAL \inst|dut|state.ready~q\ : std_logic;
SIGNAL \inst|dut|lcd_data[5]~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector35~0_combout\ : std_logic;
SIGNAL \inst|dut|state.send~q\ : std_logic;
SIGNAL \inst|dut|LessThan10~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan12~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan11~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan11~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~11_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~10_combout\ : std_logic;
SIGNAL \inst|dut|LessThan12~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan12~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~12_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~13_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~9_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~12_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~6_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~1_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~5_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~7_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~8_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~10_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~14_combout\ : std_logic;
SIGNAL \inst|dut|e~q\ : std_logic;
SIGNAL \inst|dut|rs~0_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Mux39~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Mux38~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Mux37~0_combout\ : std_logic;
SIGNAL \inst|Mux35~1_combout\ : std_logic;
SIGNAL \inst|char[4]~feeder_combout\ : std_logic;
SIGNAL \inst|char[3]~_wirecell_combout\ : std_logic;
SIGNAL \inst|Mux36~0_combout\ : std_logic;
SIGNAL \inst|Mux35~0_combout\ : std_logic;
SIGNAL \inst|Mux36~1_combout\ : std_logic;
SIGNAL \inst|Mux36~2_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux25~1_combout\ : std_logic;
SIGNAL \inst|dut|rs~1_combout\ : std_logic;
SIGNAL \inst|dut|rs~q\ : std_logic;
SIGNAL \inst|lcd_bus[7]~60_combout\ : std_logic;
SIGNAL \inst|dut|Selector38~0_combout\ : std_logic;
SIGNAL \inst|dut|lcd_data[5]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|cont~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|cont~0_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|cont~2_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|cont~3_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|cont~4_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|cont~5_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|cont~6_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|cont~7_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|cont~8_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|cont~9_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|cont~10_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|cont~11_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|cont~12_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|aux~0_combout\ : std_logic;
SIGNAL \inst1|aux~feeder_combout\ : std_logic;
SIGNAL \inst1|aux~q\ : std_logic;
SIGNAL \inst1|aux~clkctrl_outclk\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \inst8|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst8|count[0]~19_combout\ : std_logic;
SIGNAL \inst8|counter_set~combout\ : std_logic;
SIGNAL \inst8|count[0]~20\ : std_logic;
SIGNAL \inst8|count[1]~21_combout\ : std_logic;
SIGNAL \inst8|count[1]~22\ : std_logic;
SIGNAL \inst8|count[2]~23_combout\ : std_logic;
SIGNAL \inst8|count[2]~24\ : std_logic;
SIGNAL \inst8|count[3]~25_combout\ : std_logic;
SIGNAL \inst8|count[3]~26\ : std_logic;
SIGNAL \inst8|count[4]~27_combout\ : std_logic;
SIGNAL \inst8|count[4]~28\ : std_logic;
SIGNAL \inst8|count[5]~29_combout\ : std_logic;
SIGNAL \inst8|count[5]~30\ : std_logic;
SIGNAL \inst8|count[6]~31_combout\ : std_logic;
SIGNAL \inst8|count[6]~32\ : std_logic;
SIGNAL \inst8|count[7]~33_combout\ : std_logic;
SIGNAL \inst8|count[7]~34\ : std_logic;
SIGNAL \inst8|count[8]~35_combout\ : std_logic;
SIGNAL \inst8|count[8]~36\ : std_logic;
SIGNAL \inst8|count[9]~37_combout\ : std_logic;
SIGNAL \inst8|count[9]~38\ : std_logic;
SIGNAL \inst8|count[10]~39_combout\ : std_logic;
SIGNAL \inst8|count[10]~40\ : std_logic;
SIGNAL \inst8|count[11]~41_combout\ : std_logic;
SIGNAL \inst8|count[11]~42\ : std_logic;
SIGNAL \inst8|count[12]~43_combout\ : std_logic;
SIGNAL \inst8|count[12]~44\ : std_logic;
SIGNAL \inst8|count[13]~45_combout\ : std_logic;
SIGNAL \inst8|count[13]~46\ : std_logic;
SIGNAL \inst8|count[14]~47_combout\ : std_logic;
SIGNAL \inst8|count[14]~48\ : std_logic;
SIGNAL \inst8|count[15]~49_combout\ : std_logic;
SIGNAL \inst8|count[15]~50\ : std_logic;
SIGNAL \inst8|count[16]~51_combout\ : std_logic;
SIGNAL \inst8|count[16]~52\ : std_logic;
SIGNAL \inst8|count[17]~53_combout\ : std_logic;
SIGNAL \inst8|count[17]~54\ : std_logic;
SIGNAL \inst8|count[18]~55_combout\ : std_logic;
SIGNAL \inst8|result~3_combout\ : std_logic;
SIGNAL \inst8|result~0_combout\ : std_logic;
SIGNAL \inst8|result~1_combout\ : std_logic;
SIGNAL \inst8|result~2_combout\ : std_logic;
SIGNAL \inst8|result~4_combout\ : std_logic;
SIGNAL \inst8|result~5_combout\ : std_logic;
SIGNAL \inst8|result~feeder_combout\ : std_logic;
SIGNAL \inst8|result~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|cont~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|cont~1_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|cont~2_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|cont~3_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|cont~4_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|cont~5_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|cont~6_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|cont~7_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|cont~8_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|aux~0_combout\ : std_logic;
SIGNAL \inst2|aux~feeder_combout\ : std_logic;
SIGNAL \inst2|aux~q\ : std_logic;
SIGNAL \inst2|aux~clkctrl_outclk\ : std_logic;
SIGNAL \gf|contagemSL[0]~2_combout\ : std_logic;
SIGNAL \gf|contagemSL~0_combout\ : std_logic;
SIGNAL \gf|contagemSL~1_combout\ : std_logic;
SIGNAL \gf|Add0~0_combout\ : std_logic;
SIGNAL \gf|contagemSH[0]~2_combout\ : std_logic;
SIGNAL \gf|Equal0~0_combout\ : std_logic;
SIGNAL \gf|contagemSH~1_combout\ : std_logic;
SIGNAL \gf|contagemSH~0_combout\ : std_logic;
SIGNAL \inst13|igual~2_combout\ : std_logic;
SIGNAL \gf|contagemHL[1]~feeder_combout\ : std_logic;
SIGNAL \gf|contagemMH[0]~6_combout\ : std_logic;
SIGNAL \gf|Equal1~0_combout\ : std_logic;
SIGNAL \gf|contagemML[0]~2_combout\ : std_logic;
SIGNAL \gf|contagemMH[0]~5_combout\ : std_logic;
SIGNAL \gf|Add2~0_combout\ : std_logic;
SIGNAL \gf|contagemML~0_combout\ : std_logic;
SIGNAL \gf|contagemML~1_combout\ : std_logic;
SIGNAL \gf|Equal2~0_combout\ : std_logic;
SIGNAL \gf|contagemMH[2]~3_combout\ : std_logic;
SIGNAL \gf|contagemMH~4_combout\ : std_logic;
SIGNAL \gf|contagemMH~2_combout\ : std_logic;
SIGNAL \gf|Equal3~0_combout\ : std_logic;
SIGNAL \gf|contagemHH~0_combout\ : std_logic;
SIGNAL \gf|contagemHL~4_combout\ : std_logic;
SIGNAL \gf|Add4~0_combout\ : std_logic;
SIGNAL \gf|contagemHL~0_combout\ : std_logic;
SIGNAL \gf|Equal4~0_combout\ : std_logic;
SIGNAL \gf|contagemHL~2_combout\ : std_logic;
SIGNAL \gf|contagemHH~3_combout\ : std_logic;
SIGNAL \gf|contagemHH~1_combout\ : std_logic;
SIGNAL \gf|contagemHL~1_combout\ : std_logic;
SIGNAL \gf|contagemHH~2_combout\ : std_logic;
SIGNAL \gf|process_0~0_combout\ : std_logic;
SIGNAL \gf|process_0~1_combout\ : std_logic;
SIGNAL \gf|process_0~2_combout\ : std_logic;
SIGNAL \gf|contagemHL~3_combout\ : std_logic;
SIGNAL \inst13|igual~3_combout\ : std_logic;
SIGNAL \inst13|igual~5_combout\ : std_logic;
SIGNAL \inst13|igual~4_combout\ : std_logic;
SIGNAL \inst13|igual~6_combout\ : std_logic;
SIGNAL \inst13|igual~7_combout\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \inst9|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|count[0]~19_combout\ : std_logic;
SIGNAL \inst9|counter_set~combout\ : std_logic;
SIGNAL \inst9|count[0]~20\ : std_logic;
SIGNAL \inst9|count[1]~21_combout\ : std_logic;
SIGNAL \inst9|count[1]~22\ : std_logic;
SIGNAL \inst9|count[2]~23_combout\ : std_logic;
SIGNAL \inst9|count[2]~24\ : std_logic;
SIGNAL \inst9|count[3]~25_combout\ : std_logic;
SIGNAL \inst9|count[3]~26\ : std_logic;
SIGNAL \inst9|count[4]~27_combout\ : std_logic;
SIGNAL \inst9|count[4]~28\ : std_logic;
SIGNAL \inst9|count[5]~29_combout\ : std_logic;
SIGNAL \inst9|count[5]~30\ : std_logic;
SIGNAL \inst9|count[6]~31_combout\ : std_logic;
SIGNAL \inst9|count[6]~32\ : std_logic;
SIGNAL \inst9|count[7]~33_combout\ : std_logic;
SIGNAL \inst9|count[7]~34\ : std_logic;
SIGNAL \inst9|count[8]~35_combout\ : std_logic;
SIGNAL \inst9|count[8]~36\ : std_logic;
SIGNAL \inst9|count[9]~37_combout\ : std_logic;
SIGNAL \inst9|count[9]~38\ : std_logic;
SIGNAL \inst9|count[10]~39_combout\ : std_logic;
SIGNAL \inst9|count[10]~40\ : std_logic;
SIGNAL \inst9|count[11]~41_combout\ : std_logic;
SIGNAL \inst9|count[11]~42\ : std_logic;
SIGNAL \inst9|count[12]~43_combout\ : std_logic;
SIGNAL \inst9|count[12]~44\ : std_logic;
SIGNAL \inst9|count[13]~45_combout\ : std_logic;
SIGNAL \inst9|count[13]~46\ : std_logic;
SIGNAL \inst9|count[14]~47_combout\ : std_logic;
SIGNAL \inst9|result~0_combout\ : std_logic;
SIGNAL \inst9|result~1_combout\ : std_logic;
SIGNAL \inst9|result~2_combout\ : std_logic;
SIGNAL \inst9|count[14]~48\ : std_logic;
SIGNAL \inst9|count[15]~49_combout\ : std_logic;
SIGNAL \inst9|count[15]~50\ : std_logic;
SIGNAL \inst9|count[16]~51_combout\ : std_logic;
SIGNAL \inst9|count[16]~52\ : std_logic;
SIGNAL \inst9|count[17]~53_combout\ : std_logic;
SIGNAL \inst9|count[17]~54\ : std_logic;
SIGNAL \inst9|count[18]~55_combout\ : std_logic;
SIGNAL \inst9|result~3_combout\ : std_logic;
SIGNAL \inst9|result~4_combout\ : std_logic;
SIGNAL \inst9|result~5_combout\ : std_logic;
SIGNAL \inst9|result~feeder_combout\ : std_logic;
SIGNAL \inst9|result~q\ : std_logic;
SIGNAL \inst13|aux1~0_combout\ : std_logic;
SIGNAL \inst13|aux1~q\ : std_logic;
SIGNAL \inst13|aux2~0_combout\ : std_logic;
SIGNAL \inst13|aux2~q\ : std_logic;
SIGNAL \button4~input_o\ : std_logic;
SIGNAL \inst11|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst11|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst11|count[0]~19_combout\ : std_logic;
SIGNAL \inst11|counter_set~combout\ : std_logic;
SIGNAL \inst11|count[0]~20\ : std_logic;
SIGNAL \inst11|count[1]~21_combout\ : std_logic;
SIGNAL \inst11|count[1]~22\ : std_logic;
SIGNAL \inst11|count[2]~23_combout\ : std_logic;
SIGNAL \inst11|count[2]~24\ : std_logic;
SIGNAL \inst11|count[3]~25_combout\ : std_logic;
SIGNAL \inst11|count[3]~26\ : std_logic;
SIGNAL \inst11|count[4]~27_combout\ : std_logic;
SIGNAL \inst11|count[4]~28\ : std_logic;
SIGNAL \inst11|count[5]~29_combout\ : std_logic;
SIGNAL \inst11|count[5]~30\ : std_logic;
SIGNAL \inst11|count[6]~31_combout\ : std_logic;
SIGNAL \inst11|count[6]~32\ : std_logic;
SIGNAL \inst11|count[7]~33_combout\ : std_logic;
SIGNAL \inst11|count[7]~34\ : std_logic;
SIGNAL \inst11|count[8]~35_combout\ : std_logic;
SIGNAL \inst11|count[8]~36\ : std_logic;
SIGNAL \inst11|count[9]~37_combout\ : std_logic;
SIGNAL \inst11|count[9]~38\ : std_logic;
SIGNAL \inst11|count[10]~39_combout\ : std_logic;
SIGNAL \inst11|count[10]~40\ : std_logic;
SIGNAL \inst11|count[11]~41_combout\ : std_logic;
SIGNAL \inst11|count[11]~42\ : std_logic;
SIGNAL \inst11|count[12]~43_combout\ : std_logic;
SIGNAL \inst11|count[12]~44\ : std_logic;
SIGNAL \inst11|count[13]~45_combout\ : std_logic;
SIGNAL \inst11|count[13]~feeder_combout\ : std_logic;
SIGNAL \inst11|count[13]~46\ : std_logic;
SIGNAL \inst11|count[14]~47_combout\ : std_logic;
SIGNAL \inst11|count[14]~48\ : std_logic;
SIGNAL \inst11|count[15]~49_combout\ : std_logic;
SIGNAL \inst11|count[15]~50\ : std_logic;
SIGNAL \inst11|count[16]~51_combout\ : std_logic;
SIGNAL \inst11|count[16]~52\ : std_logic;
SIGNAL \inst11|count[17]~53_combout\ : std_logic;
SIGNAL \inst11|count[17]~54\ : std_logic;
SIGNAL \inst11|count[18]~55_combout\ : std_logic;
SIGNAL \inst11|result~0_combout\ : std_logic;
SIGNAL \inst11|result~1_combout\ : std_logic;
SIGNAL \inst11|result~2_combout\ : std_logic;
SIGNAL \inst11|result~3_combout\ : std_logic;
SIGNAL \inst11|result~4_combout\ : std_logic;
SIGNAL \inst11|result~5_combout\ : std_logic;
SIGNAL \inst11|result~feeder_combout\ : std_logic;
SIGNAL \inst11|result~q\ : std_logic;
SIGNAL \button3~input_o\ : std_logic;
SIGNAL \inst10|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|count[0]~19_combout\ : std_logic;
SIGNAL \inst10|counter_set~combout\ : std_logic;
SIGNAL \inst10|count[0]~20\ : std_logic;
SIGNAL \inst10|count[1]~21_combout\ : std_logic;
SIGNAL \inst10|count[1]~22\ : std_logic;
SIGNAL \inst10|count[2]~23_combout\ : std_logic;
SIGNAL \inst10|count[2]~24\ : std_logic;
SIGNAL \inst10|count[3]~25_combout\ : std_logic;
SIGNAL \inst10|count[3]~26\ : std_logic;
SIGNAL \inst10|count[4]~27_combout\ : std_logic;
SIGNAL \inst10|count[4]~28\ : std_logic;
SIGNAL \inst10|count[5]~29_combout\ : std_logic;
SIGNAL \inst10|count[5]~30\ : std_logic;
SIGNAL \inst10|count[6]~31_combout\ : std_logic;
SIGNAL \inst10|count[6]~32\ : std_logic;
SIGNAL \inst10|count[7]~33_combout\ : std_logic;
SIGNAL \inst10|count[7]~34\ : std_logic;
SIGNAL \inst10|count[8]~35_combout\ : std_logic;
SIGNAL \inst10|count[8]~36\ : std_logic;
SIGNAL \inst10|count[9]~37_combout\ : std_logic;
SIGNAL \inst10|count[9]~38\ : std_logic;
SIGNAL \inst10|count[10]~39_combout\ : std_logic;
SIGNAL \inst10|count[10]~40\ : std_logic;
SIGNAL \inst10|count[11]~41_combout\ : std_logic;
SIGNAL \inst10|count[11]~42\ : std_logic;
SIGNAL \inst10|count[12]~43_combout\ : std_logic;
SIGNAL \inst10|count[12]~44\ : std_logic;
SIGNAL \inst10|count[13]~45_combout\ : std_logic;
SIGNAL \inst10|count[13]~46\ : std_logic;
SIGNAL \inst10|count[14]~47_combout\ : std_logic;
SIGNAL \inst10|count[14]~48\ : std_logic;
SIGNAL \inst10|count[15]~49_combout\ : std_logic;
SIGNAL \inst10|count[15]~50\ : std_logic;
SIGNAL \inst10|count[16]~51_combout\ : std_logic;
SIGNAL \inst10|count[16]~52\ : std_logic;
SIGNAL \inst10|count[17]~53_combout\ : std_logic;
SIGNAL \inst10|count[17]~54\ : std_logic;
SIGNAL \inst10|count[18]~55_combout\ : std_logic;
SIGNAL \inst10|result~3_combout\ : std_logic;
SIGNAL \inst10|result~0_combout\ : std_logic;
SIGNAL \inst10|result~1_combout\ : std_logic;
SIGNAL \inst10|result~2_combout\ : std_logic;
SIGNAL \inst10|result~4_combout\ : std_logic;
SIGNAL \inst10|result~5_combout\ : std_logic;
SIGNAL \inst10|result~feeder_combout\ : std_logic;
SIGNAL \inst10|result~q\ : std_logic;
SIGNAL \inst13|aux3~0_combout\ : std_logic;
SIGNAL \inst13|aux3~q\ : std_logic;
SIGNAL \inst13|aux4~0_combout\ : std_logic;
SIGNAL \inst13|aux4~1_combout\ : std_logic;
SIGNAL \inst13|aux4~q\ : std_logic;
SIGNAL \inst13|igual~1_combout\ : std_logic;
SIGNAL \inst13|igual~8_combout\ : std_logic;
SIGNAL \inst4|aux~2_combout\ : std_logic;
SIGNAL \inst4|process_0~0_combout\ : std_logic;
SIGNAL \inst4|aux~0_combout\ : std_logic;
SIGNAL \inst4|aux[1]~1_combout\ : std_logic;
SIGNAL \inst|lcd_bus[4]~12_combout\ : std_logic;
SIGNAL \inst|lcd_bus[4]~13_combout\ : std_logic;
SIGNAL \inst|lcd_bus~14_combout\ : std_logic;
SIGNAL \inst|lcd_bus~15_combout\ : std_logic;
SIGNAL \inst|lcd_bus~16_combout\ : std_logic;
SIGNAL \inst|dut|Selector39~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~20_combout\ : std_logic;
SIGNAL \inst|lcd_bus~21_combout\ : std_logic;
SIGNAL \inst|lcd_bus~17_combout\ : std_logic;
SIGNAL \inst|lcd_bus~18_combout\ : std_logic;
SIGNAL \inst|lcd_bus~19_combout\ : std_logic;
SIGNAL \inst|lcd_bus~22_combout\ : std_logic;
SIGNAL \inst|dut|Selector40~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector40~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector40~4_combout\ : std_logic;
SIGNAL \inst|lcd_bus~26_combout\ : std_logic;
SIGNAL \inst|lcd_bus~59_combout\ : std_logic;
SIGNAL \inst|lcd_bus~27_combout\ : std_logic;
SIGNAL \inst|lcd_bus~28_combout\ : std_logic;
SIGNAL \inst|lcd_bus~23_combout\ : std_logic;
SIGNAL \inst|lcd_bus~24_combout\ : std_logic;
SIGNAL \inst|lcd_bus~25_combout\ : std_logic;
SIGNAL \inst|lcd_bus~29_combout\ : std_logic;
SIGNAL \inst|dut|Selector41~2_combout\ : std_logic;
SIGNAL \inst|Mux12~2_combout\ : std_logic;
SIGNAL \inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst|lcd_bus[3]~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~33_combout\ : std_logic;
SIGNAL \inst|lcd_bus~34_combout\ : std_logic;
SIGNAL \inst|lcd_bus~35_combout\ : std_logic;
SIGNAL \inst|lcd_bus~36_combout\ : std_logic;
SIGNAL \inst|Mux17~3_combout\ : std_logic;
SIGNAL \inst|Mux17~4_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~41_combout\ : std_logic;
SIGNAL \inst|lcd_bus~42_combout\ : std_logic;
SIGNAL \inst|Mux12~3_combout\ : std_logic;
SIGNAL \inst|lcd_bus~30_combout\ : std_logic;
SIGNAL \inst|lcd_bus~31_combout\ : std_logic;
SIGNAL \inst|lcd_bus~32_combout\ : std_logic;
SIGNAL \inst|lcd_bus~37_combout\ : std_logic;
SIGNAL \inst|lcd_bus~38_combout\ : std_logic;
SIGNAL \inst|lcd_bus~39_combout\ : std_logic;
SIGNAL \inst|lcd_bus~40_combout\ : std_logic;
SIGNAL \inst|lcd_bus~43_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~1_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector42~2_combout\ : std_logic;
SIGNAL \inst|Mux18~5_combout\ : std_logic;
SIGNAL \inst|Mux18~2_combout\ : std_logic;
SIGNAL \inst|Mux18~3_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~4_combout\ : std_logic;
SIGNAL \inst|lcd_bus[2]~1_combout\ : std_logic;
SIGNAL \inst|Mux18~6_combout\ : std_logic;
SIGNAL \inst|Mux17~5_combout\ : std_logic;
SIGNAL \inst|Mux17~6_combout\ : std_logic;
SIGNAL \inst|Mux18~7_combout\ : std_logic;
SIGNAL \inst|Mux18~8_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst|Mux11~2_combout\ : std_logic;
SIGNAL \inst|Mux11~3_combout\ : std_logic;
SIGNAL \inst|lcd_bus~44_combout\ : std_logic;
SIGNAL \inst|lcd_bus~45_combout\ : std_logic;
SIGNAL \inst|lcd_bus~46_combout\ : std_logic;
SIGNAL \inst|Mux18~9_combout\ : std_logic;
SIGNAL \inst|Mux18~10_combout\ : std_logic;
SIGNAL \inst|lcd_bus~57_combout\ : std_logic;
SIGNAL \inst|lcd_bus~47_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~5_combout\ : std_logic;
SIGNAL \inst|Mux12~6_combout\ : std_logic;
SIGNAL \inst|Mux12~4_combout\ : std_logic;
SIGNAL \inst|Mux17~7_combout\ : std_logic;
SIGNAL \inst|Mux17~8_combout\ : std_logic;
SIGNAL \inst|Mux17~17_combout\ : std_logic;
SIGNAL \inst|Mux17~9_combout\ : std_logic;
SIGNAL \inst|Mux17~10_combout\ : std_logic;
SIGNAL \inst|Mux12~5_combout\ : std_logic;
SIGNAL \inst|lcd_bus[1]~2_combout\ : std_logic;
SIGNAL \inst|Mux17~11_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux12~7_combout\ : std_logic;
SIGNAL \inst|Mux12~8_combout\ : std_logic;
SIGNAL \inst|Mux12~9_combout\ : std_logic;
SIGNAL \inst|lcd_bus~48_combout\ : std_logic;
SIGNAL \inst|lcd_bus~49_combout\ : std_logic;
SIGNAL \inst|lcd_bus~50_combout\ : std_logic;
SIGNAL \inst|lcd_bus~51_combout\ : std_logic;
SIGNAL \inst|lcd_bus~52_combout\ : std_logic;
SIGNAL \inst|lcd_bus~53_combout\ : std_logic;
SIGNAL \inst|dut|Selector44~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector44~1_combout\ : std_logic;
SIGNAL \inst|Mux12~14_combout\ : std_logic;
SIGNAL \inst|Mux12~11_combout\ : std_logic;
SIGNAL \inst|Mux17~12_combout\ : std_logic;
SIGNAL \inst|Mux17~13_combout\ : std_logic;
SIGNAL \inst|Mux12~10_combout\ : std_logic;
SIGNAL \inst|Mux17~14_combout\ : std_logic;
SIGNAL \inst|Mux17~15_combout\ : std_logic;
SIGNAL \inst|Mux12~12_combout\ : std_logic;
SIGNAL \inst|Mux12~13_combout\ : std_logic;
SIGNAL \inst|lcd_bus[0]~3_combout\ : std_logic;
SIGNAL \inst|Mux17~16_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux20~1_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~54_combout\ : std_logic;
SIGNAL \inst|Mux12~15_combout\ : std_logic;
SIGNAL \inst|Mux12~16_combout\ : std_logic;
SIGNAL \inst|lcd_bus~58_combout\ : std_logic;
SIGNAL \inst|Mux20~2_combout\ : std_logic;
SIGNAL \inst|Mux20~3_combout\ : std_logic;
SIGNAL \inst|Mux20~4_combout\ : std_logic;
SIGNAL \inst|Mux20~5_combout\ : std_logic;
SIGNAL \inst|lcd_bus~55_combout\ : std_logic;
SIGNAL \inst|lcd_bus~56_combout\ : std_logic;
SIGNAL \inst|dut|busy~7_combout\ : std_logic;
SIGNAL \inst|dut|Selector45~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector45~1_combout\ : std_logic;
SIGNAL \inst|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|aux\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|char\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \gf|contagemML\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst8|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \gf|contagemHL\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst11|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \gf|contagemMH\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst9|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \gf|contagemSL\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gf|contagemSH\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gf|contagemHH\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|cont\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst8|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|cont\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst11|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst10|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst10|ALT_INV_result~q\ : std_logic;
SIGNAL \inst9|ALT_INV_result~q\ : std_logic;
SIGNAL \inst11|ALT_INV_result~q\ : std_logic;
SIGNAL \inst8|ALT_INV_result~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

e <= ww_e;
ww_clock <= clock;
ww_button1 <= button1;
ww_button2 <= button2;
ww_button3 <= button3;
ww_button4 <= button4;
rw <= ww_rw;
rs <= ww_rs;
lcd_data <= ww_lcd_data;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|aux~q\);

\inst1|aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|aux~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst10|ALT_INV_result~q\ <= NOT \inst10|result~q\;
\inst9|ALT_INV_result~q\ <= NOT \inst9|result~q\;
\inst11|ALT_INV_result~q\ <= NOT \inst11|result~q\;
\inst8|ALT_INV_result~q\ <= NOT \inst8|result~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y24_N2
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|e~q\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|rs~q\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(7),
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(6),
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(4),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(1),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|dut|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y18_N0
\inst|dut|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~0_combout\ = \inst|dut|clk_count\(0) $ (VCC)
-- \inst|dut|Add0~1\ = CARRY(\inst|dut|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(0),
	datad => VCC,
	combout => \inst|dut|Add0~0_combout\,
	cout => \inst|dut|Add0~1\);

-- Location: LCCOMB_X16_Y17_N12
\inst|dut|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~0_combout\ = (!\inst|dut|clk_count\(25) & (!\inst|dut|clk_count\(23) & (!\inst|dut|clk_count\(22) & !\inst|dut|clk_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(25),
	datab => \inst|dut|clk_count\(23),
	datac => \inst|dut|clk_count\(22),
	datad => \inst|dut|clk_count\(24),
	combout => \inst|dut|LessThan9~0_combout\);

-- Location: LCCOMB_X16_Y17_N22
\inst|dut|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~1_combout\ = (!\inst|dut|clk_count\(26) & \inst|dut|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|clk_count\(26),
	datad => \inst|dut|LessThan9~0_combout\,
	combout => \inst|dut|LessThan9~1_combout\);

-- Location: LCCOMB_X14_Y17_N8
\inst|dut|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~0_combout\ = (!\inst|dut|clk_count\(16) & (!\inst|dut|clk_count\(15) & !\inst|dut|clk_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(16),
	datab => \inst|dut|clk_count\(15),
	datad => \inst|dut|clk_count\(14),
	combout => \inst|dut|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y18_N28
\inst|dut|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~1_combout\ = (((!\inst|dut|clk_count\(6) & !\inst|dut|clk_count\(5))) # (!\inst|dut|clk_count\(8))) # (!\inst|dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(7),
	datac => \inst|dut|clk_count\(5),
	datad => \inst|dut|clk_count\(8),
	combout => \inst|dut|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y18_N10
\inst|dut|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~2_combout\ = ((!\inst|dut|clk_count\(9) & \inst|dut|LessThan0~1_combout\)) # (!\inst|dut|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(10),
	datac => \inst|dut|clk_count\(9),
	datad => \inst|dut|LessThan0~1_combout\,
	combout => \inst|dut|LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst|dut|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~3_combout\ = ((!\inst|dut|clk_count\(11) & (\inst|dut|LessThan0~2_combout\ & !\inst|dut|clk_count\(12)))) # (!\inst|dut|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(13),
	datab => \inst|dut|clk_count\(11),
	datac => \inst|dut|LessThan0~2_combout\,
	datad => \inst|dut|clk_count\(12),
	combout => \inst|dut|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst|dut|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~4_combout\ = (((\inst|dut|LessThan0~0_combout\ & \inst|dut|LessThan0~3_combout\)) # (!\inst|dut|clk_count\(18))) # (!\inst|dut|clk_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(17),
	datab => \inst|dut|clk_count\(18),
	datac => \inst|dut|LessThan0~0_combout\,
	datad => \inst|dut|LessThan0~3_combout\,
	combout => \inst|dut|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y17_N26
\inst|dut|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~5_combout\ = ((!\inst|dut|clk_count\(20) & (!\inst|dut|clk_count\(19) & \inst|dut|LessThan0~4_combout\))) # (!\inst|dut|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(21),
	datab => \inst|dut|clk_count\(20),
	datac => \inst|dut|clk_count\(19),
	datad => \inst|dut|LessThan0~4_combout\,
	combout => \inst|dut|LessThan0~5_combout\);

-- Location: LCCOMB_X13_Y19_N0
\inst|dut|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~5_combout\ = (!\inst|dut|clk_count\(28) & (!\inst|dut|clk_count\(29) & (!\inst|dut|clk_count\(27) & !\inst|dut|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(28),
	datab => \inst|dut|clk_count\(29),
	datac => \inst|dut|clk_count\(27),
	datad => \inst|dut|clk_count\(30),
	combout => \inst|dut|LessThan9~5_combout\);

-- Location: LCCOMB_X13_Y19_N18
\inst|dut|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~6_combout\ = (\inst|dut|clk_count\(31)) # ((\inst|dut|LessThan9~1_combout\ & (\inst|dut|LessThan0~5_combout\ & \inst|dut|LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan9~1_combout\,
	datab => \inst|dut|clk_count\(31),
	datac => \inst|dut|LessThan0~5_combout\,
	datad => \inst|dut|LessThan9~5_combout\,
	combout => \inst|dut|LessThan0~6_combout\);

-- Location: LCCOMB_X13_Y19_N8
\inst|dut|lcd_data[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[5]~1_combout\ = (\inst|dut|state.power_up~q\) # (!\inst|dut|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|state.power_up~q\,
	datad => \inst|dut|LessThan0~6_combout\,
	combout => \inst|dut|lcd_data[5]~1_combout\);

-- Location: FF_X13_Y19_N9
\inst|dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|lcd_data[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.power_up~q\);

-- Location: LCCOMB_X14_Y18_N22
\inst|dut|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~6_combout\ = (!\inst|dut|clk_count\(4) & (!\inst|dut|clk_count\(2) & (!\inst|dut|clk_count\(5) & !\inst|dut|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(4),
	datab => \inst|dut|clk_count\(2),
	datac => \inst|dut|clk_count\(5),
	datad => \inst|dut|clk_count\(3),
	combout => \inst|dut|LessThan9~6_combout\);

-- Location: LCCOMB_X14_Y18_N24
\inst|dut|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~7_combout\ = ((!\inst|dut|clk_count\(8)) # (!\inst|dut|clk_count\(6))) # (!\inst|dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(7),
	datac => \inst|dut|clk_count\(6),
	datad => \inst|dut|clk_count\(8),
	combout => \inst|dut|LessThan9~7_combout\);

-- Location: LCCOMB_X14_Y18_N14
\inst|dut|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~8_combout\ = (!\inst|dut|clk_count\(10) & (!\inst|dut|clk_count\(9) & ((\inst|dut|LessThan9~6_combout\) # (\inst|dut|LessThan9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan9~6_combout\,
	datab => \inst|dut|clk_count\(10),
	datac => \inst|dut|clk_count\(9),
	datad => \inst|dut|LessThan9~7_combout\,
	combout => \inst|dut|LessThan9~8_combout\);

-- Location: LCCOMB_X14_Y17_N30
\inst|dut|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~2_combout\ = (!\inst|dut|clk_count\(19) & (!\inst|dut|clk_count\(20) & (!\inst|dut|clk_count\(13) & !\inst|dut|clk_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(19),
	datab => \inst|dut|clk_count\(20),
	datac => \inst|dut|clk_count\(13),
	datad => \inst|dut|clk_count\(17),
	combout => \inst|dut|LessThan9~2_combout\);

-- Location: LCCOMB_X14_Y17_N24
\inst|dut|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~3_combout\ = (!\inst|dut|clk_count\(12) & (\inst|dut|LessThan0~0_combout\ & (\inst|dut|LessThan9~2_combout\ & \inst|dut|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(12),
	datab => \inst|dut|LessThan0~0_combout\,
	datac => \inst|dut|LessThan9~2_combout\,
	datad => \inst|dut|LessThan9~1_combout\,
	combout => \inst|dut|LessThan9~3_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst|dut|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~4_combout\ = (!\inst|dut|clk_count\(21) & (!\inst|dut|clk_count\(18) & \inst|dut|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(21),
	datab => \inst|dut|clk_count\(18),
	datad => \inst|dut|LessThan9~3_combout\,
	combout => \inst|dut|LessThan9~4_combout\);

-- Location: LCCOMB_X13_Y19_N30
\inst|dut|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~9_combout\ = (\inst|dut|LessThan9~5_combout\ & (\inst|dut|LessThan9~4_combout\ & ((\inst|dut|LessThan9~8_combout\) # (!\inst|dut|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(11),
	datab => \inst|dut|LessThan9~5_combout\,
	datac => \inst|dut|LessThan9~8_combout\,
	datad => \inst|dut|LessThan9~4_combout\,
	combout => \inst|dut|LessThan9~9_combout\);

-- Location: LCCOMB_X11_Y18_N22
\inst|dut|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~1_combout\ = (\inst|dut|Add0~8_combout\ & (\inst|dut|Add0~12_combout\ & \inst|dut|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~8_combout\,
	datac => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|Add0~10_combout\,
	combout => \inst|dut|LessThan4~1_combout\);

-- Location: LCCOMB_X11_Y18_N12
\inst|dut|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~0_combout\ = ((!\inst|dut|Add0~18_combout\) # (!\inst|dut|Add0~16_combout\)) # (!\inst|dut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~20_combout\,
	datac => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|Add0~18_combout\,
	combout => \inst|dut|LessThan4~0_combout\);

-- Location: LCCOMB_X11_Y18_N20
\inst|dut|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~2_combout\ = (!\inst|dut|Add0~22_combout\ & ((\inst|dut|LessThan4~0_combout\) # ((!\inst|dut|Add0~14_combout\ & !\inst|dut|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~22_combout\,
	datab => \inst|dut|Add0~14_combout\,
	datac => \inst|dut|LessThan4~1_combout\,
	datad => \inst|dut|LessThan4~0_combout\,
	combout => \inst|dut|LessThan4~2_combout\);

-- Location: LCCOMB_X12_Y17_N30
\inst|dut|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~3_combout\ = (!\inst|dut|Add0~30_combout\ & (!\inst|dut|Add0~32_combout\ & (!\inst|dut|Add0~28_combout\ & !\inst|dut|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~30_combout\,
	datab => \inst|dut|Add0~32_combout\,
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|Add0~26_combout\,
	combout => \inst|dut|LessThan3~3_combout\);

-- Location: LCCOMB_X12_Y17_N28
\inst|dut|busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~2_combout\ = (!\inst|dut|Add0~56_combout\ & !\inst|dut|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~56_combout\,
	datad => \inst|dut|Add0~58_combout\,
	combout => \inst|dut|busy~2_combout\);

-- Location: LCCOMB_X11_Y17_N6
\inst|dut|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~0_combout\ = (!\inst|dut|Add0~40_combout\ & (!\inst|dut|Add0~34_combout\ & (!\inst|dut|Add0~36_combout\ & !\inst|dut|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~40_combout\,
	datab => \inst|dut|Add0~34_combout\,
	datac => \inst|dut|Add0~36_combout\,
	datad => \inst|dut|Add0~38_combout\,
	combout => \inst|dut|LessThan3~0_combout\);

-- Location: LCCOMB_X12_Y17_N26
\inst|dut|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~1_combout\ = (!\inst|dut|Add0~42_combout\ & (!\inst|dut|Add0~46_combout\ & (!\inst|dut|Add0~44_combout\ & !\inst|dut|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~42_combout\,
	datab => \inst|dut|Add0~46_combout\,
	datac => \inst|dut|Add0~44_combout\,
	datad => \inst|dut|Add0~48_combout\,
	combout => \inst|dut|LessThan3~1_combout\);

-- Location: LCCOMB_X12_Y17_N0
\inst|dut|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~2_combout\ = (!\inst|dut|Add0~52_combout\ & (!\inst|dut|Add0~50_combout\ & (\inst|dut|LessThan3~1_combout\ & !\inst|dut|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~52_combout\,
	datab => \inst|dut|Add0~50_combout\,
	datac => \inst|dut|LessThan3~1_combout\,
	datad => \inst|dut|Add0~54_combout\,
	combout => \inst|dut|LessThan3~2_combout\);

-- Location: LCCOMB_X12_Y17_N20
\inst|dut|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~4_combout\ = (\inst|dut|LessThan3~3_combout\ & (\inst|dut|busy~2_combout\ & (\inst|dut|LessThan3~0_combout\ & \inst|dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~3_combout\,
	datab => \inst|dut|busy~2_combout\,
	datac => \inst|dut|LessThan3~0_combout\,
	datad => \inst|dut|LessThan3~2_combout\,
	combout => \inst|dut|LessThan3~4_combout\);

-- Location: LCCOMB_X12_Y17_N4
\inst|dut|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~4_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan3~4_combout\ & ((\inst|dut|LessThan4~2_combout\) # (!\inst|dut|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~24_combout\,
	datab => \inst|dut|LessThan4~2_combout\,
	datac => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|LessThan4~4_combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst|dut|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~1_combout\ = ((!\inst|dut|Add0~16_combout\) # (!\inst|dut|Add0~14_combout\)) # (!\inst|dut|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~18_combout\,
	datac => \inst|dut|Add0~14_combout\,
	datad => \inst|dut|Add0~16_combout\,
	combout => \inst|dut|LessThan2~1_combout\);

-- Location: LCCOMB_X12_Y18_N18
\inst|dut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~0_combout\ = (!\inst|dut|Add0~12_combout\ & (((!\inst|dut|Add0~6_combout\) # (!\inst|dut|Add0~8_combout\)) # (!\inst|dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~10_combout\,
	datab => \inst|dut|Add0~8_combout\,
	datac => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|Add0~6_combout\,
	combout => \inst|dut|LessThan2~0_combout\);

-- Location: LCCOMB_X12_Y18_N2
\inst|dut|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~2_combout\ = ((!\inst|dut|Add0~20_combout\ & ((\inst|dut|LessThan2~1_combout\) # (\inst|dut|LessThan2~0_combout\)))) # (!\inst|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~22_combout\,
	datab => \inst|dut|LessThan2~1_combout\,
	datac => \inst|dut|Add0~20_combout\,
	datad => \inst|dut|LessThan2~0_combout\,
	combout => \inst|dut|LessThan2~2_combout\);

-- Location: LCCOMB_X12_Y18_N20
\inst|dut|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~10_combout\ = ((!\inst|dut|Add0~8_combout\ & ((!\inst|dut|Add0~4_combout\) # (!\inst|dut|Add0~6_combout\)))) # (!\inst|dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~6_combout\,
	datab => \inst|dut|Add0~10_combout\,
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~4_combout\,
	combout => \inst|dut|LessThan3~10_combout\);

-- Location: LCCOMB_X11_Y18_N0
\inst|dut|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~8_combout\ = (\inst|dut|Add0~22_combout\ & \inst|dut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~22_combout\,
	datad => \inst|dut|Add0~20_combout\,
	combout => \inst|dut|LessThan3~8_combout\);

-- Location: LCCOMB_X11_Y18_N10
\inst|dut|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~9_combout\ = ((!\inst|dut|Add0~18_combout\ & ((!\inst|dut|Add0~16_combout\) # (!\inst|dut|Add0~14_combout\)))) # (!\inst|dut|LessThan3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~18_combout\,
	datab => \inst|dut|Add0~14_combout\,
	datac => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|LessThan3~8_combout\,
	combout => \inst|dut|LessThan3~9_combout\);

-- Location: LCCOMB_X11_Y18_N8
\inst|dut|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~11_combout\ = (\inst|dut|LessThan3~9_combout\) # ((!\inst|dut|Add0~18_combout\ & (!\inst|dut|Add0~12_combout\ & \inst|dut|LessThan3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~18_combout\,
	datab => \inst|dut|Add0~12_combout\,
	datac => \inst|dut|LessThan3~10_combout\,
	datad => \inst|dut|LessThan3~9_combout\,
	combout => \inst|dut|LessThan3~11_combout\);

-- Location: LCCOMB_X12_Y17_N10
\inst|dut|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count~0_combout\ = (!\inst|dut|Add0~24_combout\ & (\inst|dut|LessThan3~4_combout\ & ((\inst|dut|LessThan2~2_combout\) # (\inst|dut|LessThan3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~24_combout\,
	datab => \inst|dut|LessThan2~2_combout\,
	datac => \inst|dut|LessThan3~11_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|clk_count~0_combout\);

-- Location: LCCOMB_X12_Y18_N10
\inst|dut|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~4_combout\ = (!\inst|dut|Add0~4_combout\ & (!\inst|dut|Add0~8_combout\ & !\inst|dut|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~4_combout\,
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~6_combout\,
	combout => \inst|dut|LessThan6~4_combout\);

-- Location: LCCOMB_X12_Y18_N12
\inst|dut|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan5~0_combout\ = (!\inst|dut|Add0~14_combout\ & (((\inst|dut|LessThan6~4_combout\) # (!\inst|dut|Add0~10_combout\)) # (!\inst|dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~14_combout\,
	datab => \inst|dut|Add0~12_combout\,
	datac => \inst|dut|Add0~10_combout\,
	datad => \inst|dut|LessThan6~4_combout\,
	combout => \inst|dut|LessThan5~0_combout\);

-- Location: LCCOMB_X12_Y18_N30
\inst|dut|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan5~1_combout\ = (!\inst|dut|Add0~20_combout\ & (!\inst|dut|Add0~18_combout\ & ((\inst|dut|LessThan5~0_combout\) # (!\inst|dut|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan5~0_combout\,
	datab => \inst|dut|Add0~16_combout\,
	datac => \inst|dut|Add0~20_combout\,
	datad => \inst|dut|Add0~18_combout\,
	combout => \inst|dut|LessThan5~1_combout\);

-- Location: LCCOMB_X12_Y17_N22
\inst|dut|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan5~2_combout\ = (\inst|dut|LessThan3~4_combout\ & (((\inst|dut|LessThan5~1_combout\) # (!\inst|dut|Add0~22_combout\)) # (!\inst|dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~24_combout\,
	datab => \inst|dut|Add0~22_combout\,
	datac => \inst|dut|LessThan5~1_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|LessThan5~2_combout\);

-- Location: LCCOMB_X11_Y18_N2
\inst|dut|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~0_combout\ = (\inst|dut|Add0~8_combout\ & \inst|dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~10_combout\,
	combout => \inst|dut|LessThan8~0_combout\);

-- Location: LCCOMB_X11_Y18_N4
\inst|dut|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan7~0_combout\ = (\inst|dut|Add0~16_combout\ & (\inst|dut|Add0~14_combout\ & (\inst|dut|Add0~12_combout\ & \inst|dut|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~16_combout\,
	datab => \inst|dut|Add0~14_combout\,
	datac => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|LessThan8~0_combout\,
	combout => \inst|dut|LessThan7~0_combout\);

-- Location: LCCOMB_X11_Y18_N6
\inst|dut|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan1~0_combout\ = (!\inst|dut|Add0~22_combout\ & (!\inst|dut|Add0~20_combout\ & (!\inst|dut|Add0~24_combout\ & !\inst|dut|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~22_combout\,
	datab => \inst|dut|Add0~20_combout\,
	datac => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|Add0~18_combout\,
	combout => \inst|dut|LessThan1~0_combout\);

-- Location: LCCOMB_X11_Y18_N24
\inst|dut|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan1~1_combout\ = (\inst|dut|LessThan1~0_combout\ & (((!\inst|dut|Add0~4_combout\ & !\inst|dut|Add0~6_combout\)) # (!\inst|dut|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~4_combout\,
	datab => \inst|dut|Add0~6_combout\,
	datac => \inst|dut|LessThan7~0_combout\,
	datad => \inst|dut|LessThan1~0_combout\,
	combout => \inst|dut|LessThan1~1_combout\);

-- Location: LCCOMB_X11_Y17_N4
\inst|dut|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~5_combout\ = (!\inst|dut|Add0~52_combout\ & (!\inst|dut|Add0~54_combout\ & !\inst|dut|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~52_combout\,
	datac => \inst|dut|Add0~54_combout\,
	datad => \inst|dut|Add0~50_combout\,
	combout => \inst|dut|LessThan3~5_combout\);

-- Location: LCCOMB_X11_Y17_N18
\inst|dut|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~6_combout\ = (\inst|dut|LessThan3~0_combout\ & \inst|dut|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~0_combout\,
	datad => \inst|dut|LessThan3~1_combout\,
	combout => \inst|dut|LessThan3~6_combout\);

-- Location: LCCOMB_X11_Y17_N12
\inst|dut|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~7_combout\ = (!\inst|dut|Add0~56_combout\ & (!\inst|dut|Add0~58_combout\ & (\inst|dut|LessThan3~5_combout\ & \inst|dut|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~56_combout\,
	datab => \inst|dut|Add0~58_combout\,
	datac => \inst|dut|LessThan3~5_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan3~7_combout\);

-- Location: LCCOMB_X11_Y17_N8
\inst|dut|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan1~2_combout\ = (\inst|dut|LessThan3~3_combout\ & (\inst|dut|LessThan1~1_combout\ & \inst|dut|LessThan3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~3_combout\,
	datac => \inst|dut|LessThan1~1_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan1~2_combout\);

-- Location: LCCOMB_X12_Y17_N8
\inst|dut|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count~1_combout\ = (!\inst|dut|Add0~60_combout\ & ((\inst|dut|clk_count~0_combout\) # ((\inst|dut|LessThan5~2_combout\) # (\inst|dut|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count~0_combout\,
	datab => \inst|dut|Add0~60_combout\,
	datac => \inst|dut|LessThan5~2_combout\,
	datad => \inst|dut|LessThan1~2_combout\,
	combout => \inst|dut|clk_count~1_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst|dut|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~3_combout\ = (\inst|dut|Add0~32_combout\ & (\inst|dut|Add0~30_combout\ & ((\inst|dut|Add0~28_combout\) # (\inst|dut|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~32_combout\,
	datab => \inst|dut|Add0~28_combout\,
	datac => \inst|dut|Add0~30_combout\,
	datad => \inst|dut|Add0~26_combout\,
	combout => \inst|dut|LessThan6~3_combout\);

-- Location: LCCOMB_X11_Y18_N14
\inst|dut|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~2_combout\ = (((!\inst|dut|LessThan8~0_combout\ & !\inst|dut|Add0~12_combout\)) # (!\inst|dut|Add0~14_combout\)) # (!\inst|dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~16_combout\,
	datab => \inst|dut|LessThan8~0_combout\,
	datac => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|Add0~14_combout\,
	combout => \inst|dut|LessThan8~2_combout\);

-- Location: LCCOMB_X11_Y18_N16
\inst|dut|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~1_combout\ = (!\inst|dut|Add0~24_combout\ & !\inst|dut|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|Add0~28_combout\,
	combout => \inst|dut|LessThan8~1_combout\);

-- Location: LCCOMB_X11_Y18_N26
\inst|dut|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~3_combout\ = (\inst|dut|LessThan8~1_combout\ & (((!\inst|dut|Add0~18_combout\ & \inst|dut|LessThan8~2_combout\)) # (!\inst|dut|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~18_combout\,
	datab => \inst|dut|LessThan3~8_combout\,
	datac => \inst|dut|LessThan8~2_combout\,
	datad => \inst|dut|LessThan8~1_combout\,
	combout => \inst|dut|LessThan8~3_combout\);

-- Location: LCCOMB_X11_Y17_N22
\inst|dut|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~4_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan3~7_combout\ & ((\inst|dut|LessThan8~3_combout\) # (!\inst|dut|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan6~3_combout\,
	datab => \inst|dut|Add0~60_combout\,
	datac => \inst|dut|LessThan8~3_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan8~4_combout\);

-- Location: LCCOMB_X12_Y18_N24
\inst|dut|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~1_combout\ = (!\inst|dut|Add0~6_combout\ & (!\inst|dut|Add0~10_combout\ & (!\inst|dut|Add0~8_combout\ & !\inst|dut|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~6_combout\,
	datab => \inst|dut|Add0~10_combout\,
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~4_combout\,
	combout => \inst|dut|LessThan6~1_combout\);

-- Location: LCCOMB_X12_Y18_N26
\inst|dut|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~2_combout\ = (!\inst|dut|Add0~14_combout\ & (!\inst|dut|Add0~16_combout\ & (!\inst|dut|Add0~12_combout\ & \inst|dut|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~14_combout\,
	datab => \inst|dut|Add0~16_combout\,
	datac => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|LessThan6~1_combout\,
	combout => \inst|dut|LessThan6~2_combout\);

-- Location: LCCOMB_X11_Y18_N28
\inst|dut|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~0_combout\ = (!\inst|dut|Add0~28_combout\ & \inst|dut|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|LessThan1~0_combout\,
	combout => \inst|dut|LessThan6~0_combout\);

-- Location: LCCOMB_X11_Y17_N26
\inst|dut|busy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~3_combout\ = (\inst|dut|LessThan3~7_combout\ & (((\inst|dut|LessThan6~2_combout\ & \inst|dut|LessThan6~0_combout\)) # (!\inst|dut|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan6~3_combout\,
	datab => \inst|dut|LessThan6~2_combout\,
	datac => \inst|dut|LessThan6~0_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|busy~3_combout\);

-- Location: LCCOMB_X11_Y18_N30
\inst|dut|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan7~1_combout\ = (!\inst|dut|Add0~28_combout\ & (\inst|dut|LessThan1~0_combout\ & ((!\inst|dut|LessThan7~0_combout\) # (!\inst|dut|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~28_combout\,
	datab => \inst|dut|Add0~6_combout\,
	datac => \inst|dut|LessThan7~0_combout\,
	datad => \inst|dut|LessThan1~0_combout\,
	combout => \inst|dut|LessThan7~1_combout\);

-- Location: LCCOMB_X11_Y17_N24
\inst|dut|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan7~2_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan3~7_combout\ & ((\inst|dut|LessThan7~1_combout\) # (!\inst|dut|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan6~3_combout\,
	datab => \inst|dut|Add0~60_combout\,
	datac => \inst|dut|LessThan7~1_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan7~2_combout\);

-- Location: LCCOMB_X11_Y17_N20
\inst|dut|lcd_data[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[5]~2_combout\ = (!\inst|dut|LessThan8~4_combout\ & (!\inst|dut|LessThan7~2_combout\ & ((\inst|dut|Add0~60_combout\) # (!\inst|dut|busy~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan8~4_combout\,
	datab => \inst|dut|Add0~60_combout\,
	datac => \inst|dut|busy~3_combout\,
	datad => \inst|dut|LessThan7~2_combout\,
	combout => \inst|dut|lcd_data[5]~2_combout\);

-- Location: LCCOMB_X12_Y17_N6
\inst|dut|clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count~2_combout\ = (\inst|dut|Add0~62_combout\) # ((\inst|dut|LessThan4~4_combout\) # ((\inst|dut|clk_count~1_combout\) # (!\inst|dut|lcd_data[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~62_combout\,
	datab => \inst|dut|LessThan4~4_combout\,
	datac => \inst|dut|clk_count~1_combout\,
	datad => \inst|dut|lcd_data[5]~2_combout\,
	combout => \inst|dut|clk_count~2_combout\);

-- Location: LCCOMB_X12_Y17_N24
\inst|dut|clk_count[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count[31]~3_combout\ = (\inst|dut|state.send~q\ & ((\inst|dut|clk_count\(31)) # ((\inst|dut|LessThan9~9_combout\)))) # (!\inst|dut|state.send~q\ & (((\inst|dut|clk_count~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(31),
	datab => \inst|dut|state.send~q\,
	datac => \inst|dut|LessThan9~9_combout\,
	datad => \inst|dut|clk_count~2_combout\,
	combout => \inst|dut|clk_count[31]~3_combout\);

-- Location: LCCOMB_X12_Y17_N2
\inst|dut|clk_count[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count[31]~4_combout\ = (!\inst|dut|state.ready~q\ & ((\inst|dut|state.power_up~q\ & ((\inst|dut|clk_count[31]~3_combout\))) # (!\inst|dut|state.power_up~q\ & (\inst|dut|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.ready~q\,
	datab => \inst|dut|state.power_up~q\,
	datac => \inst|dut|LessThan0~6_combout\,
	datad => \inst|dut|clk_count[31]~3_combout\,
	combout => \inst|dut|clk_count[31]~4_combout\);

-- Location: LCCOMB_X14_Y18_N4
\inst|dut|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector32~0_combout\ = (\inst|dut|Add0~0_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~0_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector32~0_combout\);

-- Location: FF_X14_Y18_N5
\inst|dut|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(0));

-- Location: LCCOMB_X13_Y18_N2
\inst|dut|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~2_combout\ = (\inst|dut|clk_count\(1) & (!\inst|dut|Add0~1\)) # (!\inst|dut|clk_count\(1) & ((\inst|dut|Add0~1\) # (GND)))
-- \inst|dut|Add0~3\ = CARRY((!\inst|dut|Add0~1\) # (!\inst|dut|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(1),
	datad => VCC,
	cin => \inst|dut|Add0~1\,
	combout => \inst|dut|Add0~2_combout\,
	cout => \inst|dut|Add0~3\);

-- Location: LCCOMB_X12_Y18_N16
\inst|dut|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector31~0_combout\ = (\inst|dut|Add0~2_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~2_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector31~0_combout\);

-- Location: FF_X12_Y18_N17
\inst|dut|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(1));

-- Location: LCCOMB_X13_Y18_N4
\inst|dut|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~4_combout\ = (\inst|dut|clk_count\(2) & (\inst|dut|Add0~3\ $ (GND))) # (!\inst|dut|clk_count\(2) & (!\inst|dut|Add0~3\ & VCC))
-- \inst|dut|Add0~5\ = CARRY((\inst|dut|clk_count\(2) & !\inst|dut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(2),
	datad => VCC,
	cin => \inst|dut|Add0~3\,
	combout => \inst|dut|Add0~4_combout\,
	cout => \inst|dut|Add0~5\);

-- Location: LCCOMB_X12_Y18_N14
\inst|dut|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector30~0_combout\ = (\inst|dut|Add0~4_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~4_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector30~0_combout\);

-- Location: FF_X12_Y18_N15
\inst|dut|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(2));

-- Location: LCCOMB_X13_Y18_N6
\inst|dut|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~6_combout\ = (\inst|dut|clk_count\(3) & (!\inst|dut|Add0~5\)) # (!\inst|dut|clk_count\(3) & ((\inst|dut|Add0~5\) # (GND)))
-- \inst|dut|Add0~7\ = CARRY((!\inst|dut|Add0~5\) # (!\inst|dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(3),
	datad => VCC,
	cin => \inst|dut|Add0~5\,
	combout => \inst|dut|Add0~6_combout\,
	cout => \inst|dut|Add0~7\);

-- Location: LCCOMB_X14_Y18_N18
\inst|dut|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector29~0_combout\ = (\inst|dut|Add0~6_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~6_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector29~0_combout\);

-- Location: FF_X14_Y18_N19
\inst|dut|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(3));

-- Location: LCCOMB_X13_Y18_N8
\inst|dut|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~8_combout\ = (\inst|dut|clk_count\(4) & (\inst|dut|Add0~7\ $ (GND))) # (!\inst|dut|clk_count\(4) & (!\inst|dut|Add0~7\ & VCC))
-- \inst|dut|Add0~9\ = CARRY((\inst|dut|clk_count\(4) & !\inst|dut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(4),
	datad => VCC,
	cin => \inst|dut|Add0~7\,
	combout => \inst|dut|Add0~8_combout\,
	cout => \inst|dut|Add0~9\);

-- Location: LCCOMB_X14_Y18_N12
\inst|dut|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector28~0_combout\ = (\inst|dut|Add0~8_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector28~0_combout\);

-- Location: FF_X14_Y18_N13
\inst|dut|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(4));

-- Location: LCCOMB_X13_Y18_N10
\inst|dut|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~10_combout\ = (\inst|dut|clk_count\(5) & (!\inst|dut|Add0~9\)) # (!\inst|dut|clk_count\(5) & ((\inst|dut|Add0~9\) # (GND)))
-- \inst|dut|Add0~11\ = CARRY((!\inst|dut|Add0~9\) # (!\inst|dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(5),
	datad => VCC,
	cin => \inst|dut|Add0~9\,
	combout => \inst|dut|Add0~10_combout\,
	cout => \inst|dut|Add0~11\);

-- Location: LCCOMB_X12_Y18_N0
\inst|dut|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector27~0_combout\ = (\inst|dut|Add0~10_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~10_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector27~0_combout\);

-- Location: FF_X12_Y18_N1
\inst|dut|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(5));

-- Location: LCCOMB_X13_Y18_N12
\inst|dut|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~12_combout\ = (\inst|dut|clk_count\(6) & (\inst|dut|Add0~11\ $ (GND))) # (!\inst|dut|clk_count\(6) & (!\inst|dut|Add0~11\ & VCC))
-- \inst|dut|Add0~13\ = CARRY((\inst|dut|clk_count\(6) & !\inst|dut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(6),
	datad => VCC,
	cin => \inst|dut|Add0~11\,
	combout => \inst|dut|Add0~12_combout\,
	cout => \inst|dut|Add0~13\);

-- Location: LCCOMB_X14_Y18_N26
\inst|dut|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector26~0_combout\ = (\inst|dut|Add0~12_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector26~0_combout\);

-- Location: FF_X14_Y18_N27
\inst|dut|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(6));

-- Location: LCCOMB_X13_Y18_N14
\inst|dut|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~14_combout\ = (\inst|dut|clk_count\(7) & (!\inst|dut|Add0~13\)) # (!\inst|dut|clk_count\(7) & ((\inst|dut|Add0~13\) # (GND)))
-- \inst|dut|Add0~15\ = CARRY((!\inst|dut|Add0~13\) # (!\inst|dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(7),
	datad => VCC,
	cin => \inst|dut|Add0~13\,
	combout => \inst|dut|Add0~14_combout\,
	cout => \inst|dut|Add0~15\);

-- Location: LCCOMB_X14_Y18_N20
\inst|dut|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector25~0_combout\ = (\inst|dut|Add0~14_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~14_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector25~0_combout\);

-- Location: FF_X14_Y18_N21
\inst|dut|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(7));

-- Location: LCCOMB_X13_Y18_N16
\inst|dut|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~16_combout\ = (\inst|dut|clk_count\(8) & (\inst|dut|Add0~15\ $ (GND))) # (!\inst|dut|clk_count\(8) & (!\inst|dut|Add0~15\ & VCC))
-- \inst|dut|Add0~17\ = CARRY((\inst|dut|clk_count\(8) & !\inst|dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(8),
	datad => VCC,
	cin => \inst|dut|Add0~15\,
	combout => \inst|dut|Add0~16_combout\,
	cout => \inst|dut|Add0~17\);

-- Location: LCCOMB_X12_Y18_N6
\inst|dut|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector24~0_combout\ = (\inst|dut|Add0~16_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector24~0_combout\);

-- Location: FF_X12_Y18_N7
\inst|dut|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(8));

-- Location: LCCOMB_X13_Y18_N18
\inst|dut|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~18_combout\ = (\inst|dut|clk_count\(9) & (!\inst|dut|Add0~17\)) # (!\inst|dut|clk_count\(9) & ((\inst|dut|Add0~17\) # (GND)))
-- \inst|dut|Add0~19\ = CARRY((!\inst|dut|Add0~17\) # (!\inst|dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(9),
	datad => VCC,
	cin => \inst|dut|Add0~17\,
	combout => \inst|dut|Add0~18_combout\,
	cout => \inst|dut|Add0~19\);

-- Location: LCCOMB_X12_Y17_N14
\inst|dut|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector23~0_combout\ = (\inst|dut|Add0~18_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~18_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector23~0_combout\);

-- Location: FF_X12_Y17_N15
\inst|dut|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(9));

-- Location: LCCOMB_X13_Y18_N20
\inst|dut|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~20_combout\ = (\inst|dut|clk_count\(10) & (\inst|dut|Add0~19\ $ (GND))) # (!\inst|dut|clk_count\(10) & (!\inst|dut|Add0~19\ & VCC))
-- \inst|dut|Add0~21\ = CARRY((\inst|dut|clk_count\(10) & !\inst|dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(10),
	datad => VCC,
	cin => \inst|dut|Add0~19\,
	combout => \inst|dut|Add0~20_combout\,
	cout => \inst|dut|Add0~21\);

-- Location: LCCOMB_X12_Y18_N8
\inst|dut|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector22~0_combout\ = (\inst|dut|Add0~20_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~20_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector22~0_combout\);

-- Location: FF_X12_Y18_N9
\inst|dut|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(10));

-- Location: LCCOMB_X13_Y18_N22
\inst|dut|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~22_combout\ = (\inst|dut|clk_count\(11) & (!\inst|dut|Add0~21\)) # (!\inst|dut|clk_count\(11) & ((\inst|dut|Add0~21\) # (GND)))
-- \inst|dut|Add0~23\ = CARRY((!\inst|dut|Add0~21\) # (!\inst|dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(11),
	datad => VCC,
	cin => \inst|dut|Add0~21\,
	combout => \inst|dut|Add0~22_combout\,
	cout => \inst|dut|Add0~23\);

-- Location: LCCOMB_X12_Y18_N22
\inst|dut|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector21~0_combout\ = (\inst|dut|Add0~22_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~22_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector21~0_combout\);

-- Location: FF_X12_Y18_N23
\inst|dut|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(11));

-- Location: LCCOMB_X13_Y18_N24
\inst|dut|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~24_combout\ = (\inst|dut|clk_count\(12) & (\inst|dut|Add0~23\ $ (GND))) # (!\inst|dut|clk_count\(12) & (!\inst|dut|Add0~23\ & VCC))
-- \inst|dut|Add0~25\ = CARRY((\inst|dut|clk_count\(12) & !\inst|dut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(12),
	datad => VCC,
	cin => \inst|dut|Add0~23\,
	combout => \inst|dut|Add0~24_combout\,
	cout => \inst|dut|Add0~25\);

-- Location: LCCOMB_X14_Y17_N12
\inst|dut|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector20~0_combout\ = (\inst|dut|Add0~24_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector20~0_combout\);

-- Location: FF_X14_Y17_N13
\inst|dut|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(12));

-- Location: LCCOMB_X13_Y18_N26
\inst|dut|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~26_combout\ = (\inst|dut|clk_count\(13) & (!\inst|dut|Add0~25\)) # (!\inst|dut|clk_count\(13) & ((\inst|dut|Add0~25\) # (GND)))
-- \inst|dut|Add0~27\ = CARRY((!\inst|dut|Add0~25\) # (!\inst|dut|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(13),
	datad => VCC,
	cin => \inst|dut|Add0~25\,
	combout => \inst|dut|Add0~26_combout\,
	cout => \inst|dut|Add0~27\);

-- Location: LCCOMB_X12_Y18_N4
\inst|dut|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector19~0_combout\ = (\inst|dut|Add0~26_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~26_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector19~0_combout\);

-- Location: FF_X12_Y18_N5
\inst|dut|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(13));

-- Location: LCCOMB_X13_Y18_N28
\inst|dut|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~28_combout\ = (\inst|dut|clk_count\(14) & (\inst|dut|Add0~27\ $ (GND))) # (!\inst|dut|clk_count\(14) & (!\inst|dut|Add0~27\ & VCC))
-- \inst|dut|Add0~29\ = CARRY((\inst|dut|clk_count\(14) & !\inst|dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(14),
	datad => VCC,
	cin => \inst|dut|Add0~27\,
	combout => \inst|dut|Add0~28_combout\,
	cout => \inst|dut|Add0~29\);

-- Location: LCCOMB_X14_Y17_N2
\inst|dut|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector18~0_combout\ = (\inst|dut|Add0~28_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector18~0_combout\);

-- Location: FF_X14_Y17_N3
\inst|dut|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(14));

-- Location: LCCOMB_X13_Y18_N30
\inst|dut|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~30_combout\ = (\inst|dut|clk_count\(15) & (!\inst|dut|Add0~29\)) # (!\inst|dut|clk_count\(15) & ((\inst|dut|Add0~29\) # (GND)))
-- \inst|dut|Add0~31\ = CARRY((!\inst|dut|Add0~29\) # (!\inst|dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(15),
	datad => VCC,
	cin => \inst|dut|Add0~29\,
	combout => \inst|dut|Add0~30_combout\,
	cout => \inst|dut|Add0~31\);

-- Location: LCCOMB_X14_Y17_N0
\inst|dut|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector17~0_combout\ = (\inst|dut|Add0~30_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~30_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector17~0_combout\);

-- Location: FF_X14_Y17_N1
\inst|dut|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(15));

-- Location: LCCOMB_X13_Y17_N0
\inst|dut|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~32_combout\ = (\inst|dut|clk_count\(16) & (\inst|dut|Add0~31\ $ (GND))) # (!\inst|dut|clk_count\(16) & (!\inst|dut|Add0~31\ & VCC))
-- \inst|dut|Add0~33\ = CARRY((\inst|dut|clk_count\(16) & !\inst|dut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(16),
	datad => VCC,
	cin => \inst|dut|Add0~31\,
	combout => \inst|dut|Add0~32_combout\,
	cout => \inst|dut|Add0~33\);

-- Location: LCCOMB_X14_Y17_N6
\inst|dut|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector16~0_combout\ = (\inst|dut|Add0~32_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~32_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector16~0_combout\);

-- Location: FF_X14_Y17_N7
\inst|dut|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(16));

-- Location: LCCOMB_X13_Y17_N2
\inst|dut|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~34_combout\ = (\inst|dut|clk_count\(17) & (!\inst|dut|Add0~33\)) # (!\inst|dut|clk_count\(17) & ((\inst|dut|Add0~33\) # (GND)))
-- \inst|dut|Add0~35\ = CARRY((!\inst|dut|Add0~33\) # (!\inst|dut|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(17),
	datad => VCC,
	cin => \inst|dut|Add0~33\,
	combout => \inst|dut|Add0~34_combout\,
	cout => \inst|dut|Add0~35\);

-- Location: LCCOMB_X16_Y17_N14
\inst|dut|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector15~0_combout\ = (\inst|dut|Add0~34_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~34_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector15~0_combout\);

-- Location: FF_X16_Y17_N15
\inst|dut|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(17));

-- Location: LCCOMB_X13_Y17_N4
\inst|dut|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~36_combout\ = (\inst|dut|clk_count\(18) & (\inst|dut|Add0~35\ $ (GND))) # (!\inst|dut|clk_count\(18) & (!\inst|dut|Add0~35\ & VCC))
-- \inst|dut|Add0~37\ = CARRY((\inst|dut|clk_count\(18) & !\inst|dut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(18),
	datad => VCC,
	cin => \inst|dut|Add0~35\,
	combout => \inst|dut|Add0~36_combout\,
	cout => \inst|dut|Add0~37\);

-- Location: LCCOMB_X14_Y17_N20
\inst|dut|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector14~0_combout\ = (\inst|dut|Add0~36_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~36_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector14~0_combout\);

-- Location: FF_X14_Y17_N21
\inst|dut|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(18));

-- Location: LCCOMB_X13_Y17_N6
\inst|dut|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~38_combout\ = (\inst|dut|clk_count\(19) & (!\inst|dut|Add0~37\)) # (!\inst|dut|clk_count\(19) & ((\inst|dut|Add0~37\) # (GND)))
-- \inst|dut|Add0~39\ = CARRY((!\inst|dut|Add0~37\) # (!\inst|dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(19),
	datad => VCC,
	cin => \inst|dut|Add0~37\,
	combout => \inst|dut|Add0~38_combout\,
	cout => \inst|dut|Add0~39\);

-- Location: LCCOMB_X14_Y17_N22
\inst|dut|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector13~0_combout\ = (\inst|dut|Add0~38_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~38_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector13~0_combout\);

-- Location: FF_X14_Y17_N23
\inst|dut|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(19));

-- Location: LCCOMB_X13_Y17_N8
\inst|dut|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~40_combout\ = (\inst|dut|clk_count\(20) & (\inst|dut|Add0~39\ $ (GND))) # (!\inst|dut|clk_count\(20) & (!\inst|dut|Add0~39\ & VCC))
-- \inst|dut|Add0~41\ = CARRY((\inst|dut|clk_count\(20) & !\inst|dut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(20),
	datad => VCC,
	cin => \inst|dut|Add0~39\,
	combout => \inst|dut|Add0~40_combout\,
	cout => \inst|dut|Add0~41\);

-- Location: LCCOMB_X14_Y17_N4
\inst|dut|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector12~0_combout\ = (\inst|dut|Add0~40_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~40_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector12~0_combout\);

-- Location: FF_X14_Y17_N5
\inst|dut|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(20));

-- Location: LCCOMB_X13_Y17_N10
\inst|dut|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~42_combout\ = (\inst|dut|clk_count\(21) & (!\inst|dut|Add0~41\)) # (!\inst|dut|clk_count\(21) & ((\inst|dut|Add0~41\) # (GND)))
-- \inst|dut|Add0~43\ = CARRY((!\inst|dut|Add0~41\) # (!\inst|dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(21),
	datad => VCC,
	cin => \inst|dut|Add0~41\,
	combout => \inst|dut|Add0~42_combout\,
	cout => \inst|dut|Add0~43\);

-- Location: LCCOMB_X12_Y17_N12
\inst|dut|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector11~0_combout\ = (\inst|dut|Add0~42_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~42_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector11~0_combout\);

-- Location: FF_X12_Y17_N13
\inst|dut|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(21));

-- Location: LCCOMB_X13_Y17_N12
\inst|dut|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~44_combout\ = (\inst|dut|clk_count\(22) & (\inst|dut|Add0~43\ $ (GND))) # (!\inst|dut|clk_count\(22) & (!\inst|dut|Add0~43\ & VCC))
-- \inst|dut|Add0~45\ = CARRY((\inst|dut|clk_count\(22) & !\inst|dut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(22),
	datad => VCC,
	cin => \inst|dut|Add0~43\,
	combout => \inst|dut|Add0~44_combout\,
	cout => \inst|dut|Add0~45\);

-- Location: LCCOMB_X16_Y17_N4
\inst|dut|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector10~0_combout\ = (\inst|dut|Add0~44_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~44_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector10~0_combout\);

-- Location: FF_X16_Y17_N5
\inst|dut|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(22));

-- Location: LCCOMB_X13_Y17_N14
\inst|dut|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~46_combout\ = (\inst|dut|clk_count\(23) & (!\inst|dut|Add0~45\)) # (!\inst|dut|clk_count\(23) & ((\inst|dut|Add0~45\) # (GND)))
-- \inst|dut|Add0~47\ = CARRY((!\inst|dut|Add0~45\) # (!\inst|dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(23),
	datad => VCC,
	cin => \inst|dut|Add0~45\,
	combout => \inst|dut|Add0~46_combout\,
	cout => \inst|dut|Add0~47\);

-- Location: LCCOMB_X16_Y17_N2
\inst|dut|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector9~0_combout\ = (\inst|dut|Add0~46_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~46_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector9~0_combout\);

-- Location: FF_X16_Y17_N3
\inst|dut|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(23));

-- Location: LCCOMB_X13_Y17_N16
\inst|dut|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~48_combout\ = (\inst|dut|clk_count\(24) & (\inst|dut|Add0~47\ $ (GND))) # (!\inst|dut|clk_count\(24) & (!\inst|dut|Add0~47\ & VCC))
-- \inst|dut|Add0~49\ = CARRY((\inst|dut|clk_count\(24) & !\inst|dut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(24),
	datad => VCC,
	cin => \inst|dut|Add0~47\,
	combout => \inst|dut|Add0~48_combout\,
	cout => \inst|dut|Add0~49\);

-- Location: LCCOMB_X16_Y17_N28
\inst|dut|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector8~0_combout\ = (\inst|dut|Add0~48_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~48_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector8~0_combout\);

-- Location: FF_X16_Y17_N29
\inst|dut|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(24));

-- Location: LCCOMB_X13_Y17_N18
\inst|dut|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~50_combout\ = (\inst|dut|clk_count\(25) & (!\inst|dut|Add0~49\)) # (!\inst|dut|clk_count\(25) & ((\inst|dut|Add0~49\) # (GND)))
-- \inst|dut|Add0~51\ = CARRY((!\inst|dut|Add0~49\) # (!\inst|dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(25),
	datad => VCC,
	cin => \inst|dut|Add0~49\,
	combout => \inst|dut|Add0~50_combout\,
	cout => \inst|dut|Add0~51\);

-- Location: LCCOMB_X16_Y17_N10
\inst|dut|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector7~0_combout\ = (\inst|dut|Add0~50_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~50_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector7~0_combout\);

-- Location: FF_X16_Y17_N11
\inst|dut|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(25));

-- Location: LCCOMB_X13_Y17_N20
\inst|dut|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~52_combout\ = (\inst|dut|clk_count\(26) & (\inst|dut|Add0~51\ $ (GND))) # (!\inst|dut|clk_count\(26) & (!\inst|dut|Add0~51\ & VCC))
-- \inst|dut|Add0~53\ = CARRY((\inst|dut|clk_count\(26) & !\inst|dut|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(26),
	datad => VCC,
	cin => \inst|dut|Add0~51\,
	combout => \inst|dut|Add0~52_combout\,
	cout => \inst|dut|Add0~53\);

-- Location: LCCOMB_X16_Y17_N8
\inst|dut|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector6~0_combout\ = (\inst|dut|Add0~52_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~52_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector6~0_combout\);

-- Location: FF_X16_Y17_N9
\inst|dut|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(26));

-- Location: LCCOMB_X13_Y17_N22
\inst|dut|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~54_combout\ = (\inst|dut|clk_count\(27) & (!\inst|dut|Add0~53\)) # (!\inst|dut|clk_count\(27) & ((\inst|dut|Add0~53\) # (GND)))
-- \inst|dut|Add0~55\ = CARRY((!\inst|dut|Add0~53\) # (!\inst|dut|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(27),
	datad => VCC,
	cin => \inst|dut|Add0~53\,
	combout => \inst|dut|Add0~54_combout\,
	cout => \inst|dut|Add0~55\);

-- Location: LCCOMB_X12_Y17_N18
\inst|dut|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector5~0_combout\ = (\inst|dut|Add0~54_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~54_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector5~0_combout\);

-- Location: FF_X12_Y17_N19
\inst|dut|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(27));

-- Location: LCCOMB_X13_Y17_N24
\inst|dut|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~56_combout\ = (\inst|dut|clk_count\(28) & (\inst|dut|Add0~55\ $ (GND))) # (!\inst|dut|clk_count\(28) & (!\inst|dut|Add0~55\ & VCC))
-- \inst|dut|Add0~57\ = CARRY((\inst|dut|clk_count\(28) & !\inst|dut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(28),
	datad => VCC,
	cin => \inst|dut|Add0~55\,
	combout => \inst|dut|Add0~56_combout\,
	cout => \inst|dut|Add0~57\);

-- Location: LCCOMB_X13_Y19_N6
\inst|dut|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector4~0_combout\ = (\inst|dut|Add0~56_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~56_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector4~0_combout\);

-- Location: FF_X13_Y19_N7
\inst|dut|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(28));

-- Location: LCCOMB_X13_Y17_N26
\inst|dut|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~58_combout\ = (\inst|dut|clk_count\(29) & (!\inst|dut|Add0~57\)) # (!\inst|dut|clk_count\(29) & ((\inst|dut|Add0~57\) # (GND)))
-- \inst|dut|Add0~59\ = CARRY((!\inst|dut|Add0~57\) # (!\inst|dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(29),
	datad => VCC,
	cin => \inst|dut|Add0~57\,
	combout => \inst|dut|Add0~58_combout\,
	cout => \inst|dut|Add0~59\);

-- Location: LCCOMB_X12_Y17_N16
\inst|dut|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector3~0_combout\ = (\inst|dut|Add0~58_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~58_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector3~0_combout\);

-- Location: FF_X12_Y17_N17
\inst|dut|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(29));

-- Location: LCCOMB_X13_Y17_N28
\inst|dut|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~60_combout\ = (\inst|dut|clk_count\(30) & (\inst|dut|Add0~59\ $ (GND))) # (!\inst|dut|clk_count\(30) & (!\inst|dut|Add0~59\ & VCC))
-- \inst|dut|Add0~61\ = CARRY((\inst|dut|clk_count\(30) & !\inst|dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(30),
	datad => VCC,
	cin => \inst|dut|Add0~59\,
	combout => \inst|dut|Add0~60_combout\,
	cout => \inst|dut|Add0~61\);

-- Location: LCCOMB_X13_Y19_N16
\inst|dut|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector2~0_combout\ = (\inst|dut|Add0~60_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector2~0_combout\);

-- Location: FF_X13_Y19_N17
\inst|dut|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(30));

-- Location: LCCOMB_X13_Y17_N30
\inst|dut|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~62_combout\ = \inst|dut|Add0~61\ $ (\inst|dut|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|dut|clk_count\(31),
	cin => \inst|dut|Add0~61\,
	combout => \inst|dut|Add0~62_combout\);

-- Location: LCCOMB_X13_Y19_N28
\inst|dut|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector1~0_combout\ = (\inst|dut|Add0~62_combout\ & \inst|dut|clk_count[31]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~62_combout\,
	datad => \inst|dut|clk_count[31]~4_combout\,
	combout => \inst|dut|Selector1~0_combout\);

-- Location: FF_X13_Y19_N29
\inst|dut|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|clk_count\(31));

-- Location: FF_X11_Y17_N31
\inst|dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|busy~q\);

-- Location: LCCOMB_X14_Y15_N12
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\inst|lcd_enable~q\ & \inst|dut|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|lcd_enable~q\,
	datad => \inst|dut|busy~q\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X14_Y15_N22
\inst|lcd_enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_enable~feeder_combout\ = \inst|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|process_0~0_combout\,
	combout => \inst|lcd_enable~feeder_combout\);

-- Location: FF_X14_Y15_N23
\inst|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_enable~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_enable~q\);

-- Location: LCCOMB_X11_Y17_N14
\inst|dut|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~4_combout\ = (\inst|dut|LessThan3~0_combout\ & (\inst|dut|LessThan3~1_combout\ & (\inst|dut|LessThan3~3_combout\ & \inst|dut|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~0_combout\,
	datab => \inst|dut|LessThan3~1_combout\,
	datac => \inst|dut|LessThan3~3_combout\,
	datad => \inst|dut|LessThan3~5_combout\,
	combout => \inst|dut|busy~4_combout\);

-- Location: LCCOMB_X11_Y17_N28
\inst|dut|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~5_combout\ = (!\inst|dut|Add0~24_combout\ & (\inst|dut|busy~2_combout\ & (\inst|dut|busy~4_combout\ & \inst|dut|LessThan3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~24_combout\,
	datab => \inst|dut|busy~2_combout\,
	datac => \inst|dut|busy~4_combout\,
	datad => \inst|dut|LessThan3~11_combout\,
	combout => \inst|dut|busy~5_combout\);

-- Location: LCCOMB_X11_Y17_N2
\inst|dut|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~6_combout\ = (!\inst|dut|Add0~62_combout\ & (\inst|dut|lcd_data[5]~2_combout\ & ((\inst|dut|Add0~60_combout\) # (!\inst|dut|busy~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~62_combout\,
	datab => \inst|dut|busy~5_combout\,
	datac => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|lcd_data[5]~2_combout\,
	combout => \inst|dut|busy~6_combout\);

-- Location: LCCOMB_X10_Y17_N24
\inst|dut|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector33~0_combout\ = (\inst|dut|state.power_up~q\ & (((\inst|dut|state.initialize~q\ & !\inst|dut|busy~6_combout\)))) # (!\inst|dut|state.power_up~q\ & (((\inst|dut|state.initialize~q\ & !\inst|dut|busy~6_combout\)) # 
-- (!\inst|dut|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.power_up~q\,
	datab => \inst|dut|LessThan0~6_combout\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|dut|busy~6_combout\,
	combout => \inst|dut|Selector33~0_combout\);

-- Location: FF_X10_Y17_N25
\inst|dut|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.initialize~q\);

-- Location: LCCOMB_X11_Y17_N30
\inst|dut|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector34~0_combout\ = (\inst|lcd_enable~q\ & (\inst|dut|state.initialize~q\ & ((\inst|dut|busy~6_combout\)))) # (!\inst|lcd_enable~q\ & ((\inst|dut|state.ready~q\) # ((\inst|dut|state.initialize~q\ & \inst|dut|busy~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|dut|busy~6_combout\,
	combout => \inst|dut|Selector34~0_combout\);

-- Location: LCCOMB_X11_Y17_N10
\inst|dut|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector34~1_combout\ = (\inst|dut|Selector34~0_combout\) # ((\inst|dut|state.send~q\ & (!\inst|dut|clk_count\(31) & !\inst|dut|LessThan9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|clk_count\(31),
	datac => \inst|dut|Selector34~0_combout\,
	datad => \inst|dut|LessThan9~9_combout\,
	combout => \inst|dut|Selector34~1_combout\);

-- Location: FF_X11_Y17_N11
\inst|dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.ready~q\);

-- Location: LCCOMB_X13_Y19_N24
\inst|dut|lcd_data[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[5]~0_combout\ = (\inst|dut|state.ready~q\ & \inst|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.ready~q\,
	datad => \inst|lcd_enable~q\,
	combout => \inst|dut|lcd_data[5]~0_combout\);

-- Location: LCCOMB_X13_Y19_N22
\inst|dut|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector35~0_combout\ = (\inst|dut|lcd_data[5]~0_combout\) # ((\inst|dut|state.send~q\ & ((\inst|dut|LessThan9~9_combout\) # (\inst|dut|clk_count\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data[5]~0_combout\,
	datab => \inst|dut|LessThan9~9_combout\,
	datac => \inst|dut|state.send~q\,
	datad => \inst|dut|clk_count\(31),
	combout => \inst|dut|Selector35~0_combout\);

-- Location: FF_X13_Y19_N23
\inst|dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.send~q\);

-- Location: LCCOMB_X14_Y18_N30
\inst|dut|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~3_combout\ = (!\inst|dut|clk_count\(6) & (!\inst|dut|clk_count\(7) & (!\inst|dut|clk_count\(9) & !\inst|dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(7),
	datac => \inst|dut|clk_count\(9),
	datad => \inst|dut|clk_count\(8),
	combout => \inst|dut|LessThan10~3_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst|dut|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan12~0_combout\ = (!\inst|dut|clk_count\(21) & (!\inst|dut|clk_count\(18) & (!\inst|dut|clk_count\(11) & \inst|dut|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(21),
	datab => \inst|dut|clk_count\(18),
	datac => \inst|dut|clk_count\(11),
	datad => \inst|dut|LessThan9~3_combout\,
	combout => \inst|dut|LessThan12~0_combout\);

-- Location: LCCOMB_X14_Y18_N8
\inst|dut|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~1_combout\ = (\inst|dut|clk_count\(5) & \inst|dut|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|clk_count\(5),
	datad => \inst|dut|clk_count\(4),
	combout => \inst|dut|LessThan10~1_combout\);

-- Location: LCCOMB_X14_Y18_N0
\inst|dut|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~2_combout\ = ((!\inst|dut|clk_count\(1) & (!\inst|dut|clk_count\(2) & !\inst|dut|clk_count\(3)))) # (!\inst|dut|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(1),
	datab => \inst|dut|clk_count\(2),
	datac => \inst|dut|LessThan10~1_combout\,
	datad => \inst|dut|clk_count\(3),
	combout => \inst|dut|LessThan10~2_combout\);

-- Location: LCCOMB_X14_Y19_N4
\inst|dut|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~4_combout\ = (!\inst|dut|clk_count\(10) & (\inst|dut|LessThan10~3_combout\ & (\inst|dut|LessThan12~0_combout\ & \inst|dut|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(10),
	datab => \inst|dut|LessThan10~3_combout\,
	datac => \inst|dut|LessThan12~0_combout\,
	datad => \inst|dut|LessThan10~2_combout\,
	combout => \inst|dut|LessThan10~4_combout\);

-- Location: LCCOMB_X14_Y18_N2
\inst|dut|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan11~0_combout\ = (!\inst|dut|clk_count\(6) & (((!\inst|dut|clk_count\(3)) # (!\inst|dut|clk_count\(2))) # (!\inst|dut|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|LessThan10~1_combout\,
	datac => \inst|dut|clk_count\(2),
	datad => \inst|dut|clk_count\(3),
	combout => \inst|dut|LessThan11~0_combout\);

-- Location: LCCOMB_X13_Y19_N4
\inst|dut|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan11~1_combout\ = ((!\inst|dut|clk_count\(8) & ((\inst|dut|LessThan11~0_combout\) # (!\inst|dut|clk_count\(7))))) # (!\inst|dut|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(7),
	datab => \inst|dut|clk_count\(9),
	datac => \inst|dut|clk_count\(8),
	datad => \inst|dut|LessThan11~0_combout\,
	combout => \inst|dut|LessThan11~1_combout\);

-- Location: LCCOMB_X13_Y19_N10
\inst|dut|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~0_combout\ = (!\inst|dut|clk_count\(11) & (!\inst|dut|clk_count\(10) & \inst|dut|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(11),
	datac => \inst|dut|clk_count\(10),
	datad => \inst|dut|LessThan9~4_combout\,
	combout => \inst|dut|LessThan10~0_combout\);

-- Location: LCCOMB_X13_Y19_N14
\inst|dut|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~11_combout\ = (!\inst|dut|LessThan10~4_combout\ & (\inst|dut|LessThan11~1_combout\ & (\inst|dut|LessThan9~9_combout\ & \inst|dut|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan10~4_combout\,
	datab => \inst|dut|LessThan11~1_combout\,
	datac => \inst|dut|LessThan9~9_combout\,
	datad => \inst|dut|LessThan10~0_combout\,
	combout => \inst|dut|Selector46~11_combout\);

-- Location: LCCOMB_X14_Y18_N16
\inst|dut|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~10_combout\ = (!\inst|dut|clk_count\(4) & (!\inst|dut|clk_count\(5) & !\inst|dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(4),
	datac => \inst|dut|clk_count\(5),
	datad => \inst|dut|clk_count\(3),
	combout => \inst|dut|LessThan9~10_combout\);

-- Location: LCCOMB_X14_Y18_N6
\inst|dut|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan12~1_combout\ = ((\inst|dut|LessThan9~10_combout\ & ((!\inst|dut|clk_count\(1)) # (!\inst|dut|clk_count\(2))))) # (!\inst|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(2),
	datac => \inst|dut|clk_count\(1),
	datad => \inst|dut|LessThan9~10_combout\,
	combout => \inst|dut|LessThan12~1_combout\);

-- Location: LCCOMB_X14_Y19_N18
\inst|dut|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan12~2_combout\ = (!\inst|dut|clk_count\(9) & (((!\inst|dut|clk_count\(7) & \inst|dut|LessThan12~1_combout\)) # (!\inst|dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(9),
	datab => \inst|dut|clk_count\(8),
	datac => \inst|dut|clk_count\(7),
	datad => \inst|dut|LessThan12~1_combout\,
	combout => \inst|dut|LessThan12~2_combout\);

-- Location: LCCOMB_X14_Y19_N24
\inst|dut|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~12_combout\ = (!\inst|dut|LessThan10~4_combout\ & (((\inst|dut|clk_count\(10) & !\inst|dut|LessThan12~2_combout\)) # (!\inst|dut|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(10),
	datab => \inst|dut|LessThan10~4_combout\,
	datac => \inst|dut|LessThan12~0_combout\,
	datad => \inst|dut|LessThan12~2_combout\,
	combout => \inst|dut|Selector46~12_combout\);

-- Location: LCCOMB_X13_Y19_N20
\inst|dut|Selector46~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~13_combout\ = (\inst|dut|Selector46~11_combout\) # ((\inst|dut|e~q\ & ((\inst|dut|Selector46~12_combout\) # (!\inst|dut|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|e~q\,
	datab => \inst|dut|Selector46~11_combout\,
	datac => \inst|dut|LessThan9~9_combout\,
	datad => \inst|dut|Selector46~12_combout\,
	combout => \inst|dut|Selector46~13_combout\);

-- Location: LCCOMB_X10_Y17_N30
\inst|dut|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~3_combout\ = (\inst|dut|LessThan3~3_combout\ & (\inst|dut|LessThan3~7_combout\ & ((\inst|dut|LessThan4~2_combout\) # (!\inst|dut|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan4~2_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datac => \inst|dut|LessThan3~3_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan4~3_combout\);

-- Location: LCCOMB_X10_Y17_N20
\inst|dut|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~3_combout\ = (\inst|dut|LessThan3~3_combout\ & (!\inst|dut|Add0~24_combout\ & (\inst|dut|LessThan2~2_combout\ & \inst|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~3_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datac => \inst|dut|LessThan2~2_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan2~3_combout\);

-- Location: LCCOMB_X10_Y17_N12
\inst|dut|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~9_combout\ = (!\inst|dut|state.send~q\ & (\inst|dut|state.initialize~q\ & (!\inst|dut|LessThan4~3_combout\ & !\inst|dut|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|LessThan4~3_combout\,
	datad => \inst|dut|LessThan2~3_combout\,
	combout => \inst|dut|Selector46~9_combout\);

-- Location: LCCOMB_X10_Y17_N4
\inst|dut|LessThan3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~12_combout\ = (\inst|dut|LessThan3~3_combout\ & (!\inst|dut|Add0~24_combout\ & (\inst|dut|LessThan3~11_combout\ & \inst|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~3_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datac => \inst|dut|LessThan3~11_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan3~12_combout\);

-- Location: LCCOMB_X10_Y17_N6
\inst|dut|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~6_combout\ = (\inst|dut|LessThan1~2_combout\) # ((\inst|dut|LessThan3~12_combout\ & !\inst|dut|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|LessThan1~2_combout\,
	datac => \inst|dut|LessThan3~12_combout\,
	datad => \inst|dut|LessThan2~3_combout\,
	combout => \inst|dut|Selector46~6_combout\);

-- Location: LCCOMB_X10_Y17_N28
\inst|dut|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~1_combout\ = (!\inst|dut|state.send~q\ & \inst|dut|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|state.send~q\,
	datad => \inst|dut|state.initialize~q\,
	combout => \inst|dut|Selector46~1_combout\);

-- Location: LCCOMB_X10_Y17_N22
\inst|dut|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~5_combout\ = (!\inst|dut|state.send~q\ & ((\inst|dut|state.initialize~q\ & ((\inst|dut|Add0~62_combout\))) # (!\inst|dut|state.initialize~q\ & (\inst|dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|e~q\,
	datad => \inst|dut|Add0~62_combout\,
	combout => \inst|dut|Selector46~5_combout\);

-- Location: LCCOMB_X10_Y17_N16
\inst|dut|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~7_combout\ = (\inst|dut|Selector46~5_combout\) # ((\inst|dut|Selector46~6_combout\ & (\inst|dut|Selector46~1_combout\ & !\inst|dut|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector46~6_combout\,
	datab => \inst|dut|Selector46~1_combout\,
	datac => \inst|dut|Selector46~5_combout\,
	datad => \inst|dut|Add0~60_combout\,
	combout => \inst|dut|Selector46~7_combout\);

-- Location: LCCOMB_X10_Y17_N10
\inst|dut|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~0_combout\ = (\inst|dut|state.initialize~q\ & (!\inst|dut|state.send~q\ & \inst|dut|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|state.send~q\,
	datad => \inst|dut|Add0~60_combout\,
	combout => \inst|dut|Selector46~0_combout\);

-- Location: LCCOMB_X10_Y17_N14
\inst|dut|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~2_combout\ = (\inst|dut|Selector46~1_combout\ & (((!\inst|dut|LessThan4~2_combout\ & \inst|dut|Add0~24_combout\)) # (!\inst|dut|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan4~2_combout\,
	datab => \inst|dut|Selector46~1_combout\,
	datac => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|Selector46~2_combout\);

-- Location: LCCOMB_X10_Y17_N2
\inst|dut|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~3_combout\ = (\inst|dut|Selector46~0_combout\) # ((!\inst|dut|busy~3_combout\ & (\inst|dut|Selector46~2_combout\ & !\inst|dut|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector46~0_combout\,
	datab => \inst|dut|busy~3_combout\,
	datac => \inst|dut|Selector46~2_combout\,
	datad => \inst|dut|LessThan2~3_combout\,
	combout => \inst|dut|Selector46~3_combout\);

-- Location: LCCOMB_X10_Y17_N8
\inst|dut|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~4_combout\ = (\inst|dut|Selector46~3_combout\ & ((\inst|dut|LessThan7~2_combout\) # ((!\inst|dut|LessThan8~4_combout\ & \inst|dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan7~2_combout\,
	datab => \inst|dut|LessThan8~4_combout\,
	datac => \inst|dut|e~q\,
	datad => \inst|dut|Selector46~3_combout\,
	combout => \inst|dut|Selector46~4_combout\);

-- Location: LCCOMB_X9_Y17_N12
\inst|dut|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~8_combout\ = (!\inst|dut|Add0~60_combout\ & \inst|dut|LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|LessThan5~2_combout\,
	combout => \inst|dut|Selector46~8_combout\);

-- Location: LCCOMB_X10_Y17_N18
\inst|dut|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~10_combout\ = (\inst|dut|Selector46~7_combout\) # ((\inst|dut|Selector46~4_combout\) # ((\inst|dut|Selector46~9_combout\ & \inst|dut|Selector46~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector46~9_combout\,
	datab => \inst|dut|Selector46~7_combout\,
	datac => \inst|dut|Selector46~4_combout\,
	datad => \inst|dut|Selector46~8_combout\,
	combout => \inst|dut|Selector46~10_combout\);

-- Location: LCCOMB_X10_Y17_N0
\inst|dut|Selector46~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~14_combout\ = (\inst|dut|Selector46~10_combout\) # ((\inst|dut|state.send~q\ & (!\inst|dut|clk_count\(31) & \inst|dut|Selector46~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|clk_count\(31),
	datac => \inst|dut|Selector46~13_combout\,
	datad => \inst|dut|Selector46~10_combout\,
	combout => \inst|dut|Selector46~14_combout\);

-- Location: FF_X10_Y17_N1
\inst|dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector46~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|e~q\);

-- Location: LCCOMB_X13_Y19_N26
\inst|dut|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|rs~0_combout\ = (\inst|dut|rs~q\ & ((\inst|dut|state.power_up~q\ & ((!\inst|dut|state.ready~q\))) # (!\inst|dut|state.power_up~q\ & (\inst|dut|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|rs~q\,
	datab => \inst|dut|LessThan0~6_combout\,
	datac => \inst|dut|state.power_up~q\,
	datad => \inst|dut|state.ready~q\,
	combout => \inst|dut|rs~0_combout\);

-- Location: LCCOMB_X17_Y15_N16
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|char\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|char\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|char\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X17_Y15_N18
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|char\(3) & (!\inst|Add0~5\)) # (!\inst|char\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|char\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X17_Y15_N20
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|char\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|char\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|char\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X17_Y15_N22
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X17_Y15_N12
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|char\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X17_Y15_N4
\inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~0_combout\ = (\inst|Add0~0_combout\ & (!\inst|Add0~10_combout\ & ((!\inst|Add0~6_combout\) # (!\inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Mux39~0_combout\);

-- Location: FF_X17_Y15_N5
\inst|char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux39~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(0));

-- Location: LCCOMB_X17_Y15_N14
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|char\(1) & (!\inst|Add0~1\)) # (!\inst|char\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X17_Y15_N30
\inst|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~0_combout\ = (!\inst|Add0~10_combout\ & (\inst|Add0~2_combout\ & ((!\inst|Add0~6_combout\) # (!\inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Mux38~0_combout\);

-- Location: FF_X17_Y15_N31
\inst|char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux38~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(1));

-- Location: LCCOMB_X17_Y15_N24
\inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux37~0_combout\ = (\inst|Add0~4_combout\ & (!\inst|Add0~10_combout\ & ((!\inst|Add0~6_combout\) # (!\inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Mux37~0_combout\);

-- Location: FF_X17_Y15_N25
\inst|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux37~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(2));

-- Location: LCCOMB_X14_Y15_N18
\inst|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~1_combout\ = (\inst|char\(3) & (\inst|char\(2) & (\inst|char\(0) & \inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst|char\(1),
	combout => \inst|Mux35~1_combout\);

-- Location: LCCOMB_X14_Y15_N4
\inst|char[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|char[4]~feeder_combout\ = \inst|Mux35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux35~1_combout\,
	combout => \inst|char[4]~feeder_combout\);

-- Location: LCCOMB_X14_Y15_N24
\inst|char[3]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|char[3]~_wirecell_combout\ = !\inst|char\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(3),
	combout => \inst|char[3]~_wirecell_combout\);

-- Location: FF_X14_Y15_N5
\inst|char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|char[4]~feeder_combout\,
	asdata => \inst|char[3]~_wirecell_combout\,
	sload => \inst|char\(4),
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(4));

-- Location: LCCOMB_X14_Y15_N14
\inst|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~0_combout\ = (\inst|char\(4) & (!\inst|char\(3) & \inst|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(4),
	datac => \inst|char\(3),
	datad => \inst|char\(1),
	combout => \inst|Mux36~0_combout\);

-- Location: LCCOMB_X14_Y15_N28
\inst|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~0_combout\ = (\inst|char\(0) & \inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst|Mux35~0_combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~1_combout\ = \inst|char\(3) $ (((\inst|char\(2) & (\inst|char\(0) & \inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst|char\(1),
	combout => \inst|Mux36~1_combout\);

-- Location: LCCOMB_X14_Y15_N30
\inst|Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~2_combout\ = (\inst|Mux36~0_combout\ & ((\inst|Mux35~0_combout\) # ((\inst|Mux36~1_combout\ & !\inst|char\(4))))) # (!\inst|Mux36~0_combout\ & (((\inst|Mux36~1_combout\ & !\inst|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux36~0_combout\,
	datab => \inst|Mux35~0_combout\,
	datac => \inst|Mux36~1_combout\,
	datad => \inst|char\(4),
	combout => \inst|Mux36~2_combout\);

-- Location: FF_X14_Y15_N31
\inst|char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux36~2_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(3));

-- Location: LCCOMB_X14_Y15_N20
\inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst|char\(4)) # ((\inst|char\(1) & (\inst|char\(2) & \inst|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst|char\(4),
	combout => \inst|Mux25~0_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~1_combout\ = (!\inst|Mux25~0_combout\) # (!\inst|char\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(3),
	datad => \inst|Mux25~0_combout\,
	combout => \inst|Mux25~1_combout\);

-- Location: FF_X14_Y15_N9
\inst|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux25~1_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(9));

-- Location: LCCOMB_X13_Y19_N12
\inst|dut|rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|rs~1_combout\ = (\inst|dut|rs~0_combout\) # ((\inst|dut|state.power_up~q\ & (\inst|dut|lcd_data[5]~0_combout\ & \inst|lcd_bus\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|rs~0_combout\,
	datab => \inst|dut|state.power_up~q\,
	datac => \inst|dut|lcd_data[5]~0_combout\,
	datad => \inst|lcd_bus\(9),
	combout => \inst|dut|rs~1_combout\);

-- Location: FF_X13_Y19_N13
\inst|dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|rs~q\);

-- Location: LCCOMB_X14_Y15_N26
\inst|lcd_bus[7]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[7]~60_combout\ = !\inst|Mux25~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux25~1_combout\,
	combout => \inst|lcd_bus[7]~60_combout\);

-- Location: FF_X14_Y15_N27
\inst|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[7]~60_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(7));

-- Location: LCCOMB_X13_Y15_N28
\inst|dut|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector38~0_combout\ = (\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst|lcd_bus\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|lcd_bus\(7),
	combout => \inst|dut|Selector38~0_combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst|dut|lcd_data[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[5]~3_combout\ = (!\inst|dut|state.send~q\ & (\inst|dut|lcd_data[5]~1_combout\ & ((!\inst|dut|busy~6_combout\) # (!\inst|dut|state.initialize~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|lcd_data[5]~1_combout\,
	datad => \inst|dut|busy~6_combout\,
	combout => \inst|dut|lcd_data[5]~3_combout\);

-- Location: FF_X10_Y17_N27
\inst|dut|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|dut|Selector38~0_combout\,
	sload => VCC,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(7));

-- Location: LCCOMB_X25_Y13_N6
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|cont\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X25_Y13_N2
\inst1|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~1_combout\ = (\inst1|Add0~0_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~1_combout\);

-- Location: FF_X25_Y13_N3
\inst1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(0));

-- Location: LCCOMB_X25_Y13_N8
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|cont\(1) & (!\inst1|Add0~1\)) # (!\inst1|cont\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X25_Y13_N9
\inst1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(1));

-- Location: LCCOMB_X25_Y13_N10
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|cont\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|cont\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|cont\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X25_Y13_N11
\inst1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(2));

-- Location: LCCOMB_X25_Y13_N12
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|cont\(3) & (!\inst1|Add0~5\)) # (!\inst1|cont\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X25_Y13_N13
\inst1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(3));

-- Location: LCCOMB_X25_Y13_N14
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|cont\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|cont\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|cont\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X25_Y13_N15
\inst1|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(4));

-- Location: LCCOMB_X25_Y13_N16
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|cont\(5) & (!\inst1|Add0~9\)) # (!\inst1|cont\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X25_Y13_N17
\inst1|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(5));

-- Location: LCCOMB_X25_Y13_N18
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|cont\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|cont\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|cont\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X25_Y13_N19
\inst1|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(6));

-- Location: LCCOMB_X25_Y13_N20
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|cont\(7) & (!\inst1|Add0~13\)) # (!\inst1|cont\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X25_Y13_N0
\inst1|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~0_combout\ = (\inst1|Add0~14_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~14_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~0_combout\);

-- Location: FF_X25_Y13_N1
\inst1|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(7));

-- Location: LCCOMB_X25_Y13_N22
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|cont\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|cont\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|cont\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: FF_X25_Y13_N23
\inst1|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(8));

-- Location: LCCOMB_X25_Y13_N24
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|cont\(9) & (!\inst1|Add0~17\)) # (!\inst1|cont\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: FF_X25_Y13_N25
\inst1|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(9));

-- Location: LCCOMB_X25_Y13_N26
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|cont\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|cont\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|cont\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: FF_X25_Y13_N27
\inst1|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(10));

-- Location: LCCOMB_X25_Y13_N28
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|cont\(11) & (!\inst1|Add0~21\)) # (!\inst1|cont\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: FF_X25_Y13_N29
\inst1|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(11));

-- Location: LCCOMB_X25_Y13_N30
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|cont\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|cont\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|cont\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X25_Y13_N4
\inst1|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~2_combout\ = (\inst1|Add0~24_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~24_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~2_combout\);

-- Location: FF_X25_Y13_N5
\inst1|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(12));

-- Location: LCCOMB_X25_Y12_N0
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|cont\(13) & (!\inst1|Add0~25\)) # (!\inst1|cont\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X26_Y12_N20
\inst1|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~3_combout\ = (\inst1|Add0~26_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~26_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~3_combout\);

-- Location: FF_X26_Y12_N21
\inst1|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(13));

-- Location: LCCOMB_X25_Y12_N2
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|cont\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|cont\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|cont\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCCOMB_X26_Y12_N6
\inst1|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~4_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|cont~4_combout\);

-- Location: FF_X26_Y12_N7
\inst1|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(14));

-- Location: LCCOMB_X25_Y12_N4
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|cont\(15) & (!\inst1|Add0~29\)) # (!\inst1|cont\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X26_Y12_N26
\inst1|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~5_combout\ = (\inst1|Add0~30_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~30_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~5_combout\);

-- Location: FF_X26_Y12_N27
\inst1|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(15));

-- Location: LCCOMB_X25_Y12_N6
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|cont\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|cont\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|cont\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: FF_X25_Y12_N7
\inst1|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(16));

-- Location: LCCOMB_X25_Y12_N8
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|cont\(17) & (!\inst1|Add0~33\)) # (!\inst1|cont\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X25_Y12_N30
\inst1|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~6_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datac => \inst1|Add0~34_combout\,
	combout => \inst1|cont~6_combout\);

-- Location: FF_X25_Y12_N31
\inst1|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(17));

-- Location: LCCOMB_X25_Y12_N10
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|cont\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|cont\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|cont\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: FF_X25_Y12_N11
\inst1|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(18));

-- Location: LCCOMB_X25_Y12_N12
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|cont\(19) & (!\inst1|Add0~37\)) # (!\inst1|cont\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X26_Y12_N22
\inst1|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~7_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~38_combout\,
	combout => \inst1|cont~7_combout\);

-- Location: FF_X26_Y12_N23
\inst1|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(19));

-- Location: LCCOMB_X25_Y12_N14
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|cont\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|cont\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|cont\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X26_Y12_N2
\inst1|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~8_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~40_combout\,
	combout => \inst1|cont~8_combout\);

-- Location: FF_X26_Y12_N3
\inst1|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(20));

-- Location: LCCOMB_X25_Y12_N16
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|cont\(21) & (!\inst1|Add0~41\)) # (!\inst1|cont\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X25_Y12_N28
\inst1|cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~9_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~42_combout\,
	combout => \inst1|cont~9_combout\);

-- Location: FF_X25_Y12_N29
\inst1|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(21));

-- Location: LCCOMB_X25_Y12_N18
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|cont\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|cont\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|cont\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X25_Y12_N26
\inst1|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~10_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|cont~10_combout\);

-- Location: FF_X25_Y12_N27
\inst1|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(22));

-- Location: LCCOMB_X25_Y12_N20
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|cont\(23) & (!\inst1|Add0~45\)) # (!\inst1|cont\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: LCCOMB_X26_Y12_N28
\inst1|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~11_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~46_combout\,
	combout => \inst1|cont~11_combout\);

-- Location: FF_X26_Y12_N29
\inst1|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(23));

-- Location: LCCOMB_X26_Y12_N10
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (\inst1|cont\(22) & (\inst1|cont\(23) & (\inst1|cont\(20) & \inst1|cont\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(22),
	datab => \inst1|cont\(23),
	datac => \inst1|cont\(20),
	datad => \inst1|cont\(21),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y12_N18
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|cont\(19) & (!\inst1|cont\(16) & (\inst1|cont\(17) & !\inst1|cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(19),
	datab => \inst1|cont\(16),
	datac => \inst1|cont\(17),
	datad => \inst1|cont\(18),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y12_N22
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|cont\(24) & (\inst1|Add0~47\ $ (GND))) # (!\inst1|cont\(24) & (!\inst1|Add0~47\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|cont\(24) & !\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: FF_X25_Y12_N23
\inst1|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(24));

-- Location: LCCOMB_X25_Y12_N24
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = \inst1|cont\(25) $ (\inst1|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(25),
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst1|cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~12_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~50_combout\,
	combout => \inst1|cont~12_combout\);

-- Location: FF_X26_Y12_N15
\inst1|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|cont~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cont\(25));

-- Location: LCCOMB_X26_Y12_N8
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (\inst1|cont\(25) & !\inst1|cont\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|cont\(25),
	datad => \inst1|cont\(24),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y13_N20
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|cont\(7) & (!\inst1|cont\(6) & (!\inst1|cont\(5) & !\inst1|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datab => \inst1|cont\(6),
	datac => \inst1|cont\(5),
	datad => \inst1|cont\(4),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|cont\(14) & (\inst1|cont\(13) & (\inst1|cont\(15) & \inst1|cont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(14),
	datab => \inst1|cont\(13),
	datac => \inst1|cont\(15),
	datad => \inst1|cont\(12),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y13_N30
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cont\(1) & (!\inst1|cont\(3) & (!\inst1|cont\(2) & !\inst1|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(1),
	datab => \inst1|cont\(3),
	datac => \inst1|cont\(2),
	datad => \inst1|cont\(0),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y13_N28
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|cont\(8) & (!\inst1|cont\(9) & (!\inst1|cont\(10) & !\inst1|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(8),
	datab => \inst1|cont\(9),
	datac => \inst1|cont\(10),
	datad => \inst1|cont\(11),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y12_N12
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~0_combout\ & (\inst1|Equal0~3_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~3_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y12_N0
\inst1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (\inst1|Equal0~6_combout\ & (\inst1|Equal0~5_combout\ & (\inst1|Equal0~7_combout\ & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Equal0~5_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y12_N30
\inst1|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|aux~0_combout\ = \inst1|aux~q\ $ (\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|aux~q\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|aux~0_combout\);

-- Location: LCCOMB_X26_Y12_N16
\inst1|aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|aux~feeder_combout\ = \inst1|aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|aux~0_combout\,
	combout => \inst1|aux~feeder_combout\);

-- Location: FF_X26_Y12_N17
\inst1|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|aux~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|aux~q\);

-- Location: CLKCTRL_G6
\inst1|aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|aux~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N22
\button1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: FF_X22_Y11_N19
\inst8|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \button1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|flipflops\(0));

-- Location: LCCOMB_X22_Y11_N8
\inst8|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|flipflops[1]~feeder_combout\ = \inst8|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|flipflops\(0),
	combout => \inst8|flipflops[1]~feeder_combout\);

-- Location: FF_X22_Y11_N9
\inst8|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|flipflops\(1));

-- Location: LCCOMB_X21_Y12_N14
\inst8|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[0]~19_combout\ = \inst8|count\(0) $ (VCC)
-- \inst8|count[0]~20\ = CARRY(\inst8|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(0),
	datad => VCC,
	combout => \inst8|count[0]~19_combout\,
	cout => \inst8|count[0]~20\);

-- Location: LCCOMB_X22_Y11_N22
\inst8|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_set~combout\ = \inst8|flipflops\(1) $ (\inst8|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|flipflops\(1),
	datad => \inst8|flipflops\(0),
	combout => \inst8|counter_set~combout\);

-- Location: FF_X21_Y12_N15
\inst8|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[0]~19_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(0));

-- Location: LCCOMB_X21_Y12_N16
\inst8|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[1]~21_combout\ = (\inst8|count\(1) & (!\inst8|count[0]~20\)) # (!\inst8|count\(1) & ((\inst8|count[0]~20\) # (GND)))
-- \inst8|count[1]~22\ = CARRY((!\inst8|count[0]~20\) # (!\inst8|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(1),
	datad => VCC,
	cin => \inst8|count[0]~20\,
	combout => \inst8|count[1]~21_combout\,
	cout => \inst8|count[1]~22\);

-- Location: FF_X21_Y12_N17
\inst8|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[1]~21_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(1));

-- Location: LCCOMB_X21_Y12_N18
\inst8|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[2]~23_combout\ = (\inst8|count\(2) & (\inst8|count[1]~22\ $ (GND))) # (!\inst8|count\(2) & (!\inst8|count[1]~22\ & VCC))
-- \inst8|count[2]~24\ = CARRY((\inst8|count\(2) & !\inst8|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(2),
	datad => VCC,
	cin => \inst8|count[1]~22\,
	combout => \inst8|count[2]~23_combout\,
	cout => \inst8|count[2]~24\);

-- Location: FF_X21_Y12_N19
\inst8|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[2]~23_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(2));

-- Location: LCCOMB_X21_Y12_N20
\inst8|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[3]~25_combout\ = (\inst8|count\(3) & (!\inst8|count[2]~24\)) # (!\inst8|count\(3) & ((\inst8|count[2]~24\) # (GND)))
-- \inst8|count[3]~26\ = CARRY((!\inst8|count[2]~24\) # (!\inst8|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(3),
	datad => VCC,
	cin => \inst8|count[2]~24\,
	combout => \inst8|count[3]~25_combout\,
	cout => \inst8|count[3]~26\);

-- Location: FF_X21_Y12_N21
\inst8|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[3]~25_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(3));

-- Location: LCCOMB_X21_Y12_N22
\inst8|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[4]~27_combout\ = (\inst8|count\(4) & (\inst8|count[3]~26\ $ (GND))) # (!\inst8|count\(4) & (!\inst8|count[3]~26\ & VCC))
-- \inst8|count[4]~28\ = CARRY((\inst8|count\(4) & !\inst8|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(4),
	datad => VCC,
	cin => \inst8|count[3]~26\,
	combout => \inst8|count[4]~27_combout\,
	cout => \inst8|count[4]~28\);

-- Location: FF_X21_Y12_N23
\inst8|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[4]~27_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(4));

-- Location: LCCOMB_X21_Y12_N24
\inst8|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[5]~29_combout\ = (\inst8|count\(5) & (!\inst8|count[4]~28\)) # (!\inst8|count\(5) & ((\inst8|count[4]~28\) # (GND)))
-- \inst8|count[5]~30\ = CARRY((!\inst8|count[4]~28\) # (!\inst8|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(5),
	datad => VCC,
	cin => \inst8|count[4]~28\,
	combout => \inst8|count[5]~29_combout\,
	cout => \inst8|count[5]~30\);

-- Location: FF_X21_Y12_N25
\inst8|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[5]~29_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(5));

-- Location: LCCOMB_X21_Y12_N26
\inst8|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[6]~31_combout\ = (\inst8|count\(6) & (\inst8|count[5]~30\ $ (GND))) # (!\inst8|count\(6) & (!\inst8|count[5]~30\ & VCC))
-- \inst8|count[6]~32\ = CARRY((\inst8|count\(6) & !\inst8|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(6),
	datad => VCC,
	cin => \inst8|count[5]~30\,
	combout => \inst8|count[6]~31_combout\,
	cout => \inst8|count[6]~32\);

-- Location: FF_X21_Y12_N27
\inst8|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[6]~31_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(6));

-- Location: LCCOMB_X21_Y12_N28
\inst8|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[7]~33_combout\ = (\inst8|count\(7) & (!\inst8|count[6]~32\)) # (!\inst8|count\(7) & ((\inst8|count[6]~32\) # (GND)))
-- \inst8|count[7]~34\ = CARRY((!\inst8|count[6]~32\) # (!\inst8|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(7),
	datad => VCC,
	cin => \inst8|count[6]~32\,
	combout => \inst8|count[7]~33_combout\,
	cout => \inst8|count[7]~34\);

-- Location: FF_X21_Y12_N29
\inst8|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[7]~33_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(7));

-- Location: LCCOMB_X21_Y12_N30
\inst8|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[8]~35_combout\ = (\inst8|count\(8) & (\inst8|count[7]~34\ $ (GND))) # (!\inst8|count\(8) & (!\inst8|count[7]~34\ & VCC))
-- \inst8|count[8]~36\ = CARRY((\inst8|count\(8) & !\inst8|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(8),
	datad => VCC,
	cin => \inst8|count[7]~34\,
	combout => \inst8|count[8]~35_combout\,
	cout => \inst8|count[8]~36\);

-- Location: FF_X21_Y12_N31
\inst8|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[8]~35_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(8));

-- Location: LCCOMB_X21_Y11_N0
\inst8|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[9]~37_combout\ = (\inst8|count\(9) & (!\inst8|count[8]~36\)) # (!\inst8|count\(9) & ((\inst8|count[8]~36\) # (GND)))
-- \inst8|count[9]~38\ = CARRY((!\inst8|count[8]~36\) # (!\inst8|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(9),
	datad => VCC,
	cin => \inst8|count[8]~36\,
	combout => \inst8|count[9]~37_combout\,
	cout => \inst8|count[9]~38\);

-- Location: FF_X21_Y11_N1
\inst8|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[9]~37_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(9));

-- Location: LCCOMB_X21_Y11_N2
\inst8|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[10]~39_combout\ = (\inst8|count\(10) & (\inst8|count[9]~38\ $ (GND))) # (!\inst8|count\(10) & (!\inst8|count[9]~38\ & VCC))
-- \inst8|count[10]~40\ = CARRY((\inst8|count\(10) & !\inst8|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(10),
	datad => VCC,
	cin => \inst8|count[9]~38\,
	combout => \inst8|count[10]~39_combout\,
	cout => \inst8|count[10]~40\);

-- Location: FF_X21_Y11_N3
\inst8|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[10]~39_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(10));

-- Location: LCCOMB_X21_Y11_N4
\inst8|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[11]~41_combout\ = (\inst8|count\(11) & (!\inst8|count[10]~40\)) # (!\inst8|count\(11) & ((\inst8|count[10]~40\) # (GND)))
-- \inst8|count[11]~42\ = CARRY((!\inst8|count[10]~40\) # (!\inst8|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(11),
	datad => VCC,
	cin => \inst8|count[10]~40\,
	combout => \inst8|count[11]~41_combout\,
	cout => \inst8|count[11]~42\);

-- Location: FF_X21_Y11_N5
\inst8|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[11]~41_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(11));

-- Location: LCCOMB_X21_Y11_N6
\inst8|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[12]~43_combout\ = (\inst8|count\(12) & (\inst8|count[11]~42\ $ (GND))) # (!\inst8|count\(12) & (!\inst8|count[11]~42\ & VCC))
-- \inst8|count[12]~44\ = CARRY((\inst8|count\(12) & !\inst8|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(12),
	datad => VCC,
	cin => \inst8|count[11]~42\,
	combout => \inst8|count[12]~43_combout\,
	cout => \inst8|count[12]~44\);

-- Location: FF_X21_Y11_N7
\inst8|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[12]~43_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(12));

-- Location: LCCOMB_X21_Y11_N8
\inst8|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[13]~45_combout\ = (\inst8|count\(13) & (!\inst8|count[12]~44\)) # (!\inst8|count\(13) & ((\inst8|count[12]~44\) # (GND)))
-- \inst8|count[13]~46\ = CARRY((!\inst8|count[12]~44\) # (!\inst8|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(13),
	datad => VCC,
	cin => \inst8|count[12]~44\,
	combout => \inst8|count[13]~45_combout\,
	cout => \inst8|count[13]~46\);

-- Location: FF_X21_Y11_N9
\inst8|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[13]~45_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(13));

-- Location: LCCOMB_X21_Y11_N10
\inst8|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[14]~47_combout\ = (\inst8|count\(14) & (\inst8|count[13]~46\ $ (GND))) # (!\inst8|count\(14) & (!\inst8|count[13]~46\ & VCC))
-- \inst8|count[14]~48\ = CARRY((\inst8|count\(14) & !\inst8|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(14),
	datad => VCC,
	cin => \inst8|count[13]~46\,
	combout => \inst8|count[14]~47_combout\,
	cout => \inst8|count[14]~48\);

-- Location: FF_X21_Y11_N11
\inst8|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[14]~47_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(14));

-- Location: LCCOMB_X21_Y11_N12
\inst8|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[15]~49_combout\ = (\inst8|count\(15) & (!\inst8|count[14]~48\)) # (!\inst8|count\(15) & ((\inst8|count[14]~48\) # (GND)))
-- \inst8|count[15]~50\ = CARRY((!\inst8|count[14]~48\) # (!\inst8|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(15),
	datad => VCC,
	cin => \inst8|count[14]~48\,
	combout => \inst8|count[15]~49_combout\,
	cout => \inst8|count[15]~50\);

-- Location: FF_X21_Y11_N13
\inst8|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[15]~49_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(15));

-- Location: LCCOMB_X21_Y11_N14
\inst8|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[16]~51_combout\ = (\inst8|count\(16) & (\inst8|count[15]~50\ $ (GND))) # (!\inst8|count\(16) & (!\inst8|count[15]~50\ & VCC))
-- \inst8|count[16]~52\ = CARRY((\inst8|count\(16) & !\inst8|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(16),
	datad => VCC,
	cin => \inst8|count[15]~50\,
	combout => \inst8|count[16]~51_combout\,
	cout => \inst8|count[16]~52\);

-- Location: FF_X21_Y11_N15
\inst8|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[16]~51_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(16));

-- Location: LCCOMB_X21_Y11_N16
\inst8|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[17]~53_combout\ = (\inst8|count\(17) & (!\inst8|count[16]~52\)) # (!\inst8|count\(17) & ((\inst8|count[16]~52\) # (GND)))
-- \inst8|count[17]~54\ = CARRY((!\inst8|count[16]~52\) # (!\inst8|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(17),
	datad => VCC,
	cin => \inst8|count[16]~52\,
	combout => \inst8|count[17]~53_combout\,
	cout => \inst8|count[17]~54\);

-- Location: FF_X21_Y11_N17
\inst8|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[17]~53_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(17));

-- Location: LCCOMB_X21_Y11_N18
\inst8|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[18]~55_combout\ = \inst8|count[17]~54\ $ (!\inst8|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|count\(18),
	cin => \inst8|count[17]~54\,
	combout => \inst8|count[18]~55_combout\);

-- Location: FF_X21_Y11_N19
\inst8|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count[18]~55_combout\,
	sclr => \inst8|counter_set~combout\,
	ena => \inst8|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(18));

-- Location: LCCOMB_X22_Y11_N4
\inst8|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~3_combout\ = ((\inst8|flipflops\(0) $ (\inst8|flipflops\(1))) # (!\inst8|count\(16))) # (!\inst8|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(15),
	datab => \inst8|flipflops\(0),
	datac => \inst8|flipflops\(1),
	datad => \inst8|count\(16),
	combout => \inst8|result~3_combout\);

-- Location: LCCOMB_X21_Y12_N0
\inst8|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~0_combout\ = ((!\inst8|count\(7) & (!\inst8|count\(6) & !\inst8|count\(5)))) # (!\inst8|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(8),
	datab => \inst8|count\(7),
	datac => \inst8|count\(6),
	datad => \inst8|count\(5),
	combout => \inst8|result~0_combout\);

-- Location: LCCOMB_X21_Y11_N28
\inst8|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~1_combout\ = (!\inst8|count\(12) & (!\inst8|count\(10) & (!\inst8|count\(11) & !\inst8|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(12),
	datab => \inst8|count\(10),
	datac => \inst8|count\(11),
	datad => \inst8|count\(9),
	combout => \inst8|result~1_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst8|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~2_combout\ = (!\inst8|count\(14) & (((\inst8|result~0_combout\ & \inst8|result~1_combout\)) # (!\inst8|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(14),
	datab => \inst8|result~0_combout\,
	datac => \inst8|count\(13),
	datad => \inst8|result~1_combout\,
	combout => \inst8|result~2_combout\);

-- Location: LCCOMB_X21_Y12_N6
\inst8|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~4_combout\ = (((\inst8|result~3_combout\) # (\inst8|result~2_combout\)) # (!\inst8|count\(17))) # (!\inst8|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(18),
	datab => \inst8|count\(17),
	datac => \inst8|result~3_combout\,
	datad => \inst8|result~2_combout\,
	combout => \inst8|result~4_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst8|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~5_combout\ = (\inst8|result~4_combout\ & ((\inst8|result~q\))) # (!\inst8|result~4_combout\ & (\inst8|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|flipflops\(1),
	datac => \inst8|result~q\,
	datad => \inst8|result~4_combout\,
	combout => \inst8|result~5_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst8|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~feeder_combout\ = \inst8|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|result~5_combout\,
	combout => \inst8|result~feeder_combout\);

-- Location: FF_X21_Y12_N13
\inst8|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|result~q\);

-- Location: LCCOMB_X17_Y5_N6
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|cont\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X16_Y5_N6
\inst2|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~0_combout\ = (\inst2|Add0~0_combout\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|cont~0_combout\);

-- Location: FF_X16_Y5_N7
\inst2|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(0));

-- Location: LCCOMB_X17_Y5_N8
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|cont\(1) & (!\inst2|Add0~1\)) # (!\inst2|cont\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X17_Y5_N9
\inst2|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(1));

-- Location: LCCOMB_X17_Y5_N10
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|cont\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|cont\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|cont\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X17_Y5_N11
\inst2|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(2));

-- Location: LCCOMB_X17_Y5_N12
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|cont\(3) & (!\inst2|Add0~5\)) # (!\inst2|cont\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X17_Y5_N13
\inst2|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(3));

-- Location: LCCOMB_X17_Y5_N14
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|cont\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|cont\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|cont\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X17_Y5_N15
\inst2|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(4));

-- Location: LCCOMB_X17_Y5_N16
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|cont\(5) & (!\inst2|Add0~9\)) # (!\inst2|cont\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X17_Y5_N4
\inst2|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~1_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|cont~1_combout\);

-- Location: FF_X17_Y5_N5
\inst2|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(5));

-- Location: LCCOMB_X17_Y5_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|cont\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|cont\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|cont\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X17_Y5_N19
\inst2|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(6));

-- Location: LCCOMB_X17_Y5_N20
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|cont\(7) & (!\inst2|Add0~13\)) # (!\inst2|cont\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X17_Y5_N2
\inst2|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~2_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|cont~2_combout\);

-- Location: FF_X17_Y5_N3
\inst2|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(7));

-- Location: LCCOMB_X17_Y5_N22
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|cont\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|cont\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|cont\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X16_Y5_N30
\inst2|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~3_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|cont~3_combout\);

-- Location: FF_X16_Y5_N31
\inst2|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(8));

-- Location: LCCOMB_X17_Y5_N24
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|cont\(9) & (!\inst2|Add0~17\)) # (!\inst2|cont\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: FF_X17_Y5_N25
\inst2|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(9));

-- Location: LCCOMB_X17_Y5_N26
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|cont\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|cont\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|cont\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X17_Y5_N0
\inst2|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~4_combout\ = (\inst2|Add0~20_combout\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|cont~4_combout\);

-- Location: FF_X17_Y5_N1
\inst2|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(10));

-- Location: LCCOMB_X17_Y5_N28
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|cont\(11) & (!\inst2|Add0~21\)) # (!\inst2|cont\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: FF_X17_Y5_N29
\inst2|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(11));

-- Location: LCCOMB_X17_Y5_N30
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|cont\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|cont\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|cont\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: FF_X17_Y5_N31
\inst2|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(12));

-- Location: LCCOMB_X17_Y4_N0
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|cont\(13) & (!\inst2|Add0~25\)) # (!\inst2|cont\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X17_Y4_N30
\inst2|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~5_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|cont~5_combout\);

-- Location: FF_X17_Y4_N31
\inst2|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(13));

-- Location: LCCOMB_X17_Y4_N2
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|cont\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|cont\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|cont\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: FF_X17_Y4_N3
\inst2|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(14));

-- Location: LCCOMB_X17_Y4_N4
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|cont\(15) & (!\inst2|Add0~29\)) # (!\inst2|cont\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: FF_X17_Y4_N5
\inst2|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(15));

-- Location: LCCOMB_X17_Y4_N6
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|cont\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|cont\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|cont\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: FF_X17_Y4_N7
\inst2|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(16));

-- Location: LCCOMB_X17_Y4_N8
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|cont\(17) & (!\inst2|Add0~33\)) # (!\inst2|cont\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X16_Y5_N24
\inst2|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~6_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datac => \inst2|Add0~34_combout\,
	combout => \inst2|cont~6_combout\);

-- Location: FF_X16_Y5_N25
\inst2|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(17));

-- Location: LCCOMB_X17_Y4_N10
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|cont\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|cont\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|cont\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X17_Y4_N28
\inst2|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~7_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~36_combout\,
	combout => \inst2|cont~7_combout\);

-- Location: FF_X17_Y4_N29
\inst2|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(18));

-- Location: LCCOMB_X17_Y4_N12
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|cont\(19) & (!\inst2|Add0~37\)) # (!\inst2|cont\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: FF_X17_Y4_N13
\inst2|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(19));

-- Location: LCCOMB_X17_Y4_N14
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|cont\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|cont\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|cont\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: FF_X17_Y4_N15
\inst2|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(20));

-- Location: LCCOMB_X17_Y4_N16
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|cont\(21) & (!\inst2|Add0~41\)) # (!\inst2|cont\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X17_Y4_N26
\inst2|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~8_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|cont~8_combout\);

-- Location: FF_X17_Y4_N27
\inst2|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(21));

-- Location: LCCOMB_X17_Y4_N18
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|cont\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|cont\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|cont\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: FF_X17_Y4_N19
\inst2|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(22));

-- Location: LCCOMB_X17_Y4_N20
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|cont\(23) & (!\inst2|Add0~45\)) # (!\inst2|cont\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: FF_X17_Y4_N21
\inst2|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(23));

-- Location: LCCOMB_X17_Y4_N22
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|cont\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|cont\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|cont\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: FF_X17_Y4_N23
\inst2|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(24));

-- Location: LCCOMB_X17_Y4_N24
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = \inst2|Add0~49\ $ (\inst2|cont\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|cont\(25),
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\);

-- Location: FF_X17_Y4_N25
\inst2|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(25));

-- Location: LCCOMB_X16_Y4_N10
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|cont\(25) & !\inst2|cont\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cont\(25),
	datad => \inst2|cont\(24),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|cont\(23) & (!\inst2|cont\(22) & (!\inst2|cont\(20) & \inst2|cont\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(23),
	datab => \inst2|cont\(22),
	datac => \inst2|cont\(20),
	datad => \inst2|cont\(21),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y5_N14
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|cont\(16) & (!\inst2|cont\(19) & (\inst2|cont\(18) & \inst2|cont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(16),
	datab => \inst2|cont\(19),
	datac => \inst2|cont\(18),
	datad => \inst2|cont\(17),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y5_N28
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|cont\(5) & (!\inst2|cont\(4) & (!\inst2|cont\(6) & \inst2|cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(5),
	datab => \inst2|cont\(4),
	datac => \inst2|cont\(6),
	datad => \inst2|cont\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y5_N20
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|cont\(13) & (!\inst2|cont\(15) & (!\inst2|cont\(12) & !\inst2|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(13),
	datab => \inst2|cont\(15),
	datac => \inst2|cont\(12),
	datad => \inst2|cont\(14),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y5_N26
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|cont\(0) & (!\inst2|cont\(2) & (!\inst2|cont\(3) & !\inst2|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(0),
	datab => \inst2|cont\(2),
	datac => \inst2|cont\(3),
	datad => \inst2|cont\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|cont\(8) & (!\inst2|cont\(11) & (\inst2|cont\(10) & !\inst2|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(8),
	datab => \inst2|cont\(11),
	datac => \inst2|cont\(10),
	datad => \inst2|cont\(9),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y5_N10
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~3_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y5_N18
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (\inst2|Equal0~7_combout\ & (\inst2|Equal0~6_combout\ & (\inst2|Equal0~5_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Equal0~6_combout\,
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y5_N22
\inst2|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~0_combout\ = \inst2|aux~q\ $ (\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|aux~q\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|aux~0_combout\);

-- Location: LCCOMB_X16_Y5_N0
\inst2|aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~feeder_combout\ = \inst2|aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|aux~0_combout\,
	combout => \inst2|aux~feeder_combout\);

-- Location: FF_X16_Y5_N1
\inst2|aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|aux~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux~q\);

-- Location: CLKCTRL_G1
\inst2|aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|aux~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N30
\gf|contagemSL[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemSL[0]~2_combout\ = !\gf|contagemSL\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gf|contagemSL\(0),
	combout => \gf|contagemSL[0]~2_combout\);

-- Location: FF_X14_Y14_N31
\gf|contagemSL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemSL[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSL\(0));

-- Location: LCCOMB_X14_Y14_N28
\gf|contagemSL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemSL~0_combout\ = (\gf|contagemSL\(1) & (\gf|contagemSL\(3) $ (((\gf|contagemSL\(0) & \gf|contagemSL\(2)))))) # (!\gf|contagemSL\(1) & (\gf|contagemSL\(3) & ((\gf|contagemSL\(2)) # (!\gf|contagemSL\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSL\(1),
	datab => \gf|contagemSL\(0),
	datac => \gf|contagemSL\(3),
	datad => \gf|contagemSL\(2),
	combout => \gf|contagemSL~0_combout\);

-- Location: FF_X14_Y14_N29
\gf|contagemSL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemSL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSL\(3));

-- Location: LCCOMB_X14_Y14_N12
\gf|contagemSL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemSL~1_combout\ = (\gf|contagemSL\(1) & (((!\gf|contagemSL\(0))))) # (!\gf|contagemSL\(1) & (\gf|contagemSL\(0) & ((\gf|contagemSL\(2)) # (!\gf|contagemSL\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSL\(2),
	datab => \gf|contagemSL\(3),
	datac => \gf|contagemSL\(1),
	datad => \gf|contagemSL\(0),
	combout => \gf|contagemSL~1_combout\);

-- Location: FF_X14_Y14_N13
\gf|contagemSL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemSL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSL\(1));

-- Location: LCCOMB_X14_Y14_N14
\gf|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Add0~0_combout\ = \gf|contagemSL\(2) $ (((\gf|contagemSL\(1) & \gf|contagemSL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gf|contagemSL\(1),
	datac => \gf|contagemSL\(2),
	datad => \gf|contagemSL\(0),
	combout => \gf|Add0~0_combout\);

-- Location: FF_X14_Y14_N15
\gf|contagemSL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSL\(2));

-- Location: LCCOMB_X18_Y14_N26
\gf|contagemSH[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemSH[0]~2_combout\ = !\gf|contagemSH\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gf|contagemSH\(0),
	combout => \gf|contagemSH[0]~2_combout\);

-- Location: LCCOMB_X14_Y14_N26
\gf|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Equal0~0_combout\ = (\gf|contagemSL\(0) & (\gf|contagemSL\(3) & (!\gf|contagemSL\(2) & !\gf|contagemSL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSL\(0),
	datab => \gf|contagemSL\(3),
	datac => \gf|contagemSL\(2),
	datad => \gf|contagemSL\(1),
	combout => \gf|Equal0~0_combout\);

-- Location: FF_X18_Y14_N27
\gf|contagemSH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemSH[0]~2_combout\,
	ena => \gf|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSH\(0));

-- Location: LCCOMB_X17_Y14_N28
\gf|contagemSH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemSH~1_combout\ = (\gf|contagemSH\(0) & (!\gf|contagemSH\(1) & !\gf|contagemSH\(2))) # (!\gf|contagemSH\(0) & (\gf|contagemSH\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gf|contagemSH\(0),
	datac => \gf|contagemSH\(1),
	datad => \gf|contagemSH\(2),
	combout => \gf|contagemSH~1_combout\);

-- Location: FF_X17_Y14_N29
\gf|contagemSH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemSH~1_combout\,
	ena => \gf|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSH\(1));

-- Location: LCCOMB_X17_Y14_N20
\gf|contagemSH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemSH~0_combout\ = (\gf|contagemSH\(2) & ((!\gf|contagemSH\(0)))) # (!\gf|contagemSH\(2) & (\gf|contagemSH\(1) & \gf|contagemSH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSH\(1),
	datac => \gf|contagemSH\(2),
	datad => \gf|contagemSH\(0),
	combout => \gf|contagemSH~0_combout\);

-- Location: FF_X17_Y14_N21
\gf|contagemSH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemSH~0_combout\,
	ena => \gf|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemSH\(2));

-- Location: LCCOMB_X14_Y14_N4
\inst13|igual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~2_combout\ = (!\gf|contagemSL\(0) & (!\gf|contagemSL\(2) & (!\gf|contagemSH\(2) & !\gf|contagemSL\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSL\(0),
	datab => \gf|contagemSL\(2),
	datac => \gf|contagemSH\(2),
	datad => \gf|contagemSL\(1),
	combout => \inst13|igual~2_combout\);

-- Location: LCCOMB_X16_Y14_N8
\gf|contagemHL[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHL[1]~feeder_combout\ = \gf|contagemHL~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gf|contagemHL~2_combout\,
	combout => \gf|contagemHL[1]~feeder_combout\);

-- Location: FF_X16_Y14_N9
\gf|contagemHL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemHL[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemHL\(1));

-- Location: LCCOMB_X17_Y14_N4
\gf|contagemMH[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemMH[0]~6_combout\ = !\gf|contagemMH\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gf|contagemMH\(0),
	combout => \gf|contagemMH[0]~6_combout\);

-- Location: LCCOMB_X17_Y14_N22
\gf|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Equal1~0_combout\ = (\gf|contagemSH\(0) & (!\gf|contagemSH\(1) & \gf|contagemSH\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gf|contagemSH\(0),
	datac => \gf|contagemSH\(1),
	datad => \gf|contagemSH\(2),
	combout => \gf|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y14_N20
\gf|contagemML[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemML[0]~2_combout\ = !\gf|contagemML\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gf|contagemML\(0),
	combout => \gf|contagemML[0]~2_combout\);

-- Location: LCCOMB_X18_Y14_N24
\gf|contagemMH[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemMH[0]~5_combout\ = (!\gf|contagemSH\(1) & (\gf|contagemSH\(2) & (\gf|contagemSH\(0) & \gf|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSH\(1),
	datab => \gf|contagemSH\(2),
	datac => \gf|contagemSH\(0),
	datad => \gf|Equal0~0_combout\,
	combout => \gf|contagemMH[0]~5_combout\);

-- Location: FF_X18_Y14_N21
\gf|contagemML[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemML[0]~2_combout\,
	ena => \gf|contagemMH[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemML\(0));

-- Location: LCCOMB_X18_Y14_N14
\gf|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Add2~0_combout\ = \gf|contagemML\(2) $ (((\gf|contagemML\(1) & !\gf|contagemML\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemML\(1),
	datac => \gf|contagemML\(2),
	datad => \gf|contagemML\(0),
	combout => \gf|Add2~0_combout\);

-- Location: FF_X18_Y14_N15
\gf|contagemML[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|Add2~0_combout\,
	ena => \gf|contagemMH[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemML\(2));

-- Location: LCCOMB_X18_Y14_N8
\gf|contagemML~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemML~0_combout\ = (\gf|contagemML\(1) & (\gf|contagemML\(3) $ (((\gf|contagemML\(2) & !\gf|contagemML\(0)))))) # (!\gf|contagemML\(1) & (\gf|contagemML\(3) & ((\gf|contagemML\(2)) # (\gf|contagemML\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemML\(1),
	datab => \gf|contagemML\(2),
	datac => \gf|contagemML\(3),
	datad => \gf|contagemML\(0),
	combout => \gf|contagemML~0_combout\);

-- Location: FF_X18_Y14_N9
\gf|contagemML[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemML~0_combout\,
	ena => \gf|contagemMH[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemML\(3));

-- Location: LCCOMB_X18_Y14_N22
\gf|contagemML~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemML~1_combout\ = (\gf|contagemML\(1) & (((\gf|contagemML\(0))))) # (!\gf|contagemML\(1) & (!\gf|contagemML\(0) & ((\gf|contagemML\(2)) # (!\gf|contagemML\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemML\(2),
	datab => \gf|contagemML\(3),
	datac => \gf|contagemML\(1),
	datad => \gf|contagemML\(0),
	combout => \gf|contagemML~1_combout\);

-- Location: FF_X18_Y14_N23
\gf|contagemML[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemML~1_combout\,
	ena => \gf|contagemMH[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemML\(1));

-- Location: LCCOMB_X18_Y14_N10
\gf|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Equal2~0_combout\ = (!\gf|contagemML\(1) & (\gf|contagemML\(3) & (!\gf|contagemML\(2) & !\gf|contagemML\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemML\(1),
	datab => \gf|contagemML\(3),
	datac => \gf|contagemML\(2),
	datad => \gf|contagemML\(0),
	combout => \gf|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y14_N16
\gf|contagemMH[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemMH[2]~3_combout\ = (\gf|Equal1~0_combout\ & (\gf|Equal2~0_combout\ & \gf|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|Equal1~0_combout\,
	datac => \gf|Equal2~0_combout\,
	datad => \gf|Equal0~0_combout\,
	combout => \gf|contagemMH[2]~3_combout\);

-- Location: FF_X17_Y14_N5
\gf|contagemMH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemMH[0]~6_combout\,
	ena => \gf|contagemMH[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemMH\(0));

-- Location: LCCOMB_X17_Y14_N6
\gf|contagemMH~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemMH~4_combout\ = (\gf|contagemMH\(0) & (!\gf|contagemMH\(2) & !\gf|contagemMH\(1))) # (!\gf|contagemMH\(0) & ((\gf|contagemMH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemMH\(2),
	datab => \gf|contagemMH\(0),
	datac => \gf|contagemMH\(1),
	combout => \gf|contagemMH~4_combout\);

-- Location: FF_X17_Y14_N7
\gf|contagemMH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemMH~4_combout\,
	ena => \gf|contagemMH[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemMH\(1));

-- Location: LCCOMB_X17_Y14_N30
\gf|contagemMH~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemMH~2_combout\ = (\gf|contagemMH\(0) & (!\gf|contagemMH\(2) & \gf|contagemMH\(1))) # (!\gf|contagemMH\(0) & (\gf|contagemMH\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gf|contagemMH\(0),
	datac => \gf|contagemMH\(2),
	datad => \gf|contagemMH\(1),
	combout => \gf|contagemMH~2_combout\);

-- Location: FF_X17_Y14_N31
\gf|contagemMH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemMH~2_combout\,
	ena => \gf|contagemMH[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemMH\(2));

-- Location: LCCOMB_X17_Y14_N24
\gf|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Equal3~0_combout\ = (\gf|contagemMH\(0) & (\gf|contagemMH\(2) & !\gf|contagemMH\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gf|contagemMH\(0),
	datac => \gf|contagemMH\(2),
	datad => \gf|contagemMH\(1),
	combout => \gf|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y14_N26
\gf|contagemHH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHH~0_combout\ = (\gf|Equal3~0_combout\ & (\gf|Equal2~0_combout\ & (\gf|Equal1~0_combout\ & \gf|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|Equal3~0_combout\,
	datab => \gf|Equal2~0_combout\,
	datac => \gf|Equal1~0_combout\,
	datad => \gf|Equal0~0_combout\,
	combout => \gf|contagemHH~0_combout\);

-- Location: LCCOMB_X19_Y14_N30
\gf|contagemHL~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHL~4_combout\ = \gf|contagemHL\(0) $ (\gf|contagemHH~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gf|contagemHL\(0),
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|contagemHL~4_combout\);

-- Location: FF_X19_Y14_N31
\gf|contagemHL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemHL~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemHL\(0));

-- Location: LCCOMB_X16_Y14_N24
\gf|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Add4~0_combout\ = \gf|contagemHL\(3) $ (((\gf|contagemHL\(2) & (\gf|contagemHL\(1) & \gf|contagemHL\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL\(2),
	datab => \gf|contagemHL\(3),
	datac => \gf|contagemHL\(1),
	datad => \gf|contagemHL\(0),
	combout => \gf|Add4~0_combout\);

-- Location: LCCOMB_X16_Y14_N28
\gf|contagemHL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHL~0_combout\ = (\gf|contagemHH~0_combout\ & (!\gf|Equal4~0_combout\ & (\gf|Add4~0_combout\))) # (!\gf|contagemHH~0_combout\ & (((\gf|contagemHL\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|Equal4~0_combout\,
	datab => \gf|Add4~0_combout\,
	datac => \gf|contagemHL\(3),
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|contagemHL~0_combout\);

-- Location: FF_X16_Y14_N29
\gf|contagemHL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemHL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemHL\(3));

-- Location: LCCOMB_X16_Y14_N10
\gf|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|Equal4~0_combout\ = (!\gf|contagemHL\(2) & (\gf|contagemHL\(3) & (!\gf|contagemHL\(1) & \gf|contagemHL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL\(2),
	datab => \gf|contagemHL\(3),
	datac => \gf|contagemHL\(1),
	datad => \gf|contagemHL\(0),
	combout => \gf|Equal4~0_combout\);

-- Location: LCCOMB_X16_Y14_N6
\gf|contagemHL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHL~2_combout\ = (\gf|contagemHH~0_combout\ & (!\gf|Equal4~0_combout\ & (\gf|contagemHL\(1) $ (\gf|contagemHL\(0))))) # (!\gf|contagemHH~0_combout\ & (((\gf|contagemHL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|Equal4~0_combout\,
	datab => \gf|contagemHL\(1),
	datac => \gf|contagemHL\(0),
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|contagemHL~2_combout\);

-- Location: LCCOMB_X19_Y14_N22
\gf|contagemHH~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHH~3_combout\ = \gf|contagemHH\(0) $ (((\gf|Equal4~0_combout\ & \gf|contagemHH~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gf|Equal4~0_combout\,
	datac => \gf|contagemHH\(0),
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|contagemHH~3_combout\);

-- Location: FF_X19_Y14_N23
\gf|contagemHH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemHH~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemHH\(0));

-- Location: LCCOMB_X16_Y14_N14
\gf|contagemHH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHH~1_combout\ = \gf|contagemHH\(1) $ (((\gf|Equal4~0_combout\ & (\gf|contagemHH\(0) & \gf|contagemHH~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHH\(1),
	datab => \gf|Equal4~0_combout\,
	datac => \gf|contagemHH\(0),
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|contagemHH~1_combout\);

-- Location: LCCOMB_X16_Y14_N16
\gf|contagemHL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHL~1_combout\ = \gf|contagemHL\(2) $ (((\gf|contagemHL\(1) & (\gf|contagemHL\(0) & \gf|contagemHH~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL\(2),
	datab => \gf|contagemHL\(1),
	datac => \gf|contagemHL\(0),
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|contagemHL~1_combout\);

-- Location: LCCOMB_X16_Y14_N18
\gf|contagemHH~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHH~2_combout\ = (\gf|contagemHH~1_combout\ & ((\gf|contagemHL~2_combout\) # ((!\gf|contagemHL~1_combout\) # (!\gf|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL~2_combout\,
	datab => \gf|contagemHH~1_combout\,
	datac => \gf|process_0~2_combout\,
	datad => \gf|contagemHL~1_combout\,
	combout => \gf|contagemHH~2_combout\);

-- Location: FF_X16_Y14_N19
\gf|contagemHH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemHH~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemHH\(1));

-- Location: LCCOMB_X16_Y14_N12
\gf|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|process_0~0_combout\ = (\gf|contagemHH\(1) & (!\gf|contagemHL\(3) & (!\gf|contagemHH\(0) & !\gf|contagemHL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHH\(1),
	datab => \gf|contagemHL\(3),
	datac => \gf|contagemHH\(0),
	datad => \gf|contagemHL\(0),
	combout => \gf|process_0~0_combout\);

-- Location: LCCOMB_X16_Y14_N26
\gf|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|process_0~1_combout\ = (\gf|contagemHH\(1) & (!\gf|Add4~0_combout\ & (!\gf|contagemHH\(0) & !\gf|Equal4~0_combout\))) # (!\gf|contagemHH\(1) & (((\gf|contagemHH\(0) & \gf|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHH\(1),
	datab => \gf|Add4~0_combout\,
	datac => \gf|contagemHH\(0),
	datad => \gf|Equal4~0_combout\,
	combout => \gf|process_0~1_combout\);

-- Location: LCCOMB_X16_Y14_N4
\gf|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|process_0~2_combout\ = (\gf|contagemHH~0_combout\ & (((\gf|contagemHL\(0) & \gf|process_0~1_combout\)))) # (!\gf|contagemHH~0_combout\ & (\gf|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|process_0~0_combout\,
	datab => \gf|contagemHL\(0),
	datac => \gf|process_0~1_combout\,
	datad => \gf|contagemHH~0_combout\,
	combout => \gf|process_0~2_combout\);

-- Location: LCCOMB_X16_Y14_N22
\gf|contagemHL~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gf|contagemHL~3_combout\ = (\gf|contagemHL~1_combout\ & ((\gf|contagemHL~2_combout\) # (!\gf|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL~2_combout\,
	datac => \gf|process_0~2_combout\,
	datad => \gf|contagemHL~1_combout\,
	combout => \gf|contagemHL~3_combout\);

-- Location: FF_X16_Y14_N23
\gf|contagemHL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \gf|contagemHL~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gf|contagemHL\(2));

-- Location: LCCOMB_X16_Y14_N2
\inst13|igual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~3_combout\ = (!\gf|contagemHL\(2) & (!\gf|contagemHL\(3) & (!\gf|contagemHL\(1) & !\gf|contagemMH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL\(2),
	datab => \gf|contagemHL\(3),
	datac => \gf|contagemHL\(1),
	datad => \gf|contagemMH\(0),
	combout => \inst13|igual~3_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst13|igual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~5_combout\ = (!\gf|contagemSH\(0) & (!\gf|contagemML\(2) & (!\gf|contagemML\(3) & !\gf|contagemSH\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSH\(0),
	datab => \gf|contagemML\(2),
	datac => \gf|contagemML\(3),
	datad => \gf|contagemSH\(1),
	combout => \inst13|igual~5_combout\);

-- Location: LCCOMB_X18_Y14_N18
\inst13|igual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~4_combout\ = (\gf|contagemML\(0) & (!\gf|contagemMH\(1) & (\gf|contagemML\(1) & !\gf|contagemMH\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemML\(0),
	datab => \gf|contagemMH\(1),
	datac => \gf|contagemML\(1),
	datad => \gf|contagemMH\(2),
	combout => \inst13|igual~4_combout\);

-- Location: LCCOMB_X16_Y14_N0
\inst13|igual~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~6_combout\ = (\gf|contagemSL\(3)) # ((\gf|contagemHH\(1)) # ((\gf|contagemHH\(0)) # (\gf|contagemHL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemSL\(3),
	datab => \gf|contagemHH\(1),
	datac => \gf|contagemHH\(0),
	datad => \gf|contagemHL\(0),
	combout => \inst13|igual~6_combout\);

-- Location: LCCOMB_X16_Y14_N30
\inst13|igual~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~7_combout\ = (\inst13|igual~3_combout\ & (\inst13|igual~5_combout\ & (\inst13|igual~4_combout\ & !\inst13|igual~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|igual~3_combout\,
	datab => \inst13|igual~5_combout\,
	datac => \inst13|igual~4_combout\,
	datad => \inst13|igual~6_combout\,
	combout => \inst13|igual~7_combout\);

-- Location: IOIBUF_X34_Y12_N15
\button2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: LCCOMB_X12_Y3_N18
\inst9|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|flipflops[0]~feeder_combout\ = \button2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button2~input_o\,
	combout => \inst9|flipflops[0]~feeder_combout\);

-- Location: FF_X12_Y3_N19
\inst9|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|flipflops\(0));

-- Location: LCCOMB_X12_Y3_N0
\inst9|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|flipflops[1]~feeder_combout\ = \inst9|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|flipflops\(0),
	combout => \inst9|flipflops[1]~feeder_combout\);

-- Location: FF_X12_Y3_N1
\inst9|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|flipflops\(1));

-- Location: LCCOMB_X13_Y4_N14
\inst9|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[0]~19_combout\ = \inst9|count\(0) $ (VCC)
-- \inst9|count[0]~20\ = CARRY(\inst9|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(0),
	datad => VCC,
	combout => \inst9|count[0]~19_combout\,
	cout => \inst9|count[0]~20\);

-- Location: LCCOMB_X12_Y3_N2
\inst9|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter_set~combout\ = \inst9|flipflops\(1) $ (\inst9|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|flipflops\(1),
	datad => \inst9|flipflops\(0),
	combout => \inst9|counter_set~combout\);

-- Location: FF_X13_Y4_N15
\inst9|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[0]~19_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(0));

-- Location: LCCOMB_X13_Y4_N16
\inst9|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[1]~21_combout\ = (\inst9|count\(1) & (!\inst9|count[0]~20\)) # (!\inst9|count\(1) & ((\inst9|count[0]~20\) # (GND)))
-- \inst9|count[1]~22\ = CARRY((!\inst9|count[0]~20\) # (!\inst9|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(1),
	datad => VCC,
	cin => \inst9|count[0]~20\,
	combout => \inst9|count[1]~21_combout\,
	cout => \inst9|count[1]~22\);

-- Location: FF_X13_Y4_N17
\inst9|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[1]~21_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(1));

-- Location: LCCOMB_X13_Y4_N18
\inst9|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[2]~23_combout\ = (\inst9|count\(2) & (\inst9|count[1]~22\ $ (GND))) # (!\inst9|count\(2) & (!\inst9|count[1]~22\ & VCC))
-- \inst9|count[2]~24\ = CARRY((\inst9|count\(2) & !\inst9|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(2),
	datad => VCC,
	cin => \inst9|count[1]~22\,
	combout => \inst9|count[2]~23_combout\,
	cout => \inst9|count[2]~24\);

-- Location: FF_X13_Y4_N19
\inst9|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[2]~23_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(2));

-- Location: LCCOMB_X13_Y4_N20
\inst9|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[3]~25_combout\ = (\inst9|count\(3) & (!\inst9|count[2]~24\)) # (!\inst9|count\(3) & ((\inst9|count[2]~24\) # (GND)))
-- \inst9|count[3]~26\ = CARRY((!\inst9|count[2]~24\) # (!\inst9|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(3),
	datad => VCC,
	cin => \inst9|count[2]~24\,
	combout => \inst9|count[3]~25_combout\,
	cout => \inst9|count[3]~26\);

-- Location: FF_X13_Y4_N21
\inst9|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[3]~25_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(3));

-- Location: LCCOMB_X13_Y4_N22
\inst9|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[4]~27_combout\ = (\inst9|count\(4) & (\inst9|count[3]~26\ $ (GND))) # (!\inst9|count\(4) & (!\inst9|count[3]~26\ & VCC))
-- \inst9|count[4]~28\ = CARRY((\inst9|count\(4) & !\inst9|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(4),
	datad => VCC,
	cin => \inst9|count[3]~26\,
	combout => \inst9|count[4]~27_combout\,
	cout => \inst9|count[4]~28\);

-- Location: FF_X13_Y4_N23
\inst9|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[4]~27_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(4));

-- Location: LCCOMB_X13_Y4_N24
\inst9|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[5]~29_combout\ = (\inst9|count\(5) & (!\inst9|count[4]~28\)) # (!\inst9|count\(5) & ((\inst9|count[4]~28\) # (GND)))
-- \inst9|count[5]~30\ = CARRY((!\inst9|count[4]~28\) # (!\inst9|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(5),
	datad => VCC,
	cin => \inst9|count[4]~28\,
	combout => \inst9|count[5]~29_combout\,
	cout => \inst9|count[5]~30\);

-- Location: FF_X13_Y4_N25
\inst9|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[5]~29_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(5));

-- Location: LCCOMB_X13_Y4_N26
\inst9|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[6]~31_combout\ = (\inst9|count\(6) & (\inst9|count[5]~30\ $ (GND))) # (!\inst9|count\(6) & (!\inst9|count[5]~30\ & VCC))
-- \inst9|count[6]~32\ = CARRY((\inst9|count\(6) & !\inst9|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(6),
	datad => VCC,
	cin => \inst9|count[5]~30\,
	combout => \inst9|count[6]~31_combout\,
	cout => \inst9|count[6]~32\);

-- Location: FF_X13_Y4_N27
\inst9|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[6]~31_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(6));

-- Location: LCCOMB_X13_Y4_N28
\inst9|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[7]~33_combout\ = (\inst9|count\(7) & (!\inst9|count[6]~32\)) # (!\inst9|count\(7) & ((\inst9|count[6]~32\) # (GND)))
-- \inst9|count[7]~34\ = CARRY((!\inst9|count[6]~32\) # (!\inst9|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(7),
	datad => VCC,
	cin => \inst9|count[6]~32\,
	combout => \inst9|count[7]~33_combout\,
	cout => \inst9|count[7]~34\);

-- Location: FF_X13_Y4_N29
\inst9|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[7]~33_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(7));

-- Location: LCCOMB_X13_Y4_N30
\inst9|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[8]~35_combout\ = (\inst9|count\(8) & (\inst9|count[7]~34\ $ (GND))) # (!\inst9|count\(8) & (!\inst9|count[7]~34\ & VCC))
-- \inst9|count[8]~36\ = CARRY((\inst9|count\(8) & !\inst9|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(8),
	datad => VCC,
	cin => \inst9|count[7]~34\,
	combout => \inst9|count[8]~35_combout\,
	cout => \inst9|count[8]~36\);

-- Location: FF_X13_Y4_N31
\inst9|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[8]~35_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(8));

-- Location: LCCOMB_X13_Y3_N0
\inst9|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[9]~37_combout\ = (\inst9|count\(9) & (!\inst9|count[8]~36\)) # (!\inst9|count\(9) & ((\inst9|count[8]~36\) # (GND)))
-- \inst9|count[9]~38\ = CARRY((!\inst9|count[8]~36\) # (!\inst9|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(9),
	datad => VCC,
	cin => \inst9|count[8]~36\,
	combout => \inst9|count[9]~37_combout\,
	cout => \inst9|count[9]~38\);

-- Location: FF_X13_Y3_N1
\inst9|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[9]~37_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(9));

-- Location: LCCOMB_X13_Y3_N2
\inst9|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[10]~39_combout\ = (\inst9|count\(10) & (\inst9|count[9]~38\ $ (GND))) # (!\inst9|count\(10) & (!\inst9|count[9]~38\ & VCC))
-- \inst9|count[10]~40\ = CARRY((\inst9|count\(10) & !\inst9|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(10),
	datad => VCC,
	cin => \inst9|count[9]~38\,
	combout => \inst9|count[10]~39_combout\,
	cout => \inst9|count[10]~40\);

-- Location: FF_X13_Y3_N3
\inst9|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[10]~39_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(10));

-- Location: LCCOMB_X13_Y3_N4
\inst9|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[11]~41_combout\ = (\inst9|count\(11) & (!\inst9|count[10]~40\)) # (!\inst9|count\(11) & ((\inst9|count[10]~40\) # (GND)))
-- \inst9|count[11]~42\ = CARRY((!\inst9|count[10]~40\) # (!\inst9|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(11),
	datad => VCC,
	cin => \inst9|count[10]~40\,
	combout => \inst9|count[11]~41_combout\,
	cout => \inst9|count[11]~42\);

-- Location: FF_X13_Y3_N5
\inst9|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[11]~41_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(11));

-- Location: LCCOMB_X13_Y3_N6
\inst9|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[12]~43_combout\ = (\inst9|count\(12) & (\inst9|count[11]~42\ $ (GND))) # (!\inst9|count\(12) & (!\inst9|count[11]~42\ & VCC))
-- \inst9|count[12]~44\ = CARRY((\inst9|count\(12) & !\inst9|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(12),
	datad => VCC,
	cin => \inst9|count[11]~42\,
	combout => \inst9|count[12]~43_combout\,
	cout => \inst9|count[12]~44\);

-- Location: FF_X13_Y3_N7
\inst9|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[12]~43_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(12));

-- Location: LCCOMB_X13_Y3_N8
\inst9|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[13]~45_combout\ = (\inst9|count\(13) & (!\inst9|count[12]~44\)) # (!\inst9|count\(13) & ((\inst9|count[12]~44\) # (GND)))
-- \inst9|count[13]~46\ = CARRY((!\inst9|count[12]~44\) # (!\inst9|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(13),
	datad => VCC,
	cin => \inst9|count[12]~44\,
	combout => \inst9|count[13]~45_combout\,
	cout => \inst9|count[13]~46\);

-- Location: FF_X13_Y3_N9
\inst9|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[13]~45_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(13));

-- Location: LCCOMB_X13_Y3_N10
\inst9|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[14]~47_combout\ = (\inst9|count\(14) & (\inst9|count[13]~46\ $ (GND))) # (!\inst9|count\(14) & (!\inst9|count[13]~46\ & VCC))
-- \inst9|count[14]~48\ = CARRY((\inst9|count\(14) & !\inst9|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(14),
	datad => VCC,
	cin => \inst9|count[13]~46\,
	combout => \inst9|count[14]~47_combout\,
	cout => \inst9|count[14]~48\);

-- Location: FF_X13_Y3_N11
\inst9|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[14]~47_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(14));

-- Location: LCCOMB_X13_Y4_N4
\inst9|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~0_combout\ = ((!\inst9|count\(6) & (!\inst9|count\(5) & !\inst9|count\(7)))) # (!\inst9|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(6),
	datab => \inst9|count\(5),
	datac => \inst9|count\(8),
	datad => \inst9|count\(7),
	combout => \inst9|result~0_combout\);

-- Location: LCCOMB_X13_Y3_N28
\inst9|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~1_combout\ = (!\inst9|count\(9) & (!\inst9|count\(10) & (!\inst9|count\(11) & !\inst9|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(9),
	datab => \inst9|count\(10),
	datac => \inst9|count\(11),
	datad => \inst9|count\(12),
	combout => \inst9|result~1_combout\);

-- Location: LCCOMB_X13_Y4_N10
\inst9|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~2_combout\ = (!\inst9|count\(14) & (((\inst9|result~0_combout\ & \inst9|result~1_combout\)) # (!\inst9|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(14),
	datab => \inst9|count\(13),
	datac => \inst9|result~0_combout\,
	datad => \inst9|result~1_combout\,
	combout => \inst9|result~2_combout\);

-- Location: LCCOMB_X13_Y3_N12
\inst9|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[15]~49_combout\ = (\inst9|count\(15) & (!\inst9|count[14]~48\)) # (!\inst9|count\(15) & ((\inst9|count[14]~48\) # (GND)))
-- \inst9|count[15]~50\ = CARRY((!\inst9|count[14]~48\) # (!\inst9|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(15),
	datad => VCC,
	cin => \inst9|count[14]~48\,
	combout => \inst9|count[15]~49_combout\,
	cout => \inst9|count[15]~50\);

-- Location: FF_X13_Y3_N13
\inst9|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[15]~49_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(15));

-- Location: LCCOMB_X13_Y3_N14
\inst9|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[16]~51_combout\ = (\inst9|count\(16) & (\inst9|count[15]~50\ $ (GND))) # (!\inst9|count\(16) & (!\inst9|count[15]~50\ & VCC))
-- \inst9|count[16]~52\ = CARRY((\inst9|count\(16) & !\inst9|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(16),
	datad => VCC,
	cin => \inst9|count[15]~50\,
	combout => \inst9|count[16]~51_combout\,
	cout => \inst9|count[16]~52\);

-- Location: FF_X13_Y3_N15
\inst9|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[16]~51_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(16));

-- Location: LCCOMB_X13_Y3_N16
\inst9|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[17]~53_combout\ = (\inst9|count\(17) & (!\inst9|count[16]~52\)) # (!\inst9|count\(17) & ((\inst9|count[16]~52\) # (GND)))
-- \inst9|count[17]~54\ = CARRY((!\inst9|count[16]~52\) # (!\inst9|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|count\(17),
	datad => VCC,
	cin => \inst9|count[16]~52\,
	combout => \inst9|count[17]~53_combout\,
	cout => \inst9|count[17]~54\);

-- Location: FF_X13_Y3_N17
\inst9|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[17]~53_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(17));

-- Location: LCCOMB_X13_Y3_N18
\inst9|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[18]~55_combout\ = \inst9|count[17]~54\ $ (!\inst9|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|count\(18),
	cin => \inst9|count[17]~54\,
	combout => \inst9|count[18]~55_combout\);

-- Location: FF_X13_Y3_N19
\inst9|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[18]~55_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(18));

-- Location: LCCOMB_X12_Y3_N16
\inst9|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~3_combout\ = ((\inst9|flipflops\(0) $ (\inst9|flipflops\(1))) # (!\inst9|count\(16))) # (!\inst9|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|flipflops\(0),
	datab => \inst9|count\(15),
	datac => \inst9|count\(16),
	datad => \inst9|flipflops\(1),
	combout => \inst9|result~3_combout\);

-- Location: LCCOMB_X13_Y4_N12
\inst9|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~4_combout\ = (\inst9|result~2_combout\) # (((\inst9|result~3_combout\) # (!\inst9|count\(18))) # (!\inst9|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~2_combout\,
	datab => \inst9|count\(17),
	datac => \inst9|count\(18),
	datad => \inst9|result~3_combout\,
	combout => \inst9|result~4_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst9|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~5_combout\ = (\inst9|result~4_combout\ & (\inst9|result~q\)) # (!\inst9|result~4_combout\ & ((\inst9|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~q\,
	datac => \inst9|flipflops\(1),
	datad => \inst9|result~4_combout\,
	combout => \inst9|result~5_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst9|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~feeder_combout\ = \inst9|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|result~5_combout\,
	combout => \inst9|result~feeder_combout\);

-- Location: FF_X14_Y4_N27
\inst9|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|result~q\);

-- Location: LCCOMB_X16_Y12_N28
\inst13|aux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|aux1~0_combout\ = \inst13|aux1~q\ $ (!\inst13|igual~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|aux1~q\,
	datad => \inst13|igual~8_combout\,
	combout => \inst13|aux1~0_combout\);

-- Location: FF_X16_Y12_N29
\inst13|aux1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|ALT_INV_result~q\,
	d => \inst13|aux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|aux1~q\);

-- Location: LCCOMB_X16_Y12_N22
\inst13|aux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|aux2~0_combout\ = \inst13|aux2~q\ $ (((\inst13|aux1~q\ & !\inst13|igual~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|aux1~q\,
	datac => \inst13|aux2~q\,
	datad => \inst13|igual~8_combout\,
	combout => \inst13|aux2~0_combout\);

-- Location: FF_X16_Y12_N23
\inst13|aux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_result~q\,
	d => \inst13|aux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|aux2~q\);

-- Location: IOIBUF_X34_Y12_N1
\button4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button4,
	o => \button4~input_o\);

-- Location: LCCOMB_X28_Y9_N30
\inst11|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|flipflops[0]~feeder_combout\ = \button4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button4~input_o\,
	combout => \inst11|flipflops[0]~feeder_combout\);

-- Location: FF_X28_Y9_N31
\inst11|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|flipflops\(0));

-- Location: LCCOMB_X28_Y9_N28
\inst11|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|flipflops[1]~feeder_combout\ = \inst11|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|flipflops\(0),
	combout => \inst11|flipflops[1]~feeder_combout\);

-- Location: FF_X28_Y9_N29
\inst11|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|flipflops\(1));

-- Location: LCCOMB_X29_Y10_N14
\inst11|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[0]~19_combout\ = \inst11|count\(0) $ (VCC)
-- \inst11|count[0]~20\ = CARRY(\inst11|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(0),
	datad => VCC,
	combout => \inst11|count[0]~19_combout\,
	cout => \inst11|count[0]~20\);

-- Location: LCCOMB_X28_Y9_N22
\inst11|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|counter_set~combout\ = \inst11|flipflops\(0) $ (\inst11|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|flipflops\(0),
	datad => \inst11|flipflops\(1),
	combout => \inst11|counter_set~combout\);

-- Location: FF_X29_Y10_N15
\inst11|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[0]~19_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(0));

-- Location: LCCOMB_X29_Y10_N16
\inst11|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[1]~21_combout\ = (\inst11|count\(1) & (!\inst11|count[0]~20\)) # (!\inst11|count\(1) & ((\inst11|count[0]~20\) # (GND)))
-- \inst11|count[1]~22\ = CARRY((!\inst11|count[0]~20\) # (!\inst11|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(1),
	datad => VCC,
	cin => \inst11|count[0]~20\,
	combout => \inst11|count[1]~21_combout\,
	cout => \inst11|count[1]~22\);

-- Location: FF_X29_Y10_N17
\inst11|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[1]~21_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(1));

-- Location: LCCOMB_X29_Y10_N18
\inst11|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[2]~23_combout\ = (\inst11|count\(2) & (\inst11|count[1]~22\ $ (GND))) # (!\inst11|count\(2) & (!\inst11|count[1]~22\ & VCC))
-- \inst11|count[2]~24\ = CARRY((\inst11|count\(2) & !\inst11|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(2),
	datad => VCC,
	cin => \inst11|count[1]~22\,
	combout => \inst11|count[2]~23_combout\,
	cout => \inst11|count[2]~24\);

-- Location: FF_X29_Y10_N19
\inst11|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[2]~23_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(2));

-- Location: LCCOMB_X29_Y10_N20
\inst11|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[3]~25_combout\ = (\inst11|count\(3) & (!\inst11|count[2]~24\)) # (!\inst11|count\(3) & ((\inst11|count[2]~24\) # (GND)))
-- \inst11|count[3]~26\ = CARRY((!\inst11|count[2]~24\) # (!\inst11|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(3),
	datad => VCC,
	cin => \inst11|count[2]~24\,
	combout => \inst11|count[3]~25_combout\,
	cout => \inst11|count[3]~26\);

-- Location: FF_X29_Y10_N21
\inst11|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[3]~25_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(3));

-- Location: LCCOMB_X29_Y10_N22
\inst11|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[4]~27_combout\ = (\inst11|count\(4) & (\inst11|count[3]~26\ $ (GND))) # (!\inst11|count\(4) & (!\inst11|count[3]~26\ & VCC))
-- \inst11|count[4]~28\ = CARRY((\inst11|count\(4) & !\inst11|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(4),
	datad => VCC,
	cin => \inst11|count[3]~26\,
	combout => \inst11|count[4]~27_combout\,
	cout => \inst11|count[4]~28\);

-- Location: FF_X29_Y10_N23
\inst11|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[4]~27_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(4));

-- Location: LCCOMB_X29_Y10_N24
\inst11|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[5]~29_combout\ = (\inst11|count\(5) & (!\inst11|count[4]~28\)) # (!\inst11|count\(5) & ((\inst11|count[4]~28\) # (GND)))
-- \inst11|count[5]~30\ = CARRY((!\inst11|count[4]~28\) # (!\inst11|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(5),
	datad => VCC,
	cin => \inst11|count[4]~28\,
	combout => \inst11|count[5]~29_combout\,
	cout => \inst11|count[5]~30\);

-- Location: FF_X29_Y10_N25
\inst11|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[5]~29_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(5));

-- Location: LCCOMB_X29_Y10_N26
\inst11|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[6]~31_combout\ = (\inst11|count\(6) & (\inst11|count[5]~30\ $ (GND))) # (!\inst11|count\(6) & (!\inst11|count[5]~30\ & VCC))
-- \inst11|count[6]~32\ = CARRY((\inst11|count\(6) & !\inst11|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(6),
	datad => VCC,
	cin => \inst11|count[5]~30\,
	combout => \inst11|count[6]~31_combout\,
	cout => \inst11|count[6]~32\);

-- Location: FF_X29_Y10_N27
\inst11|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[6]~31_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(6));

-- Location: LCCOMB_X29_Y10_N28
\inst11|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[7]~33_combout\ = (\inst11|count\(7) & (!\inst11|count[6]~32\)) # (!\inst11|count\(7) & ((\inst11|count[6]~32\) # (GND)))
-- \inst11|count[7]~34\ = CARRY((!\inst11|count[6]~32\) # (!\inst11|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(7),
	datad => VCC,
	cin => \inst11|count[6]~32\,
	combout => \inst11|count[7]~33_combout\,
	cout => \inst11|count[7]~34\);

-- Location: FF_X29_Y10_N29
\inst11|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[7]~33_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(7));

-- Location: LCCOMB_X29_Y10_N30
\inst11|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[8]~35_combout\ = (\inst11|count\(8) & (\inst11|count[7]~34\ $ (GND))) # (!\inst11|count\(8) & (!\inst11|count[7]~34\ & VCC))
-- \inst11|count[8]~36\ = CARRY((\inst11|count\(8) & !\inst11|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(8),
	datad => VCC,
	cin => \inst11|count[7]~34\,
	combout => \inst11|count[8]~35_combout\,
	cout => \inst11|count[8]~36\);

-- Location: FF_X29_Y10_N31
\inst11|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[8]~35_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(8));

-- Location: LCCOMB_X29_Y9_N0
\inst11|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[9]~37_combout\ = (\inst11|count\(9) & (!\inst11|count[8]~36\)) # (!\inst11|count\(9) & ((\inst11|count[8]~36\) # (GND)))
-- \inst11|count[9]~38\ = CARRY((!\inst11|count[8]~36\) # (!\inst11|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(9),
	datad => VCC,
	cin => \inst11|count[8]~36\,
	combout => \inst11|count[9]~37_combout\,
	cout => \inst11|count[9]~38\);

-- Location: FF_X29_Y9_N1
\inst11|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[9]~37_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(9));

-- Location: LCCOMB_X29_Y9_N2
\inst11|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[10]~39_combout\ = (\inst11|count\(10) & (\inst11|count[9]~38\ $ (GND))) # (!\inst11|count\(10) & (!\inst11|count[9]~38\ & VCC))
-- \inst11|count[10]~40\ = CARRY((\inst11|count\(10) & !\inst11|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(10),
	datad => VCC,
	cin => \inst11|count[9]~38\,
	combout => \inst11|count[10]~39_combout\,
	cout => \inst11|count[10]~40\);

-- Location: FF_X29_Y9_N3
\inst11|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[10]~39_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(10));

-- Location: LCCOMB_X29_Y9_N4
\inst11|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[11]~41_combout\ = (\inst11|count\(11) & (!\inst11|count[10]~40\)) # (!\inst11|count\(11) & ((\inst11|count[10]~40\) # (GND)))
-- \inst11|count[11]~42\ = CARRY((!\inst11|count[10]~40\) # (!\inst11|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(11),
	datad => VCC,
	cin => \inst11|count[10]~40\,
	combout => \inst11|count[11]~41_combout\,
	cout => \inst11|count[11]~42\);

-- Location: FF_X29_Y9_N5
\inst11|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[11]~41_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(11));

-- Location: LCCOMB_X29_Y9_N6
\inst11|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[12]~43_combout\ = (\inst11|count\(12) & (\inst11|count[11]~42\ $ (GND))) # (!\inst11|count\(12) & (!\inst11|count[11]~42\ & VCC))
-- \inst11|count[12]~44\ = CARRY((\inst11|count\(12) & !\inst11|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(12),
	datad => VCC,
	cin => \inst11|count[11]~42\,
	combout => \inst11|count[12]~43_combout\,
	cout => \inst11|count[12]~44\);

-- Location: FF_X29_Y9_N7
\inst11|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[12]~43_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(12));

-- Location: LCCOMB_X29_Y9_N8
\inst11|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[13]~45_combout\ = (\inst11|count\(13) & (!\inst11|count[12]~44\)) # (!\inst11|count\(13) & ((\inst11|count[12]~44\) # (GND)))
-- \inst11|count[13]~46\ = CARRY((!\inst11|count[12]~44\) # (!\inst11|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(13),
	datad => VCC,
	cin => \inst11|count[12]~44\,
	combout => \inst11|count[13]~45_combout\,
	cout => \inst11|count[13]~46\);

-- Location: LCCOMB_X29_Y10_N4
\inst11|count[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[13]~feeder_combout\ = \inst11|count[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|count[13]~45_combout\,
	combout => \inst11|count[13]~feeder_combout\);

-- Location: FF_X29_Y10_N5
\inst11|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[13]~feeder_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(13));

-- Location: LCCOMB_X29_Y9_N10
\inst11|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[14]~47_combout\ = (\inst11|count\(14) & (\inst11|count[13]~46\ $ (GND))) # (!\inst11|count\(14) & (!\inst11|count[13]~46\ & VCC))
-- \inst11|count[14]~48\ = CARRY((\inst11|count\(14) & !\inst11|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(14),
	datad => VCC,
	cin => \inst11|count[13]~46\,
	combout => \inst11|count[14]~47_combout\,
	cout => \inst11|count[14]~48\);

-- Location: FF_X29_Y9_N11
\inst11|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[14]~47_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(14));

-- Location: LCCOMB_X29_Y9_N12
\inst11|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[15]~49_combout\ = (\inst11|count\(15) & (!\inst11|count[14]~48\)) # (!\inst11|count\(15) & ((\inst11|count[14]~48\) # (GND)))
-- \inst11|count[15]~50\ = CARRY((!\inst11|count[14]~48\) # (!\inst11|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(15),
	datad => VCC,
	cin => \inst11|count[14]~48\,
	combout => \inst11|count[15]~49_combout\,
	cout => \inst11|count[15]~50\);

-- Location: FF_X29_Y9_N13
\inst11|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[15]~49_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(15));

-- Location: LCCOMB_X29_Y9_N14
\inst11|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[16]~51_combout\ = (\inst11|count\(16) & (\inst11|count[15]~50\ $ (GND))) # (!\inst11|count\(16) & (!\inst11|count[15]~50\ & VCC))
-- \inst11|count[16]~52\ = CARRY((\inst11|count\(16) & !\inst11|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(16),
	datad => VCC,
	cin => \inst11|count[15]~50\,
	combout => \inst11|count[16]~51_combout\,
	cout => \inst11|count[16]~52\);

-- Location: FF_X29_Y9_N15
\inst11|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[16]~51_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(16));

-- Location: LCCOMB_X29_Y9_N16
\inst11|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[17]~53_combout\ = (\inst11|count\(17) & (!\inst11|count[16]~52\)) # (!\inst11|count\(17) & ((\inst11|count[16]~52\) # (GND)))
-- \inst11|count[17]~54\ = CARRY((!\inst11|count[16]~52\) # (!\inst11|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(17),
	datad => VCC,
	cin => \inst11|count[16]~52\,
	combout => \inst11|count[17]~53_combout\,
	cout => \inst11|count[17]~54\);

-- Location: FF_X29_Y9_N17
\inst11|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[17]~53_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(17));

-- Location: LCCOMB_X29_Y9_N18
\inst11|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[18]~55_combout\ = \inst11|count[17]~54\ $ (!\inst11|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst11|count\(18),
	cin => \inst11|count[17]~54\,
	combout => \inst11|count[18]~55_combout\);

-- Location: FF_X29_Y9_N19
\inst11|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[18]~55_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(18));

-- Location: LCCOMB_X29_Y10_N10
\inst11|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~0_combout\ = ((!\inst11|count\(6) & (!\inst11|count\(5) & !\inst11|count\(7)))) # (!\inst11|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(6),
	datab => \inst11|count\(5),
	datac => \inst11|count\(8),
	datad => \inst11|count\(7),
	combout => \inst11|result~0_combout\);

-- Location: LCCOMB_X29_Y9_N20
\inst11|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~1_combout\ = (!\inst11|count\(12) & (!\inst11|count\(10) & (!\inst11|count\(11) & !\inst11|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(12),
	datab => \inst11|count\(10),
	datac => \inst11|count\(11),
	datad => \inst11|count\(9),
	combout => \inst11|result~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst11|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~2_combout\ = (!\inst11|count\(14) & (((\inst11|result~0_combout\ & \inst11|result~1_combout\)) # (!\inst11|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|result~0_combout\,
	datab => \inst11|count\(13),
	datac => \inst11|count\(14),
	datad => \inst11|result~1_combout\,
	combout => \inst11|result~2_combout\);

-- Location: LCCOMB_X28_Y9_N24
\inst11|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~3_combout\ = ((\inst11|flipflops\(0) $ (\inst11|flipflops\(1))) # (!\inst11|count\(15))) # (!\inst11|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|flipflops\(0),
	datab => \inst11|count\(16),
	datac => \inst11|count\(15),
	datad => \inst11|flipflops\(1),
	combout => \inst11|result~3_combout\);

-- Location: LCCOMB_X29_Y10_N2
\inst11|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~4_combout\ = (((\inst11|result~2_combout\) # (\inst11|result~3_combout\)) # (!\inst11|count\(18))) # (!\inst11|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(17),
	datab => \inst11|count\(18),
	datac => \inst11|result~2_combout\,
	datad => \inst11|result~3_combout\,
	combout => \inst11|result~4_combout\);

-- Location: LCCOMB_X28_Y10_N30
\inst11|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~5_combout\ = (\inst11|result~4_combout\ & (\inst11|result~q\)) # (!\inst11|result~4_combout\ & ((\inst11|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|result~q\,
	datab => \inst11|flipflops\(1),
	datad => \inst11|result~4_combout\,
	combout => \inst11|result~5_combout\);

-- Location: LCCOMB_X28_Y10_N14
\inst11|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~feeder_combout\ = \inst11|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|result~5_combout\,
	combout => \inst11|result~feeder_combout\);

-- Location: FF_X28_Y10_N15
\inst11|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|result~q\);

-- Location: IOIBUF_X34_Y12_N8
\button3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button3,
	o => \button3~input_o\);

-- Location: FF_X33_Y11_N19
\inst10|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \button3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|flipflops\(0));

-- Location: LCCOMB_X33_Y11_N8
\inst10|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|flipflops[1]~feeder_combout\ = \inst10|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|flipflops\(0),
	combout => \inst10|flipflops[1]~feeder_combout\);

-- Location: FF_X33_Y11_N9
\inst10|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|flipflops\(1));

-- Location: LCCOMB_X32_Y12_N14
\inst10|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[0]~19_combout\ = \inst10|count\(0) $ (VCC)
-- \inst10|count[0]~20\ = CARRY(\inst10|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(0),
	datad => VCC,
	combout => \inst10|count[0]~19_combout\,
	cout => \inst10|count[0]~20\);

-- Location: LCCOMB_X33_Y11_N14
\inst10|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|counter_set~combout\ = \inst10|flipflops\(1) $ (\inst10|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|flipflops\(1),
	datad => \inst10|flipflops\(0),
	combout => \inst10|counter_set~combout\);

-- Location: FF_X32_Y12_N15
\inst10|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[0]~19_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(0));

-- Location: LCCOMB_X32_Y12_N16
\inst10|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[1]~21_combout\ = (\inst10|count\(1) & (!\inst10|count[0]~20\)) # (!\inst10|count\(1) & ((\inst10|count[0]~20\) # (GND)))
-- \inst10|count[1]~22\ = CARRY((!\inst10|count[0]~20\) # (!\inst10|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(1),
	datad => VCC,
	cin => \inst10|count[0]~20\,
	combout => \inst10|count[1]~21_combout\,
	cout => \inst10|count[1]~22\);

-- Location: FF_X32_Y12_N17
\inst10|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[1]~21_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(1));

-- Location: LCCOMB_X32_Y12_N18
\inst10|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~23_combout\ = (\inst10|count\(2) & (\inst10|count[1]~22\ $ (GND))) # (!\inst10|count\(2) & (!\inst10|count[1]~22\ & VCC))
-- \inst10|count[2]~24\ = CARRY((\inst10|count\(2) & !\inst10|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(2),
	datad => VCC,
	cin => \inst10|count[1]~22\,
	combout => \inst10|count[2]~23_combout\,
	cout => \inst10|count[2]~24\);

-- Location: FF_X32_Y12_N19
\inst10|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[2]~23_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(2));

-- Location: LCCOMB_X32_Y12_N20
\inst10|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[3]~25_combout\ = (\inst10|count\(3) & (!\inst10|count[2]~24\)) # (!\inst10|count\(3) & ((\inst10|count[2]~24\) # (GND)))
-- \inst10|count[3]~26\ = CARRY((!\inst10|count[2]~24\) # (!\inst10|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(3),
	datad => VCC,
	cin => \inst10|count[2]~24\,
	combout => \inst10|count[3]~25_combout\,
	cout => \inst10|count[3]~26\);

-- Location: FF_X32_Y12_N21
\inst10|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[3]~25_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(3));

-- Location: LCCOMB_X32_Y12_N22
\inst10|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[4]~27_combout\ = (\inst10|count\(4) & (\inst10|count[3]~26\ $ (GND))) # (!\inst10|count\(4) & (!\inst10|count[3]~26\ & VCC))
-- \inst10|count[4]~28\ = CARRY((\inst10|count\(4) & !\inst10|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(4),
	datad => VCC,
	cin => \inst10|count[3]~26\,
	combout => \inst10|count[4]~27_combout\,
	cout => \inst10|count[4]~28\);

-- Location: FF_X32_Y12_N23
\inst10|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[4]~27_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(4));

-- Location: LCCOMB_X32_Y12_N24
\inst10|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[5]~29_combout\ = (\inst10|count\(5) & (!\inst10|count[4]~28\)) # (!\inst10|count\(5) & ((\inst10|count[4]~28\) # (GND)))
-- \inst10|count[5]~30\ = CARRY((!\inst10|count[4]~28\) # (!\inst10|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(5),
	datad => VCC,
	cin => \inst10|count[4]~28\,
	combout => \inst10|count[5]~29_combout\,
	cout => \inst10|count[5]~30\);

-- Location: FF_X32_Y12_N25
\inst10|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[5]~29_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(5));

-- Location: LCCOMB_X32_Y12_N26
\inst10|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[6]~31_combout\ = (\inst10|count\(6) & (\inst10|count[5]~30\ $ (GND))) # (!\inst10|count\(6) & (!\inst10|count[5]~30\ & VCC))
-- \inst10|count[6]~32\ = CARRY((\inst10|count\(6) & !\inst10|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datad => VCC,
	cin => \inst10|count[5]~30\,
	combout => \inst10|count[6]~31_combout\,
	cout => \inst10|count[6]~32\);

-- Location: FF_X32_Y12_N27
\inst10|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[6]~31_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(6));

-- Location: LCCOMB_X32_Y12_N28
\inst10|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[7]~33_combout\ = (\inst10|count\(7) & (!\inst10|count[6]~32\)) # (!\inst10|count\(7) & ((\inst10|count[6]~32\) # (GND)))
-- \inst10|count[7]~34\ = CARRY((!\inst10|count[6]~32\) # (!\inst10|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(7),
	datad => VCC,
	cin => \inst10|count[6]~32\,
	combout => \inst10|count[7]~33_combout\,
	cout => \inst10|count[7]~34\);

-- Location: FF_X32_Y12_N29
\inst10|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[7]~33_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(7));

-- Location: LCCOMB_X32_Y12_N30
\inst10|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[8]~35_combout\ = (\inst10|count\(8) & (\inst10|count[7]~34\ $ (GND))) # (!\inst10|count\(8) & (!\inst10|count[7]~34\ & VCC))
-- \inst10|count[8]~36\ = CARRY((\inst10|count\(8) & !\inst10|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(8),
	datad => VCC,
	cin => \inst10|count[7]~34\,
	combout => \inst10|count[8]~35_combout\,
	cout => \inst10|count[8]~36\);

-- Location: FF_X32_Y12_N31
\inst10|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[8]~35_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(8));

-- Location: LCCOMB_X32_Y11_N0
\inst10|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[9]~37_combout\ = (\inst10|count\(9) & (!\inst10|count[8]~36\)) # (!\inst10|count\(9) & ((\inst10|count[8]~36\) # (GND)))
-- \inst10|count[9]~38\ = CARRY((!\inst10|count[8]~36\) # (!\inst10|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(9),
	datad => VCC,
	cin => \inst10|count[8]~36\,
	combout => \inst10|count[9]~37_combout\,
	cout => \inst10|count[9]~38\);

-- Location: FF_X32_Y11_N1
\inst10|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[9]~37_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(9));

-- Location: LCCOMB_X32_Y11_N2
\inst10|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[10]~39_combout\ = (\inst10|count\(10) & (\inst10|count[9]~38\ $ (GND))) # (!\inst10|count\(10) & (!\inst10|count[9]~38\ & VCC))
-- \inst10|count[10]~40\ = CARRY((\inst10|count\(10) & !\inst10|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(10),
	datad => VCC,
	cin => \inst10|count[9]~38\,
	combout => \inst10|count[10]~39_combout\,
	cout => \inst10|count[10]~40\);

-- Location: FF_X32_Y11_N3
\inst10|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[10]~39_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(10));

-- Location: LCCOMB_X32_Y11_N4
\inst10|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[11]~41_combout\ = (\inst10|count\(11) & (!\inst10|count[10]~40\)) # (!\inst10|count\(11) & ((\inst10|count[10]~40\) # (GND)))
-- \inst10|count[11]~42\ = CARRY((!\inst10|count[10]~40\) # (!\inst10|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(11),
	datad => VCC,
	cin => \inst10|count[10]~40\,
	combout => \inst10|count[11]~41_combout\,
	cout => \inst10|count[11]~42\);

-- Location: FF_X32_Y11_N5
\inst10|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[11]~41_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(11));

-- Location: LCCOMB_X32_Y11_N6
\inst10|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[12]~43_combout\ = (\inst10|count\(12) & (\inst10|count[11]~42\ $ (GND))) # (!\inst10|count\(12) & (!\inst10|count[11]~42\ & VCC))
-- \inst10|count[12]~44\ = CARRY((\inst10|count\(12) & !\inst10|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(12),
	datad => VCC,
	cin => \inst10|count[11]~42\,
	combout => \inst10|count[12]~43_combout\,
	cout => \inst10|count[12]~44\);

-- Location: FF_X32_Y11_N7
\inst10|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[12]~43_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(12));

-- Location: LCCOMB_X32_Y11_N8
\inst10|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[13]~45_combout\ = (\inst10|count\(13) & (!\inst10|count[12]~44\)) # (!\inst10|count\(13) & ((\inst10|count[12]~44\) # (GND)))
-- \inst10|count[13]~46\ = CARRY((!\inst10|count[12]~44\) # (!\inst10|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(13),
	datad => VCC,
	cin => \inst10|count[12]~44\,
	combout => \inst10|count[13]~45_combout\,
	cout => \inst10|count[13]~46\);

-- Location: FF_X32_Y11_N9
\inst10|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[13]~45_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(13));

-- Location: LCCOMB_X32_Y11_N10
\inst10|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[14]~47_combout\ = (\inst10|count\(14) & (\inst10|count[13]~46\ $ (GND))) # (!\inst10|count\(14) & (!\inst10|count[13]~46\ & VCC))
-- \inst10|count[14]~48\ = CARRY((\inst10|count\(14) & !\inst10|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(14),
	datad => VCC,
	cin => \inst10|count[13]~46\,
	combout => \inst10|count[14]~47_combout\,
	cout => \inst10|count[14]~48\);

-- Location: FF_X32_Y11_N11
\inst10|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[14]~47_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(14));

-- Location: LCCOMB_X32_Y11_N12
\inst10|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[15]~49_combout\ = (\inst10|count\(15) & (!\inst10|count[14]~48\)) # (!\inst10|count\(15) & ((\inst10|count[14]~48\) # (GND)))
-- \inst10|count[15]~50\ = CARRY((!\inst10|count[14]~48\) # (!\inst10|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(15),
	datad => VCC,
	cin => \inst10|count[14]~48\,
	combout => \inst10|count[15]~49_combout\,
	cout => \inst10|count[15]~50\);

-- Location: FF_X32_Y11_N13
\inst10|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[15]~49_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(15));

-- Location: LCCOMB_X32_Y11_N14
\inst10|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[16]~51_combout\ = (\inst10|count\(16) & (\inst10|count[15]~50\ $ (GND))) # (!\inst10|count\(16) & (!\inst10|count[15]~50\ & VCC))
-- \inst10|count[16]~52\ = CARRY((\inst10|count\(16) & !\inst10|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(16),
	datad => VCC,
	cin => \inst10|count[15]~50\,
	combout => \inst10|count[16]~51_combout\,
	cout => \inst10|count[16]~52\);

-- Location: FF_X32_Y11_N15
\inst10|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[16]~51_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(16));

-- Location: LCCOMB_X32_Y11_N16
\inst10|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[17]~53_combout\ = (\inst10|count\(17) & (!\inst10|count[16]~52\)) # (!\inst10|count\(17) & ((\inst10|count[16]~52\) # (GND)))
-- \inst10|count[17]~54\ = CARRY((!\inst10|count[16]~52\) # (!\inst10|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(17),
	datad => VCC,
	cin => \inst10|count[16]~52\,
	combout => \inst10|count[17]~53_combout\,
	cout => \inst10|count[17]~54\);

-- Location: FF_X32_Y11_N17
\inst10|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[17]~53_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(17));

-- Location: LCCOMB_X32_Y11_N18
\inst10|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[18]~55_combout\ = \inst10|count[17]~54\ $ (!\inst10|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst10|count\(18),
	cin => \inst10|count[17]~54\,
	combout => \inst10|count[18]~55_combout\);

-- Location: FF_X32_Y11_N19
\inst10|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|count[18]~55_combout\,
	sclr => \inst10|counter_set~combout\,
	ena => \inst10|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(18));

-- Location: LCCOMB_X33_Y11_N0
\inst10|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~3_combout\ = ((\inst10|flipflops\(0) $ (\inst10|flipflops\(1))) # (!\inst10|count\(15))) # (!\inst10|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(16),
	datab => \inst10|flipflops\(0),
	datac => \inst10|flipflops\(1),
	datad => \inst10|count\(15),
	combout => \inst10|result~3_combout\);

-- Location: LCCOMB_X32_Y12_N12
\inst10|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~0_combout\ = ((!\inst10|count\(6) & (!\inst10|count\(5) & !\inst10|count\(7)))) # (!\inst10|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datab => \inst10|count\(5),
	datac => \inst10|count\(8),
	datad => \inst10|count\(7),
	combout => \inst10|result~0_combout\);

-- Location: LCCOMB_X32_Y11_N28
\inst10|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~1_combout\ = (!\inst10|count\(12) & (!\inst10|count\(10) & (!\inst10|count\(11) & !\inst10|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(12),
	datab => \inst10|count\(10),
	datac => \inst10|count\(11),
	datad => \inst10|count\(9),
	combout => \inst10|result~1_combout\);

-- Location: LCCOMB_X32_Y12_N10
\inst10|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~2_combout\ = (!\inst10|count\(14) & (((\inst10|result~0_combout\ & \inst10|result~1_combout\)) # (!\inst10|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|result~0_combout\,
	datab => \inst10|count\(14),
	datac => \inst10|count\(13),
	datad => \inst10|result~1_combout\,
	combout => \inst10|result~2_combout\);

-- Location: LCCOMB_X32_Y12_N0
\inst10|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~4_combout\ = (((\inst10|result~3_combout\) # (\inst10|result~2_combout\)) # (!\inst10|count\(17))) # (!\inst10|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(18),
	datab => \inst10|count\(17),
	datac => \inst10|result~3_combout\,
	datad => \inst10|result~2_combout\,
	combout => \inst10|result~4_combout\);

-- Location: LCCOMB_X31_Y13_N22
\inst10|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~5_combout\ = (\inst10|result~4_combout\ & ((\inst10|result~q\))) # (!\inst10|result~4_combout\ & (\inst10|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|flipflops\(1),
	datac => \inst10|result~q\,
	datad => \inst10|result~4_combout\,
	combout => \inst10|result~5_combout\);

-- Location: LCCOMB_X31_Y13_N20
\inst10|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~feeder_combout\ = \inst10|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|result~5_combout\,
	combout => \inst10|result~feeder_combout\);

-- Location: FF_X31_Y13_N21
\inst10|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|result~q\);

-- Location: LCCOMB_X16_Y13_N14
\inst13|aux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|aux3~0_combout\ = \inst13|aux3~q\ $ (((\inst13|aux2~q\ & (\inst13|aux1~q\ & !\inst13|igual~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|aux2~q\,
	datab => \inst13|aux1~q\,
	datac => \inst13|aux3~q\,
	datad => \inst13|igual~8_combout\,
	combout => \inst13|aux3~0_combout\);

-- Location: FF_X16_Y13_N15
\inst13|aux3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~q\,
	d => \inst13|aux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|aux3~q\);

-- Location: LCCOMB_X16_Y13_N4
\inst13|aux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|aux4~0_combout\ = ((!\inst13|aux1~q\) # (!\inst13|aux3~q\)) # (!\inst13|aux2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|aux2~q\,
	datac => \inst13|aux3~q\,
	datad => \inst13|aux1~q\,
	combout => \inst13|aux4~0_combout\);

-- Location: LCCOMB_X16_Y13_N16
\inst13|aux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|aux4~1_combout\ = \inst13|aux4~q\ $ (((!\inst13|aux4~0_combout\ & !\inst13|igual~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|aux4~0_combout\,
	datac => \inst13|aux4~q\,
	datad => \inst13|igual~8_combout\,
	combout => \inst13|aux4~1_combout\);

-- Location: FF_X16_Y13_N17
\inst13|aux4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~q\,
	d => \inst13|aux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|aux4~q\);

-- Location: LCCOMB_X17_Y13_N28
\inst13|igual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~1_combout\ = (((!\inst13|aux3~q\) # (!\inst13|aux4~q\)) # (!\inst13|aux1~q\)) # (!\inst13|aux2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|aux2~q\,
	datab => \inst13|aux1~q\,
	datac => \inst13|aux4~q\,
	datad => \inst13|aux3~q\,
	combout => \inst13|igual~1_combout\);

-- Location: LCCOMB_X17_Y13_N18
\inst13|igual~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|igual~8_combout\ = (\inst13|igual~8_combout\ & (((!\inst13|igual~7_combout\)) # (!\inst13|igual~2_combout\))) # (!\inst13|igual~8_combout\ & (((!\inst13|igual~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|igual~2_combout\,
	datab => \inst13|igual~8_combout\,
	datac => \inst13|igual~7_combout\,
	datad => \inst13|igual~1_combout\,
	combout => \inst13|igual~8_combout\);

-- Location: LCCOMB_X17_Y13_N4
\inst4|aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|aux~2_combout\ = (\inst4|aux\(0) & (\inst4|aux\(2) $ (\inst4|aux\(1)))) # (!\inst4|aux\(0) & (\inst4|aux\(2) & \inst4|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datac => \inst4|aux\(2),
	datad => \inst4|aux\(1),
	combout => \inst4|aux~2_combout\);

-- Location: LCCOMB_X17_Y13_N22
\inst4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~0_combout\ = (!\inst8|result~q\ & \inst13|igual~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|result~q\,
	datad => \inst13|igual~8_combout\,
	combout => \inst4|process_0~0_combout\);

-- Location: FF_X17_Y13_N5
\inst4|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|aux~clkctrl_outclk\,
	d => \inst4|aux~2_combout\,
	ena => \inst4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux\(2));

-- Location: LCCOMB_X17_Y13_N10
\inst4|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|aux~0_combout\ = (!\inst4|aux\(0) & ((\inst4|aux\(1)) # (!\inst4|aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|aux\(2),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst4|aux~0_combout\);

-- Location: FF_X17_Y13_N11
\inst4|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|aux~clkctrl_outclk\,
	d => \inst4|aux~0_combout\,
	ena => \inst4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux\(0));

-- Location: LCCOMB_X18_Y13_N6
\inst4|aux[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|aux[1]~1_combout\ = \inst4|aux\(1) $ (((!\inst8|result~q\ & (\inst13|igual~8_combout\ & \inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result~q\,
	datab => \inst13|igual~8_combout\,
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst4|aux[1]~1_combout\);

-- Location: FF_X18_Y13_N7
\inst4|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|aux~clkctrl_outclk\,
	d => \inst4|aux[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux\(1));

-- Location: LCCOMB_X17_Y13_N24
\inst|lcd_bus[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[4]~12_combout\ = (\inst13|igual~8_combout\ & (\inst4|aux\(1) $ (\inst4|aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datac => \inst4|aux\(0),
	datad => \inst13|igual~8_combout\,
	combout => \inst|lcd_bus[4]~12_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst|lcd_bus[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[4]~13_combout\ = (\inst4|aux\(0)) # (!\inst13|igual~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datad => \inst13|igual~8_combout\,
	combout => \inst|lcd_bus[4]~13_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst|lcd_bus~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~14_combout\ = (\inst|char\(1) & (!\inst|char\(3) & (\inst|char\(0) $ (\inst|lcd_bus[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst|char\(3),
	datad => \inst|lcd_bus[4]~13_combout\,
	combout => \inst|lcd_bus~14_combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst|lcd_bus~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~15_combout\ = (\inst|char\(1) & (!\inst|char\(0))) # (!\inst|char\(1) & (\inst|char\(3) & ((\inst|char\(0)) # (\inst|lcd_bus[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst|char\(3),
	datad => \inst|lcd_bus[4]~13_combout\,
	combout => \inst|lcd_bus~15_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst|lcd_bus~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~16_combout\ = ((\inst|lcd_bus[4]~12_combout\ & ((!\inst|lcd_bus~15_combout\))) # (!\inst|lcd_bus[4]~12_combout\ & (!\inst|lcd_bus~14_combout\))) # (!\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|lcd_bus[4]~12_combout\,
	datac => \inst|lcd_bus~14_combout\,
	datad => \inst|lcd_bus~15_combout\,
	combout => \inst|lcd_bus~16_combout\);

-- Location: FF_X19_Y13_N17
\inst|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus~16_combout\,
	sclr => \inst|char\(4),
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(6));

-- Location: LCCOMB_X11_Y17_N16
\inst|dut|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector39~0_combout\ = (\inst|dut|state.ready~q\ & (\inst|lcd_enable~q\ & \inst|lcd_bus\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.ready~q\,
	datac => \inst|lcd_enable~q\,
	datad => \inst|lcd_bus\(6),
	combout => \inst|dut|Selector39~0_combout\);

-- Location: FF_X11_Y17_N17
\inst|dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector39~0_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(6));

-- Location: LCCOMB_X19_Y13_N4
\inst|lcd_bus~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~20_combout\ = (!\inst|char\(4) & \inst|char\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(4),
	datad => \inst|char\(3),
	combout => \inst|lcd_bus~20_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst|lcd_bus~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~21_combout\ = (\inst|char\(2) & ((\inst|char\(0) & (!\inst|char\(1))) # (!\inst|char\(0) & ((\inst|char\(1)) # (\inst|lcd_bus[4]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst|lcd_bus[4]~13_combout\,
	combout => \inst|lcd_bus~21_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst|lcd_bus~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~17_combout\ = (!\inst4|aux\(1) & !\inst4|aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst|lcd_bus~17_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst|lcd_bus~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~18_combout\ = (\inst|char\(1) & (\inst|char\(0) $ (((!\inst|lcd_bus~17_combout\) # (!\inst13|igual~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst13|igual~8_combout\,
	datad => \inst|lcd_bus~17_combout\,
	combout => \inst|lcd_bus~18_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst|lcd_bus~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~19_combout\ = (!\inst|char\(3) & ((\inst|char\(4)) # ((\inst|char\(2) & \inst|lcd_bus~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(3),
	datac => \inst|char\(4),
	datad => \inst|lcd_bus~18_combout\,
	combout => \inst|lcd_bus~19_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst|lcd_bus~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~22_combout\ = (\inst|lcd_bus~19_combout\) # ((\inst|lcd_bus[4]~12_combout\ & (\inst|lcd_bus~20_combout\ & \inst|lcd_bus~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[4]~12_combout\,
	datab => \inst|lcd_bus~20_combout\,
	datac => \inst|lcd_bus~21_combout\,
	datad => \inst|lcd_bus~19_combout\,
	combout => \inst|lcd_bus~22_combout\);

-- Location: FF_X19_Y13_N19
\inst|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus~22_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(5));

-- Location: LCCOMB_X9_Y17_N6
\inst|dut|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector40~2_combout\ = (!\inst|dut|state.ready~q\ & ((\inst|dut|Add0~62_combout\) # (!\inst|dut|state.initialize~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.ready~q\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|dut|Add0~62_combout\,
	combout => \inst|dut|Selector40~2_combout\);

-- Location: LCCOMB_X9_Y17_N16
\inst|dut|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector40~3_combout\ = (\inst|dut|Selector40~2_combout\) # ((!\inst|dut|Add0~60_combout\ & (!\inst|dut|state.ready~q\ & \inst|dut|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst|dut|LessThan1~2_combout\,
	datad => \inst|dut|Selector40~2_combout\,
	combout => \inst|dut|Selector40~3_combout\);

-- Location: LCCOMB_X9_Y17_N0
\inst|dut|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector40~4_combout\ = (\inst|dut|Selector40~3_combout\) # ((\inst|lcd_bus\(5) & (\inst|lcd_enable~q\ & \inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(5),
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|dut|Selector40~3_combout\,
	combout => \inst|dut|Selector40~4_combout\);

-- Location: FF_X9_Y17_N1
\inst|dut|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector40~4_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(5));

-- Location: LCCOMB_X19_Y13_N30
\inst|lcd_bus~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~26_combout\ = (!\inst|char\(2) & (!\inst|char\(0) & !\inst|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst|char\(1),
	combout => \inst|lcd_bus~26_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst|lcd_bus~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~59_combout\ = (\inst|lcd_bus~26_combout\ & (!\inst4|aux\(0) & (\inst13|igual~8_combout\ & !\inst4|aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~26_combout\,
	datab => \inst4|aux\(0),
	datac => \inst13|igual~8_combout\,
	datad => \inst4|aux\(1),
	combout => \inst|lcd_bus~59_combout\);

-- Location: LCCOMB_X17_Y13_N0
\inst|lcd_bus~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~27_combout\ = (\inst|lcd_bus[4]~13_combout\ & (((\inst|char\(2) & \inst|lcd_bus[4]~12_combout\)) # (!\inst|char\(1)))) # (!\inst|lcd_bus[4]~13_combout\ & ((\inst|char\(1) $ (\inst|lcd_bus[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|lcd_bus[4]~13_combout\,
	datad => \inst|lcd_bus[4]~12_combout\,
	combout => \inst|lcd_bus~27_combout\);

-- Location: LCCOMB_X17_Y13_N6
\inst|lcd_bus~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~28_combout\ = (\inst|char\(4)) # ((\inst|char\(0) & !\inst|lcd_bus~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(4),
	datac => \inst|char\(0),
	datad => \inst|lcd_bus~27_combout\,
	combout => \inst|lcd_bus~28_combout\);

-- Location: LCCOMB_X19_Y13_N8
\inst|lcd_bus~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~23_combout\ = (\inst|char\(1) & (\inst|char\(2) & ((\inst|char\(0)) # (!\inst|lcd_bus[4]~12_combout\)))) # (!\inst|char\(1) & ((\inst|char\(2) & (\inst|char\(0) & !\inst|lcd_bus[4]~12_combout\)) # (!\inst|char\(2) & 
-- ((\inst|lcd_bus[4]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst|lcd_bus[4]~12_combout\,
	combout => \inst|lcd_bus~23_combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst|lcd_bus~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~24_combout\ = (\inst|char\(1) & ((\inst|char\(0) $ (\inst|char\(2))) # (!\inst|lcd_bus[4]~12_combout\))) # (!\inst|char\(1) & ((\inst|char\(0)) # (\inst|char\(2) $ (\inst|lcd_bus[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst|lcd_bus[4]~12_combout\,
	combout => \inst|lcd_bus~24_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst|lcd_bus~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~25_combout\ = (\inst|lcd_bus~20_combout\ & ((\inst|lcd_bus[4]~13_combout\ & (\inst|lcd_bus~23_combout\)) # (!\inst|lcd_bus[4]~13_combout\ & ((!\inst|lcd_bus~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~20_combout\,
	datab => \inst|lcd_bus[4]~13_combout\,
	datac => \inst|lcd_bus~23_combout\,
	datad => \inst|lcd_bus~24_combout\,
	combout => \inst|lcd_bus~25_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst|lcd_bus~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~29_combout\ = (\inst|lcd_bus~25_combout\) # ((!\inst|char\(3) & ((\inst|lcd_bus~59_combout\) # (\inst|lcd_bus~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|lcd_bus~59_combout\,
	datac => \inst|lcd_bus~28_combout\,
	datad => \inst|lcd_bus~25_combout\,
	combout => \inst|lcd_bus~29_combout\);

-- Location: FF_X19_Y13_N25
\inst|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus~29_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(4));

-- Location: LCCOMB_X9_Y17_N10
\inst|dut|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector41~2_combout\ = (\inst|dut|Selector40~3_combout\) # ((\inst|lcd_bus\(4) & (\inst|lcd_enable~q\ & \inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(4),
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|dut|Selector40~3_combout\,
	combout => \inst|dut|Selector41~2_combout\);

-- Location: FF_X9_Y17_N11
\inst|dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector41~2_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(4));

-- Location: LCCOMB_X14_Y13_N14
\inst|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~2_combout\ = (!\inst|char\(4) & ((\inst|char\(0) & (!\inst|char\(1) & !\inst|char\(2))) # (!\inst|char\(0) & ((!\inst|char\(2)) # (!\inst|char\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(4),
	datac => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst|Mux12~2_combout\);

-- Location: LCCOMB_X18_Y14_N30
\inst|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~2_combout\ = (\inst|char\(2) & ((\gf|contagemML\(3)) # ((\inst|char\(0))))) # (!\inst|char\(2) & (((\inst|char\(0) & \gf|contagemHL\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \gf|contagemML\(3),
	datac => \inst|char\(0),
	datad => \gf|contagemHL\(3),
	combout => \inst|Mux17~2_combout\);

-- Location: LCCOMB_X14_Y14_N22
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|char\(2) & (\inst|char\(4) & (\inst|char\(0) & \gf|contagemSL\(3)))) # (!\inst|char\(2) & (((!\inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(4),
	datac => \inst|char\(0),
	datad => \gf|contagemSL\(3),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = (\inst|char\(1) & (((\inst|Mux12~0_combout\)))) # (!\inst|char\(1) & (\inst|char\(4) & (\inst|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(1),
	datac => \inst|Mux17~2_combout\,
	datad => \inst|Mux12~0_combout\,
	combout => \inst|Mux12~1_combout\);

-- Location: LCCOMB_X14_Y13_N20
\inst|lcd_bus[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[3]~0_combout\ = (\inst|char\(3) & (\inst|Mux12~2_combout\)) # (!\inst|char\(3) & ((\inst|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux12~2_combout\,
	datad => \inst|Mux12~1_combout\,
	combout => \inst|lcd_bus[3]~0_combout\);

-- Location: LCCOMB_X14_Y13_N12
\inst|lcd_bus~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~33_combout\ = (\inst|char\(1) & ((\inst|char\(4) & (\inst|char\(0))) # (!\inst|char\(4) & ((!\inst|char\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(4),
	datac => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst|lcd_bus~33_combout\);

-- Location: LCCOMB_X14_Y13_N2
\inst|lcd_bus~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~34_combout\ = (\inst|char\(2) & (((\inst|char\(4) & !\gf|contagemSL\(3))) # (!\inst|char\(0)))) # (!\inst|char\(2) & (((\inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(4),
	datac => \inst|char\(0),
	datad => \gf|contagemSL\(3),
	combout => \inst|lcd_bus~34_combout\);

-- Location: LCCOMB_X14_Y13_N0
\inst|lcd_bus~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~35_combout\ = (\inst|char\(1) & (\inst|char\(4) & ((!\inst|lcd_bus~34_combout\)))) # (!\inst|char\(1) & ((\inst|char\(4) & (\inst|Mux17~2_combout\)) # (!\inst|char\(4) & ((\inst|lcd_bus~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(4),
	datac => \inst|Mux17~2_combout\,
	datad => \inst|lcd_bus~34_combout\,
	combout => \inst|lcd_bus~35_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst|lcd_bus~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~36_combout\ = (\inst|char\(3) & (\inst|lcd_bus~33_combout\ & (!\inst|char\(4)))) # (!\inst|char\(3) & (((\inst|lcd_bus~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~33_combout\,
	datab => \inst|char\(4),
	datac => \inst|char\(3),
	datad => \inst|lcd_bus~35_combout\,
	combout => \inst|lcd_bus~36_combout\);

-- Location: LCCOMB_X14_Y14_N24
\inst|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~3_combout\ = (\inst|char\(2) & ((\inst|char\(4) & (\inst|char\(0) & \gf|contagemSL\(3))) # (!\inst|char\(4) & (!\inst|char\(0))))) # (!\inst|char\(2) & (((!\inst|char\(0))) # (!\inst|char\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(4),
	datac => \inst|char\(0),
	datad => \gf|contagemSL\(3),
	combout => \inst|Mux17~3_combout\);

-- Location: LCCOMB_X14_Y13_N18
\inst|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~4_combout\ = (\inst|Mux17~2_combout\ & \inst|char\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux17~2_combout\,
	datad => \inst|char\(4),
	combout => \inst|Mux17~4_combout\);

-- Location: LCCOMB_X14_Y13_N16
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|char\(1) & ((\inst|char\(3)) # ((\inst|Mux17~3_combout\)))) # (!\inst|char\(1) & (!\inst|char\(3) & ((\inst|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(3),
	datac => \inst|Mux17~3_combout\,
	datad => \inst|Mux17~4_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\inst|lcd_bus~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~41_combout\ = (\inst|char\(3) & (!\inst|char\(4) & (\inst|Mux35~0_combout\ $ (\inst|Mux3~0_combout\)))) # (!\inst|char\(3) & (((\inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(4),
	datac => \inst|Mux35~0_combout\,
	datad => \inst|Mux3~0_combout\,
	combout => \inst|lcd_bus~41_combout\);

-- Location: LCCOMB_X14_Y13_N4
\inst|lcd_bus~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~42_combout\ = (\inst4|aux\(0) & (\inst|lcd_bus~36_combout\)) # (!\inst4|aux\(0) & ((\inst|lcd_bus~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~36_combout\,
	datac => \inst4|aux\(0),
	datad => \inst|lcd_bus~41_combout\,
	combout => \inst|lcd_bus~42_combout\);

-- Location: LCCOMB_X14_Y15_N6
\inst|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~3_combout\ = (!\inst|char\(4) & !\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(4),
	datad => \inst|char\(2),
	combout => \inst|Mux12~3_combout\);

-- Location: LCCOMB_X14_Y14_N20
\inst|lcd_bus~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~30_combout\ = \inst|char\(0) $ (!\inst|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datac => \inst|char\(1),
	combout => \inst|lcd_bus~30_combout\);

-- Location: LCCOMB_X14_Y13_N8
\inst|lcd_bus~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~31_combout\ = (\inst4|aux\(0) & (((\inst|Mux12~2_combout\)))) # (!\inst4|aux\(0) & (\inst|Mux12~3_combout\ & (\inst|lcd_bus~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~3_combout\,
	datab => \inst|lcd_bus~30_combout\,
	datac => \inst|Mux12~2_combout\,
	datad => \inst4|aux\(0),
	combout => \inst|lcd_bus~31_combout\);

-- Location: LCCOMB_X14_Y13_N26
\inst|lcd_bus~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~32_combout\ = ((\inst|char\(2) & (\inst|char\(0) & \gf|contagemSL\(3))) # (!\inst|char\(2) & (!\inst|char\(0)))) # (!\inst|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst|char\(1),
	datad => \gf|contagemSL\(3),
	combout => \inst|lcd_bus~32_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst|lcd_bus~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~37_combout\ = (\inst|char\(4) & (((\inst|char\(1))))) # (!\inst|char\(4) & (\inst|char\(0) $ (((\inst|char\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(4),
	datac => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst|lcd_bus~37_combout\);

-- Location: LCCOMB_X14_Y13_N24
\inst|lcd_bus~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~38_combout\ = (\inst|lcd_bus~37_combout\) # ((\inst|Mux17~2_combout\ & \inst|char\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~37_combout\,
	datac => \inst|Mux17~2_combout\,
	datad => \inst|char\(4),
	combout => \inst|lcd_bus~38_combout\);

-- Location: LCCOMB_X14_Y13_N6
\inst|lcd_bus~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~39_combout\ = (\inst4|aux\(0) & (((\inst|lcd_bus~36_combout\)))) # (!\inst4|aux\(0) & (\inst|lcd_bus~32_combout\ & (\inst|lcd_bus~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~32_combout\,
	datab => \inst|lcd_bus~38_combout\,
	datac => \inst|lcd_bus~36_combout\,
	datad => \inst4|aux\(0),
	combout => \inst|lcd_bus~39_combout\);

-- Location: LCCOMB_X14_Y13_N28
\inst|lcd_bus~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~40_combout\ = (\inst|char\(3) & (\inst|lcd_bus~31_combout\)) # (!\inst|char\(3) & ((\inst|lcd_bus~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(3),
	datac => \inst|lcd_bus~31_combout\,
	datad => \inst|lcd_bus~39_combout\,
	combout => \inst|lcd_bus~40_combout\);

-- Location: LCCOMB_X14_Y13_N22
\inst|lcd_bus~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~43_combout\ = (\inst4|aux\(1) & ((\inst|lcd_bus~40_combout\))) # (!\inst4|aux\(1) & (\inst|lcd_bus~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datac => \inst|lcd_bus~42_combout\,
	datad => \inst|lcd_bus~40_combout\,
	combout => \inst|lcd_bus~43_combout\);

-- Location: FF_X14_Y13_N21
\inst|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[3]~0_combout\,
	asdata => \inst|lcd_bus~43_combout\,
	sload => \inst13|igual~8_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(3));

-- Location: LCCOMB_X9_Y17_N26
\inst|dut|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~0_combout\ = (\inst|dut|state.initialize~q\ & (!\inst|dut|Add0~60_combout\ & ((!\inst|dut|state.ready~q\) # (!\inst|lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.initialize~q\,
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|state.ready~q\,
	combout => \inst|dut|Selector43~0_combout\);

-- Location: LCCOMB_X9_Y17_N20
\inst|dut|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~1_combout\ = ((!\inst|dut|LessThan1~2_combout\ & ((\inst|dut|LessThan2~3_combout\) # (!\inst|dut|LessThan3~12_combout\)))) # (!\inst|dut|Selector43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector43~0_combout\,
	datab => \inst|dut|LessThan1~2_combout\,
	datac => \inst|dut|LessThan2~3_combout\,
	datad => \inst|dut|LessThan3~12_combout\,
	combout => \inst|dut|Selector43~1_combout\);

-- Location: LCCOMB_X9_Y17_N2
\inst|dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~2_combout\ = (\inst|dut|Selector43~1_combout\ & ((\inst|dut|lcd_data[5]~0_combout\) # ((!\inst|dut|state.initialize~q\) # (!\inst|dut|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data[5]~0_combout\,
	datab => \inst|dut|Add0~62_combout\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|dut|Selector43~1_combout\,
	combout => \inst|dut|Selector43~2_combout\);

-- Location: LCCOMB_X9_Y17_N28
\inst|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector42~2_combout\ = ((\inst|lcd_bus\(3) & (\inst|lcd_enable~q\ & \inst|dut|state.ready~q\))) # (!\inst|dut|Selector43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(3),
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|dut|Selector43~2_combout\,
	combout => \inst|dut|Selector42~2_combout\);

-- Location: FF_X9_Y17_N29
\inst|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector42~2_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(3));

-- Location: LCCOMB_X16_Y13_N8
\inst|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~5_combout\ = (\inst|char\(4)) # ((\inst|char\(1)) # (!\inst|char\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datac => \inst|char\(1),
	datad => \inst|char\(0),
	combout => \inst|Mux18~5_combout\);

-- Location: LCCOMB_X18_Y13_N12
\inst|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~2_combout\ = (\inst|char\(2) & (\inst|char\(1) & \gf|contagemSL\(2))) # (!\inst|char\(2) & (!\inst|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(2),
	datac => \inst|char\(1),
	datad => \gf|contagemSL\(2),
	combout => \inst|Mux18~2_combout\);

-- Location: LCCOMB_X18_Y13_N30
\inst|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~3_combout\ = (\inst|char\(2) & (((\inst|Mux18~2_combout\)))) # (!\inst|char\(2) & ((\inst|Mux18~2_combout\ & (\gf|contagemHL\(2))) # (!\inst|Mux18~2_combout\ & ((\gf|contagemMH\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gf|contagemHL\(2),
	datab => \inst|char\(2),
	datac => \gf|contagemMH\(2),
	datad => \inst|Mux18~2_combout\,
	combout => \inst|Mux18~3_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = (\inst|char\(0) & ((\inst|char\(4)) # ((\inst|char\(2) & \inst|char\(1))))) # (!\inst|char\(0) & (!\inst|char\(4) & (\inst|char\(2) $ (\inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst|char\(4),
	datad => \inst|char\(1),
	combout => \inst|Mux18~1_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|char\(2) & ((\inst|char\(1) & ((\gf|contagemSH\(2)))) # (!\inst|char\(1) & (\gf|contagemML\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \gf|contagemML\(2),
	datad => \gf|contagemSH\(2),
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~4_combout\ = (\inst|Mux18~1_combout\ & ((\inst|Mux18~3_combout\) # ((!\inst|char\(4))))) # (!\inst|Mux18~1_combout\ & (((\inst|Mux18~0_combout\ & \inst|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~3_combout\,
	datab => \inst|Mux18~1_combout\,
	datac => \inst|Mux18~0_combout\,
	datad => \inst|char\(4),
	combout => \inst|Mux18~4_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst|lcd_bus[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[2]~1_combout\ = (\inst|char\(3) & (!\inst|Mux18~5_combout\)) # (!\inst|char\(3) & ((\inst|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~5_combout\,
	datab => \inst|char\(3),
	datad => \inst|Mux18~4_combout\,
	combout => \inst|lcd_bus[2]~1_combout\);

-- Location: LCCOMB_X18_Y13_N14
\inst|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~6_combout\ = (\inst|char\(4) & (((\inst|Mux18~3_combout\)))) # (!\inst|char\(4) & (((\inst|char\(2))) # (!\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(4),
	datac => \inst|Mux18~3_combout\,
	datad => \inst|char\(2),
	combout => \inst|Mux18~6_combout\);

-- Location: LCCOMB_X18_Y14_N6
\inst|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~5_combout\ = (\inst|char\(4) & ((\inst|char\(1) & ((\gf|contagemSH\(2)))) # (!\inst|char\(1) & (\gf|contagemML\(2))))) # (!\inst|char\(4) & (!\inst|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(1),
	datac => \gf|contagemML\(2),
	datad => \gf|contagemSH\(2),
	combout => \inst|Mux17~5_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~6_combout\ = (\inst|char\(2) & \inst|Mux17~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datad => \inst|Mux17~5_combout\,
	combout => \inst|Mux17~6_combout\);

-- Location: LCCOMB_X18_Y13_N20
\inst|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~7_combout\ = (!\inst|char\(3) & ((\inst|char\(0) & (\inst|Mux18~6_combout\)) # (!\inst|char\(0) & ((\inst|Mux17~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(3),
	datac => \inst|Mux18~6_combout\,
	datad => \inst|Mux17~6_combout\,
	combout => \inst|Mux18~7_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~8_combout\ = (\inst|Mux18~7_combout\) # ((\inst|char\(3) & (\inst|char\(1) & \inst|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(1),
	datac => \inst|Mux12~3_combout\,
	datad => \inst|Mux18~7_combout\,
	combout => \inst|Mux18~8_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|Mux18~7_combout\) # ((!\inst|Mux18~5_combout\ & \inst|char\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~5_combout\,
	datac => \inst|char\(3),
	datad => \inst|Mux18~7_combout\,
	combout => \inst|Mux22~0_combout\);

-- Location: LCCOMB_X18_Y13_N8
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|char\(1) & (((\gf|contagemSH\(2))) # (!\inst|char\(4)))) # (!\inst|char\(1) & (\inst|char\(4) & (\gf|contagemML\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(4),
	datac => \gf|contagemML\(2),
	datad => \gf|contagemSH\(2),
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y13_N18
\inst|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~1_combout\ = (\inst|char\(4) & ((\inst|char\(0) & ((!\inst|Mux18~3_combout\))) # (!\inst|char\(0) & (!\inst|Mux11~0_combout\)))) # (!\inst|char\(4) & (((\inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|Mux11~0_combout\,
	datac => \inst|Mux18~3_combout\,
	datad => \inst|char\(4),
	combout => \inst|Mux11~1_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~2_combout\ = (\inst|char\(3) & (\inst|char\(0))) # (!\inst|char\(3) & (!\inst|Mux11~1_combout\ & ((\inst|char\(0)) # (\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(2),
	datac => \inst|char\(3),
	datad => \inst|Mux11~1_combout\,
	combout => \inst|Mux11~2_combout\);

-- Location: LCCOMB_X18_Y13_N10
\inst|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~3_combout\ = (\inst|char\(3) & (\inst|Mux12~3_combout\ & ((\inst|char\(1)) # (\inst|Mux11~2_combout\)))) # (!\inst|char\(3) & (((\inst|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(1),
	datac => \inst|Mux12~3_combout\,
	datad => \inst|Mux11~2_combout\,
	combout => \inst|Mux11~3_combout\);

-- Location: LCCOMB_X18_Y13_N0
\inst|lcd_bus~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~44_combout\ = (\inst4|aux\(0) & ((\inst4|aux\(1)) # ((\inst|Mux11~3_combout\)))) # (!\inst4|aux\(0) & (!\inst4|aux\(1) & (\inst|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst4|aux\(1),
	datac => \inst|lcd_bus\(2),
	datad => \inst|Mux11~3_combout\,
	combout => \inst|lcd_bus~44_combout\);

-- Location: LCCOMB_X18_Y13_N4
\inst|lcd_bus~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~45_combout\ = (\inst4|aux\(1) & ((\inst|lcd_bus~44_combout\ & ((\inst|Mux22~0_combout\))) # (!\inst|lcd_bus~44_combout\ & (\inst|Mux18~8_combout\)))) # (!\inst4|aux\(1) & (((\inst|lcd_bus~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst|Mux18~8_combout\,
	datac => \inst|Mux22~0_combout\,
	datad => \inst|lcd_bus~44_combout\,
	combout => \inst|lcd_bus~45_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst|lcd_bus~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~46_combout\ = (\inst|char\(2) & (!\inst|char\(0))) # (!\inst|char\(2) & ((\inst|char\(0)) # (\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst|char\(1),
	combout => \inst|lcd_bus~46_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~9_combout\ = (\inst|char\(4) & (((\inst|char\(0))))) # (!\inst|char\(4) & ((\inst|char\(1) & ((!\inst|char\(0)))) # (!\inst|char\(1) & (\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst|char\(1),
	combout => \inst|Mux18~9_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst|Mux18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~10_combout\ = (\inst|char\(4) & ((\inst|Mux18~9_combout\ & ((\inst|Mux18~3_combout\))) # (!\inst|Mux18~9_combout\ & (\inst|Mux18~0_combout\)))) # (!\inst|char\(4) & (\inst|Mux18~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|Mux18~9_combout\,
	datac => \inst|Mux18~0_combout\,
	datad => \inst|Mux18~3_combout\,
	combout => \inst|Mux18~10_combout\);

-- Location: LCCOMB_X19_Y14_N20
\inst|lcd_bus~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~57_combout\ = (\inst|char\(3) & (\inst|lcd_bus~46_combout\ & (!\inst|char\(4)))) # (!\inst|char\(3) & (((\inst|Mux18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|lcd_bus~46_combout\,
	datac => \inst|char\(4),
	datad => \inst|Mux18~10_combout\,
	combout => \inst|lcd_bus~57_combout\);

-- Location: LCCOMB_X18_Y13_N22
\inst|lcd_bus~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~47_combout\ = (\inst4|aux\(1) & (((\inst|lcd_bus~45_combout\)))) # (!\inst4|aux\(1) & ((\inst4|aux\(0) & (\inst|lcd_bus~45_combout\)) # (!\inst4|aux\(0) & ((\inst|lcd_bus~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst4|aux\(0),
	datac => \inst|lcd_bus~45_combout\,
	datad => \inst|lcd_bus~57_combout\,
	combout => \inst|lcd_bus~47_combout\);

-- Location: FF_X18_Y13_N25
\inst|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[2]~1_combout\,
	asdata => \inst|lcd_bus~47_combout\,
	sload => \inst13|igual~8_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(2));

-- Location: LCCOMB_X9_Y17_N24
\inst|dut|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~3_combout\ = (!\inst|dut|Selector46~8_combout\ & (!\inst|dut|LessThan4~4_combout\ & (!\inst|dut|busy~3_combout\ & \inst|dut|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector46~8_combout\,
	datab => \inst|dut|LessThan4~4_combout\,
	datac => \inst|dut|busy~3_combout\,
	datad => \inst|dut|LessThan7~2_combout\,
	combout => \inst|dut|Selector43~3_combout\);

-- Location: LCCOMB_X9_Y17_N22
\inst|dut|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~4_combout\ = (\inst|dut|Selector43~0_combout\ & (!\inst|dut|LessThan2~3_combout\ & \inst|dut|Selector43~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector43~0_combout\,
	datac => \inst|dut|LessThan2~3_combout\,
	datad => \inst|dut|Selector43~3_combout\,
	combout => \inst|dut|Selector43~4_combout\);

-- Location: LCCOMB_X9_Y17_N18
\inst|dut|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~5_combout\ = (\inst|dut|Selector43~4_combout\) # (((\inst|dut|lcd_data[5]~0_combout\ & \inst|lcd_bus\(2))) # (!\inst|dut|Selector43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data[5]~0_combout\,
	datab => \inst|lcd_bus\(2),
	datac => \inst|dut|Selector43~4_combout\,
	datad => \inst|dut|Selector43~2_combout\,
	combout => \inst|dut|Selector43~5_combout\);

-- Location: FF_X9_Y17_N19
\inst|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector43~5_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(2));

-- Location: LCCOMB_X17_Y15_N26
\inst|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~6_combout\ = (!\inst|char\(4) & ((\inst|char\(0) & ((!\inst|char\(2)))) # (!\inst|char\(0) & (\inst|char\(1) & \inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(4),
	datad => \inst|char\(2),
	combout => \inst|Mux12~6_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~4_combout\ = (!\inst|char\(4) & ((\inst|char\(0)) # (!\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datac => \inst|char\(4),
	datad => \inst|char\(2),
	combout => \inst|Mux12~4_combout\);

-- Location: LCCOMB_X16_Y14_N20
\inst|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~7_combout\ = (\inst|char\(0) & (((\gf|contagemHL\(1)) # (\inst|char\(2))))) # (!\inst|char\(0) & (\gf|contagemHH\(1) & ((!\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \gf|contagemHH\(1),
	datac => \gf|contagemHL\(1),
	datad => \inst|char\(2),
	combout => \inst|Mux17~7_combout\);

-- Location: LCCOMB_X16_Y13_N2
\inst|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~8_combout\ = (\inst|char\(4) & ((\inst|Mux17~7_combout\) # ((\inst|char\(2) & \gf|contagemML\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(2),
	datac => \gf|contagemML\(1),
	datad => \inst|Mux17~7_combout\,
	combout => \inst|Mux17~8_combout\);

-- Location: LCCOMB_X16_Y13_N22
\inst|Mux17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~17_combout\ = (\inst|Mux17~8_combout\) # ((\inst|char\(0) & (!\inst|char\(2) & !\inst|char\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(2),
	datac => \inst|char\(4),
	datad => \inst|Mux17~8_combout\,
	combout => \inst|Mux17~17_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~9_combout\ = (\inst|char\(0) & (\inst|char\(2) & ((\gf|contagemSL\(1))))) # (!\inst|char\(0) & (((\gf|contagemSH\(1))) # (!\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(2),
	datac => \gf|contagemSH\(1),
	datad => \gf|contagemSL\(1),
	combout => \inst|Mux17~9_combout\);

-- Location: LCCOMB_X16_Y13_N18
\inst|Mux17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~10_combout\ = (\inst|char\(4) & ((\inst|Mux17~9_combout\) # ((!\inst|char\(2) & \gf|contagemMH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \gf|contagemMH\(1),
	datac => \inst|char\(4),
	datad => \inst|Mux17~9_combout\,
	combout => \inst|Mux17~10_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~5_combout\ = (\inst|char\(1) & ((\inst|Mux12~4_combout\) # ((\inst|Mux17~10_combout\)))) # (!\inst|char\(1) & (((\inst|Mux17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~4_combout\,
	datab => \inst|char\(1),
	datac => \inst|Mux17~17_combout\,
	datad => \inst|Mux17~10_combout\,
	combout => \inst|Mux12~5_combout\);

-- Location: LCCOMB_X17_Y13_N8
\inst|lcd_bus[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[1]~2_combout\ = (\inst|char\(3) & (\inst|Mux12~6_combout\)) # (!\inst|char\(3) & ((\inst|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux12~6_combout\,
	datad => \inst|Mux12~5_combout\,
	combout => \inst|lcd_bus[1]~2_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst|Mux17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~11_combout\ = (\inst|Mux17~10_combout\) # ((!\inst|char\(4) & ((!\inst|char\(2)) # (!\inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(2),
	datac => \inst|char\(4),
	datad => \inst|Mux17~10_combout\,
	combout => \inst|Mux17~11_combout\);

-- Location: LCCOMB_X16_Y13_N10
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|char\(3) & (\inst|char\(1))) # (!\inst|char\(3) & ((\inst|char\(1) & ((\inst|Mux17~11_combout\))) # (!\inst|char\(1) & (\inst|Mux17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(1),
	datac => \inst|Mux17~17_combout\,
	datad => \inst|Mux17~11_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (!\inst|char\(4) & (\inst|char\(0) $ (((\inst|char\(2)) # (!\inst|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(2),
	datac => \inst|char\(4),
	datad => \inst|Mux5~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y13_N6
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|char\(3) & ((\inst|Mux5~1_combout\))) # (!\inst|char\(3) & (\inst|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datac => \inst|char\(3),
	datad => \inst|Mux5~1_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y13_N30
\inst|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~7_combout\ = (\inst|Mux17~9_combout\) # ((!\inst|char\(2) & \gf|contagemMH\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(2),
	datac => \gf|contagemMH\(1),
	datad => \inst|Mux17~9_combout\,
	combout => \inst|Mux12~7_combout\);

-- Location: LCCOMB_X16_Y13_N12
\inst|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~8_combout\ = (\inst|char\(1) & (\inst|char\(0) & (!\inst|char\(4)))) # (!\inst|char\(1) & (((\inst|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(4),
	datac => \inst|char\(1),
	datad => \inst|Mux17~8_combout\,
	combout => \inst|Mux12~8_combout\);

-- Location: LCCOMB_X16_Y13_N26
\inst|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~9_combout\ = (\inst|char\(3) & (\inst|Mux36~0_combout\ & (\inst|Mux12~7_combout\))) # (!\inst|char\(3) & ((\inst|Mux12~8_combout\) # ((\inst|Mux36~0_combout\ & \inst|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux36~0_combout\,
	datac => \inst|Mux12~7_combout\,
	datad => \inst|Mux12~8_combout\,
	combout => \inst|Mux12~9_combout\);

-- Location: LCCOMB_X17_Y13_N16
\inst|lcd_bus~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~48_combout\ = (\inst|char\(2) & ((\inst4|aux\(0)) # ((!\inst|char\(1) & !\inst|char\(0))))) # (!\inst|char\(2) & (\inst|char\(0) & ((!\inst4|aux\(0)) # (!\inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst4|aux\(0),
	combout => \inst|lcd_bus~48_combout\);

-- Location: LCCOMB_X17_Y13_N26
\inst|lcd_bus~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~49_combout\ = (\inst4|aux\(0) & ((\inst4|aux\(1) & (\inst|Mux12~6_combout\)) # (!\inst4|aux\(1) & ((!\inst|lcd_bus~48_combout\))))) # (!\inst4|aux\(0) & (((\inst|lcd_bus~48_combout\ & \inst4|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~6_combout\,
	datab => \inst|lcd_bus~48_combout\,
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst|lcd_bus~49_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst|lcd_bus~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~50_combout\ = (\inst|lcd_bus~48_combout\ & ((\inst4|aux\(0)))) # (!\inst|lcd_bus~48_combout\ & (\inst4|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datac => \inst4|aux\(0),
	datad => \inst|lcd_bus~48_combout\,
	combout => \inst|lcd_bus~50_combout\);

-- Location: LCCOMB_X17_Y13_N2
\inst|lcd_bus~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~51_combout\ = (\inst|lcd_bus~49_combout\ & (\inst|char\(3) & ((\inst|lcd_bus~50_combout\) # (!\inst|char\(4))))) # (!\inst|lcd_bus~49_combout\ & (((\inst|lcd_bus~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(4),
	datac => \inst|lcd_bus~49_combout\,
	datad => \inst|lcd_bus~50_combout\,
	combout => \inst|lcd_bus~51_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst|lcd_bus~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~52_combout\ = (\inst|lcd_bus~49_combout\ & ((\inst|Mux12~9_combout\) # ((\inst|lcd_bus~51_combout\)))) # (!\inst|lcd_bus~49_combout\ & ((\inst|lcd_bus~51_combout\ & (\inst|Mux12~9_combout\)) # (!\inst|lcd_bus~51_combout\ & 
-- ((\inst|lcd_bus\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~9_combout\,
	datab => \inst|lcd_bus\(1),
	datac => \inst|lcd_bus~49_combout\,
	datad => \inst|lcd_bus~51_combout\,
	combout => \inst|lcd_bus~52_combout\);

-- Location: LCCOMB_X17_Y13_N30
\inst|lcd_bus~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~53_combout\ = (\inst4|aux\(1) & (((\inst|lcd_bus~52_combout\)))) # (!\inst4|aux\(1) & ((\inst4|aux\(0) & ((\inst|lcd_bus~52_combout\))) # (!\inst4|aux\(0) & (\inst|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst4|aux\(0),
	datac => \inst|Mux5~2_combout\,
	datad => \inst|lcd_bus~52_combout\,
	combout => \inst|lcd_bus~53_combout\);

-- Location: FF_X17_Y13_N9
\inst|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[1]~2_combout\,
	asdata => \inst|lcd_bus~53_combout\,
	sload => \inst13|igual~8_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(1));

-- Location: LCCOMB_X9_Y17_N8
\inst|dut|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector44~0_combout\ = (!\inst|dut|lcd_data[5]~0_combout\ & (!\inst|dut|busy~5_combout\ & (\inst|dut|state.initialize~q\ & !\inst|dut|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data[5]~0_combout\,
	datab => \inst|dut|busy~5_combout\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|dut|Add0~62_combout\,
	combout => \inst|dut|Selector44~0_combout\);

-- Location: LCCOMB_X9_Y17_N4
\inst|dut|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector44~1_combout\ = (\inst|dut|lcd_data[5]~0_combout\ & ((\inst|lcd_bus\(1)) # ((\inst|dut|Selector44~0_combout\ & \inst|dut|Selector43~3_combout\)))) # (!\inst|dut|lcd_data[5]~0_combout\ & (((\inst|dut|Selector44~0_combout\ & 
-- \inst|dut|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data[5]~0_combout\,
	datab => \inst|lcd_bus\(1),
	datac => \inst|dut|Selector44~0_combout\,
	datad => \inst|dut|Selector43~3_combout\,
	combout => \inst|dut|Selector44~1_combout\);

-- Location: FF_X9_Y17_N5
\inst|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector44~1_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(1));

-- Location: LCCOMB_X17_Y15_N2
\inst|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~14_combout\ = (!\inst|char\(4) & ((\inst|char\(1) $ (\inst|char\(2))) # (!\inst|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(4),
	datad => \inst|char\(2),
	combout => \inst|Mux12~14_combout\);

-- Location: LCCOMB_X17_Y15_N28
\inst|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~11_combout\ = (\inst|char\(1) & (!\inst|char\(0) & (!\inst|char\(4) & !\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(4),
	datad => \inst|char\(2),
	combout => \inst|Mux12~11_combout\);

-- Location: LCCOMB_X18_Y15_N6
\inst|Mux17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~12_combout\ = (\inst|char\(0) & ((\inst|char\(2) & (\gf|contagemSL\(0))) # (!\inst|char\(2) & ((\gf|contagemMH\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \gf|contagemSL\(0),
	datad => \gf|contagemMH\(0),
	combout => \inst|Mux17~12_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst|Mux17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~13_combout\ = (\inst|Mux17~12_combout\) # ((\inst|char\(2) & (\gf|contagemSH\(0) & !\inst|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \gf|contagemSH\(0),
	datac => \inst|char\(0),
	datad => \inst|Mux17~12_combout\,
	combout => \inst|Mux17~13_combout\);

-- Location: LCCOMB_X18_Y15_N22
\inst|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~10_combout\ = (\inst|char\(1) & (\inst|char\(4) & \inst|Mux17~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datac => \inst|char\(4),
	datad => \inst|Mux17~13_combout\,
	combout => \inst|Mux12~10_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst|Mux17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~14_combout\ = (!\inst|char\(0) & ((\inst|char\(2) & ((!\gf|contagemML\(0)))) # (!\inst|char\(2) & (\gf|contagemHH\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \gf|contagemHH\(0),
	datad => \gf|contagemML\(0),
	combout => \inst|Mux17~14_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst|Mux17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~15_combout\ = (\inst|Mux17~14_combout\) # ((\inst|char\(0) & (!\inst|char\(2) & \gf|contagemHL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(2),
	datac => \gf|contagemHL\(0),
	datad => \inst|Mux17~14_combout\,
	combout => \inst|Mux17~15_combout\);

-- Location: LCCOMB_X18_Y15_N28
\inst|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~12_combout\ = (!\inst|char\(1) & ((\inst|Mux12~4_combout\) # ((\inst|char\(4) & \inst|Mux17~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~4_combout\,
	datab => \inst|char\(1),
	datac => \inst|char\(4),
	datad => \inst|Mux17~15_combout\,
	combout => \inst|Mux12~12_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~13_combout\ = (\inst|Mux12~11_combout\) # ((\inst|Mux12~10_combout\) # (\inst|Mux12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux12~11_combout\,
	datac => \inst|Mux12~10_combout\,
	datad => \inst|Mux12~12_combout\,
	combout => \inst|Mux12~13_combout\);

-- Location: LCCOMB_X18_Y15_N12
\inst|lcd_bus[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[0]~3_combout\ = (\inst|char\(3) & (\inst|Mux12~14_combout\)) # (!\inst|char\(3) & ((\inst|Mux12~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~14_combout\,
	datab => \inst|char\(3),
	datad => \inst|Mux12~13_combout\,
	combout => \inst|lcd_bus[0]~3_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst|Mux17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~16_combout\ = (\inst|char\(0) & !\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst|Mux17~16_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (!\inst|char\(1) & ((\inst|char\(4) & ((\inst|Mux17~15_combout\))) # (!\inst|char\(4) & (!\inst|Mux17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|Mux17~16_combout\,
	datac => \inst|char\(4),
	datad => \inst|Mux17~15_combout\,
	combout => \inst|Mux20~0_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~1_combout\ = (!\inst|char\(3) & ((\inst|Mux12~11_combout\) # ((\inst|Mux12~10_combout\) # (\inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux12~11_combout\,
	datac => \inst|Mux12~10_combout\,
	datad => \inst|Mux20~0_combout\,
	combout => \inst|Mux20~1_combout\);

-- Location: LCCOMB_X18_Y15_N8
\inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (\inst|Mux20~1_combout\) # ((\inst|char\(3) & \inst|Mux12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(3),
	datac => \inst|Mux12~14_combout\,
	datad => \inst|Mux20~1_combout\,
	combout => \inst|Mux24~0_combout\);

-- Location: LCCOMB_X18_Y15_N14
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|Mux20~1_combout\) # ((\inst|Mux12~3_combout\ & (\inst|char\(3) & \inst|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~3_combout\,
	datab => \inst|char\(3),
	datac => \inst|char\(0),
	datad => \inst|Mux20~1_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y15_N8
\inst|lcd_bus~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~54_combout\ = (\inst|char\(2) & ((!\inst|char\(0)) # (!\inst|char\(1)))) # (!\inst|char\(2) & ((\inst|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(2),
	datac => \inst|char\(0),
	combout => \inst|lcd_bus~54_combout\);

-- Location: LCCOMB_X17_Y15_N10
\inst|Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~15_combout\ = (\inst|char\(4) & (\inst|char\(1))) # (!\inst|char\(4) & (!\inst|char\(0) & ((\inst|char\(1)) # (\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(4),
	datad => \inst|char\(2),
	combout => \inst|Mux12~15_combout\);

-- Location: LCCOMB_X18_Y15_N24
\inst|Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~16_combout\ = (\inst|Mux12~15_combout\ & (((\inst|Mux17~13_combout\) # (!\inst|char\(4))))) # (!\inst|Mux12~15_combout\ & (\inst|Mux17~15_combout\ & (\inst|char\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux12~15_combout\,
	datab => \inst|Mux17~15_combout\,
	datac => \inst|char\(4),
	datad => \inst|Mux17~13_combout\,
	combout => \inst|Mux12~16_combout\);

-- Location: LCCOMB_X18_Y15_N26
\inst|lcd_bus~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~58_combout\ = (\inst|char\(3) & (\inst|lcd_bus~54_combout\ & (!\inst|char\(4)))) # (!\inst|char\(3) & (((\inst|Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~54_combout\,
	datab => \inst|char\(3),
	datac => \inst|char\(4),
	datad => \inst|Mux12~16_combout\,
	combout => \inst|lcd_bus~58_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~2_combout\ = (\inst|char\(4) & (!\inst|char\(1) & ((\inst|Mux17~15_combout\)))) # (!\inst|char\(4) & (\inst|char\(1) $ ((\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(2),
	datac => \inst|char\(4),
	datad => \inst|Mux17~15_combout\,
	combout => \inst|Mux20~2_combout\);

-- Location: LCCOMB_X18_Y15_N2
\inst|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~3_combout\ = (\inst|char\(1)) # ((\inst|char\(4) & !\inst|Mux17~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datac => \inst|char\(4),
	datad => \inst|Mux17~15_combout\,
	combout => \inst|Mux20~3_combout\);

-- Location: LCCOMB_X18_Y15_N20
\inst|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~4_combout\ = (\inst|char\(3) & ((\inst|Mux20~2_combout\ & ((!\inst|Mux20~3_combout\) # (!\inst|char\(0)))) # (!\inst|Mux20~2_combout\ & ((\inst|Mux20~3_combout\))))) # (!\inst|char\(3) & ((\inst|Mux20~3_combout\) # ((\inst|char\(0) & 
-- !\inst|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(0),
	datac => \inst|Mux20~2_combout\,
	datad => \inst|Mux20~3_combout\,
	combout => \inst|Mux20~4_combout\);

-- Location: LCCOMB_X18_Y15_N30
\inst|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~5_combout\ = ((!\inst|char\(3) & ((\inst|Mux12~11_combout\) # (\inst|Mux12~10_combout\)))) # (!\inst|Mux20~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux12~11_combout\,
	datac => \inst|Mux12~10_combout\,
	datad => \inst|Mux20~4_combout\,
	combout => \inst|Mux20~5_combout\);

-- Location: LCCOMB_X18_Y15_N10
\inst|lcd_bus~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~55_combout\ = (\inst4|aux\(1) & (((\inst|Mux20~5_combout\) # (\inst4|aux\(0))))) # (!\inst4|aux\(1) & (\inst|lcd_bus~58_combout\ & ((!\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~58_combout\,
	datab => \inst4|aux\(1),
	datac => \inst|Mux20~5_combout\,
	datad => \inst4|aux\(0),
	combout => \inst|lcd_bus~55_combout\);

-- Location: LCCOMB_X18_Y15_N4
\inst|lcd_bus~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~56_combout\ = (\inst4|aux\(0) & ((\inst|lcd_bus~55_combout\ & (\inst|Mux24~0_combout\)) # (!\inst|lcd_bus~55_combout\ & ((\inst|Mux13~0_combout\))))) # (!\inst4|aux\(0) & (((\inst|lcd_bus~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst|Mux24~0_combout\,
	datac => \inst|Mux13~0_combout\,
	datad => \inst|lcd_bus~55_combout\,
	combout => \inst|lcd_bus~56_combout\);

-- Location: FF_X18_Y15_N13
\inst|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[0]~3_combout\,
	asdata => \inst|lcd_bus~56_combout\,
	sload => \inst13|igual~8_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(0));

-- Location: LCCOMB_X10_Y17_N26
\inst|dut|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~7_combout\ = (\inst|dut|LessThan3~11_combout\ & (!\inst|dut|Add0~24_combout\ & \inst|dut|busy~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~11_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|busy~4_combout\,
	combout => \inst|dut|busy~7_combout\);

-- Location: LCCOMB_X9_Y17_N30
\inst|dut|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector45~0_combout\ = (\inst|dut|Selector43~0_combout\ & (!\inst|dut|Add0~62_combout\ & (!\inst|dut|LessThan4~4_combout\ & !\inst|dut|busy~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector43~0_combout\,
	datab => \inst|dut|Add0~62_combout\,
	datac => \inst|dut|LessThan4~4_combout\,
	datad => \inst|dut|busy~7_combout\,
	combout => \inst|dut|Selector45~0_combout\);

-- Location: LCCOMB_X9_Y17_N14
\inst|dut|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector45~1_combout\ = (\inst|dut|lcd_data[5]~0_combout\ & ((\inst|lcd_bus\(0)) # ((\inst|dut|Selector45~0_combout\ & \inst|dut|LessThan5~2_combout\)))) # (!\inst|dut|lcd_data[5]~0_combout\ & (((\inst|dut|Selector45~0_combout\ & 
-- \inst|dut|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data[5]~0_combout\,
	datab => \inst|lcd_bus\(0),
	datac => \inst|dut|Selector45~0_combout\,
	datad => \inst|dut|LessThan5~2_combout\,
	combout => \inst|dut|Selector45~1_combout\);

-- Location: FF_X9_Y17_N15
\inst|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector45~1_combout\,
	ena => \inst|dut|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(0));

ww_e <= \e~output_o\;

ww_rw <= \rw~output_o\;

ww_rs <= \rs~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;
END structure;


