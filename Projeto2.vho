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

-- DATE "04/13/2021 10:19:40"

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
	buzzer : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END testecontdisp;

-- Design Ports Information
-- e	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button4	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \e~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|dut|Add0~0_combout\ : std_logic;
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
SIGNAL \inst|dut|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~8_combout\ : std_logic;
SIGNAL \inst|dut|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|dut|lcd_data[1]~0_combout\ : std_logic;
SIGNAL \inst|dut|state.power_up~q\ : std_logic;
SIGNAL \inst|dut|LessThan6~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|dut|Add0~17\ : std_logic;
SIGNAL \inst|dut|Add0~18_combout\ : std_logic;
SIGNAL \inst|dut|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|dut|LessThan7~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~7_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan8~4_combout\ : std_logic;
SIGNAL \inst|dut|busy~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|dut|busy~5_combout\ : std_logic;
SIGNAL \inst|dut|lcd_data[1]~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~9_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~8_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~10_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|dut|busy~6_combout\ : std_logic;
SIGNAL \inst|dut|busy~8_combout\ : std_logic;
SIGNAL \inst|dut|busy~7_combout\ : std_logic;
SIGNAL \inst|dut|Selector33~0_combout\ : std_logic;
SIGNAL \inst|dut|state.initialize~q\ : std_logic;
SIGNAL \inst|dut|busy~q\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|lcd_enable~feeder_combout\ : std_logic;
SIGNAL \inst|lcd_enable~q\ : std_logic;
SIGNAL \inst|dut|Selector34~1_combout\ : std_logic;
SIGNAL \inst|dut|Selector34~2_combout\ : std_logic;
SIGNAL \inst|dut|state.ready~q\ : std_logic;
SIGNAL \inst|dut|LessThan4~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan4~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan6~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan5~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|dut|clk_count~0_combout\ : std_logic;
SIGNAL \inst|dut|clk_count~1_combout\ : std_logic;
SIGNAL \inst|dut|clk_count~2_combout\ : std_logic;
SIGNAL \inst|dut|clk_count[13]~3_combout\ : std_logic;
SIGNAL \inst|dut|clk_count[13]~4_combout\ : std_logic;
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
SIGNAL \inst|dut|LessThan9~5_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~6_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~7_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector34~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector35~2_combout\ : std_logic;
SIGNAL \inst|dut|state.send~q\ : std_logic;
SIGNAL \inst|dut|LessThan9~9_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~3_combout\ : std_logic;
SIGNAL \inst|dut|LessThan12~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~2_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~4_combout\ : std_logic;
SIGNAL \inst|dut|LessThan9~10_combout\ : std_logic;
SIGNAL \inst|dut|LessThan12~1_combout\ : std_logic;
SIGNAL \inst|dut|LessThan12~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~11_combout\ : std_logic;
SIGNAL \inst|dut|LessThan10~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan11~0_combout\ : std_logic;
SIGNAL \inst|dut|LessThan11~1_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~10_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~12_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~7_combout\ : std_logic;
SIGNAL \inst|dut|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~8_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~6_combout\ : std_logic;
SIGNAL \inst|dut|LessThan3~11_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~5_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~0_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~1_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~2_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~9_combout\ : std_logic;
SIGNAL \inst|dut|Selector46~13_combout\ : std_logic;
SIGNAL \inst|dut|e~q\ : std_logic;
SIGNAL \inst24|e~feeder_combout\ : std_logic;
SIGNAL \inst24|e~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|char[4]~feeder_combout\ : std_logic;
SIGNAL \inst|char[3]~_wirecell_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux21~1_combout\ : std_logic;
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
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
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
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|cont~12_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|aux~0_combout\ : std_logic;
SIGNAL \inst1|aux~feeder_combout\ : std_logic;
SIGNAL \inst1|aux~q\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \inst8|flipflops[0]~feeder_combout\ : std_logic;
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
SIGNAL \inst8|result~0_combout\ : std_logic;
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
SIGNAL \inst8|result~1_combout\ : std_logic;
SIGNAL \inst8|result~2_combout\ : std_logic;
SIGNAL \inst8|count[14]~48\ : std_logic;
SIGNAL \inst8|count[15]~49_combout\ : std_logic;
SIGNAL \inst8|count[15]~50\ : std_logic;
SIGNAL \inst8|count[16]~51_combout\ : std_logic;
SIGNAL \inst8|count[16]~52\ : std_logic;
SIGNAL \inst8|count[17]~53_combout\ : std_logic;
SIGNAL \inst8|count[17]~54\ : std_logic;
SIGNAL \inst8|count[18]~55_combout\ : std_logic;
SIGNAL \inst8|result~3_combout\ : std_logic;
SIGNAL \inst8|result~4_combout\ : std_logic;
SIGNAL \inst8|result~5_combout\ : std_logic;
SIGNAL \inst8|result~feeder_combout\ : std_logic;
SIGNAL \inst8|result~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|cont~1_combout\ : std_logic;
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
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|cont~0_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|cont~2_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|cont~3_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|cont~4_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|cont~5_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|cont~6_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|cont~7_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|cont~8_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|cont~9_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|cont~10_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|cont~11_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|cont~12_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|aux~0_combout\ : std_logic;
SIGNAL \inst2|aux~feeder_combout\ : std_logic;
SIGNAL \inst2|aux~q\ : std_logic;
SIGNAL \inst2|aux~clkctrl_outclk\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
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
SIGNAL \inst9|count[13]~feeder_combout\ : std_logic;
SIGNAL \inst9|count[13]~46\ : std_logic;
SIGNAL \inst9|count[14]~47_combout\ : std_logic;
SIGNAL \inst9|count[14]~48\ : std_logic;
SIGNAL \inst9|count[15]~49_combout\ : std_logic;
SIGNAL \inst9|count[15]~50\ : std_logic;
SIGNAL \inst9|count[16]~51_combout\ : std_logic;
SIGNAL \inst9|count[16]~52\ : std_logic;
SIGNAL \inst9|count[17]~53_combout\ : std_logic;
SIGNAL \inst9|count[17]~54\ : std_logic;
SIGNAL \inst9|count[18]~55_combout\ : std_logic;
SIGNAL \inst9|result~3_combout\ : std_logic;
SIGNAL \inst9|result~0_combout\ : std_logic;
SIGNAL \inst9|result~1_combout\ : std_logic;
SIGNAL \inst9|result~2_combout\ : std_logic;
SIGNAL \inst9|result~4_combout\ : std_logic;
SIGNAL \inst9|result~5_combout\ : std_logic;
SIGNAL \inst9|result~feeder_combout\ : std_logic;
SIGNAL \inst9|result~q\ : std_logic;
SIGNAL \inst5|process_0~0_combout\ : std_logic;
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
SIGNAL \inst11|result~3_combout\ : std_logic;
SIGNAL \inst11|result~0_combout\ : std_logic;
SIGNAL \inst11|result~1_combout\ : std_logic;
SIGNAL \inst11|result~2_combout\ : std_logic;
SIGNAL \inst11|result~4_combout\ : std_logic;
SIGNAL \inst11|result~5_combout\ : std_logic;
SIGNAL \inst11|result~feeder_combout\ : std_logic;
SIGNAL \inst11|result~q\ : std_logic;
SIGNAL \inst11|result~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \inst5|hl[0]~1_combout\ : std_logic;
SIGNAL \inst5|hl[0]~3_combout\ : std_logic;
SIGNAL \button3~input_o\ : std_logic;
SIGNAL \inst10|flipflops[0]~feeder_combout\ : std_logic;
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
SIGNAL \inst10|result~3_combout\ : std_logic;
SIGNAL \inst10|count[16]~52\ : std_logic;
SIGNAL \inst10|count[17]~53_combout\ : std_logic;
SIGNAL \inst10|count[17]~54\ : std_logic;
SIGNAL \inst10|count[18]~55_combout\ : std_logic;
SIGNAL \inst10|result~0_combout\ : std_logic;
SIGNAL \inst10|result~1_combout\ : std_logic;
SIGNAL \inst10|result~2_combout\ : std_logic;
SIGNAL \inst10|result~4_combout\ : std_logic;
SIGNAL \inst10|result~5_combout\ : std_logic;
SIGNAL \inst10|result~feeder_combout\ : std_logic;
SIGNAL \inst10|result~q\ : std_logic;
SIGNAL \inst10|result~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|digito[0]~2_combout\ : std_logic;
SIGNAL \inst5|digito~1_combout\ : std_logic;
SIGNAL \inst5|digito~0_combout\ : std_logic;
SIGNAL \inst5|Mux14~0_combout\ : std_logic;
SIGNAL \inst5|hl[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|hl[0]~2_combout\ : std_logic;
SIGNAL \inst6|contagemMH[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst5|mh[0]~1_combout\ : std_logic;
SIGNAL \inst5|mh[0]~3_combout\ : std_logic;
SIGNAL \inst5|Mux13~0_combout\ : std_logic;
SIGNAL \inst5|mh[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|mh[0]~2_combout\ : std_logic;
SIGNAL \inst6|contagemSH[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst5|sh[0]~1_combout\ : std_logic;
SIGNAL \inst5|sh[0]~3_combout\ : std_logic;
SIGNAL \inst5|sh[2]~16_combout\ : std_logic;
SIGNAL \inst5|sh[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|sh[0]~2_combout\ : std_logic;
SIGNAL \inst5|sl[2]~9_combout\ : std_logic;
SIGNAL \inst5|sl[1]~20_combout\ : std_logic;
SIGNAL \inst6|contagemSL~1_combout\ : std_logic;
SIGNAL \inst5|sl[0]~1_combout\ : std_logic;
SIGNAL \inst5|sl[0]~3_combout\ : std_logic;
SIGNAL \inst5|sl[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|sl[0]~2_combout\ : std_logic;
SIGNAL \inst5|sl[1]~5_combout\ : std_logic;
SIGNAL \inst6|Add0~0_combout\ : std_logic;
SIGNAL \inst6|contagemSL~6_combout\ : std_logic;
SIGNAL \inst5|sl[3]~13_combout\ : std_logic;
SIGNAL \inst5|sl[3]~21_combout\ : std_logic;
SIGNAL \inst5|sl[3]~15_combout\ : std_logic;
SIGNAL \inst5|sl[3]~_emulated_q\ : std_logic;
SIGNAL \inst5|sl[3]~14_combout\ : std_logic;
SIGNAL \inst5|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|sl[1]~7_combout\ : std_logic;
SIGNAL \inst5|sl[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|sl[1]~6_combout\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|sl[2]~11_combout\ : std_logic;
SIGNAL \inst5|sl[2]~_emulated_q\ : std_logic;
SIGNAL \inst5|sl[2]~10_combout\ : std_logic;
SIGNAL \inst6|contagemSL~4_combout\ : std_logic;
SIGNAL \inst6|contagemSL~5_combout\ : std_logic;
SIGNAL \inst6|contagemSL~2_combout\ : std_logic;
SIGNAL \inst6|contagemSL~3_combout\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|contagemSL~0_combout\ : std_logic;
SIGNAL \inst6|contagemSH~0_combout\ : std_logic;
SIGNAL \inst5|sh[1]~5_combout\ : std_logic;
SIGNAL \inst5|sh[2]~9_combout\ : std_logic;
SIGNAL \inst5|sh[2]~11_combout\ : std_logic;
SIGNAL \inst5|sh[2]~_emulated_q\ : std_logic;
SIGNAL \inst5|sh[2]~10_combout\ : std_logic;
SIGNAL \inst5|sh[1]~7_combout\ : std_logic;
SIGNAL \inst5|sh[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|sh[1]~6_combout\ : std_logic;
SIGNAL \inst6|contagemSH~1_combout\ : std_logic;
SIGNAL \inst6|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|ml[0]~1_combout\ : std_logic;
SIGNAL \inst5|ml[0]~3_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|ml[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|ml[0]~2_combout\ : std_logic;
SIGNAL \inst6|contagemML~6_combout\ : std_logic;
SIGNAL \inst6|contagemML~2_combout\ : std_logic;
SIGNAL \inst6|contagemML~3_combout\ : std_logic;
SIGNAL \inst5|ml[1]~5_combout\ : std_logic;
SIGNAL \inst5|ml[2]~9_combout\ : std_logic;
SIGNAL \inst5|Add3~0_combout\ : std_logic;
SIGNAL \inst5|ml[2]~11_combout\ : std_logic;
SIGNAL \inst5|ml[2]~_emulated_q\ : std_logic;
SIGNAL \inst5|ml[2]~10_combout\ : std_logic;
SIGNAL \inst5|ml[3]~13_combout\ : std_logic;
SIGNAL \inst5|ml[3]~20_combout\ : std_logic;
SIGNAL \inst5|ml[3]~15_combout\ : std_logic;
SIGNAL \inst5|ml[3]~_emulated_q\ : std_logic;
SIGNAL \inst5|ml[3]~14_combout\ : std_logic;
SIGNAL \inst5|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|ml[1]~7_combout\ : std_logic;
SIGNAL \inst5|ml[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|ml[1]~6_combout\ : std_logic;
SIGNAL \inst6|contagemML[1]~4_combout\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|contagemML~5_combout\ : std_logic;
SIGNAL \inst6|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|contagemMH[2]~0_combout\ : std_logic;
SIGNAL \inst6|contagemMH~1_combout\ : std_logic;
SIGNAL \inst5|mh[1]~5_combout\ : std_logic;
SIGNAL \inst5|mh[2]~9_combout\ : std_logic;
SIGNAL \inst5|mh[2]~11_combout\ : std_logic;
SIGNAL \inst5|mh[2]~_emulated_q\ : std_logic;
SIGNAL \inst5|mh[2]~10_combout\ : std_logic;
SIGNAL \inst5|mh[1]~7_combout\ : std_logic;
SIGNAL \inst5|mh[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|mh[1]~6_combout\ : std_logic;
SIGNAL \inst6|contagemMH~2_combout\ : std_logic;
SIGNAL \inst6|Equal3~0_combout\ : std_logic;
SIGNAL \inst6|contagemHH~0_combout\ : std_logic;
SIGNAL \inst6|contagemHL~0_combout\ : std_logic;
SIGNAL \inst6|contagemHL~8_combout\ : std_logic;
SIGNAL \inst6|contagemHL~3_combout\ : std_logic;
SIGNAL \inst5|hl[3]~13_combout\ : std_logic;
SIGNAL \inst6|contagemHL~6_combout\ : std_logic;
SIGNAL \inst5|Add5~0_combout\ : std_logic;
SIGNAL \inst5|hl[2]~9_combout\ : std_logic;
SIGNAL \inst5|hl~21_combout\ : std_logic;
SIGNAL \inst5|hl[2]~11_combout\ : std_logic;
SIGNAL \inst5|hl[2]~_emulated_q\ : std_logic;
SIGNAL \inst5|hl[2]~10_combout\ : std_logic;
SIGNAL \inst6|contagemHL~10_combout\ : std_logic;
SIGNAL \inst6|Equal4~0_combout\ : std_logic;
SIGNAL \inst6|contagemHL~5_combout\ : std_logic;
SIGNAL \inst6|contagemHL~9_combout\ : std_logic;
SIGNAL \inst5|hl[1]~5_combout\ : std_logic;
SIGNAL \inst5|hl[1]~7_combout\ : std_logic;
SIGNAL \inst5|hl[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|hl[1]~6_combout\ : std_logic;
SIGNAL \inst6|contagemHH~1_combout\ : std_logic;
SIGNAL \inst6|contagemHH~2_combout\ : std_logic;
SIGNAL \inst5|hh[0]~1_combout\ : std_logic;
SIGNAL \inst5|hh[0]~3_combout\ : std_logic;
SIGNAL \inst5|Mux19~0_combout\ : std_logic;
SIGNAL \inst5|hh[0]~_emulated_q\ : std_logic;
SIGNAL \inst5|hh[0]~2_combout\ : std_logic;
SIGNAL \inst5|hl~20_combout\ : std_logic;
SIGNAL \inst5|hl[3]~22_combout\ : std_logic;
SIGNAL \inst5|hl[3]~23_combout\ : std_logic;
SIGNAL \inst5|hl[3]~15_combout\ : std_logic;
SIGNAL \inst5|hl[3]~_emulated_q\ : std_logic;
SIGNAL \inst5|hl[3]~14_combout\ : std_logic;
SIGNAL \inst5|Mux18~0_combout\ : std_logic;
SIGNAL \inst5|hh[1]~5_combout\ : std_logic;
SIGNAL \inst5|hh[1]~7_combout\ : std_logic;
SIGNAL \inst5|hh[1]~_emulated_q\ : std_logic;
SIGNAL \inst5|hh[1]~6_combout\ : std_logic;
SIGNAL \inst6|contagemHH~3_combout\ : std_logic;
SIGNAL \inst6|contagemHH~4_combout\ : std_logic;
SIGNAL \inst6|contagemHL~1_combout\ : std_logic;
SIGNAL \inst6|Add4~0_combout\ : std_logic;
SIGNAL \inst6|contagemHL~2_combout\ : std_logic;
SIGNAL \inst6|contagemHL~4_combout\ : std_logic;
SIGNAL \inst6|contagemHL~7_combout\ : std_logic;
SIGNAL \inst6|contagemHL~11_combout\ : std_logic;
SIGNAL \inst6|contagemHL~12_combout\ : std_logic;
SIGNAL \inst26|hl[0]~2_combout\ : std_logic;
SIGNAL \inst26|digito[0]~2_combout\ : std_logic;
SIGNAL \inst26|edicao~combout\ : std_logic;
SIGNAL \inst26|digito~1_combout\ : std_logic;
SIGNAL \inst26|digito~0_combout\ : std_logic;
SIGNAL \inst26|hl[3]~0_combout\ : std_logic;
SIGNAL \inst26|Mux16~0_combout\ : std_logic;
SIGNAL \inst26|Mux15~0_combout\ : std_logic;
SIGNAL \inst26|Mux18~0_combout\ : std_logic;
SIGNAL \inst26|hh[0]~0_combout\ : std_logic;
SIGNAL \inst26|Mux19~0_combout\ : std_logic;
SIGNAL \inst26|hl~1_combout\ : std_logic;
SIGNAL \inst26|Add5~0_combout\ : std_logic;
SIGNAL \inst26|Mux14~0_combout\ : std_logic;
SIGNAL \inst12|igual~3_combout\ : std_logic;
SIGNAL \inst12|igual~2_combout\ : std_logic;
SIGNAL \inst26|ml[0]~2_combout\ : std_logic;
SIGNAL \inst26|ml[3]~0_combout\ : std_logic;
SIGNAL \inst26|ml[2]~1_combout\ : std_logic;
SIGNAL \inst26|Mux7~0_combout\ : std_logic;
SIGNAL \inst26|Mux9~0_combout\ : std_logic;
SIGNAL \inst12|igual~11_combout\ : std_logic;
SIGNAL \inst26|sl[0]~2_combout\ : std_logic;
SIGNAL \inst26|sl[3]~0_combout\ : std_logic;
SIGNAL \inst26|sl[2]~1_combout\ : std_logic;
SIGNAL \inst26|Mux2~0_combout\ : std_logic;
SIGNAL \inst26|Mux0~0_combout\ : std_logic;
SIGNAL \inst12|igual~10_combout\ : std_logic;
SIGNAL \inst12|igual~12_combout\ : std_logic;
SIGNAL \inst12|igual~9_combout\ : std_logic;
SIGNAL \inst12|igual~13_combout\ : std_logic;
SIGNAL \inst26|sh[0]~1_combout\ : std_logic;
SIGNAL \inst26|sh[0]~0_combout\ : std_logic;
SIGNAL \inst26|Mux5~0_combout\ : std_logic;
SIGNAL \inst26|Mux4~0_combout\ : std_logic;
SIGNAL \inst26|mh[0]~1_combout\ : std_logic;
SIGNAL \inst26|mh[0]~0_combout\ : std_logic;
SIGNAL \inst12|igual~5_combout\ : std_logic;
SIGNAL \inst26|Mux12~0_combout\ : std_logic;
SIGNAL \inst26|Mux11~0_combout\ : std_logic;
SIGNAL \inst12|igual~6_combout\ : std_logic;
SIGNAL \inst12|igual~7_combout\ : std_logic;
SIGNAL \inst12|igual~4_combout\ : std_logic;
SIGNAL \inst12|igual~8_combout\ : std_logic;
SIGNAL \inst12|igual~14_combout\ : std_logic;
SIGNAL \inst9|result~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|aux4~0_combout\ : std_logic;
SIGNAL \inst8|result~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|aux3~0_combout\ : std_logic;
SIGNAL \inst12|aux3~q\ : std_logic;
SIGNAL \inst12|aux1~0_combout\ : std_logic;
SIGNAL \inst12|aux1~1_combout\ : std_logic;
SIGNAL \inst12|aux1~q\ : std_logic;
SIGNAL \inst12|aux1~2_combout\ : std_logic;
SIGNAL \inst12|aux1~3_combout\ : std_logic;
SIGNAL \inst12|aux4~q\ : std_logic;
SIGNAL \inst12|aux2~0_combout\ : std_logic;
SIGNAL \inst12|aux2~1_combout\ : std_logic;
SIGNAL \inst12|aux2~q\ : std_logic;
SIGNAL \inst12|igual~1_combout\ : std_logic;
SIGNAL \inst12|igual~15_combout\ : std_logic;
SIGNAL \inst27|edicao~combout\ : std_logic;
SIGNAL \inst14|aux2~0_combout\ : std_logic;
SIGNAL \inst14|aux1~0_combout\ : std_logic;
SIGNAL \inst14|aux1~q\ : std_logic;
SIGNAL \inst14|aux3~0_combout\ : std_logic;
SIGNAL \inst14|aux3~1_combout\ : std_logic;
SIGNAL \inst14|aux3~q\ : std_logic;
SIGNAL \inst14|aux4~0_combout\ : std_logic;
SIGNAL \inst14|aux4~1_combout\ : std_logic;
SIGNAL \inst14|aux4~q\ : std_logic;
SIGNAL \inst14|aux4~2_combout\ : std_logic;
SIGNAL \inst14|aux4~3_combout\ : std_logic;
SIGNAL \inst14|aux2~q\ : std_logic;
SIGNAL \inst14|igual~1_combout\ : std_logic;
SIGNAL \inst27|hl[0]~2_combout\ : std_logic;
SIGNAL \inst27|digito[0]~2_combout\ : std_logic;
SIGNAL \inst27|digito~1_combout\ : std_logic;
SIGNAL \inst27|digito~0_combout\ : std_logic;
SIGNAL \inst27|hl[3]~0_combout\ : std_logic;
SIGNAL \inst27|Mux18~0_combout\ : std_logic;
SIGNAL \inst27|hh[0]~0_combout\ : std_logic;
SIGNAL \inst27|Mux19~0_combout\ : std_logic;
SIGNAL \inst27|Mux16~0_combout\ : std_logic;
SIGNAL \inst27|hl~1_combout\ : std_logic;
SIGNAL \inst27|Mux15~0_combout\ : std_logic;
SIGNAL \inst27|Add5~0_combout\ : std_logic;
SIGNAL \inst27|Mux14~0_combout\ : std_logic;
SIGNAL \inst14|igual~3_combout\ : std_logic;
SIGNAL \inst14|igual~2_combout\ : std_logic;
SIGNAL \inst27|sl[0]~2_combout\ : std_logic;
SIGNAL \inst27|sl[3]~0_combout\ : std_logic;
SIGNAL \inst27|Mux0~0_combout\ : std_logic;
SIGNAL \inst27|Mux2~0_combout\ : std_logic;
SIGNAL \inst27|sl[2]~1_combout\ : std_logic;
SIGNAL \inst14|igual~10_combout\ : std_logic;
SIGNAL \inst27|ml[0]~2_combout\ : std_logic;
SIGNAL \inst27|ml[3]~0_combout\ : std_logic;
SIGNAL \inst27|ml[2]~1_combout\ : std_logic;
SIGNAL \inst27|Mux9~0_combout\ : std_logic;
SIGNAL \inst27|Mux7~0_combout\ : std_logic;
SIGNAL \inst14|igual~12_combout\ : std_logic;
SIGNAL \inst14|igual~11_combout\ : std_logic;
SIGNAL \inst14|igual~9_combout\ : std_logic;
SIGNAL \inst14|igual~13_combout\ : std_logic;
SIGNAL \inst27|sh[0]~1_combout\ : std_logic;
SIGNAL \inst27|sh[0]~0_combout\ : std_logic;
SIGNAL \inst27|Mux5~0_combout\ : std_logic;
SIGNAL \inst27|Mux4~0_combout\ : std_logic;
SIGNAL \inst27|mh[0]~1_combout\ : std_logic;
SIGNAL \inst27|mh[0]~0_combout\ : std_logic;
SIGNAL \inst14|igual~5_combout\ : std_logic;
SIGNAL \inst14|igual~7_combout\ : std_logic;
SIGNAL \inst27|Mux12~0_combout\ : std_logic;
SIGNAL \inst27|Mux11~0_combout\ : std_logic;
SIGNAL \inst14|igual~6_combout\ : std_logic;
SIGNAL \inst14|igual~4_combout\ : std_logic;
SIGNAL \inst14|igual~8_combout\ : std_logic;
SIGNAL \inst14|igual~14_combout\ : std_logic;
SIGNAL \inst14|igual~15_combout\ : std_logic;
SIGNAL \inst31|edicao~combout\ : std_logic;
SIGNAL \inst31|hl[0]~2_combout\ : std_logic;
SIGNAL \inst31|digito[0]~2_combout\ : std_logic;
SIGNAL \inst31|digito~1_combout\ : std_logic;
SIGNAL \inst31|digito~0_combout\ : std_logic;
SIGNAL \inst31|hl[3]~0_combout\ : std_logic;
SIGNAL \inst31|Mux15~0_combout\ : std_logic;
SIGNAL \inst31|Add5~0_combout\ : std_logic;
SIGNAL \inst31|Mux14~0_combout\ : std_logic;
SIGNAL \inst31|Mux18~0_combout\ : std_logic;
SIGNAL \inst31|hh[0]~0_combout\ : std_logic;
SIGNAL \inst31|Mux19~0_combout\ : std_logic;
SIGNAL \inst31|hl~1_combout\ : std_logic;
SIGNAL \inst31|Mux16~0_combout\ : std_logic;
SIGNAL \inst3|igual~2_combout\ : std_logic;
SIGNAL \inst31|sh[0]~1_combout\ : std_logic;
SIGNAL \inst31|sh[0]~0_combout\ : std_logic;
SIGNAL \inst31|Mux5~0_combout\ : std_logic;
SIGNAL \inst31|Mux4~0_combout\ : std_logic;
SIGNAL \inst31|mh[0]~1_combout\ : std_logic;
SIGNAL \inst31|mh[0]~0_combout\ : std_logic;
SIGNAL \inst3|igual~5_combout\ : std_logic;
SIGNAL \inst3|igual~4_combout\ : std_logic;
SIGNAL \inst3|igual~7_combout\ : std_logic;
SIGNAL \inst31|Mux12~0_combout\ : std_logic;
SIGNAL \inst31|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|igual~6_combout\ : std_logic;
SIGNAL \inst3|igual~8_combout\ : std_logic;
SIGNAL \inst3|igual~3_combout\ : std_logic;
SIGNAL \inst31|ml[0]~2_combout\ : std_logic;
SIGNAL \inst31|ml[3]~0_combout\ : std_logic;
SIGNAL \inst31|ml[2]~1_combout\ : std_logic;
SIGNAL \inst31|Mux7~0_combout\ : std_logic;
SIGNAL \inst31|Mux9~0_combout\ : std_logic;
SIGNAL \inst3|igual~11_combout\ : std_logic;
SIGNAL \inst3|igual~12_combout\ : std_logic;
SIGNAL \inst31|sl[0]~2_combout\ : std_logic;
SIGNAL \inst31|sl[3]~0_combout\ : std_logic;
SIGNAL \inst31|sl[2]~1_combout\ : std_logic;
SIGNAL \inst31|Mux2~0_combout\ : std_logic;
SIGNAL \inst31|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|igual~10_combout\ : std_logic;
SIGNAL \inst3|igual~9_combout\ : std_logic;
SIGNAL \inst3|igual~13_combout\ : std_logic;
SIGNAL \inst3|igual~14_combout\ : std_logic;
SIGNAL \inst3|aux1~0_combout\ : std_logic;
SIGNAL \inst3|aux2~0_combout\ : std_logic;
SIGNAL \inst3|aux2~q\ : std_logic;
SIGNAL \inst3|aux4~2_combout\ : std_logic;
SIGNAL \inst3|aux4~3_combout\ : std_logic;
SIGNAL \inst3|aux1~q\ : std_logic;
SIGNAL \inst3|aux3~0_combout\ : std_logic;
SIGNAL \inst3|aux3~1_combout\ : std_logic;
SIGNAL \inst3|aux3~q\ : std_logic;
SIGNAL \inst3|aux4~0_combout\ : std_logic;
SIGNAL \inst3|aux4~1_combout\ : std_logic;
SIGNAL \inst3|aux4~q\ : std_logic;
SIGNAL \inst3|igual~1_combout\ : std_logic;
SIGNAL \inst3|igual~15_combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst4|aux[1]~1_combout\ : std_logic;
SIGNAL \inst4|aux~2_combout\ : std_logic;
SIGNAL \inst4|process_0~0_combout\ : std_logic;
SIGNAL \inst4|aux~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus[9]~5_combout\ : std_logic;
SIGNAL \inst|lcd_bus[9]~6_combout\ : std_logic;
SIGNAL \inst19|lcd_bus[9]~9_combout\ : std_logic;
SIGNAL \inst19|lcd_bus[7]~10_combout\ : std_logic;
SIGNAL \inst19|dut|Selector36~0_combout\ : std_logic;
SIGNAL \inst|dut|rs~0_combout\ : std_logic;
SIGNAL \inst19|dut|rs~q\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~7_combout\ : std_logic;
SIGNAL \inst|lcd_bus[9]~8_combout\ : std_logic;
SIGNAL \inst|lcd_bus[9]~9_combout\ : std_logic;
SIGNAL \inst|lcd_bus[7]~10_combout\ : std_logic;
SIGNAL \inst|dut|Selector36~0_combout\ : std_logic;
SIGNAL \inst|dut|rs~q\ : std_logic;
SIGNAL \inst24|Mux1~0_combout\ : std_logic;
SIGNAL \inst24|rs~q\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst|lcd_bus[7]~12_combout\ : std_logic;
SIGNAL \inst|dut|Selector38~0_combout\ : std_logic;
SIGNAL \inst|dut|lcd_data[1]~2_combout\ : std_logic;
SIGNAL \inst|lcd_bus[7]~11_combout\ : std_logic;
SIGNAL \inst19|dut|Selector38~0_combout\ : std_logic;
SIGNAL \inst24|Mux3~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus[6]~15_combout\ : std_logic;
SIGNAL \inst|lcd_bus~14_combout\ : std_logic;
SIGNAL \inst|lcd_bus~13_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst19|Mux5~2_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|lcd_bus[6]~17_combout\ : std_logic;
SIGNAL \inst|lcd_bus~18_combout\ : std_logic;
SIGNAL \inst|lcd_bus~19_combout\ : std_logic;
SIGNAL \inst|lcd_bus~20_combout\ : std_logic;
SIGNAL \inst|lcd_bus[6]~16_combout\ : std_logic;
SIGNAL \inst|lcd_bus[6]~21_combout\ : std_logic;
SIGNAL \inst|dut|Selector39~0_combout\ : std_logic;
SIGNAL \inst30|Mux6~6_combout\ : std_logic;
SIGNAL \inst19|Equal0~1_combout\ : std_logic;
SIGNAL \inst19|lcd_bus[6]~8_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~0_combout\ : std_logic;
SIGNAL \inst19|Mux3~1_combout\ : std_logic;
SIGNAL \inst19|lcd_bus[6]~11_combout\ : std_logic;
SIGNAL \inst19|dut|Selector39~0_combout\ : std_logic;
SIGNAL \inst24|Mux4~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~24_combout\ : std_logic;
SIGNAL \inst|lcd_bus~22_combout\ : std_logic;
SIGNAL \inst|lcd_bus~23_combout\ : std_logic;
SIGNAL \inst|lcd_bus[5]~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst19|dut|Selector40~2_combout\ : std_logic;
SIGNAL \inst19|dut|Selector40~3_combout\ : std_logic;
SIGNAL \inst|dut|Selector40~2_combout\ : std_logic;
SIGNAL \inst19|Mux4~2_combout\ : std_logic;
SIGNAL \inst19|Mux4~4_combout\ : std_logic;
SIGNAL \inst19|Mux4~3_combout\ : std_logic;
SIGNAL \inst19|dut|Selector40~4_combout\ : std_logic;
SIGNAL \inst24|Mux5~0_combout\ : std_logic;
SIGNAL \inst19|Mux5~3_combout\ : std_logic;
SIGNAL \inst19|Mux5~5_combout\ : std_logic;
SIGNAL \inst19|Mux5~9_combout\ : std_logic;
SIGNAL \inst19|Mux5~4_combout\ : std_logic;
SIGNAL \inst|Mux15~4_combout\ : std_logic;
SIGNAL \inst19|Mux5~6_combout\ : std_logic;
SIGNAL \inst19|Mux5~7_combout\ : std_logic;
SIGNAL \inst19|Mux5~8_combout\ : std_logic;
SIGNAL \inst19|Mux5~10_combout\ : std_logic;
SIGNAL \inst19|Mux5~11_combout\ : std_logic;
SIGNAL \inst19|dut|Selector41~2_combout\ : std_logic;
SIGNAL \inst|Mux14~2_combout\ : std_logic;
SIGNAL \inst|Mux15~5_combout\ : std_logic;
SIGNAL \inst|Mux14~6_combout\ : std_logic;
SIGNAL \inst|lcd_bus~26_combout\ : std_logic;
SIGNAL \inst|Mux14~7_combout\ : std_logic;
SIGNAL \inst|Mux14~8_combout\ : std_logic;
SIGNAL \inst|Mux14~4_combout\ : std_logic;
SIGNAL \inst|Mux14~3_combout\ : std_logic;
SIGNAL \inst|Mux14~5_combout\ : std_logic;
SIGNAL \inst|Mux14~13_combout\ : std_logic;
SIGNAL \inst|Mux14~9_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|lcd_bus~27_combout\ : std_logic;
SIGNAL \inst|Mux14~10_combout\ : std_logic;
SIGNAL \inst|Mux14~11_combout\ : std_logic;
SIGNAL \inst|Mux14~12_combout\ : std_logic;
SIGNAL \inst|dut|Selector41~2_combout\ : std_logic;
SIGNAL \inst24|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux15~6_combout\ : std_logic;
SIGNAL \inst|Mux15~11_combout\ : std_logic;
SIGNAL \inst|Mux15~45_combout\ : std_logic;
SIGNAL \inst|Mux15~12_combout\ : std_logic;
SIGNAL \inst|Mux15~7_combout\ : std_logic;
SIGNAL \inst|Mux15~8_combout\ : std_logic;
SIGNAL \inst|Mux15~9_combout\ : std_logic;
SIGNAL \inst|Mux15~10_combout\ : std_logic;
SIGNAL \inst|Mux15~13_combout\ : std_logic;
SIGNAL \inst|Mux15~14_combout\ : std_logic;
SIGNAL \inst|Mux15~15_combout\ : std_logic;
SIGNAL \inst|Mux15~46_combout\ : std_logic;
SIGNAL \inst|Mux15~16_combout\ : std_logic;
SIGNAL \inst|lcd_bus[3]~1_combout\ : std_logic;
SIGNAL \inst|Mux15~17_combout\ : std_logic;
SIGNAL \inst|Mux15~18_combout\ : std_logic;
SIGNAL \inst|Mux15~19_combout\ : std_logic;
SIGNAL \inst30|dut|Selector44~2_combout\ : std_logic;
SIGNAL \inst30|dut|Selector43~2_combout\ : std_logic;
SIGNAL \inst30|dut|Selector43~3_combout\ : std_logic;
SIGNAL \inst30|dut|Selector43~4_combout\ : std_logic;
SIGNAL \inst|dut|Selector42~2_combout\ : std_logic;
SIGNAL \inst19|Mux6~11_combout\ : std_logic;
SIGNAL \inst19|Mux6~12_combout\ : std_logic;
SIGNAL \inst19|Mux6~13_combout\ : std_logic;
SIGNAL \inst19|Mux6~16_combout\ : std_logic;
SIGNAL \inst30|Mux6~8_combout\ : std_logic;
SIGNAL \inst19|Mux6~7_combout\ : std_logic;
SIGNAL \inst30|Mux7~4_combout\ : std_logic;
SIGNAL \inst19|Mux6~8_combout\ : std_logic;
SIGNAL \inst19|Mux6~9_combout\ : std_logic;
SIGNAL \inst19|Mux6~6_combout\ : std_logic;
SIGNAL \inst19|Mux6~15_combout\ : std_logic;
SIGNAL \inst19|Mux6~10_combout\ : std_logic;
SIGNAL \inst19|Mux6~14_combout\ : std_logic;
SIGNAL \inst19|dut|Selector42~2_combout\ : std_logic;
SIGNAL \inst24|Mux7~0_combout\ : std_logic;
SIGNAL \inst30|Mux6~13_combout\ : std_logic;
SIGNAL \inst30|Mux6~14_combout\ : std_logic;
SIGNAL \inst30|Mux6~15_combout\ : std_logic;
SIGNAL \inst30|Mux6~18_combout\ : std_logic;
SIGNAL \inst30|Mux6~9_combout\ : std_logic;
SIGNAL \inst30|Mux6~17_combout\ : std_logic;
SIGNAL \inst30|Mux6~10_combout\ : std_logic;
SIGNAL \inst30|Mux6~11_combout\ : std_logic;
SIGNAL \inst30|Mux6~12_combout\ : std_logic;
SIGNAL \inst30|Mux6~16_combout\ : std_logic;
SIGNAL \inst30|dut|Selector42~2_combout\ : std_logic;
SIGNAL \inst22|Mux6~11_combout\ : std_logic;
SIGNAL \inst22|Mux6~10_combout\ : std_logic;
SIGNAL \inst22|Mux6~12_combout\ : std_logic;
SIGNAL \inst22|Mux6~7_combout\ : std_logic;
SIGNAL \inst22|Mux6~8_combout\ : std_logic;
SIGNAL \inst22|Mux6~14_combout\ : std_logic;
SIGNAL \inst22|Mux6~15_combout\ : std_logic;
SIGNAL \inst22|Mux6~6_combout\ : std_logic;
SIGNAL \inst22|Mux6~9_combout\ : std_logic;
SIGNAL \inst22|Mux6~13_combout\ : std_logic;
SIGNAL \inst22|dut|Selector42~2_combout\ : std_logic;
SIGNAL \inst24|Mux7~1_combout\ : std_logic;
SIGNAL \inst30|Mux7~11_combout\ : std_logic;
SIGNAL \inst30|Mux7~12_combout\ : std_logic;
SIGNAL \inst30|Mux7~13_combout\ : std_logic;
SIGNAL \inst30|Mux7~17_combout\ : std_logic;
SIGNAL \inst30|Mux7~8_combout\ : std_logic;
SIGNAL \inst30|Mux7~9_combout\ : std_logic;
SIGNAL \inst|Mux15~20_combout\ : std_logic;
SIGNAL \inst30|Mux6~7_combout\ : std_logic;
SIGNAL \inst30|Mux7~6_combout\ : std_logic;
SIGNAL \inst30|Mux7~7_combout\ : std_logic;
SIGNAL \inst30|Mux7~5_combout\ : std_logic;
SIGNAL \inst30|Mux7~16_combout\ : std_logic;
SIGNAL \inst30|Mux7~10_combout\ : std_logic;
SIGNAL \inst30|Mux7~15_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~2_combout\ : std_logic;
SIGNAL \inst30|dut|Selector43~5_combout\ : std_logic;
SIGNAL \inst30|dut|Selector43~6_combout\ : std_logic;
SIGNAL \inst22|Mux7~11_combout\ : std_logic;
SIGNAL \inst22|Mux7~9_combout\ : std_logic;
SIGNAL \inst22|Mux7~10_combout\ : std_logic;
SIGNAL \inst22|Mux7~14_combout\ : std_logic;
SIGNAL \inst22|Mux7~13_combout\ : std_logic;
SIGNAL \inst22|Mux7~4_combout\ : std_logic;
SIGNAL \inst22|Mux7~5_combout\ : std_logic;
SIGNAL \inst22|Mux7~6_combout\ : std_logic;
SIGNAL \inst22|Mux7~7_combout\ : std_logic;
SIGNAL \inst22|Mux7~8_combout\ : std_logic;
SIGNAL \inst22|Mux7~12_combout\ : std_logic;
SIGNAL \inst22|dut|Selector43~2_combout\ : std_logic;
SIGNAL \inst19|Mux7~11_combout\ : std_logic;
SIGNAL \inst19|Mux7~9_combout\ : std_logic;
SIGNAL \inst19|Mux7~10_combout\ : std_logic;
SIGNAL \inst19|Mux7~14_combout\ : std_logic;
SIGNAL \inst19|Mux7~6_combout\ : std_logic;
SIGNAL \inst19|Mux7~7_combout\ : std_logic;
SIGNAL \inst19|Mux7~4_combout\ : std_logic;
SIGNAL \inst19|Mux7~5_combout\ : std_logic;
SIGNAL \inst19|Mux7~13_combout\ : std_logic;
SIGNAL \inst19|Mux7~8_combout\ : std_logic;
SIGNAL \inst19|Mux7~12_combout\ : std_logic;
SIGNAL \inst19|dut|Selector43~2_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|lcd_bus~28_combout\ : std_logic;
SIGNAL \inst|Mux15~24_combout\ : std_logic;
SIGNAL \inst|Mux15~25_combout\ : std_logic;
SIGNAL \inst|Mux15~21_combout\ : std_logic;
SIGNAL \inst|Mux15~23_combout\ : std_logic;
SIGNAL \inst|Mux15~22_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|lcd_bus[2]~2_combout\ : std_logic;
SIGNAL \inst|Mux7~5_combout\ : std_logic;
SIGNAL \inst30|Mux7~14_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|Mux7~6_combout\ : std_logic;
SIGNAL \inst|dut|Selector43~3_combout\ : std_logic;
SIGNAL \inst24|Mux8~0_combout\ : std_logic;
SIGNAL \inst24|Mux8~1_combout\ : std_logic;
SIGNAL \inst19|Mux8~9_combout\ : std_logic;
SIGNAL \inst19|Mux8~10_combout\ : std_logic;
SIGNAL \inst30|Mux9~2_combout\ : std_logic;
SIGNAL \inst19|Mux8~5_combout\ : std_logic;
SIGNAL \inst19|Mux8~6_combout\ : std_logic;
SIGNAL \inst19|Mux8~7_combout\ : std_logic;
SIGNAL \inst19|Mux8~8_combout\ : std_logic;
SIGNAL \inst22|Mux8~4_combout\ : std_logic;
SIGNAL \inst22|Mux8~5_combout\ : std_logic;
SIGNAL \inst30|Mux8~5_combout\ : std_logic;
SIGNAL \inst30|Mux8~4_combout\ : std_logic;
SIGNAL \inst19|Mux8~4_combout\ : std_logic;
SIGNAL \inst19|Mux8~12_combout\ : std_logic;
SIGNAL \inst19|Mux8~11_combout\ : std_logic;
SIGNAL \inst30|dut|Selector44~3_combout\ : std_logic;
SIGNAL \inst19|dut|Selector44~2_combout\ : std_logic;
SIGNAL \inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst|lcd_bus~29_combout\ : std_logic;
SIGNAL \inst|Mux15~27_combout\ : std_logic;
SIGNAL \inst|Mux15~28_combout\ : std_logic;
SIGNAL \inst|Mux15~26_combout\ : std_logic;
SIGNAL \inst|Mux15~29_combout\ : std_logic;
SIGNAL \inst|Mux15~31_combout\ : std_logic;
SIGNAL \inst|Mux15~30_combout\ : std_logic;
SIGNAL \inst|Mux17~3_combout\ : std_logic;
SIGNAL \inst|Mux15~32_combout\ : std_logic;
SIGNAL \inst|Mux15~33_combout\ : std_logic;
SIGNAL \inst|Mux15~34_combout\ : std_logic;
SIGNAL \inst|Mux17~4_combout\ : std_logic;
SIGNAL \inst|lcd_bus[1]~3_combout\ : std_logic;
SIGNAL \inst|Mux15~35_combout\ : std_logic;
SIGNAL \inst|Mux15~36_combout\ : std_logic;
SIGNAL \inst|Mux15~37_combout\ : std_logic;
SIGNAL \inst|Mux15~38_combout\ : std_logic;
SIGNAL \inst|Mux15~39_combout\ : std_logic;
SIGNAL \inst|dut|Selector44~2_combout\ : std_logic;
SIGNAL \inst24|Mux9~0_combout\ : std_logic;
SIGNAL \inst30|Mux8~6_combout\ : std_logic;
SIGNAL \inst30|Mux8~14_combout\ : std_logic;
SIGNAL \inst30|Mux8~11_combout\ : std_logic;
SIGNAL \inst30|Mux8~12_combout\ : std_logic;
SIGNAL \inst30|Mux8~9_combout\ : std_logic;
SIGNAL \inst30|Mux8~7_combout\ : std_logic;
SIGNAL \inst30|Mux8~8_combout\ : std_logic;
SIGNAL \inst30|Mux8~10_combout\ : std_logic;
SIGNAL \inst30|Mux8~13_combout\ : std_logic;
SIGNAL \inst30|dut|Selector44~4_combout\ : std_logic;
SIGNAL \inst22|Mux8~11_combout\ : std_logic;
SIGNAL \inst22|Mux8~12_combout\ : std_logic;
SIGNAL \inst22|Mux8~7_combout\ : std_logic;
SIGNAL \inst22|Mux8~8_combout\ : std_logic;
SIGNAL \inst22|Mux8~9_combout\ : std_logic;
SIGNAL \inst22|Mux8~10_combout\ : std_logic;
SIGNAL \inst22|Mux8~6_combout\ : std_logic;
SIGNAL \inst22|Mux8~14_combout\ : std_logic;
SIGNAL \inst22|Mux8~13_combout\ : std_logic;
SIGNAL \inst22|dut|Selector44~2_combout\ : std_logic;
SIGNAL \inst24|Mux9~1_combout\ : std_logic;
SIGNAL \inst22|Mux9~8_combout\ : std_logic;
SIGNAL \inst22|Mux9~6_combout\ : std_logic;
SIGNAL \inst|lcd_bus~25_combout\ : std_logic;
SIGNAL \inst22|Mux9~7_combout\ : std_logic;
SIGNAL \inst22|Mux9~9_combout\ : std_logic;
SIGNAL \inst22|Mux9~11_combout\ : std_logic;
SIGNAL \inst22|Mux9~12_combout\ : std_logic;
SIGNAL \inst22|Mux9~2_combout\ : std_logic;
SIGNAL \inst22|Mux9~3_combout\ : std_logic;
SIGNAL \inst22|Mux9~4_combout\ : std_logic;
SIGNAL \inst22|Mux9~5_combout\ : std_logic;
SIGNAL \inst22|Mux9~10_combout\ : std_logic;
SIGNAL \inst30|dut|Selector45~2_combout\ : std_logic;
SIGNAL \inst30|dut|Selector45~3_combout\ : std_logic;
SIGNAL \inst22|dut|Selector45~2_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|Mux18~2_combout\ : std_logic;
SIGNAL \inst|Mux17~11_combout\ : std_logic;
SIGNAL \inst|Mux17~5_combout\ : std_logic;
SIGNAL \inst|Mux17~6_combout\ : std_logic;
SIGNAL \inst|Mux17~7_combout\ : std_logic;
SIGNAL \inst|Mux15~40_combout\ : std_logic;
SIGNAL \inst|Mux17~9_combout\ : std_logic;
SIGNAL \inst|Mux17~8_combout\ : std_logic;
SIGNAL \inst|Mux17~10_combout\ : std_logic;
SIGNAL \inst|Mux18~3_combout\ : std_logic;
SIGNAL \inst|lcd_bus[0]~4_combout\ : std_logic;
SIGNAL \inst|Mux15~43_combout\ : std_logic;
SIGNAL \inst|Mux15~41_combout\ : std_logic;
SIGNAL \inst|Mux15~42_combout\ : std_logic;
SIGNAL \inst|Mux15~44_combout\ : std_logic;
SIGNAL \inst|dut|Selector45~2_combout\ : std_logic;
SIGNAL \inst19|Mux9~7_combout\ : std_logic;
SIGNAL \inst19|Mux9~6_combout\ : std_logic;
SIGNAL \inst19|Mux9~8_combout\ : std_logic;
SIGNAL \inst19|Mux9~9_combout\ : std_logic;
SIGNAL \inst19|Mux9~2_combout\ : std_logic;
SIGNAL \inst19|Mux9~11_combout\ : std_logic;
SIGNAL \inst19|Mux9~12_combout\ : std_logic;
SIGNAL \inst19|Mux9~3_combout\ : std_logic;
SIGNAL \inst19|Mux9~4_combout\ : std_logic;
SIGNAL \inst19|Mux9~5_combout\ : std_logic;
SIGNAL \inst19|Mux9~10_combout\ : std_logic;
SIGNAL \inst19|dut|Selector45~2_combout\ : std_logic;
SIGNAL \inst24|Mux10~0_combout\ : std_logic;
SIGNAL \inst30|Mux9~7_combout\ : std_logic;
SIGNAL \inst30|Mux9~9_combout\ : std_logic;
SIGNAL \inst30|Mux9~8_combout\ : std_logic;
SIGNAL \inst30|Mux9~10_combout\ : std_logic;
SIGNAL \inst30|Mux9~12_combout\ : std_logic;
SIGNAL \inst30|Mux9~13_combout\ : std_logic;
SIGNAL \inst30|Mux9~3_combout\ : std_logic;
SIGNAL \inst30|Mux9~4_combout\ : std_logic;
SIGNAL \inst30|Mux9~5_combout\ : std_logic;
SIGNAL \inst30|Mux9~6_combout\ : std_logic;
SIGNAL \inst30|Mux9~11_combout\ : std_logic;
SIGNAL \inst30|dut|Selector45~4_combout\ : std_logic;
SIGNAL \inst24|Mux10~1_combout\ : std_logic;
SIGNAL \inst26|hl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst6|contagemSH\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst11|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst30|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|contagemMH\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst6|contagemML\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst26|sl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst26|sh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|char\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst24|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|aux\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|cont\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst6|contagemHL\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst26|mh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst26|hh\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|contagemHH\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|contagemSL\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst26|ml\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|digito\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst31|hl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst31|sh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst31|mh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst31|hh\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst31|sl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst31|ml\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst27|hl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst27|sh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst27|mh\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst27|hh\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst27|sl\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst27|ml\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst19|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst22|dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst9|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|cont\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst22|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst26|digito\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst31|digito\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst27|digito\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst8|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \inst11|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_char\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \inst14|ALT_INV_aux4~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_aux4~3_combout\ : std_logic;
SIGNAL \inst12|ALT_INV_aux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst27|ALT_INV_edicao~combout\ : std_logic;
SIGNAL \inst31|ALT_INV_edicao~combout\ : std_logic;
SIGNAL \inst26|ALT_INV_edicao~combout\ : std_logic;
SIGNAL \inst9|ALT_INV_result~q\ : std_logic;

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
buzzer <= ww_buzzer;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|result~q\);

\inst11|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|result~q\);

\inst5|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|process_0~0_combout\);

\inst2|aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|aux~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\inst9|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst9|result~q\);

\inst8|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|result~q\);
\inst8|ALT_INV_result~clkctrl_outclk\ <= NOT \inst8|result~clkctrl_outclk\;
\inst9|ALT_INV_result~clkctrl_outclk\ <= NOT \inst9|result~clkctrl_outclk\;
\inst5|ALT_INV_process_0~0clkctrl_outclk\ <= NOT \inst5|process_0~0clkctrl_outclk\;
\inst11|ALT_INV_result~clkctrl_outclk\ <= NOT \inst11|result~clkctrl_outclk\;
\inst10|ALT_INV_result~clkctrl_outclk\ <= NOT \inst10|result~clkctrl_outclk\;
\inst5|ALT_INV_process_0~0_combout\ <= NOT \inst5|process_0~0_combout\;
\inst|ALT_INV_char\(3) <= NOT \inst|char\(3);
\inst14|ALT_INV_aux4~3_combout\ <= NOT \inst14|aux4~3_combout\;
\inst3|ALT_INV_aux4~3_combout\ <= NOT \inst3|aux4~3_combout\;
\inst12|ALT_INV_aux1~3_combout\ <= NOT \inst12|aux1~3_combout\;
\ALT_INV_inst7~combout\ <= NOT \inst7~combout\;
\inst27|ALT_INV_edicao~combout\ <= NOT \inst27|edicao~combout\;
\inst31|ALT_INV_edicao~combout\ <= NOT \inst31|edicao~combout\;
\inst26|ALT_INV_edicao~combout\ <= NOT \inst26|edicao~combout\;
\inst9|ALT_INV_result~q\ <= NOT \inst9|result~q\;
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
	i => \inst24|e~q\,
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
	i => \inst24|rs~q\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|lcd_data\(7),
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
	i => \inst24|lcd_data\(6),
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
	i => \inst24|lcd_data\(5),
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
	i => \inst24|lcd_data\(4),
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
	i => \inst24|lcd_data\(3),
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
	i => \inst24|lcd_data\(2),
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
	i => \inst24|lcd_data\(1),
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
	i => \inst24|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

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

-- Location: LCCOMB_X12_Y11_N0
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

-- Location: LCCOMB_X13_Y12_N4
\inst|dut|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector32~0_combout\ = (\inst|dut|Add0~0_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~0_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector32~0_combout\);

-- Location: FF_X13_Y12_N5
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

-- Location: LCCOMB_X12_Y11_N2
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

-- Location: LCCOMB_X13_Y11_N6
\inst|dut|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector31~0_combout\ = (\inst|dut|Add0~2_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~2_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector31~0_combout\);

-- Location: FF_X13_Y11_N7
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

-- Location: LCCOMB_X12_Y11_N4
\inst|dut|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~4_combout\ = (\inst|dut|clk_count\(2) & (\inst|dut|Add0~3\ $ (GND))) # (!\inst|dut|clk_count\(2) & (!\inst|dut|Add0~3\ & VCC))
-- \inst|dut|Add0~5\ = CARRY((\inst|dut|clk_count\(2) & !\inst|dut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(2),
	datad => VCC,
	cin => \inst|dut|Add0~3\,
	combout => \inst|dut|Add0~4_combout\,
	cout => \inst|dut|Add0~5\);

-- Location: LCCOMB_X13_Y11_N16
\inst|dut|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector30~0_combout\ = (\inst|dut|Add0~4_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~4_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector30~0_combout\);

-- Location: FF_X13_Y11_N17
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

-- Location: LCCOMB_X12_Y11_N6
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

-- Location: LCCOMB_X13_Y11_N18
\inst|dut|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector29~0_combout\ = (\inst|dut|Add0~6_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~6_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector29~0_combout\);

-- Location: FF_X13_Y11_N19
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

-- Location: LCCOMB_X12_Y11_N8
\inst|dut|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~8_combout\ = (\inst|dut|clk_count\(4) & (\inst|dut|Add0~7\ $ (GND))) # (!\inst|dut|clk_count\(4) & (!\inst|dut|Add0~7\ & VCC))
-- \inst|dut|Add0~9\ = CARRY((\inst|dut|clk_count\(4) & !\inst|dut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(4),
	datad => VCC,
	cin => \inst|dut|Add0~7\,
	combout => \inst|dut|Add0~8_combout\,
	cout => \inst|dut|Add0~9\);

-- Location: LCCOMB_X13_Y11_N4
\inst|dut|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector28~0_combout\ = (\inst|dut|Add0~8_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector28~0_combout\);

-- Location: FF_X13_Y11_N5
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

-- Location: LCCOMB_X12_Y11_N10
\inst|dut|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~10_combout\ = (\inst|dut|clk_count\(5) & (!\inst|dut|Add0~9\)) # (!\inst|dut|clk_count\(5) & ((\inst|dut|Add0~9\) # (GND)))
-- \inst|dut|Add0~11\ = CARRY((!\inst|dut|Add0~9\) # (!\inst|dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(5),
	datad => VCC,
	cin => \inst|dut|Add0~9\,
	combout => \inst|dut|Add0~10_combout\,
	cout => \inst|dut|Add0~11\);

-- Location: LCCOMB_X13_Y11_N26
\inst|dut|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector27~0_combout\ = (\inst|dut|Add0~10_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~10_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector27~0_combout\);

-- Location: FF_X13_Y11_N27
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

-- Location: LCCOMB_X12_Y11_N12
\inst|dut|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~12_combout\ = (\inst|dut|clk_count\(6) & (\inst|dut|Add0~11\ $ (GND))) # (!\inst|dut|clk_count\(6) & (!\inst|dut|Add0~11\ & VCC))
-- \inst|dut|Add0~13\ = CARRY((\inst|dut|clk_count\(6) & !\inst|dut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datad => VCC,
	cin => \inst|dut|Add0~11\,
	combout => \inst|dut|Add0~12_combout\,
	cout => \inst|dut|Add0~13\);

-- Location: LCCOMB_X13_Y11_N20
\inst|dut|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector26~0_combout\ = (\inst|dut|Add0~12_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector26~0_combout\);

-- Location: FF_X13_Y11_N21
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

-- Location: LCCOMB_X12_Y11_N14
\inst|dut|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~14_combout\ = (\inst|dut|clk_count\(7) & (!\inst|dut|Add0~13\)) # (!\inst|dut|clk_count\(7) & ((\inst|dut|Add0~13\) # (GND)))
-- \inst|dut|Add0~15\ = CARRY((!\inst|dut|Add0~13\) # (!\inst|dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(7),
	datad => VCC,
	cin => \inst|dut|Add0~13\,
	combout => \inst|dut|Add0~14_combout\,
	cout => \inst|dut|Add0~15\);

-- Location: LCCOMB_X10_Y11_N2
\inst|dut|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector25~0_combout\ = (\inst|dut|Add0~14_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~14_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector25~0_combout\);

-- Location: FF_X10_Y11_N3
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

-- Location: LCCOMB_X12_Y11_N16
\inst|dut|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~16_combout\ = (\inst|dut|clk_count\(8) & (\inst|dut|Add0~15\ $ (GND))) # (!\inst|dut|clk_count\(8) & (!\inst|dut|Add0~15\ & VCC))
-- \inst|dut|Add0~17\ = CARRY((\inst|dut|clk_count\(8) & !\inst|dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(8),
	datad => VCC,
	cin => \inst|dut|Add0~15\,
	combout => \inst|dut|Add0~16_combout\,
	cout => \inst|dut|Add0~17\);

-- Location: LCCOMB_X11_Y11_N0
\inst|dut|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector24~0_combout\ = (\inst|dut|Add0~16_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector24~0_combout\);

-- Location: FF_X11_Y11_N1
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

-- Location: LCCOMB_X10_Y11_N14
\inst|dut|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~1_combout\ = (((!\inst|dut|clk_count\(6) & !\inst|dut|clk_count\(5))) # (!\inst|dut|clk_count\(8))) # (!\inst|dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(7),
	datac => \inst|dut|clk_count\(8),
	datad => \inst|dut|clk_count\(5),
	combout => \inst|dut|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y10_N4
\inst|dut|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~2_combout\ = ((\inst|dut|LessThan0~1_combout\ & !\inst|dut|clk_count\(9))) # (!\inst|dut|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(10),
	datac => \inst|dut|LessThan0~1_combout\,
	datad => \inst|dut|clk_count\(9),
	combout => \inst|dut|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y10_N18
\inst|dut|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~3_combout\ = ((!\inst|dut|clk_count\(12) & (!\inst|dut|clk_count\(11) & \inst|dut|LessThan0~2_combout\))) # (!\inst|dut|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(12),
	datab => \inst|dut|clk_count\(11),
	datac => \inst|dut|LessThan0~2_combout\,
	datad => \inst|dut|clk_count\(13),
	combout => \inst|dut|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y11_N30
\inst|dut|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~0_combout\ = (!\inst|dut|clk_count\(16) & (!\inst|dut|clk_count\(14) & !\inst|dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(16),
	datab => \inst|dut|clk_count\(14),
	datac => \inst|dut|clk_count\(15),
	combout => \inst|dut|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\inst|dut|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~4_combout\ = (((\inst|dut|LessThan0~3_combout\ & \inst|dut|LessThan0~0_combout\)) # (!\inst|dut|clk_count\(17))) # (!\inst|dut|clk_count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(18),
	datab => \inst|dut|LessThan0~3_combout\,
	datac => \inst|dut|LessThan0~0_combout\,
	datad => \inst|dut|clk_count\(17),
	combout => \inst|dut|LessThan0~4_combout\);

-- Location: LCCOMB_X11_Y10_N14
\inst|dut|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~5_combout\ = ((!\inst|dut|clk_count\(20) & (!\inst|dut|clk_count\(19) & \inst|dut|LessThan0~4_combout\))) # (!\inst|dut|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(20),
	datab => \inst|dut|clk_count\(21),
	datac => \inst|dut|clk_count\(19),
	datad => \inst|dut|LessThan0~4_combout\,
	combout => \inst|dut|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y13_N18
\inst|dut|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~0_combout\ = (!\inst|dut|clk_count\(24) & (!\inst|dut|clk_count\(25) & (!\inst|dut|clk_count\(22) & !\inst|dut|clk_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(24),
	datab => \inst|dut|clk_count\(25),
	datac => \inst|dut|clk_count\(22),
	datad => \inst|dut|clk_count\(23),
	combout => \inst|dut|LessThan9~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst|dut|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~1_combout\ = (\inst|dut|LessThan9~0_combout\ & !\inst|dut|clk_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|LessThan9~0_combout\,
	datad => \inst|dut|clk_count\(26),
	combout => \inst|dut|LessThan9~1_combout\);

-- Location: LCCOMB_X11_Y10_N20
\inst|dut|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~8_combout\ = (!\inst|dut|clk_count\(29) & (!\inst|dut|clk_count\(27) & (!\inst|dut|clk_count\(28) & !\inst|dut|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(29),
	datab => \inst|dut|clk_count\(27),
	datac => \inst|dut|clk_count\(28),
	datad => \inst|dut|clk_count\(30),
	combout => \inst|dut|LessThan9~8_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst|dut|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan0~6_combout\ = (\inst|dut|clk_count\(31)) # ((\inst|dut|LessThan0~5_combout\ & (\inst|dut|LessThan9~1_combout\ & \inst|dut|LessThan9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan0~5_combout\,
	datab => \inst|dut|LessThan9~1_combout\,
	datac => \inst|dut|LessThan9~8_combout\,
	datad => \inst|dut|clk_count\(31),
	combout => \inst|dut|LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y13_N30
\inst|dut|lcd_data[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[1]~0_combout\ = (\inst|dut|state.power_up~q\) # (!\inst|dut|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|state.power_up~q\,
	datad => \inst|dut|LessThan0~6_combout\,
	combout => \inst|dut|lcd_data[1]~0_combout\);

-- Location: FF_X12_Y13_N31
\inst|dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|lcd_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.power_up~q\);

-- Location: LCCOMB_X13_Y12_N18
\inst|dut|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~2_combout\ = (\inst|dut|Add0~30_combout\ & (\inst|dut|Add0~32_combout\ & ((\inst|dut|Add0~28_combout\) # (\inst|dut|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~30_combout\,
	datab => \inst|dut|Add0~32_combout\,
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|Add0~26_combout\,
	combout => \inst|dut|LessThan6~2_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst|dut|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~0_combout\ = (\inst|dut|Add0~10_combout\ & \inst|dut|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~10_combout\,
	datad => \inst|dut|Add0~8_combout\,
	combout => \inst|dut|LessThan8~0_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst|dut|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan7~0_combout\ = (\inst|dut|Add0~14_combout\ & (\inst|dut|Add0~12_combout\ & (\inst|dut|Add0~16_combout\ & \inst|dut|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~14_combout\,
	datab => \inst|dut|Add0~12_combout\,
	datac => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|LessThan8~0_combout\,
	combout => \inst|dut|LessThan7~0_combout\);

-- Location: LCCOMB_X12_Y11_N18
\inst|dut|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~18_combout\ = (\inst|dut|clk_count\(9) & (!\inst|dut|Add0~17\)) # (!\inst|dut|clk_count\(9) & ((\inst|dut|Add0~17\) # (GND)))
-- \inst|dut|Add0~19\ = CARRY((!\inst|dut|Add0~17\) # (!\inst|dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(9),
	datad => VCC,
	cin => \inst|dut|Add0~17\,
	combout => \inst|dut|Add0~18_combout\,
	cout => \inst|dut|Add0~19\);

-- Location: LCCOMB_X13_Y12_N24
\inst|dut|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan1~0_combout\ = (!\inst|dut|Add0~22_combout\ & (!\inst|dut|Add0~18_combout\ & (!\inst|dut|Add0~20_combout\ & !\inst|dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~22_combout\,
	datab => \inst|dut|Add0~18_combout\,
	datac => \inst|dut|Add0~20_combout\,
	datad => \inst|dut|Add0~24_combout\,
	combout => \inst|dut|LessThan1~0_combout\);

-- Location: LCCOMB_X13_Y12_N14
\inst|dut|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan7~1_combout\ = (!\inst|dut|Add0~28_combout\ & (\inst|dut|LessThan1~0_combout\ & ((!\inst|dut|LessThan7~0_combout\) # (!\inst|dut|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~6_combout\,
	datab => \inst|dut|LessThan7~0_combout\,
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|LessThan1~0_combout\,
	combout => \inst|dut|LessThan7~1_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst|dut|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~1_combout\ = (!\inst|dut|Add0~46_combout\ & (!\inst|dut|Add0~44_combout\ & (!\inst|dut|Add0~42_combout\ & !\inst|dut|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~46_combout\,
	datab => \inst|dut|Add0~44_combout\,
	datac => \inst|dut|Add0~42_combout\,
	datad => \inst|dut|Add0~48_combout\,
	combout => \inst|dut|LessThan3~1_combout\);

-- Location: LCCOMB_X11_Y12_N22
\inst|dut|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~0_combout\ = (!\inst|dut|Add0~36_combout\ & (!\inst|dut|Add0~34_combout\ & (!\inst|dut|Add0~40_combout\ & !\inst|dut|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~36_combout\,
	datab => \inst|dut|Add0~34_combout\,
	datac => \inst|dut|Add0~40_combout\,
	datad => \inst|dut|Add0~38_combout\,
	combout => \inst|dut|LessThan3~0_combout\);

-- Location: LCCOMB_X12_Y12_N0
\inst|dut|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~5_combout\ = (\inst|dut|LessThan3~1_combout\ & (!\inst|dut|Add0~52_combout\ & (!\inst|dut|Add0~50_combout\ & \inst|dut|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~1_combout\,
	datab => \inst|dut|Add0~52_combout\,
	datac => \inst|dut|Add0~50_combout\,
	datad => \inst|dut|LessThan3~0_combout\,
	combout => \inst|dut|LessThan3~5_combout\);

-- Location: LCCOMB_X12_Y12_N10
\inst|dut|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~6_combout\ = (!\inst|dut|Add0~56_combout\ & (!\inst|dut|Add0~54_combout\ & (!\inst|dut|Add0~58_combout\ & \inst|dut|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~56_combout\,
	datab => \inst|dut|Add0~54_combout\,
	datac => \inst|dut|Add0~58_combout\,
	datad => \inst|dut|LessThan3~5_combout\,
	combout => \inst|dut|LessThan3~6_combout\);

-- Location: LCCOMB_X12_Y12_N8
\inst|dut|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan7~2_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan3~6_combout\ & ((\inst|dut|LessThan7~1_combout\) # (!\inst|dut|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|LessThan6~2_combout\,
	datac => \inst|dut|LessThan7~1_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan7~2_combout\);

-- Location: LCCOMB_X13_Y12_N6
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

-- Location: LCCOMB_X11_Y12_N16
\inst|dut|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~7_combout\ = (\inst|dut|Add0~22_combout\ & \inst|dut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~22_combout\,
	datad => \inst|dut|Add0~20_combout\,
	combout => \inst|dut|LessThan3~7_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst|dut|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~1_combout\ = (!\inst|dut|Add0~28_combout\ & !\inst|dut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|Add0~24_combout\,
	combout => \inst|dut|LessThan8~1_combout\);

-- Location: LCCOMB_X13_Y12_N20
\inst|dut|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~3_combout\ = (\inst|dut|LessThan8~1_combout\ & (((\inst|dut|LessThan8~2_combout\ & !\inst|dut|Add0~18_combout\)) # (!\inst|dut|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan8~2_combout\,
	datab => \inst|dut|Add0~18_combout\,
	datac => \inst|dut|LessThan3~7_combout\,
	datad => \inst|dut|LessThan8~1_combout\,
	combout => \inst|dut|LessThan8~3_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst|dut|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan8~4_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan3~6_combout\ & ((\inst|dut|LessThan8~3_combout\) # (!\inst|dut|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|LessThan6~2_combout\,
	datac => \inst|dut|LessThan8~3_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan8~4_combout\);

-- Location: LCCOMB_X11_Y12_N4
\inst|dut|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~4_combout\ = (!\inst|dut|Add0~56_combout\ & !\inst|dut|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~56_combout\,
	datad => \inst|dut|Add0~58_combout\,
	combout => \inst|dut|busy~4_combout\);

-- Location: LCCOMB_X13_Y12_N30
\inst|dut|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~0_combout\ = (!\inst|dut|Add0~10_combout\ & (!\inst|dut|Add0~4_combout\ & (!\inst|dut|Add0~6_combout\ & !\inst|dut|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~10_combout\,
	datab => \inst|dut|Add0~4_combout\,
	datac => \inst|dut|Add0~6_combout\,
	datad => \inst|dut|Add0~8_combout\,
	combout => \inst|dut|LessThan6~0_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst|dut|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~1_combout\ = (!\inst|dut|Add0~16_combout\ & (!\inst|dut|Add0~12_combout\ & (\inst|dut|LessThan6~0_combout\ & !\inst|dut|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~16_combout\,
	datab => \inst|dut|Add0~12_combout\,
	datac => \inst|dut|LessThan6~0_combout\,
	datad => \inst|dut|Add0~14_combout\,
	combout => \inst|dut|LessThan6~1_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst|dut|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~3_combout\ = ((\inst|dut|LessThan6~1_combout\ & (\inst|dut|LessThan1~0_combout\ & !\inst|dut|Add0~28_combout\))) # (!\inst|dut|LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan6~1_combout\,
	datab => \inst|dut|LessThan1~0_combout\,
	datac => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|LessThan6~2_combout\,
	combout => \inst|dut|LessThan6~3_combout\);

-- Location: LCCOMB_X11_Y12_N20
\inst|dut|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~2_combout\ = (!\inst|dut|Add0~52_combout\ & (!\inst|dut|Add0~54_combout\ & (!\inst|dut|Add0~50_combout\ & \inst|dut|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~52_combout\,
	datab => \inst|dut|Add0~54_combout\,
	datac => \inst|dut|Add0~50_combout\,
	datad => \inst|dut|LessThan3~1_combout\,
	combout => \inst|dut|LessThan3~2_combout\);

-- Location: LCCOMB_X11_Y12_N2
\inst|dut|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~5_combout\ = (\inst|dut|LessThan3~0_combout\ & (\inst|dut|busy~4_combout\ & (\inst|dut|LessThan6~3_combout\ & \inst|dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~0_combout\,
	datab => \inst|dut|busy~4_combout\,
	datac => \inst|dut|LessThan6~3_combout\,
	datad => \inst|dut|LessThan3~2_combout\,
	combout => \inst|dut|busy~5_combout\);

-- Location: LCCOMB_X12_Y12_N22
\inst|dut|lcd_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[1]~1_combout\ = (!\inst|dut|LessThan7~2_combout\ & (!\inst|dut|LessThan8~4_combout\ & ((\inst|dut|Add0~60_combout\) # (!\inst|dut|busy~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|LessThan7~2_combout\,
	datac => \inst|dut|LessThan8~4_combout\,
	datad => \inst|dut|busy~5_combout\,
	combout => \inst|dut|lcd_data[1]~1_combout\);

-- Location: LCCOMB_X11_Y12_N28
\inst|dut|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~9_combout\ = ((!\inst|dut|Add0~8_combout\ & ((!\inst|dut|Add0~4_combout\) # (!\inst|dut|Add0~6_combout\)))) # (!\inst|dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~6_combout\,
	datab => \inst|dut|Add0~4_combout\,
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~10_combout\,
	combout => \inst|dut|LessThan3~9_combout\);

-- Location: LCCOMB_X11_Y12_N18
\inst|dut|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~8_combout\ = ((!\inst|dut|Add0~18_combout\ & ((!\inst|dut|Add0~16_combout\) # (!\inst|dut|Add0~14_combout\)))) # (!\inst|dut|LessThan3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~18_combout\,
	datab => \inst|dut|Add0~14_combout\,
	datac => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|LessThan3~7_combout\,
	combout => \inst|dut|LessThan3~8_combout\);

-- Location: LCCOMB_X11_Y12_N6
\inst|dut|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~10_combout\ = (\inst|dut|LessThan3~8_combout\) # ((!\inst|dut|Add0~12_combout\ & (\inst|dut|LessThan3~9_combout\ & !\inst|dut|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~12_combout\,
	datab => \inst|dut|LessThan3~9_combout\,
	datac => \inst|dut|Add0~18_combout\,
	datad => \inst|dut|LessThan3~8_combout\,
	combout => \inst|dut|LessThan3~10_combout\);

-- Location: LCCOMB_X11_Y12_N26
\inst|dut|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~3_combout\ = (!\inst|dut|Add0~30_combout\ & (!\inst|dut|Add0~26_combout\ & (!\inst|dut|Add0~32_combout\ & !\inst|dut|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~30_combout\,
	datab => \inst|dut|Add0~26_combout\,
	datac => \inst|dut|Add0~32_combout\,
	datad => \inst|dut|Add0~28_combout\,
	combout => \inst|dut|LessThan3~3_combout\);

-- Location: LCCOMB_X11_Y12_N24
\inst|dut|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~6_combout\ = (\inst|dut|LessThan3~0_combout\ & (!\inst|dut|Add0~24_combout\ & (\inst|dut|LessThan3~3_combout\ & \inst|dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~0_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datac => \inst|dut|LessThan3~3_combout\,
	datad => \inst|dut|LessThan3~2_combout\,
	combout => \inst|dut|busy~6_combout\);

-- Location: LCCOMB_X11_Y12_N14
\inst|dut|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~8_combout\ = (\inst|dut|LessThan3~10_combout\ & (!\inst|dut|Add0~58_combout\ & (!\inst|dut|Add0~56_combout\ & \inst|dut|busy~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~10_combout\,
	datab => \inst|dut|Add0~58_combout\,
	datac => \inst|dut|Add0~56_combout\,
	datad => \inst|dut|busy~6_combout\,
	combout => \inst|dut|busy~8_combout\);

-- Location: LCCOMB_X12_Y12_N12
\inst|dut|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|busy~7_combout\ = (!\inst|dut|Add0~62_combout\ & (\inst|dut|lcd_data[1]~1_combout\ & ((\inst|dut|Add0~60_combout\) # (!\inst|dut|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|Add0~62_combout\,
	datac => \inst|dut|lcd_data[1]~1_combout\,
	datad => \inst|dut|busy~8_combout\,
	combout => \inst|dut|busy~7_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst|dut|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector33~0_combout\ = (\inst|dut|state.power_up~q\ & (((\inst|dut|state.initialize~q\ & !\inst|dut|busy~7_combout\)))) # (!\inst|dut|state.power_up~q\ & (((\inst|dut|state.initialize~q\ & !\inst|dut|busy~7_combout\)) # 
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
	datad => \inst|dut|busy~7_combout\,
	combout => \inst|dut|Selector33~0_combout\);

-- Location: FF_X12_Y13_N17
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

-- Location: FF_X13_Y13_N29
\inst|dut|busy\ : dffeas
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
	q => \inst|dut|busy~q\);

-- Location: LCCOMB_X13_Y13_N18
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|dut|busy~q\ & !\inst|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|busy~q\,
	datad => \inst|lcd_enable~q\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\inst|lcd_enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_enable~feeder_combout\ = \inst|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|process_0~0_combout\,
	combout => \inst|lcd_enable~feeder_combout\);

-- Location: FF_X14_Y10_N17
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

-- Location: LCCOMB_X13_Y13_N28
\inst|dut|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector34~1_combout\ = (\inst|dut|state.initialize~q\ & ((\inst|dut|busy~7_combout\) # ((!\inst|lcd_enable~q\ & \inst|dut|state.ready~q\)))) # (!\inst|dut|state.initialize~q\ & (!\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.initialize~q\,
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|dut|busy~7_combout\,
	combout => \inst|dut|Selector34~1_combout\);

-- Location: LCCOMB_X13_Y13_N2
\inst|dut|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector34~2_combout\ = (\inst|dut|Selector34~1_combout\) # ((\inst|dut|Selector34~0_combout\ & \inst|dut|state.send~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector34~0_combout\,
	datac => \inst|dut|state.send~q\,
	datad => \inst|dut|Selector34~1_combout\,
	combout => \inst|dut|Selector34~2_combout\);

-- Location: FF_X13_Y13_N3
\inst|dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.ready~q\);

-- Location: LCCOMB_X11_Y11_N16
\inst|dut|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~1_combout\ = ((!\inst|dut|Add0~16_combout\) # (!\inst|dut|Add0~20_combout\)) # (!\inst|dut|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~18_combout\,
	datac => \inst|dut|Add0~20_combout\,
	datad => \inst|dut|Add0~16_combout\,
	combout => \inst|dut|LessThan4~1_combout\);

-- Location: LCCOMB_X11_Y11_N22
\inst|dut|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~0_combout\ = (!\inst|dut|Add0~14_combout\ & (((!\inst|dut|Add0~10_combout\) # (!\inst|dut|Add0~8_combout\)) # (!\inst|dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~14_combout\,
	datab => \inst|dut|Add0~12_combout\,
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~10_combout\,
	combout => \inst|dut|LessThan4~0_combout\);

-- Location: LCCOMB_X11_Y11_N2
\inst|dut|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~2_combout\ = ((!\inst|dut|Add0~22_combout\ & ((\inst|dut|LessThan4~1_combout\) # (\inst|dut|LessThan4~0_combout\)))) # (!\inst|dut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~24_combout\,
	datab => \inst|dut|LessThan4~1_combout\,
	datac => \inst|dut|LessThan4~0_combout\,
	datad => \inst|dut|Add0~22_combout\,
	combout => \inst|dut|LessThan4~2_combout\);

-- Location: LCCOMB_X12_Y12_N4
\inst|dut|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan4~3_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan4~2_combout\ & (\inst|dut|LessThan3~3_combout\ & \inst|dut|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|LessThan4~2_combout\,
	datac => \inst|dut|LessThan3~3_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan4~3_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst|dut|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan1~1_combout\ = ((!\inst|dut|Add0~6_combout\ & !\inst|dut|Add0~4_combout\)) # (!\inst|dut|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~6_combout\,
	datac => \inst|dut|Add0~4_combout\,
	datad => \inst|dut|LessThan7~0_combout\,
	combout => \inst|dut|LessThan1~1_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst|dut|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan1~2_combout\ = (\inst|dut|LessThan3~3_combout\ & (\inst|dut|LessThan1~0_combout\ & (\inst|dut|LessThan1~1_combout\ & \inst|dut|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~3_combout\,
	datab => \inst|dut|LessThan1~0_combout\,
	datac => \inst|dut|LessThan1~1_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan1~2_combout\);

-- Location: LCCOMB_X11_Y11_N20
\inst|dut|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan6~4_combout\ = (!\inst|dut|Add0~6_combout\ & (!\inst|dut|Add0~8_combout\ & !\inst|dut|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~6_combout\,
	datac => \inst|dut|Add0~8_combout\,
	datad => \inst|dut|Add0~4_combout\,
	combout => \inst|dut|LessThan6~4_combout\);

-- Location: LCCOMB_X11_Y11_N26
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

-- Location: LCCOMB_X11_Y11_N8
\inst|dut|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan5~1_combout\ = (!\inst|dut|Add0~20_combout\ & (!\inst|dut|Add0~18_combout\ & ((\inst|dut|LessThan5~0_combout\) # (!\inst|dut|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~20_combout\,
	datab => \inst|dut|Add0~16_combout\,
	datac => \inst|dut|LessThan5~0_combout\,
	datad => \inst|dut|Add0~18_combout\,
	combout => \inst|dut|LessThan5~1_combout\);

-- Location: LCCOMB_X11_Y11_N6
\inst|dut|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan5~2_combout\ = (!\inst|dut|Add0~24_combout\) # (!\inst|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~22_combout\,
	datad => \inst|dut|Add0~24_combout\,
	combout => \inst|dut|LessThan5~2_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst|dut|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan5~3_combout\ = (\inst|dut|LessThan3~3_combout\ & (\inst|dut|LessThan3~6_combout\ & ((\inst|dut|LessThan5~1_combout\) # (\inst|dut|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan5~1_combout\,
	datab => \inst|dut|LessThan5~2_combout\,
	datac => \inst|dut|LessThan3~3_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan5~3_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst|dut|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~1_combout\ = ((!\inst|dut|Add0~14_combout\) # (!\inst|dut|Add0~16_combout\)) # (!\inst|dut|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~18_combout\,
	datac => \inst|dut|Add0~16_combout\,
	datad => \inst|dut|Add0~14_combout\,
	combout => \inst|dut|LessThan2~1_combout\);

-- Location: LCCOMB_X13_Y12_N26
\inst|dut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~0_combout\ = (!\inst|dut|Add0~12_combout\ & (((!\inst|dut|Add0~10_combout\) # (!\inst|dut|Add0~8_combout\)) # (!\inst|dut|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~6_combout\,
	datab => \inst|dut|Add0~8_combout\,
	datac => \inst|dut|Add0~12_combout\,
	datad => \inst|dut|Add0~10_combout\,
	combout => \inst|dut|LessThan2~0_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst|dut|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~2_combout\ = ((!\inst|dut|Add0~20_combout\ & ((\inst|dut|LessThan2~1_combout\) # (\inst|dut|LessThan2~0_combout\)))) # (!\inst|dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~20_combout\,
	datab => \inst|dut|LessThan2~1_combout\,
	datac => \inst|dut|LessThan2~0_combout\,
	datad => \inst|dut|Add0~22_combout\,
	combout => \inst|dut|LessThan2~2_combout\);

-- Location: LCCOMB_X11_Y12_N12
\inst|dut|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~4_combout\ = (\inst|dut|LessThan3~3_combout\ & (\inst|dut|LessThan3~0_combout\ & (\inst|dut|busy~4_combout\ & \inst|dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~3_combout\,
	datab => \inst|dut|LessThan3~0_combout\,
	datac => \inst|dut|busy~4_combout\,
	datad => \inst|dut|LessThan3~2_combout\,
	combout => \inst|dut|LessThan3~4_combout\);

-- Location: LCCOMB_X11_Y12_N8
\inst|dut|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count~0_combout\ = (!\inst|dut|Add0~24_combout\ & (\inst|dut|LessThan3~4_combout\ & ((\inst|dut|LessThan3~10_combout\) # (\inst|dut|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~10_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datac => \inst|dut|LessThan2~2_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|clk_count~0_combout\);

-- Location: LCCOMB_X12_Y12_N20
\inst|dut|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count~1_combout\ = (!\inst|dut|Add0~60_combout\ & ((\inst|dut|LessThan1~2_combout\) # ((\inst|dut|LessThan5~3_combout\) # (\inst|dut|clk_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datab => \inst|dut|LessThan1~2_combout\,
	datac => \inst|dut|LessThan5~3_combout\,
	datad => \inst|dut|clk_count~0_combout\,
	combout => \inst|dut|clk_count~1_combout\);

-- Location: LCCOMB_X12_Y12_N2
\inst|dut|clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count~2_combout\ = (\inst|dut|Add0~62_combout\) # ((\inst|dut|LessThan4~3_combout\) # ((\inst|dut|clk_count~1_combout\) # (!\inst|dut|lcd_data[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~62_combout\,
	datab => \inst|dut|LessThan4~3_combout\,
	datac => \inst|dut|lcd_data[1]~1_combout\,
	datad => \inst|dut|clk_count~1_combout\,
	combout => \inst|dut|clk_count~2_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst|dut|clk_count[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count[13]~3_combout\ = (\inst|dut|state.send~q\ & (!\inst|dut|Selector34~0_combout\)) # (!\inst|dut|state.send~q\ & ((\inst|dut|clk_count~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.send~q\,
	datac => \inst|dut|Selector34~0_combout\,
	datad => \inst|dut|clk_count~2_combout\,
	combout => \inst|dut|clk_count[13]~3_combout\);

-- Location: LCCOMB_X12_Y12_N14
\inst|dut|clk_count[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|clk_count[13]~4_combout\ = (!\inst|dut|state.ready~q\ & ((\inst|dut|state.power_up~q\ & ((\inst|dut|clk_count[13]~3_combout\))) # (!\inst|dut|state.power_up~q\ & (\inst|dut|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.ready~q\,
	datab => \inst|dut|LessThan0~6_combout\,
	datac => \inst|dut|state.power_up~q\,
	datad => \inst|dut|clk_count[13]~3_combout\,
	combout => \inst|dut|clk_count[13]~4_combout\);

-- Location: LCCOMB_X12_Y12_N28
\inst|dut|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector23~0_combout\ = (\inst|dut|clk_count[13]~4_combout\ & \inst|dut|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|clk_count[13]~4_combout\,
	datad => \inst|dut|Add0~18_combout\,
	combout => \inst|dut|Selector23~0_combout\);

-- Location: FF_X12_Y12_N29
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

-- Location: LCCOMB_X12_Y11_N20
\inst|dut|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~20_combout\ = (\inst|dut|clk_count\(10) & (\inst|dut|Add0~19\ $ (GND))) # (!\inst|dut|clk_count\(10) & (!\inst|dut|Add0~19\ & VCC))
-- \inst|dut|Add0~21\ = CARRY((\inst|dut|clk_count\(10) & !\inst|dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(10),
	datad => VCC,
	cin => \inst|dut|Add0~19\,
	combout => \inst|dut|Add0~20_combout\,
	cout => \inst|dut|Add0~21\);

-- Location: LCCOMB_X11_Y11_N18
\inst|dut|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector22~0_combout\ = (\inst|dut|Add0~20_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~20_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector22~0_combout\);

-- Location: FF_X11_Y11_N19
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

-- Location: LCCOMB_X12_Y11_N22
\inst|dut|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~22_combout\ = (\inst|dut|clk_count\(11) & (!\inst|dut|Add0~21\)) # (!\inst|dut|clk_count\(11) & ((\inst|dut|Add0~21\) # (GND)))
-- \inst|dut|Add0~23\ = CARRY((!\inst|dut|Add0~21\) # (!\inst|dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(11),
	datad => VCC,
	cin => \inst|dut|Add0~21\,
	combout => \inst|dut|Add0~22_combout\,
	cout => \inst|dut|Add0~23\);

-- Location: LCCOMB_X11_Y10_N0
\inst|dut|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector21~0_combout\ = (\inst|dut|Add0~22_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~22_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector21~0_combout\);

-- Location: FF_X11_Y10_N1
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

-- Location: LCCOMB_X12_Y11_N24
\inst|dut|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~24_combout\ = (\inst|dut|clk_count\(12) & (\inst|dut|Add0~23\ $ (GND))) # (!\inst|dut|clk_count\(12) & (!\inst|dut|Add0~23\ & VCC))
-- \inst|dut|Add0~25\ = CARRY((\inst|dut|clk_count\(12) & !\inst|dut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(12),
	datad => VCC,
	cin => \inst|dut|Add0~23\,
	combout => \inst|dut|Add0~24_combout\,
	cout => \inst|dut|Add0~25\);

-- Location: LCCOMB_X11_Y11_N24
\inst|dut|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector20~0_combout\ = (\inst|dut|Add0~24_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector20~0_combout\);

-- Location: FF_X11_Y11_N25
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

-- Location: LCCOMB_X12_Y11_N26
\inst|dut|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~26_combout\ = (\inst|dut|clk_count\(13) & (!\inst|dut|Add0~25\)) # (!\inst|dut|clk_count\(13) & ((\inst|dut|Add0~25\) # (GND)))
-- \inst|dut|Add0~27\ = CARRY((!\inst|dut|Add0~25\) # (!\inst|dut|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(13),
	datad => VCC,
	cin => \inst|dut|Add0~25\,
	combout => \inst|dut|Add0~26_combout\,
	cout => \inst|dut|Add0~27\);

-- Location: LCCOMB_X11_Y10_N2
\inst|dut|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector19~0_combout\ = (\inst|dut|Add0~26_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~26_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector19~0_combout\);

-- Location: FF_X11_Y10_N3
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

-- Location: LCCOMB_X12_Y11_N28
\inst|dut|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~28_combout\ = (\inst|dut|clk_count\(14) & (\inst|dut|Add0~27\ $ (GND))) # (!\inst|dut|clk_count\(14) & (!\inst|dut|Add0~27\ & VCC))
-- \inst|dut|Add0~29\ = CARRY((\inst|dut|clk_count\(14) & !\inst|dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(14),
	datad => VCC,
	cin => \inst|dut|Add0~27\,
	combout => \inst|dut|Add0~28_combout\,
	cout => \inst|dut|Add0~29\);

-- Location: LCCOMB_X11_Y11_N14
\inst|dut|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector18~0_combout\ = (\inst|dut|Add0~28_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~28_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector18~0_combout\);

-- Location: FF_X11_Y11_N15
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

-- Location: LCCOMB_X12_Y11_N30
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

-- Location: LCCOMB_X11_Y11_N4
\inst|dut|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector17~0_combout\ = (\inst|dut|Add0~30_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~30_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector17~0_combout\);

-- Location: FF_X11_Y11_N5
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

-- Location: LCCOMB_X12_Y10_N0
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

-- Location: LCCOMB_X11_Y11_N10
\inst|dut|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector16~0_combout\ = (\inst|dut|Add0~32_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~32_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector16~0_combout\);

-- Location: FF_X11_Y11_N11
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

-- Location: LCCOMB_X12_Y10_N2
\inst|dut|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~34_combout\ = (\inst|dut|clk_count\(17) & (!\inst|dut|Add0~33\)) # (!\inst|dut|clk_count\(17) & ((\inst|dut|Add0~33\) # (GND)))
-- \inst|dut|Add0~35\ = CARRY((!\inst|dut|Add0~33\) # (!\inst|dut|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(17),
	datad => VCC,
	cin => \inst|dut|Add0~33\,
	combout => \inst|dut|Add0~34_combout\,
	cout => \inst|dut|Add0~35\);

-- Location: LCCOMB_X11_Y10_N12
\inst|dut|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector15~0_combout\ = (\inst|dut|Add0~34_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~34_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector15~0_combout\);

-- Location: FF_X11_Y10_N13
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

-- Location: LCCOMB_X12_Y10_N4
\inst|dut|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~36_combout\ = (\inst|dut|clk_count\(18) & (\inst|dut|Add0~35\ $ (GND))) # (!\inst|dut|clk_count\(18) & (!\inst|dut|Add0~35\ & VCC))
-- \inst|dut|Add0~37\ = CARRY((\inst|dut|clk_count\(18) & !\inst|dut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(18),
	datad => VCC,
	cin => \inst|dut|Add0~35\,
	combout => \inst|dut|Add0~36_combout\,
	cout => \inst|dut|Add0~37\);

-- Location: LCCOMB_X11_Y10_N30
\inst|dut|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector14~0_combout\ = (\inst|dut|Add0~36_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~36_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector14~0_combout\);

-- Location: FF_X11_Y10_N31
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

-- Location: LCCOMB_X12_Y10_N6
\inst|dut|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~38_combout\ = (\inst|dut|clk_count\(19) & (!\inst|dut|Add0~37\)) # (!\inst|dut|clk_count\(19) & ((\inst|dut|Add0~37\) # (GND)))
-- \inst|dut|Add0~39\ = CARRY((!\inst|dut|Add0~37\) # (!\inst|dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(19),
	datad => VCC,
	cin => \inst|dut|Add0~37\,
	combout => \inst|dut|Add0~38_combout\,
	cout => \inst|dut|Add0~39\);

-- Location: LCCOMB_X11_Y10_N8
\inst|dut|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector13~0_combout\ = (\inst|dut|Add0~38_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~38_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector13~0_combout\);

-- Location: FF_X11_Y10_N9
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

-- Location: LCCOMB_X12_Y10_N8
\inst|dut|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~40_combout\ = (\inst|dut|clk_count\(20) & (\inst|dut|Add0~39\ $ (GND))) # (!\inst|dut|clk_count\(20) & (!\inst|dut|Add0~39\ & VCC))
-- \inst|dut|Add0~41\ = CARRY((\inst|dut|clk_count\(20) & !\inst|dut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(20),
	datad => VCC,
	cin => \inst|dut|Add0~39\,
	combout => \inst|dut|Add0~40_combout\,
	cout => \inst|dut|Add0~41\);

-- Location: LCCOMB_X11_Y10_N6
\inst|dut|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector12~0_combout\ = (\inst|dut|Add0~40_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~40_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector12~0_combout\);

-- Location: FF_X11_Y10_N7
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

-- Location: LCCOMB_X12_Y10_N10
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

-- Location: LCCOMB_X11_Y10_N16
\inst|dut|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector11~0_combout\ = (\inst|dut|Add0~42_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~42_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector11~0_combout\);

-- Location: FF_X11_Y10_N17
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

-- Location: LCCOMB_X12_Y10_N12
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

-- Location: LCCOMB_X12_Y13_N14
\inst|dut|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector10~0_combout\ = (\inst|dut|Add0~44_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~44_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector10~0_combout\);

-- Location: FF_X12_Y13_N15
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

-- Location: LCCOMB_X12_Y10_N14
\inst|dut|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~46_combout\ = (\inst|dut|clk_count\(23) & (!\inst|dut|Add0~45\)) # (!\inst|dut|clk_count\(23) & ((\inst|dut|Add0~45\) # (GND)))
-- \inst|dut|Add0~47\ = CARRY((!\inst|dut|Add0~45\) # (!\inst|dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(23),
	datad => VCC,
	cin => \inst|dut|Add0~45\,
	combout => \inst|dut|Add0~46_combout\,
	cout => \inst|dut|Add0~47\);

-- Location: LCCOMB_X12_Y13_N20
\inst|dut|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector9~0_combout\ = (\inst|dut|Add0~46_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~46_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector9~0_combout\);

-- Location: FF_X12_Y13_N21
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

-- Location: LCCOMB_X12_Y10_N16
\inst|dut|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~48_combout\ = (\inst|dut|clk_count\(24) & (\inst|dut|Add0~47\ $ (GND))) # (!\inst|dut|clk_count\(24) & (!\inst|dut|Add0~47\ & VCC))
-- \inst|dut|Add0~49\ = CARRY((\inst|dut|clk_count\(24) & !\inst|dut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(24),
	datad => VCC,
	cin => \inst|dut|Add0~47\,
	combout => \inst|dut|Add0~48_combout\,
	cout => \inst|dut|Add0~49\);

-- Location: LCCOMB_X12_Y13_N6
\inst|dut|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector8~0_combout\ = (\inst|dut|Add0~48_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~48_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector8~0_combout\);

-- Location: FF_X12_Y13_N7
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

-- Location: LCCOMB_X12_Y10_N18
\inst|dut|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~50_combout\ = (\inst|dut|clk_count\(25) & (!\inst|dut|Add0~49\)) # (!\inst|dut|clk_count\(25) & ((\inst|dut|Add0~49\) # (GND)))
-- \inst|dut|Add0~51\ = CARRY((!\inst|dut|Add0~49\) # (!\inst|dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(25),
	datad => VCC,
	cin => \inst|dut|Add0~49\,
	combout => \inst|dut|Add0~50_combout\,
	cout => \inst|dut|Add0~51\);

-- Location: LCCOMB_X12_Y13_N0
\inst|dut|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector7~0_combout\ = (\inst|dut|Add0~50_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|Add0~50_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector7~0_combout\);

-- Location: FF_X12_Y13_N1
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

-- Location: LCCOMB_X12_Y10_N20
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

-- Location: LCCOMB_X12_Y13_N2
\inst|dut|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector6~0_combout\ = (\inst|dut|Add0~52_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~52_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector6~0_combout\);

-- Location: FF_X12_Y13_N3
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

-- Location: LCCOMB_X12_Y10_N22
\inst|dut|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~54_combout\ = (\inst|dut|clk_count\(27) & (!\inst|dut|Add0~53\)) # (!\inst|dut|clk_count\(27) & ((\inst|dut|Add0~53\) # (GND)))
-- \inst|dut|Add0~55\ = CARRY((!\inst|dut|Add0~53\) # (!\inst|dut|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(27),
	datad => VCC,
	cin => \inst|dut|Add0~53\,
	combout => \inst|dut|Add0~54_combout\,
	cout => \inst|dut|Add0~55\);

-- Location: LCCOMB_X13_Y10_N4
\inst|dut|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector5~0_combout\ = (\inst|dut|Add0~54_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~54_combout\,
	datac => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector5~0_combout\);

-- Location: FF_X13_Y10_N5
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

-- Location: LCCOMB_X12_Y10_N24
\inst|dut|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~56_combout\ = (\inst|dut|clk_count\(28) & (\inst|dut|Add0~55\ $ (GND))) # (!\inst|dut|clk_count\(28) & (!\inst|dut|Add0~55\ & VCC))
-- \inst|dut|Add0~57\ = CARRY((\inst|dut|clk_count\(28) & !\inst|dut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(28),
	datad => VCC,
	cin => \inst|dut|Add0~55\,
	combout => \inst|dut|Add0~56_combout\,
	cout => \inst|dut|Add0~57\);

-- Location: LCCOMB_X11_Y12_N10
\inst|dut|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector4~0_combout\ = (\inst|dut|Add0~56_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~56_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector4~0_combout\);

-- Location: FF_X11_Y12_N11
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

-- Location: LCCOMB_X12_Y10_N26
\inst|dut|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~58_combout\ = (\inst|dut|clk_count\(29) & (!\inst|dut|Add0~57\)) # (!\inst|dut|clk_count\(29) & ((\inst|dut|Add0~57\) # (GND)))
-- \inst|dut|Add0~59\ = CARRY((!\inst|dut|Add0~57\) # (!\inst|dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(29),
	datad => VCC,
	cin => \inst|dut|Add0~57\,
	combout => \inst|dut|Add0~58_combout\,
	cout => \inst|dut|Add0~59\);

-- Location: LCCOMB_X11_Y12_N0
\inst|dut|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector3~0_combout\ = (\inst|dut|Add0~58_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~58_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector3~0_combout\);

-- Location: FF_X11_Y12_N1
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

-- Location: LCCOMB_X12_Y10_N28
\inst|dut|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~60_combout\ = (\inst|dut|clk_count\(30) & (\inst|dut|Add0~59\ $ (GND))) # (!\inst|dut|clk_count\(30) & (!\inst|dut|Add0~59\ & VCC))
-- \inst|dut|Add0~61\ = CARRY((\inst|dut|clk_count\(30) & !\inst|dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(30),
	datad => VCC,
	cin => \inst|dut|Add0~59\,
	combout => \inst|dut|Add0~60_combout\,
	cout => \inst|dut|Add0~61\);

-- Location: LCCOMB_X11_Y11_N28
\inst|dut|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector2~0_combout\ = (\inst|dut|Add0~60_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector2~0_combout\);

-- Location: FF_X11_Y11_N29
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

-- Location: LCCOMB_X12_Y10_N30
\inst|dut|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Add0~62_combout\ = \inst|dut|clk_count\(31) $ (\inst|dut|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(31),
	cin => \inst|dut|Add0~61\,
	combout => \inst|dut|Add0~62_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst|dut|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector1~0_combout\ = (\inst|dut|Add0~62_combout\ & \inst|dut|clk_count[13]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~62_combout\,
	datad => \inst|dut|clk_count[13]~4_combout\,
	combout => \inst|dut|Selector1~0_combout\);

-- Location: FF_X12_Y13_N25
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

-- Location: LCCOMB_X13_Y11_N12
\inst|dut|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~5_combout\ = (!\inst|dut|clk_count\(5) & (!\inst|dut|clk_count\(3) & (!\inst|dut|clk_count\(4) & !\inst|dut|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(5),
	datab => \inst|dut|clk_count\(3),
	datac => \inst|dut|clk_count\(4),
	datad => \inst|dut|clk_count\(2),
	combout => \inst|dut|LessThan9~5_combout\);

-- Location: LCCOMB_X10_Y11_N18
\inst|dut|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~6_combout\ = (((\inst|dut|LessThan9~5_combout\) # (!\inst|dut|clk_count\(7))) # (!\inst|dut|clk_count\(8))) # (!\inst|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(8),
	datac => \inst|dut|LessThan9~5_combout\,
	datad => \inst|dut|clk_count\(7),
	combout => \inst|dut|LessThan9~6_combout\);

-- Location: LCCOMB_X10_Y11_N4
\inst|dut|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~7_combout\ = ((!\inst|dut|clk_count\(10) & (\inst|dut|LessThan9~6_combout\ & !\inst|dut|clk_count\(9)))) # (!\inst|dut|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(10),
	datab => \inst|dut|LessThan9~6_combout\,
	datac => \inst|dut|clk_count\(9),
	datad => \inst|dut|clk_count\(11),
	combout => \inst|dut|LessThan9~7_combout\);

-- Location: LCCOMB_X11_Y10_N26
\inst|dut|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~2_combout\ = (!\inst|dut|clk_count\(17) & (!\inst|dut|clk_count\(13) & (!\inst|dut|clk_count\(19) & !\inst|dut|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(17),
	datab => \inst|dut|clk_count\(13),
	datac => \inst|dut|clk_count\(19),
	datad => \inst|dut|clk_count\(20),
	combout => \inst|dut|LessThan9~2_combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst|dut|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~3_combout\ = (!\inst|dut|clk_count\(12) & (\inst|dut|LessThan9~1_combout\ & (\inst|dut|LessThan0~0_combout\ & \inst|dut|LessThan9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(12),
	datab => \inst|dut|LessThan9~1_combout\,
	datac => \inst|dut|LessThan0~0_combout\,
	datad => \inst|dut|LessThan9~2_combout\,
	combout => \inst|dut|LessThan9~3_combout\);

-- Location: LCCOMB_X11_Y10_N10
\inst|dut|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~4_combout\ = (!\inst|dut|clk_count\(21) & (!\inst|dut|clk_count\(18) & \inst|dut|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(21),
	datac => \inst|dut|clk_count\(18),
	datad => \inst|dut|LessThan9~3_combout\,
	combout => \inst|dut|LessThan9~4_combout\);

-- Location: LCCOMB_X10_Y11_N16
\inst|dut|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector34~0_combout\ = (!\inst|dut|clk_count\(31) & (((!\inst|dut|LessThan9~4_combout\) # (!\inst|dut|LessThan9~8_combout\)) # (!\inst|dut|LessThan9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(31),
	datab => \inst|dut|LessThan9~7_combout\,
	datac => \inst|dut|LessThan9~8_combout\,
	datad => \inst|dut|LessThan9~4_combout\,
	combout => \inst|dut|Selector34~0_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst|dut|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector35~2_combout\ = (\inst|dut|Selector34~0_combout\ & (\inst|dut|state.ready~q\ & ((\inst|lcd_enable~q\)))) # (!\inst|dut|Selector34~0_combout\ & ((\inst|dut|state.send~q\) # ((\inst|dut|state.ready~q\ & \inst|lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector34~0_combout\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst|dut|state.send~q\,
	datad => \inst|lcd_enable~q\,
	combout => \inst|dut|Selector35~2_combout\);

-- Location: FF_X13_Y13_N9
\inst|dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|state.send~q\);

-- Location: LCCOMB_X10_Y11_N26
\inst|dut|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~9_combout\ = (\inst|dut|LessThan9~8_combout\ & (\inst|dut|LessThan9~7_combout\ & \inst|dut|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|LessThan9~8_combout\,
	datac => \inst|dut|LessThan9~7_combout\,
	datad => \inst|dut|LessThan9~4_combout\,
	combout => \inst|dut|LessThan9~9_combout\);

-- Location: LCCOMB_X10_Y11_N30
\inst|dut|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~3_combout\ = (!\inst|dut|clk_count\(6) & (!\inst|dut|clk_count\(8) & (!\inst|dut|clk_count\(9) & !\inst|dut|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(8),
	datac => \inst|dut|clk_count\(9),
	datad => \inst|dut|clk_count\(7),
	combout => \inst|dut|LessThan10~3_combout\);

-- Location: LCCOMB_X11_Y10_N22
\inst|dut|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan12~0_combout\ = (!\inst|dut|clk_count\(21) & (!\inst|dut|clk_count\(11) & (!\inst|dut|clk_count\(18) & \inst|dut|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(21),
	datab => \inst|dut|clk_count\(11),
	datac => \inst|dut|clk_count\(18),
	datad => \inst|dut|LessThan9~3_combout\,
	combout => \inst|dut|LessThan12~0_combout\);

-- Location: LCCOMB_X13_Y11_N22
\inst|dut|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~1_combout\ = (\inst|dut|clk_count\(4) & \inst|dut|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|clk_count\(4),
	datac => \inst|dut|clk_count\(5),
	combout => \inst|dut|LessThan10~1_combout\);

-- Location: LCCOMB_X13_Y11_N2
\inst|dut|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~2_combout\ = ((!\inst|dut|clk_count\(1) & (!\inst|dut|clk_count\(3) & !\inst|dut|clk_count\(2)))) # (!\inst|dut|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(1),
	datab => \inst|dut|clk_count\(3),
	datac => \inst|dut|LessThan10~1_combout\,
	datad => \inst|dut|clk_count\(2),
	combout => \inst|dut|LessThan10~2_combout\);

-- Location: LCCOMB_X10_Y11_N28
\inst|dut|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~4_combout\ = (\inst|dut|LessThan10~3_combout\ & (\inst|dut|LessThan12~0_combout\ & (\inst|dut|LessThan10~2_combout\ & !\inst|dut|clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan10~3_combout\,
	datab => \inst|dut|LessThan12~0_combout\,
	datac => \inst|dut|LessThan10~2_combout\,
	datad => \inst|dut|clk_count\(10),
	combout => \inst|dut|LessThan10~4_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst|dut|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan9~10_combout\ = (!\inst|dut|clk_count\(5) & (!\inst|dut|clk_count\(4) & !\inst|dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(5),
	datac => \inst|dut|clk_count\(4),
	datad => \inst|dut|clk_count\(3),
	combout => \inst|dut|LessThan9~10_combout\);

-- Location: LCCOMB_X13_Y11_N30
\inst|dut|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan12~1_combout\ = ((\inst|dut|LessThan9~10_combout\ & ((!\inst|dut|clk_count\(2)) # (!\inst|dut|clk_count\(1))))) # (!\inst|dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(1),
	datab => \inst|dut|clk_count\(6),
	datac => \inst|dut|LessThan9~10_combout\,
	datad => \inst|dut|clk_count\(2),
	combout => \inst|dut|LessThan12~1_combout\);

-- Location: LCCOMB_X10_Y11_N20
\inst|dut|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan12~2_combout\ = (!\inst|dut|clk_count\(9) & (((\inst|dut|LessThan12~1_combout\ & !\inst|dut|clk_count\(7))) # (!\inst|dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(9),
	datab => \inst|dut|LessThan12~1_combout\,
	datac => \inst|dut|clk_count\(8),
	datad => \inst|dut|clk_count\(7),
	combout => \inst|dut|LessThan12~2_combout\);

-- Location: LCCOMB_X10_Y11_N22
\inst|dut|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~11_combout\ = (!\inst|dut|LessThan10~4_combout\ & (((\inst|dut|clk_count\(10) & !\inst|dut|LessThan12~2_combout\)) # (!\inst|dut|LessThan12~0_combout\)))

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
	combout => \inst|dut|Selector46~11_combout\);

-- Location: LCCOMB_X10_Y11_N12
\inst|dut|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan10~0_combout\ = (!\inst|dut|clk_count\(10) & (!\inst|dut|clk_count\(11) & \inst|dut|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(10),
	datab => \inst|dut|clk_count\(11),
	datad => \inst|dut|LessThan9~4_combout\,
	combout => \inst|dut|LessThan10~0_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst|dut|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan11~0_combout\ = (!\inst|dut|clk_count\(6) & (((!\inst|dut|clk_count\(3)) # (!\inst|dut|LessThan10~1_combout\)) # (!\inst|dut|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|clk_count\(6),
	datab => \inst|dut|clk_count\(2),
	datac => \inst|dut|LessThan10~1_combout\,
	datad => \inst|dut|clk_count\(3),
	combout => \inst|dut|LessThan11~0_combout\);

-- Location: LCCOMB_X10_Y11_N24
\inst|dut|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan11~1_combout\ = ((!\inst|dut|clk_count\(8) & ((\inst|dut|LessThan11~0_combout\) # (!\inst|dut|clk_count\(7))))) # (!\inst|dut|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan11~0_combout\,
	datab => \inst|dut|clk_count\(8),
	datac => \inst|dut|clk_count\(9),
	datad => \inst|dut|clk_count\(7),
	combout => \inst|dut|LessThan11~1_combout\);

-- Location: LCCOMB_X10_Y11_N10
\inst|dut|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~10_combout\ = (\inst|dut|LessThan10~0_combout\ & (\inst|dut|LessThan11~1_combout\ & (\inst|dut|LessThan9~9_combout\ & !\inst|dut|LessThan10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan10~0_combout\,
	datab => \inst|dut|LessThan11~1_combout\,
	datac => \inst|dut|LessThan9~9_combout\,
	datad => \inst|dut|LessThan10~4_combout\,
	combout => \inst|dut|Selector46~10_combout\);

-- Location: LCCOMB_X10_Y11_N0
\inst|dut|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~12_combout\ = (\inst|dut|Selector46~10_combout\) # ((\inst|dut|e~q\ & ((\inst|dut|Selector46~11_combout\) # (!\inst|dut|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan9~9_combout\,
	datab => \inst|dut|e~q\,
	datac => \inst|dut|Selector46~11_combout\,
	datad => \inst|dut|Selector46~10_combout\,
	combout => \inst|dut|Selector46~12_combout\);

-- Location: LCCOMB_X13_Y9_N2
\inst|dut|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~7_combout\ = (!\inst|dut|state.send~q\ & \inst|dut|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|state.send~q\,
	datad => \inst|dut|state.initialize~q\,
	combout => \inst|dut|Selector46~7_combout\);

-- Location: LCCOMB_X12_Y9_N26
\inst|dut|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan2~3_combout\ = (\inst|dut|LessThan2~2_combout\ & (!\inst|dut|Add0~24_combout\ & (\inst|dut|LessThan3~6_combout\ & \inst|dut|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan2~2_combout\,
	datab => \inst|dut|Add0~24_combout\,
	datac => \inst|dut|LessThan3~6_combout\,
	datad => \inst|dut|LessThan3~3_combout\,
	combout => \inst|dut|LessThan2~3_combout\);

-- Location: LCCOMB_X12_Y9_N30
\inst|dut|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~8_combout\ = (\inst|dut|Selector46~7_combout\ & (!\inst|dut|LessThan2~3_combout\ & ((!\inst|dut|LessThan3~4_combout\) # (!\inst|dut|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector46~7_combout\,
	datab => \inst|dut|LessThan4~2_combout\,
	datac => \inst|dut|LessThan2~3_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|Selector46~8_combout\);

-- Location: LCCOMB_X11_Y11_N12
\inst|dut|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~6_combout\ = (!\inst|dut|Add0~60_combout\ & (\inst|dut|LessThan3~4_combout\ & ((\inst|dut|LessThan5~2_combout\) # (\inst|dut|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan5~2_combout\,
	datab => \inst|dut|LessThan5~1_combout\,
	datac => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|LessThan3~4_combout\,
	combout => \inst|dut|Selector46~6_combout\);

-- Location: LCCOMB_X12_Y9_N10
\inst|dut|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|LessThan3~11_combout\ = (\inst|dut|LessThan3~10_combout\ & (\inst|dut|LessThan3~3_combout\ & (!\inst|dut|Add0~24_combout\ & \inst|dut|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~10_combout\,
	datab => \inst|dut|LessThan3~3_combout\,
	datac => \inst|dut|Add0~24_combout\,
	datad => \inst|dut|LessThan3~6_combout\,
	combout => \inst|dut|LessThan3~11_combout\);

-- Location: LCCOMB_X12_Y9_N20
\inst|dut|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~3_combout\ = (\inst|dut|LessThan1~2_combout\) # ((!\inst|dut|LessThan2~3_combout\ & \inst|dut|LessThan3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|LessThan1~2_combout\,
	datac => \inst|dut|LessThan2~3_combout\,
	datad => \inst|dut|LessThan3~11_combout\,
	combout => \inst|dut|Selector46~3_combout\);

-- Location: LCCOMB_X12_Y9_N2
\inst|dut|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~4_combout\ = (\inst|dut|Add0~62_combout\) # ((!\inst|dut|Add0~60_combout\ & \inst|dut|Selector46~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|Add0~60_combout\,
	datac => \inst|dut|Add0~62_combout\,
	datad => \inst|dut|Selector46~3_combout\,
	combout => \inst|dut|Selector46~4_combout\);

-- Location: LCCOMB_X12_Y9_N8
\inst|dut|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~5_combout\ = (!\inst|dut|state.send~q\ & ((\inst|dut|state.initialize~q\ & ((\inst|dut|Selector46~4_combout\))) # (!\inst|dut|state.initialize~q\ & (\inst|dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|e~q\,
	datad => \inst|dut|Selector46~4_combout\,
	combout => \inst|dut|Selector46~5_combout\);

-- Location: LCCOMB_X12_Y9_N16
\inst|dut|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~0_combout\ = (\inst|dut|LessThan2~3_combout\) # ((\inst|dut|busy~5_combout\) # ((\inst|dut|LessThan3~4_combout\ & \inst|dut|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~4_combout\,
	datab => \inst|dut|LessThan4~2_combout\,
	datac => \inst|dut|LessThan2~3_combout\,
	datad => \inst|dut|busy~5_combout\,
	combout => \inst|dut|Selector46~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\inst|dut|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~1_combout\ = (!\inst|dut|state.send~q\ & (\inst|dut|state.initialize~q\ & ((\inst|dut|Add0~60_combout\) # (!\inst|dut|Selector46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|state.initialize~q\,
	datac => \inst|dut|Add0~60_combout\,
	datad => \inst|dut|Selector46~0_combout\,
	combout => \inst|dut|Selector46~1_combout\);

-- Location: LCCOMB_X12_Y9_N12
\inst|dut|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~2_combout\ = (\inst|dut|Selector46~1_combout\ & ((\inst|dut|LessThan7~2_combout\) # ((\inst|dut|e~q\ & !\inst|dut|LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|e~q\,
	datab => \inst|dut|LessThan7~2_combout\,
	datac => \inst|dut|Selector46~1_combout\,
	datad => \inst|dut|LessThan8~4_combout\,
	combout => \inst|dut|Selector46~2_combout\);

-- Location: LCCOMB_X12_Y9_N0
\inst|dut|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~9_combout\ = (\inst|dut|Selector46~5_combout\) # ((\inst|dut|Selector46~2_combout\) # ((\inst|dut|Selector46~8_combout\ & \inst|dut|Selector46~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Selector46~8_combout\,
	datab => \inst|dut|Selector46~6_combout\,
	datac => \inst|dut|Selector46~5_combout\,
	datad => \inst|dut|Selector46~2_combout\,
	combout => \inst|dut|Selector46~9_combout\);

-- Location: LCCOMB_X12_Y9_N24
\inst|dut|Selector46~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector46~13_combout\ = (\inst|dut|Selector46~9_combout\) # ((\inst|dut|state.send~q\ & (!\inst|dut|clk_count\(31) & \inst|dut|Selector46~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.send~q\,
	datab => \inst|dut|clk_count\(31),
	datac => \inst|dut|Selector46~12_combout\,
	datad => \inst|dut|Selector46~9_combout\,
	combout => \inst|dut|Selector46~13_combout\);

-- Location: FF_X12_Y9_N25
\inst|dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector46~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|e~q\);

-- Location: LCCOMB_X10_Y11_N8
\inst24|e~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|e~feeder_combout\ = \inst|dut|e~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|dut|e~q\,
	combout => \inst24|e~feeder_combout\);

-- Location: FF_X10_Y11_N9
\inst24|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|e~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|e~q\);

-- Location: LCCOMB_X14_Y8_N8
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

-- Location: LCCOMB_X19_Y7_N18
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|char\(2) & (\inst|char\(1) & (\inst|char\(0) & \inst|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|char\(3),
	combout => \inst|Mux20~0_combout\);

-- Location: LCCOMB_X19_Y7_N16
\inst|char[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|char[4]~feeder_combout\ = \inst|Mux20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux20~0_combout\,
	combout => \inst|char[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y7_N22
\inst|char[3]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|char[3]~_wirecell_combout\ = !\inst|char\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|char\(3),
	combout => \inst|char[3]~_wirecell_combout\);

-- Location: FF_X19_Y7_N17
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

-- Location: LCCOMB_X14_Y8_N12
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

-- Location: LCCOMB_X14_Y8_N14
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

-- Location: LCCOMB_X14_Y8_N16
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|char\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|char\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|char\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X14_Y8_N18
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

-- Location: LCCOMB_X14_Y8_N28
\inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (\inst|Add0~0_combout\ & (!\inst|Add0~10_combout\ & ((!\inst|Add0~8_combout\) # (!\inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Mux24~0_combout\);

-- Location: FF_X14_Y8_N29
\inst|char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux24~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(0));

-- Location: LCCOMB_X14_Y8_N10
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|char\(1) & (!\inst|Add0~1\)) # (!\inst|char\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X14_Y8_N2
\inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|Add0~2_combout\ & (!\inst|Add0~10_combout\ & ((!\inst|Add0~8_combout\) # (!\inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Mux23~0_combout\);

-- Location: FF_X14_Y8_N3
\inst|char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux23~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(1));

-- Location: LCCOMB_X14_Y8_N24
\inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|Add0~4_combout\ & (!\inst|Add0~10_combout\ & ((!\inst|Add0~8_combout\) # (!\inst|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Mux22~0_combout\);

-- Location: FF_X14_Y8_N25
\inst|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux22~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(2));

-- Location: LCCOMB_X17_Y7_N30
\inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = \inst|char\(3) $ (((\inst|char\(2) & (\inst|char\(1) & \inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|char\(3),
	combout => \inst|Mux21~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (!\inst|char\(3) & (\inst|char\(1) & (\inst|char\(0) & \inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y7_N10
\inst|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux21~1_combout\ = (\inst|char\(4) & ((\inst|Mux12~0_combout\))) # (!\inst|char\(4) & (\inst|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux21~0_combout\,
	datac => \inst|char\(4),
	datad => \inst|Mux12~0_combout\,
	combout => \inst|Mux21~1_combout\);

-- Location: FF_X17_Y7_N11
\inst|char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux21~1_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|char\(3));

-- Location: LCCOMB_X25_Y5_N6
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

-- Location: LCCOMB_X25_Y5_N2
\inst1|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~1_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|cont~1_combout\);

-- Location: FF_X25_Y5_N3
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

-- Location: LCCOMB_X25_Y5_N8
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

-- Location: FF_X25_Y5_N9
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

-- Location: LCCOMB_X25_Y5_N10
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

-- Location: FF_X25_Y5_N11
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

-- Location: LCCOMB_X25_Y5_N12
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

-- Location: FF_X25_Y5_N13
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

-- Location: LCCOMB_X25_Y5_N14
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

-- Location: FF_X25_Y5_N15
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

-- Location: LCCOMB_X25_Y5_N16
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

-- Location: FF_X25_Y5_N17
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

-- Location: LCCOMB_X25_Y5_N18
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

-- Location: FF_X25_Y5_N19
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

-- Location: LCCOMB_X25_Y5_N20
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

-- Location: LCCOMB_X25_Y5_N4
\inst1|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~0_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|cont~0_combout\);

-- Location: FF_X25_Y5_N5
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

-- Location: LCCOMB_X25_Y5_N22
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

-- Location: FF_X25_Y5_N23
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

-- Location: LCCOMB_X25_Y5_N24
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

-- Location: FF_X25_Y5_N25
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

-- Location: LCCOMB_X25_Y5_N26
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

-- Location: FF_X25_Y5_N27
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

-- Location: LCCOMB_X25_Y5_N28
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

-- Location: FF_X25_Y5_N29
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

-- Location: LCCOMB_X25_Y5_N30
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

-- Location: LCCOMB_X25_Y5_N0
\inst1|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~2_combout\ = (\inst1|Add0~24_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~24_combout\,
	datac => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~2_combout\);

-- Location: FF_X25_Y5_N1
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

-- Location: LCCOMB_X25_Y4_N0
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|cont\(13) & (!\inst1|Add0~25\)) # (!\inst1|cont\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCCOMB_X24_Y4_N6
\inst1|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~3_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~8_combout\,
	datac => \inst1|Add0~26_combout\,
	combout => \inst1|cont~3_combout\);

-- Location: FF_X24_Y4_N7
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

-- Location: LCCOMB_X25_Y4_N2
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

-- Location: LCCOMB_X24_Y4_N12
\inst1|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~4_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~28_combout\,
	combout => \inst1|cont~4_combout\);

-- Location: FF_X24_Y4_N13
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

-- Location: LCCOMB_X25_Y4_N4
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|cont\(15) & (!\inst1|Add0~29\)) # (!\inst1|cont\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCCOMB_X24_Y4_N26
\inst1|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~5_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~30_combout\,
	combout => \inst1|cont~5_combout\);

-- Location: FF_X24_Y4_N27
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

-- Location: LCCOMB_X25_Y4_N6
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

-- Location: FF_X25_Y4_N7
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

-- Location: LCCOMB_X25_Y4_N8
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

-- Location: LCCOMB_X25_Y4_N26
\inst1|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~6_combout\ = (\inst1|Add0~34_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~34_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~6_combout\);

-- Location: FF_X25_Y4_N27
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

-- Location: LCCOMB_X25_Y4_N10
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

-- Location: FF_X25_Y4_N11
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

-- Location: LCCOMB_X25_Y4_N12
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|cont\(19) & (!\inst1|Add0~37\)) # (!\inst1|cont\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X24_Y4_N16
\inst1|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~7_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~8_combout\,
	datac => \inst1|Add0~38_combout\,
	combout => \inst1|cont~7_combout\);

-- Location: FF_X24_Y4_N17
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

-- Location: LCCOMB_X24_Y4_N22
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (!\inst1|cont\(16) & (\inst1|cont\(19) & (!\inst1|cont\(18) & \inst1|cont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(16),
	datab => \inst1|cont\(19),
	datac => \inst1|cont\(18),
	datad => \inst1|cont\(17),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y4_N14
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|cont\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|cont\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|cont\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X25_Y4_N28
\inst1|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~8_combout\ = (\inst1|Add0~40_combout\ & !\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~40_combout\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|cont~8_combout\);

-- Location: FF_X25_Y4_N29
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

-- Location: LCCOMB_X25_Y4_N16
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|cont\(21) & (!\inst1|Add0~41\)) # (!\inst1|cont\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X24_Y4_N0
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

-- Location: FF_X24_Y4_N1
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

-- Location: LCCOMB_X25_Y4_N18
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

-- Location: LCCOMB_X25_Y4_N30
\inst1|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~10_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~44_combout\,
	combout => \inst1|cont~10_combout\);

-- Location: FF_X25_Y4_N31
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

-- Location: LCCOMB_X25_Y4_N20
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|cont\(23) & (!\inst1|Add0~45\)) # (!\inst1|cont\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: LCCOMB_X24_Y4_N14
\inst1|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~11_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~8_combout\,
	datac => \inst1|Add0~46_combout\,
	combout => \inst1|cont~11_combout\);

-- Location: FF_X24_Y4_N15
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

-- Location: LCCOMB_X24_Y4_N28
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (\inst1|cont\(22) & (\inst1|cont\(21) & (\inst1|cont\(23) & \inst1|cont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(22),
	datab => \inst1|cont\(21),
	datac => \inst1|cont\(23),
	datad => \inst1|cont\(20),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y4_N22
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

-- Location: FF_X25_Y4_N23
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

-- Location: LCCOMB_X25_Y4_N24
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = \inst1|Add0~49\ $ (\inst1|cont\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cont\(25),
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\);

-- Location: LCCOMB_X24_Y4_N2
\inst1|cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cont~12_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~50_combout\,
	combout => \inst1|cont~12_combout\);

-- Location: FF_X24_Y4_N3
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

-- Location: LCCOMB_X24_Y4_N4
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (\inst1|cont\(25) & !\inst1|cont\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cont\(25),
	datad => \inst1|cont\(24),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y5_N30
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cont\(0) & (!\inst1|cont\(3) & (!\inst1|cont\(1) & !\inst1|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(0),
	datab => \inst1|cont\(3),
	datac => \inst1|cont\(1),
	datad => \inst1|cont\(2),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y4_N20
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|cont\(8) & (!\inst1|cont\(10) & (!\inst1|cont\(9) & !\inst1|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(8),
	datab => \inst1|cont\(10),
	datac => \inst1|cont\(9),
	datad => \inst1|cont\(11),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y4_N8
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (\inst1|cont\(13) & (\inst1|cont\(12) & (\inst1|cont\(15) & \inst1|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(13),
	datab => \inst1|cont\(12),
	datac => \inst1|cont\(15),
	datad => \inst1|cont\(14),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y5_N8
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|cont\(7) & (!\inst1|cont\(5) & (!\inst1|cont\(4) & !\inst1|cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cont\(7),
	datab => \inst1|cont\(5),
	datac => \inst1|cont\(4),
	datad => \inst1|cont\(6),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|Equal0~2_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal0~2_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (\inst1|Equal0~5_combout\ & (\inst1|Equal0~6_combout\ & (\inst1|Equal0~7_combout\ & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~5_combout\,
	datab => \inst1|Equal0~6_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst1|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|aux~0_combout\ = \inst1|aux~q\ $ (\inst1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|aux~q\,
	datad => \inst1|Equal0~8_combout\,
	combout => \inst1|aux~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\inst1|aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|aux~feeder_combout\ = \inst1|aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|aux~0_combout\,
	combout => \inst1|aux~feeder_combout\);

-- Location: FF_X22_Y4_N11
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

-- Location: LCCOMB_X19_Y10_N18
\inst8|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|flipflops[0]~feeder_combout\ = \button1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button1~input_o\,
	combout => \inst8|flipflops[0]~feeder_combout\);

-- Location: FF_X19_Y10_N19
\inst8|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|flipflops\(0));

-- Location: LCCOMB_X19_Y10_N14
\inst8|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|flipflops[1]~feeder_combout\ = \inst8|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|flipflops\(0),
	combout => \inst8|flipflops[1]~feeder_combout\);

-- Location: FF_X19_Y10_N15
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

-- Location: LCCOMB_X16_Y10_N14
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

-- Location: LCCOMB_X19_Y10_N24
\inst8|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter_set~combout\ = \inst8|flipflops\(1) $ (\inst8|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|flipflops\(1),
	datac => \inst8|flipflops\(0),
	combout => \inst8|counter_set~combout\);

-- Location: FF_X16_Y10_N15
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

-- Location: LCCOMB_X16_Y10_N16
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

-- Location: FF_X16_Y10_N17
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

-- Location: LCCOMB_X16_Y10_N18
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

-- Location: FF_X16_Y10_N19
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

-- Location: LCCOMB_X16_Y10_N20
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

-- Location: FF_X16_Y10_N21
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

-- Location: LCCOMB_X16_Y10_N22
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

-- Location: FF_X16_Y10_N23
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

-- Location: LCCOMB_X16_Y10_N24
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

-- Location: FF_X16_Y10_N25
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

-- Location: LCCOMB_X16_Y10_N26
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

-- Location: FF_X16_Y10_N27
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

-- Location: LCCOMB_X16_Y10_N28
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

-- Location: FF_X16_Y10_N29
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

-- Location: LCCOMB_X16_Y10_N30
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

-- Location: FF_X16_Y10_N31
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

-- Location: LCCOMB_X16_Y10_N12
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

-- Location: LCCOMB_X16_Y9_N0
\inst8|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[9]~37_combout\ = (\inst8|count\(9) & (!\inst8|count[8]~36\)) # (!\inst8|count\(9) & ((\inst8|count[8]~36\) # (GND)))
-- \inst8|count[9]~38\ = CARRY((!\inst8|count[8]~36\) # (!\inst8|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|count\(9),
	datad => VCC,
	cin => \inst8|count[8]~36\,
	combout => \inst8|count[9]~37_combout\,
	cout => \inst8|count[9]~38\);

-- Location: FF_X16_Y9_N1
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

-- Location: LCCOMB_X16_Y9_N2
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

-- Location: FF_X16_Y9_N3
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

-- Location: LCCOMB_X16_Y9_N4
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

-- Location: FF_X16_Y9_N5
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

-- Location: LCCOMB_X16_Y9_N6
\inst8|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count[12]~43_combout\ = (\inst8|count\(12) & (\inst8|count[11]~42\ $ (GND))) # (!\inst8|count\(12) & (!\inst8|count[11]~42\ & VCC))
-- \inst8|count[12]~44\ = CARRY((\inst8|count\(12) & !\inst8|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(12),
	datad => VCC,
	cin => \inst8|count[11]~42\,
	combout => \inst8|count[12]~43_combout\,
	cout => \inst8|count[12]~44\);

-- Location: FF_X16_Y9_N7
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

-- Location: LCCOMB_X16_Y9_N8
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

-- Location: FF_X16_Y9_N9
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

-- Location: LCCOMB_X16_Y9_N10
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

-- Location: FF_X16_Y9_N11
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

-- Location: LCCOMB_X16_Y9_N24
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

-- Location: LCCOMB_X16_Y10_N10
\inst8|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~2_combout\ = (!\inst8|count\(14) & (((\inst8|result~0_combout\ & \inst8|result~1_combout\)) # (!\inst8|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result~0_combout\,
	datab => \inst8|count\(14),
	datac => \inst8|count\(13),
	datad => \inst8|result~1_combout\,
	combout => \inst8|result~2_combout\);

-- Location: LCCOMB_X16_Y9_N12
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

-- Location: FF_X16_Y9_N13
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

-- Location: LCCOMB_X16_Y9_N14
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

-- Location: FF_X16_Y9_N15
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

-- Location: LCCOMB_X16_Y9_N16
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

-- Location: FF_X16_Y9_N17
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

-- Location: LCCOMB_X16_Y9_N18
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

-- Location: FF_X16_Y9_N19
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

-- Location: LCCOMB_X19_Y10_N8
\inst8|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~3_combout\ = ((\inst8|flipflops\(0) $ (\inst8|flipflops\(1))) # (!\inst8|count\(16))) # (!\inst8|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|flipflops\(0),
	datab => \inst8|flipflops\(1),
	datac => \inst8|count\(15),
	datad => \inst8|count\(16),
	combout => \inst8|result~3_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst8|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~4_combout\ = (\inst8|result~2_combout\) # (((\inst8|result~3_combout\) # (!\inst8|count\(17))) # (!\inst8|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result~2_combout\,
	datab => \inst8|count\(18),
	datac => \inst8|count\(17),
	datad => \inst8|result~3_combout\,
	combout => \inst8|result~4_combout\);

-- Location: LCCOMB_X19_Y10_N10
\inst8|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~5_combout\ = (\inst8|result~4_combout\ & (\inst8|result~q\)) # (!\inst8|result~4_combout\ & ((\inst8|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|result~q\,
	datac => \inst8|flipflops\(1),
	datad => \inst8|result~4_combout\,
	combout => \inst8|result~5_combout\);

-- Location: LCCOMB_X19_Y10_N12
\inst8|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|result~feeder_combout\ = \inst8|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|result~5_combout\,
	combout => \inst8|result~feeder_combout\);

-- Location: FF_X19_Y10_N13
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

-- Location: LCCOMB_X6_Y5_N6
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

-- Location: LCCOMB_X6_Y5_N2
\inst2|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~1_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|cont~1_combout\);

-- Location: FF_X6_Y5_N3
\inst2|cont[0]\ : dffeas
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
	q => \inst2|cont\(0));

-- Location: LCCOMB_X6_Y5_N8
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

-- Location: FF_X6_Y5_N9
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

-- Location: LCCOMB_X6_Y5_N10
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

-- Location: FF_X6_Y5_N11
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

-- Location: LCCOMB_X6_Y5_N12
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

-- Location: FF_X6_Y5_N13
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

-- Location: LCCOMB_X6_Y5_N14
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

-- Location: FF_X6_Y5_N15
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

-- Location: LCCOMB_X6_Y5_N16
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

-- Location: FF_X6_Y5_N17
\inst2|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(5));

-- Location: LCCOMB_X6_Y5_N18
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

-- Location: LCCOMB_X6_Y5_N4
\inst2|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~0_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|cont~0_combout\);

-- Location: FF_X6_Y5_N5
\inst2|cont[6]\ : dffeas
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
	q => \inst2|cont\(6));

-- Location: LCCOMB_X6_Y5_N20
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

-- Location: FF_X6_Y5_N21
\inst2|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(7));

-- Location: LCCOMB_X6_Y5_N22
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|cont\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|cont\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|cont\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: FF_X6_Y5_N23
\inst2|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(8));

-- Location: LCCOMB_X6_Y5_N24
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

-- Location: FF_X6_Y5_N25
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

-- Location: LCCOMB_X6_Y5_N26
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|cont\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|cont\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|cont\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X6_Y5_N27
\inst2|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(10));

-- Location: LCCOMB_X6_Y5_N28
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|cont\(11) & (!\inst2|Add0~21\)) # (!\inst2|cont\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X5_Y4_N0
\inst2|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~2_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|cont~2_combout\);

-- Location: FF_X5_Y4_N1
\inst2|cont[11]\ : dffeas
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
	q => \inst2|cont\(11));

-- Location: LCCOMB_X6_Y5_N30
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|cont\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|cont\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|cont\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X6_Y5_N0
\inst2|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~3_combout\ = (\inst2|Add0~24_combout\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datac => \inst2|Equal0~8_combout\,
	combout => \inst2|cont~3_combout\);

-- Location: FF_X6_Y5_N1
\inst2|cont[12]\ : dffeas
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
	q => \inst2|cont\(12));

-- Location: LCCOMB_X6_Y4_N0
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

-- Location: LCCOMB_X5_Y4_N8
\inst2|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~4_combout\ = (\inst2|Add0~26_combout\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|cont~4_combout\);

-- Location: FF_X5_Y4_N9
\inst2|cont[13]\ : dffeas
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
	q => \inst2|cont\(13));

-- Location: LCCOMB_X6_Y4_N2
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

-- Location: LCCOMB_X5_Y4_N22
\inst2|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~5_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|cont~5_combout\);

-- Location: FF_X5_Y4_N23
\inst2|cont[14]\ : dffeas
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
	q => \inst2|cont\(14));

-- Location: LCCOMB_X6_Y4_N4
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

-- Location: FF_X6_Y4_N5
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

-- Location: LCCOMB_X6_Y4_N6
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

-- Location: LCCOMB_X5_Y4_N16
\inst2|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~6_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|cont~6_combout\);

-- Location: FF_X5_Y4_N17
\inst2|cont[16]\ : dffeas
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
	q => \inst2|cont\(16));

-- Location: LCCOMB_X6_Y4_N8
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|cont\(17) & (!\inst2|Add0~33\)) # (!\inst2|cont\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: FF_X6_Y4_N9
\inst2|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(17));

-- Location: LCCOMB_X6_Y4_N10
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|cont\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|cont\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|cont\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X6_Y4_N26
\inst2|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~7_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~36_combout\,
	combout => \inst2|cont~7_combout\);

-- Location: FF_X6_Y4_N27
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

-- Location: LCCOMB_X6_Y4_N12
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

-- Location: LCCOMB_X5_Y4_N14
\inst2|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~8_combout\ = (\inst2|Add0~38_combout\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~38_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|cont~8_combout\);

-- Location: FF_X5_Y4_N15
\inst2|cont[19]\ : dffeas
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
	q => \inst2|cont\(19));

-- Location: LCCOMB_X6_Y4_N14
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

-- Location: LCCOMB_X6_Y4_N28
\inst2|cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~9_combout\ = (\inst2|Add0~40_combout\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~40_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|cont~9_combout\);

-- Location: FF_X6_Y4_N29
\inst2|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(20));

-- Location: LCCOMB_X6_Y4_N16
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

-- Location: LCCOMB_X6_Y4_N30
\inst2|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~10_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|cont~10_combout\);

-- Location: FF_X6_Y4_N31
\inst2|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(21));

-- Location: LCCOMB_X6_Y4_N18
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|cont\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|cont\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|cont\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X5_Y4_N2
\inst2|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~11_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~44_combout\,
	combout => \inst2|cont~11_combout\);

-- Location: FF_X5_Y4_N3
\inst2|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(22));

-- Location: LCCOMB_X6_Y4_N20
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|cont\(23) & (!\inst2|Add0~45\)) # (!\inst2|cont\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cont\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: FF_X6_Y4_N21
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

-- Location: LCCOMB_X5_Y4_N12
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|cont\(23) & (\inst2|cont\(22) & (\inst2|cont\(21) & \inst2|cont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(23),
	datab => \inst2|cont\(22),
	datac => \inst2|cont\(21),
	datad => \inst2|cont\(20),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X5_Y4_N28
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|cont\(16) & (\inst2|cont\(19) & (!\inst2|cont\(17) & \inst2|cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(16),
	datab => \inst2|cont\(19),
	datac => \inst2|cont\(17),
	datad => \inst2|cont\(18),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y4_N22
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

-- Location: LCCOMB_X5_Y4_N26
\inst2|cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~12_combout\ = (!\inst2|Equal0~8_combout\ & \inst2|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~8_combout\,
	datad => \inst2|Add0~48_combout\,
	combout => \inst2|cont~12_combout\);

-- Location: FF_X5_Y4_N27
\inst2|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|cont~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(24));

-- Location: LCCOMB_X6_Y4_N24
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

-- Location: FF_X6_Y4_N25
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

-- Location: LCCOMB_X5_Y4_N4
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (\inst2|cont\(24) & !\inst2|cont\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cont\(24),
	datad => \inst2|cont\(25),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X5_Y4_N6
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|cont\(2) & (!\inst2|cont\(1) & (!\inst2|cont\(3) & !\inst2|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(2),
	datab => \inst2|cont\(1),
	datac => \inst2|cont\(3),
	datad => \inst2|cont\(0),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y4_N20
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|cont\(15) & (\inst2|cont\(13) & (\inst2|cont\(14) & \inst2|cont\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(15),
	datab => \inst2|cont\(13),
	datac => \inst2|cont\(14),
	datad => \inst2|cont\(12),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y4_N30
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|cont\(10) & (\inst2|cont\(11) & (!\inst2|cont\(9) & !\inst2|cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(10),
	datab => \inst2|cont\(11),
	datac => \inst2|cont\(9),
	datad => \inst2|cont\(8),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y4_N24
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|cont\(6) & (!\inst2|cont\(5) & (!\inst2|cont\(4) & !\inst2|cont\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(6),
	datab => \inst2|cont\(5),
	datac => \inst2|cont\(4),
	datad => \inst2|cont\(7),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y4_N10
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y4_N18
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (\inst2|Equal0~6_combout\ & (\inst2|Equal0~5_combout\ & (\inst2|Equal0~7_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~6_combout\,
	datab => \inst2|Equal0~5_combout\,
	datac => \inst2|Equal0~7_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X4_Y7_N18
\inst2|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~0_combout\ = \inst2|aux~q\ $ (\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|aux~q\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|aux~0_combout\);

-- Location: LCCOMB_X4_Y7_N4
\inst2|aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~feeder_combout\ = \inst2|aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux~0_combout\,
	combout => \inst2|aux~feeder_combout\);

-- Location: FF_X4_Y7_N5
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

-- Location: CLKCTRL_G3
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

-- Location: FF_X24_Y12_N31
\inst9|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \button2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|flipflops\(0));

-- Location: LCCOMB_X24_Y12_N24
\inst9|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|flipflops[1]~feeder_combout\ = \inst9|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|flipflops\(0),
	combout => \inst9|flipflops[1]~feeder_combout\);

-- Location: FF_X24_Y12_N25
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

-- Location: LCCOMB_X23_Y13_N14
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

-- Location: LCCOMB_X24_Y12_N22
\inst9|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter_set~combout\ = \inst9|flipflops\(0) $ (\inst9|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|flipflops\(0),
	datad => \inst9|flipflops\(1),
	combout => \inst9|counter_set~combout\);

-- Location: FF_X23_Y13_N15
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

-- Location: LCCOMB_X23_Y13_N16
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

-- Location: FF_X23_Y13_N17
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

-- Location: LCCOMB_X23_Y13_N18
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

-- Location: FF_X23_Y13_N19
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

-- Location: LCCOMB_X23_Y13_N20
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

-- Location: FF_X23_Y13_N21
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

-- Location: LCCOMB_X23_Y13_N22
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

-- Location: FF_X23_Y13_N23
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

-- Location: LCCOMB_X23_Y13_N24
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

-- Location: FF_X23_Y13_N25
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

-- Location: LCCOMB_X23_Y13_N26
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

-- Location: FF_X23_Y13_N27
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

-- Location: LCCOMB_X23_Y13_N28
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

-- Location: FF_X23_Y13_N29
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

-- Location: LCCOMB_X23_Y13_N30
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

-- Location: FF_X23_Y13_N31
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

-- Location: LCCOMB_X23_Y12_N0
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

-- Location: FF_X23_Y12_N1
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

-- Location: LCCOMB_X23_Y12_N2
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

-- Location: FF_X23_Y12_N3
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

-- Location: LCCOMB_X23_Y12_N4
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

-- Location: FF_X23_Y12_N5
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

-- Location: LCCOMB_X23_Y12_N6
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

-- Location: FF_X23_Y12_N7
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

-- Location: LCCOMB_X23_Y12_N8
\inst9|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[13]~45_combout\ = (\inst9|count\(13) & (!\inst9|count[12]~44\)) # (!\inst9|count\(13) & ((\inst9|count[12]~44\) # (GND)))
-- \inst9|count[13]~46\ = CARRY((!\inst9|count[12]~44\) # (!\inst9|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(13),
	datad => VCC,
	cin => \inst9|count[12]~44\,
	combout => \inst9|count[13]~45_combout\,
	cout => \inst9|count[13]~46\);

-- Location: LCCOMB_X23_Y13_N8
\inst9|count[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count[13]~feeder_combout\ = \inst9|count[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|count[13]~45_combout\,
	combout => \inst9|count[13]~feeder_combout\);

-- Location: FF_X23_Y13_N9
\inst9|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst9|count[13]~feeder_combout\,
	sclr => \inst9|counter_set~combout\,
	ena => \inst9|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(13));

-- Location: LCCOMB_X23_Y12_N10
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

-- Location: FF_X23_Y12_N11
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

-- Location: LCCOMB_X23_Y12_N12
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

-- Location: FF_X23_Y12_N13
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

-- Location: LCCOMB_X23_Y12_N14
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

-- Location: FF_X23_Y12_N15
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

-- Location: LCCOMB_X23_Y12_N16
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

-- Location: FF_X23_Y12_N17
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

-- Location: LCCOMB_X23_Y12_N18
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

-- Location: FF_X23_Y12_N19
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

-- Location: LCCOMB_X24_Y12_N0
\inst9|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~3_combout\ = ((\inst9|flipflops\(1) $ (\inst9|flipflops\(0))) # (!\inst9|count\(16))) # (!\inst9|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(15),
	datab => \inst9|flipflops\(1),
	datac => \inst9|flipflops\(0),
	datad => \inst9|count\(16),
	combout => \inst9|result~3_combout\);

-- Location: LCCOMB_X23_Y13_N10
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

-- Location: LCCOMB_X23_Y12_N30
\inst9|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~1_combout\ = (!\inst9|count\(12) & (!\inst9|count\(10) & (!\inst9|count\(11) & !\inst9|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(12),
	datab => \inst9|count\(10),
	datac => \inst9|count\(11),
	datad => \inst9|count\(9),
	combout => \inst9|result~1_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst9|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~2_combout\ = (!\inst9|count\(14) & (((\inst9|result~0_combout\ & \inst9|result~1_combout\)) # (!\inst9|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~0_combout\,
	datab => \inst9|count\(13),
	datac => \inst9|count\(14),
	datad => \inst9|result~1_combout\,
	combout => \inst9|result~2_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst9|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~4_combout\ = (((\inst9|result~3_combout\) # (\inst9|result~2_combout\)) # (!\inst9|count\(18))) # (!\inst9|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(17),
	datab => \inst9|count\(18),
	datac => \inst9|result~3_combout\,
	datad => \inst9|result~2_combout\,
	combout => \inst9|result~4_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst9|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~5_combout\ = (\inst9|result~4_combout\ & ((\inst9|result~q\))) # (!\inst9|result~4_combout\ & (\inst9|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|flipflops\(1),
	datac => \inst9|result~q\,
	datad => \inst9|result~4_combout\,
	combout => \inst9|result~5_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst9|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|result~feeder_combout\ = \inst9|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|result~5_combout\,
	combout => \inst9|result~feeder_combout\);

-- Location: FF_X23_Y12_N29
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

-- Location: LCCOMB_X22_Y12_N0
\inst5|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~0_combout\ = (\inst4|aux\(1)) # ((\inst4|aux\(0)) # (\inst9|result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datac => \inst4|aux\(0),
	datad => \inst9|result~q\,
	combout => \inst5|process_0~0_combout\);

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

-- Location: LCCOMB_X29_Y12_N30
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

-- Location: FF_X29_Y12_N31
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

-- Location: LCCOMB_X29_Y12_N24
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

-- Location: FF_X29_Y12_N25
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

-- Location: LCCOMB_X30_Y12_N14
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

-- Location: LCCOMB_X29_Y12_N26
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

-- Location: FF_X30_Y12_N15
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

-- Location: LCCOMB_X30_Y12_N16
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

-- Location: FF_X30_Y12_N17
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

-- Location: LCCOMB_X30_Y12_N18
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

-- Location: FF_X30_Y12_N19
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

-- Location: LCCOMB_X30_Y12_N20
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

-- Location: FF_X30_Y12_N21
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

-- Location: LCCOMB_X30_Y12_N22
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

-- Location: FF_X30_Y12_N23
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

-- Location: LCCOMB_X30_Y12_N24
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

-- Location: FF_X30_Y12_N25
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

-- Location: LCCOMB_X30_Y12_N26
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

-- Location: FF_X30_Y12_N27
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

-- Location: LCCOMB_X30_Y12_N28
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

-- Location: FF_X30_Y12_N29
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

-- Location: LCCOMB_X30_Y12_N30
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

-- Location: FF_X30_Y12_N31
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

-- Location: LCCOMB_X30_Y11_N0
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

-- Location: FF_X30_Y11_N1
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

-- Location: LCCOMB_X30_Y11_N2
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

-- Location: FF_X30_Y11_N3
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

-- Location: LCCOMB_X30_Y11_N4
\inst11|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[11]~41_combout\ = (\inst11|count\(11) & (!\inst11|count[10]~40\)) # (!\inst11|count\(11) & ((\inst11|count[10]~40\) # (GND)))
-- \inst11|count[11]~42\ = CARRY((!\inst11|count[10]~40\) # (!\inst11|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(11),
	datad => VCC,
	cin => \inst11|count[10]~40\,
	combout => \inst11|count[11]~41_combout\,
	cout => \inst11|count[11]~42\);

-- Location: FF_X30_Y11_N5
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

-- Location: LCCOMB_X30_Y11_N6
\inst11|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[12]~43_combout\ = (\inst11|count\(12) & (\inst11|count[11]~42\ $ (GND))) # (!\inst11|count\(12) & (!\inst11|count[11]~42\ & VCC))
-- \inst11|count[12]~44\ = CARRY((\inst11|count\(12) & !\inst11|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(12),
	datad => VCC,
	cin => \inst11|count[11]~42\,
	combout => \inst11|count[12]~43_combout\,
	cout => \inst11|count[12]~44\);

-- Location: FF_X30_Y11_N7
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

-- Location: LCCOMB_X30_Y11_N8
\inst11|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|count[13]~45_combout\ = (\inst11|count\(13) & (!\inst11|count[12]~44\)) # (!\inst11|count\(13) & ((\inst11|count[12]~44\) # (GND)))
-- \inst11|count[13]~46\ = CARRY((!\inst11|count[12]~44\) # (!\inst11|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|count\(13),
	datad => VCC,
	cin => \inst11|count[12]~44\,
	combout => \inst11|count[13]~45_combout\,
	cout => \inst11|count[13]~46\);

-- Location: FF_X30_Y11_N9
\inst11|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|count[13]~45_combout\,
	sclr => \inst11|counter_set~combout\,
	ena => \inst11|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|count\(13));

-- Location: LCCOMB_X30_Y11_N10
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

-- Location: FF_X30_Y11_N11
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

-- Location: LCCOMB_X30_Y11_N12
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

-- Location: FF_X30_Y11_N13
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

-- Location: LCCOMB_X30_Y11_N14
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

-- Location: FF_X30_Y11_N15
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

-- Location: LCCOMB_X30_Y11_N16
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

-- Location: FF_X30_Y11_N17
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

-- Location: LCCOMB_X30_Y11_N18
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

-- Location: FF_X30_Y11_N19
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

-- Location: LCCOMB_X29_Y12_N16
\inst11|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~3_combout\ = ((\inst11|flipflops\(0) $ (\inst11|flipflops\(1))) # (!\inst11|count\(15))) # (!\inst11|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|flipflops\(0),
	datab => \inst11|flipflops\(1),
	datac => \inst11|count\(16),
	datad => \inst11|count\(15),
	combout => \inst11|result~3_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst11|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~0_combout\ = ((!\inst11|count\(7) & (!\inst11|count\(6) & !\inst11|count\(5)))) # (!\inst11|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(8),
	datab => \inst11|count\(7),
	datac => \inst11|count\(6),
	datad => \inst11|count\(5),
	combout => \inst11|result~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\inst11|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~1_combout\ = (!\inst11|count\(12) & (!\inst11|count\(9) & (!\inst11|count\(11) & !\inst11|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(12),
	datab => \inst11|count\(9),
	datac => \inst11|count\(11),
	datad => \inst11|count\(10),
	combout => \inst11|result~1_combout\);

-- Location: LCCOMB_X30_Y12_N6
\inst11|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~2_combout\ = (!\inst11|count\(14) & (((\inst11|result~0_combout\ & \inst11|result~1_combout\)) # (!\inst11|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(13),
	datab => \inst11|result~0_combout\,
	datac => \inst11|count\(14),
	datad => \inst11|result~1_combout\,
	combout => \inst11|result~2_combout\);

-- Location: LCCOMB_X30_Y12_N8
\inst11|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~4_combout\ = (((\inst11|result~3_combout\) # (\inst11|result~2_combout\)) # (!\inst11|count\(18))) # (!\inst11|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|count\(17),
	datab => \inst11|count\(18),
	datac => \inst11|result~3_combout\,
	datad => \inst11|result~2_combout\,
	combout => \inst11|result~4_combout\);

-- Location: LCCOMB_X30_Y12_N12
\inst11|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|result~5_combout\ = (\inst11|result~4_combout\ & ((\inst11|result~q\))) # (!\inst11|result~4_combout\ & (\inst11|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|flipflops\(1),
	datac => \inst11|result~q\,
	datad => \inst11|result~4_combout\,
	combout => \inst11|result~5_combout\);

-- Location: LCCOMB_X30_Y12_N10
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

-- Location: FF_X30_Y12_N11
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

-- Location: CLKCTRL_G6
\inst11|result~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|result~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\inst5|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y12_N22
\inst5|hl[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[0]~1_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemHL\(0))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|hl[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(0),
	datac => \inst5|hl[0]~1_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|hl[0]~1_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst5|hl[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[0]~3_combout\ = \inst5|hl[0]~2_combout\ $ (!\inst5|hl[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|hl[0]~2_combout\,
	datac => \inst5|hl[0]~1_combout\,
	combout => \inst5|hl[0]~3_combout\);

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

-- Location: LCCOMB_X32_Y7_N24
\inst10|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|flipflops[0]~feeder_combout\ = \button3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button3~input_o\,
	combout => \inst10|flipflops[0]~feeder_combout\);

-- Location: FF_X32_Y7_N25
\inst10|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|flipflops\(0));

-- Location: LCCOMB_X33_Y7_N4
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

-- Location: FF_X33_Y7_N5
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

-- Location: LCCOMB_X33_Y7_N14
\inst10|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[0]~19_combout\ = \inst10|count\(0) $ (VCC)
-- \inst10|count[0]~20\ = CARRY(\inst10|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(0),
	datad => VCC,
	combout => \inst10|count[0]~19_combout\,
	cout => \inst10|count[0]~20\);

-- Location: LCCOMB_X33_Y7_N2
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

-- Location: FF_X33_Y7_N15
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

-- Location: LCCOMB_X33_Y7_N16
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

-- Location: FF_X33_Y7_N17
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

-- Location: LCCOMB_X33_Y7_N18
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

-- Location: FF_X33_Y7_N19
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

-- Location: LCCOMB_X33_Y7_N20
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

-- Location: FF_X33_Y7_N21
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

-- Location: LCCOMB_X33_Y7_N22
\inst10|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[4]~27_combout\ = (\inst10|count\(4) & (\inst10|count[3]~26\ $ (GND))) # (!\inst10|count\(4) & (!\inst10|count[3]~26\ & VCC))
-- \inst10|count[4]~28\ = CARRY((\inst10|count\(4) & !\inst10|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(4),
	datad => VCC,
	cin => \inst10|count[3]~26\,
	combout => \inst10|count[4]~27_combout\,
	cout => \inst10|count[4]~28\);

-- Location: FF_X33_Y7_N23
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

-- Location: LCCOMB_X33_Y7_N24
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

-- Location: FF_X33_Y7_N25
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

-- Location: LCCOMB_X33_Y7_N26
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

-- Location: FF_X33_Y7_N27
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

-- Location: LCCOMB_X33_Y7_N28
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

-- Location: FF_X33_Y7_N29
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

-- Location: LCCOMB_X33_Y7_N30
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

-- Location: FF_X33_Y7_N31
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

-- Location: LCCOMB_X33_Y6_N0
\inst10|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[9]~37_combout\ = (\inst10|count\(9) & (!\inst10|count[8]~36\)) # (!\inst10|count\(9) & ((\inst10|count[8]~36\) # (GND)))
-- \inst10|count[9]~38\ = CARRY((!\inst10|count[8]~36\) # (!\inst10|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(9),
	datad => VCC,
	cin => \inst10|count[8]~36\,
	combout => \inst10|count[9]~37_combout\,
	cout => \inst10|count[9]~38\);

-- Location: FF_X33_Y6_N1
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

-- Location: LCCOMB_X33_Y6_N2
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

-- Location: FF_X33_Y6_N3
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

-- Location: LCCOMB_X33_Y6_N4
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

-- Location: FF_X33_Y6_N5
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

-- Location: LCCOMB_X33_Y6_N6
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

-- Location: FF_X33_Y6_N7
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

-- Location: LCCOMB_X33_Y6_N8
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

-- Location: FF_X33_Y6_N9
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

-- Location: LCCOMB_X33_Y6_N10
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

-- Location: FF_X33_Y6_N11
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

-- Location: LCCOMB_X33_Y6_N12
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

-- Location: FF_X33_Y6_N13
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

-- Location: LCCOMB_X33_Y6_N14
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

-- Location: FF_X33_Y6_N15
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

-- Location: LCCOMB_X33_Y7_N10
\inst10|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~3_combout\ = ((\inst10|flipflops\(1) $ (\inst10|flipflops\(0))) # (!\inst10|count\(15))) # (!\inst10|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(16),
	datab => \inst10|flipflops\(1),
	datac => \inst10|flipflops\(0),
	datad => \inst10|count\(15),
	combout => \inst10|result~3_combout\);

-- Location: LCCOMB_X33_Y6_N16
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

-- Location: FF_X33_Y6_N17
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

-- Location: LCCOMB_X33_Y6_N18
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

-- Location: FF_X33_Y6_N19
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

-- Location: LCCOMB_X33_Y7_N6
\inst10|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~0_combout\ = ((!\inst10|count\(6) & (!\inst10|count\(7) & !\inst10|count\(5)))) # (!\inst10|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datab => \inst10|count\(7),
	datac => \inst10|count\(8),
	datad => \inst10|count\(5),
	combout => \inst10|result~0_combout\);

-- Location: LCCOMB_X33_Y6_N24
\inst10|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~1_combout\ = (!\inst10|count\(12) & (!\inst10|count\(9) & (!\inst10|count\(11) & !\inst10|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(12),
	datab => \inst10|count\(9),
	datac => \inst10|count\(11),
	datad => \inst10|count\(10),
	combout => \inst10|result~1_combout\);

-- Location: LCCOMB_X33_Y7_N12
\inst10|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~2_combout\ = (!\inst10|count\(14) & (((\inst10|result~0_combout\ & \inst10|result~1_combout\)) # (!\inst10|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|result~0_combout\,
	datab => \inst10|count\(13),
	datac => \inst10|count\(14),
	datad => \inst10|result~1_combout\,
	combout => \inst10|result~2_combout\);

-- Location: LCCOMB_X33_Y7_N0
\inst10|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~4_combout\ = (\inst10|result~3_combout\) # (((\inst10|result~2_combout\) # (!\inst10|count\(17))) # (!\inst10|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|result~3_combout\,
	datab => \inst10|count\(18),
	datac => \inst10|count\(17),
	datad => \inst10|result~2_combout\,
	combout => \inst10|result~4_combout\);

-- Location: LCCOMB_X33_Y8_N18
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

-- Location: LCCOMB_X33_Y8_N24
\inst10|result~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|result~feeder_combout\ = \inst10|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|result~5_combout\,
	combout => \inst10|result~feeder_combout\);

-- Location: FF_X33_Y8_N25
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

-- Location: CLKCTRL_G5
\inst10|result~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|result~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y12_N8
\inst5|digito[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|digito[0]~2_combout\ = !\inst5|digito\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|digito\(0),
	combout => \inst5|digito[0]~2_combout\);

-- Location: FF_X21_Y12_N9
\inst5|digito[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|digito[0]~2_combout\,
	ena => \inst5|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|digito\(0));

-- Location: LCCOMB_X21_Y12_N10
\inst5|digito~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|digito~1_combout\ = (\inst5|digito\(1) & ((!\inst5|digito\(0)))) # (!\inst5|digito\(1) & (!\inst5|digito\(2) & \inst5|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digito\(2),
	datac => \inst5|digito\(1),
	datad => \inst5|digito\(0),
	combout => \inst5|digito~1_combout\);

-- Location: FF_X21_Y12_N11
\inst5|digito[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|digito~1_combout\,
	ena => \inst5|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|digito\(1));

-- Location: LCCOMB_X21_Y12_N6
\inst5|digito~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|digito~0_combout\ = (\inst5|digito\(2) & ((!\inst5|digito\(0)))) # (!\inst5|digito\(2) & (\inst5|digito\(1) & \inst5|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digito\(1),
	datac => \inst5|digito\(2),
	datad => \inst5|digito\(0),
	combout => \inst5|digito~0_combout\);

-- Location: FF_X21_Y12_N7
\inst5|digito[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|digito~0_combout\,
	ena => \inst5|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|digito\(2));

-- Location: LCCOMB_X21_Y12_N14
\inst5|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux14~0_combout\ = (\inst5|digito\(2) & !\inst5|digito\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|digito\(2),
	datad => \inst5|digito\(0),
	combout => \inst5|Mux14~0_combout\);

-- Location: FF_X21_Y12_N17
\inst5|hl[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|hl[0]~3_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|hl[0]~_emulated_q\);

-- Location: LCCOMB_X22_Y12_N18
\inst5|hl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[0]~2_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemHL\(0))) # (!\inst5|process_0~0_combout\ & ((\inst5|hl[0]~_emulated_q\ $ (\inst5|hl[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst6|contagemHL\(0),
	datac => \inst5|hl[0]~_emulated_q\,
	datad => \inst5|hl[0]~1_combout\,
	combout => \inst5|hl[0]~2_combout\);

-- Location: LCCOMB_X22_Y10_N16
\inst6|contagemMH[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemMH[0]~_wirecell_combout\ = !\inst6|contagemMH\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|contagemMH\(0),
	combout => \inst6|contagemMH[0]~_wirecell_combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst5|mh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[0]~1_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemMH\(0))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|mh[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemMH\(0),
	datac => \inst5|process_0~0clkctrl_outclk\,
	datad => \inst5|mh[0]~1_combout\,
	combout => \inst5|mh[0]~1_combout\);

-- Location: LCCOMB_X22_Y10_N10
\inst5|mh[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[0]~3_combout\ = \inst5|mh[0]~2_combout\ $ (!\inst5|mh[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|mh[0]~2_combout\,
	datac => \inst5|mh[0]~1_combout\,
	combout => \inst5|mh[0]~3_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst5|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux13~0_combout\ = (\inst5|digito\(1) & \inst5|digito\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digito\(1),
	datad => \inst5|digito\(0),
	combout => \inst5|Mux13~0_combout\);

-- Location: FF_X22_Y10_N11
\inst5|mh[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|mh[0]~3_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mh[0]~_emulated_q\);

-- Location: LCCOMB_X22_Y10_N0
\inst5|mh[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[0]~2_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemMH\(0))) # (!\inst5|process_0~0_combout\ & ((\inst5|mh[0]~1_combout\ $ (\inst5|mh[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst6|contagemMH\(0),
	datac => \inst5|mh[0]~1_combout\,
	datad => \inst5|mh[0]~_emulated_q\,
	combout => \inst5|mh[0]~2_combout\);

-- Location: LCCOMB_X25_Y10_N24
\inst6|contagemSH[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSH[0]~_wirecell_combout\ = !\inst6|contagemSH\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|contagemSH\(0),
	combout => \inst6|contagemSH[0]~_wirecell_combout\);

-- Location: LCCOMB_X25_Y10_N16
\inst5|sh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[0]~1_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemSH\(0)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|sh[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sh[0]~1_combout\,
	datac => \inst6|contagemSH\(0),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sh[0]~1_combout\);

-- Location: LCCOMB_X25_Y10_N12
\inst5|sh[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[0]~3_combout\ = \inst5|sh[0]~2_combout\ $ (!\inst5|sh[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sh[0]~2_combout\,
	datad => \inst5|sh[0]~1_combout\,
	combout => \inst5|sh[0]~3_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst5|sh[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[2]~16_combout\ = (!\inst5|digito\(1) & (\inst5|digito\(0) & !\inst5|digito\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digito\(1),
	datac => \inst5|digito\(0),
	datad => \inst5|digito\(2),
	combout => \inst5|sh[2]~16_combout\);

-- Location: FF_X25_Y10_N13
\inst5|sh[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sh[0]~3_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|sh[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sh[0]~_emulated_q\);

-- Location: LCCOMB_X25_Y10_N22
\inst5|sh[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[0]~2_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemSH\(0))))) # (!\inst5|process_0~0_combout\ & (\inst5|sh[0]~1_combout\ $ (((\inst5|sh[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|sh[0]~1_combout\,
	datac => \inst6|contagemSH\(0),
	datad => \inst5|sh[0]~_emulated_q\,
	combout => \inst5|sh[0]~2_combout\);

-- Location: LCCOMB_X25_Y11_N20
\inst5|sl[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[2]~9_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemSL\(2))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|sl[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(2),
	datab => \inst5|sl[2]~9_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sl[2]~9_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst5|sl[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[1]~20_combout\ = (!\inst5|digito\(1) & (!\inst5|digito\(0) & !\inst5|digito\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digito\(1),
	datac => \inst5|digito\(0),
	datad => \inst5|digito\(2),
	combout => \inst5|sl[1]~20_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst6|contagemSL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~1_combout\ = (\inst9|result~q\ & ((!\inst6|contagemSL\(0)))) # (!\inst9|result~q\ & (\inst5|sl[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[0]~2_combout\,
	datac => \inst6|contagemSL\(0),
	datad => \inst9|result~q\,
	combout => \inst6|contagemSL~1_combout\);

-- Location: FF_X24_Y11_N9
\inst6|contagemSL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSL~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSL\(0));

-- Location: LCCOMB_X24_Y11_N28
\inst5|sl[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[0]~1_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemSL\(0)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|sl[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sl[0]~1_combout\,
	datac => \inst6|contagemSL\(0),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sl[0]~1_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst5|sl[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[0]~3_combout\ = \inst5|sl[0]~2_combout\ $ (!\inst5|sl[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|sl[0]~2_combout\,
	datad => \inst5|sl[0]~1_combout\,
	combout => \inst5|sl[0]~3_combout\);

-- Location: FF_X24_Y11_N11
\inst5|sl[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sl[0]~3_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|sl[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sl[0]~_emulated_q\);

-- Location: LCCOMB_X24_Y11_N0
\inst5|sl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[0]~2_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemSL\(0))))) # (!\inst5|process_0~0_combout\ & (\inst5|sl[0]~1_combout\ $ (((\inst5|sl[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|sl[0]~1_combout\,
	datac => \inst6|contagemSL\(0),
	datad => \inst5|sl[0]~_emulated_q\,
	combout => \inst5|sl[0]~2_combout\);

-- Location: LCCOMB_X24_Y11_N26
\inst5|sl[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[1]~5_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemSL\(1)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|sl[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[1]~5_combout\,
	datab => \inst6|contagemSL\(1),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sl[1]~5_combout\);

-- Location: LCCOMB_X25_Y11_N10
\inst6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add0~0_combout\ = \inst6|contagemSL\(3) $ (((\inst6|contagemSL\(2) & (\inst6|contagemSL\(0) & \inst6|contagemSL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(2),
	datab => \inst6|contagemSL\(3),
	datac => \inst6|contagemSL\(0),
	datad => \inst6|contagemSL\(1),
	combout => \inst6|Add0~0_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst6|contagemSL~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~6_combout\ = (\inst9|result~q\ & (\inst6|Add0~0_combout\ & (\inst6|Equal0~0_combout\))) # (!\inst9|result~q\ & (((\inst5|sl[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~0_combout\,
	datab => \inst6|Equal0~0_combout\,
	datac => \inst9|result~q\,
	datad => \inst5|sl[3]~14_combout\,
	combout => \inst6|contagemSL~6_combout\);

-- Location: FF_X24_Y11_N21
\inst6|contagemSL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSL~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSL\(3));

-- Location: LCCOMB_X25_Y11_N30
\inst5|sl[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[3]~13_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemSL\(3))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|sl[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemSL\(3),
	datac => \inst5|sl[3]~13_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sl[3]~13_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst5|sl[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[3]~21_combout\ = (\inst5|sl[1]~6_combout\ & (\inst5|sl[3]~14_combout\ $ (!\inst5|sl[2]~10_combout\))) # (!\inst5|sl[1]~6_combout\ & ((!\inst5|sl[2]~10_combout\) # (!\inst5|sl[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[1]~6_combout\,
	datab => \inst5|sl[3]~14_combout\,
	datad => \inst5|sl[2]~10_combout\,
	combout => \inst5|sl[3]~21_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst5|sl[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[3]~15_combout\ = \inst5|sl[3]~13_combout\ $ (((\inst5|sl[0]~2_combout\ & ((!\inst5|sl[3]~21_combout\))) # (!\inst5|sl[0]~2_combout\ & (\inst5|sl[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[3]~13_combout\,
	datab => \inst5|sl[3]~14_combout\,
	datac => \inst5|sl[0]~2_combout\,
	datad => \inst5|sl[3]~21_combout\,
	combout => \inst5|sl[3]~15_combout\);

-- Location: FF_X24_Y11_N19
\inst5|sl[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sl[3]~15_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|sl[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sl[3]~_emulated_q\);

-- Location: LCCOMB_X24_Y11_N16
\inst5|sl[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[3]~14_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemSL\(3))))) # (!\inst5|process_0~0_combout\ & (\inst5|sl[3]~13_combout\ $ (((\inst5|sl[3]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[3]~13_combout\,
	datab => \inst6|contagemSL\(3),
	datac => \inst5|process_0~0_combout\,
	datad => \inst5|sl[3]~_emulated_q\,
	combout => \inst5|sl[3]~14_combout\);

-- Location: LCCOMB_X24_Y11_N22
\inst5|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal2~0_combout\ = (!\inst5|sl[1]~6_combout\ & (\inst5|sl[3]~14_combout\ & (\inst5|sl[0]~2_combout\ & !\inst5|sl[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[1]~6_combout\,
	datab => \inst5|sl[3]~14_combout\,
	datac => \inst5|sl[0]~2_combout\,
	datad => \inst5|sl[2]~10_combout\,
	combout => \inst5|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst5|sl[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[1]~7_combout\ = \inst5|sl[1]~5_combout\ $ (((!\inst5|Equal2~0_combout\ & (\inst5|sl[1]~6_combout\ $ (\inst5|sl[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[1]~6_combout\,
	datab => \inst5|sl[1]~5_combout\,
	datac => \inst5|sl[0]~2_combout\,
	datad => \inst5|Equal2~0_combout\,
	combout => \inst5|sl[1]~7_combout\);

-- Location: FF_X24_Y11_N7
\inst5|sl[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sl[1]~7_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|sl[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sl[1]~_emulated_q\);

-- Location: LCCOMB_X24_Y11_N12
\inst5|sl[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[1]~6_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemSL\(1))) # (!\inst5|process_0~0_combout\ & ((\inst5|sl[1]~5_combout\ $ (\inst5|sl[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(1),
	datab => \inst5|process_0~0_combout\,
	datac => \inst5|sl[1]~5_combout\,
	datad => \inst5|sl[1]~_emulated_q\,
	combout => \inst5|sl[1]~6_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = (\inst5|sl[0]~2_combout\ & \inst5|sl[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sl[0]~2_combout\,
	datad => \inst5|sl[1]~6_combout\,
	combout => \inst5|Add1~0_combout\);

-- Location: LCCOMB_X25_Y11_N16
\inst5|sl[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[2]~11_combout\ = \inst5|sl[2]~9_combout\ $ (\inst5|sl[2]~10_combout\ $ (((\inst5|sl[1]~20_combout\ & \inst5|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[1]~20_combout\,
	datab => \inst5|sl[2]~9_combout\,
	datac => \inst5|sl[2]~10_combout\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst5|sl[2]~11_combout\);

-- Location: FF_X25_Y11_N17
\inst5|sl[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sl[2]~11_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sl[2]~_emulated_q\);

-- Location: LCCOMB_X25_Y11_N22
\inst5|sl[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sl[2]~10_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemSL\(2))) # (!\inst5|process_0~0_combout\ & ((\inst5|sl[2]~9_combout\ $ (\inst5|sl[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(2),
	datab => \inst5|sl[2]~9_combout\,
	datac => \inst5|process_0~0_combout\,
	datad => \inst5|sl[2]~_emulated_q\,
	combout => \inst5|sl[2]~10_combout\);

-- Location: LCCOMB_X25_Y11_N28
\inst6|contagemSL~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~4_combout\ = (!\inst6|contagemSL\(1)) # (!\inst6|contagemSL\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|contagemSL\(0),
	datad => \inst6|contagemSL\(1),
	combout => \inst6|contagemSL~4_combout\);

-- Location: LCCOMB_X25_Y11_N24
\inst6|contagemSL~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~5_combout\ = (\inst9|result~q\ & ((\inst6|contagemSL~4_combout\ $ (!\inst6|contagemSL\(2))))) # (!\inst9|result~q\ & (\inst5|sl[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sl[2]~10_combout\,
	datab => \inst6|contagemSL~4_combout\,
	datac => \inst6|contagemSL\(2),
	datad => \inst9|result~q\,
	combout => \inst6|contagemSL~5_combout\);

-- Location: FF_X25_Y11_N25
\inst6|contagemSL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSL~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSL\(2));

-- Location: LCCOMB_X25_Y11_N14
\inst6|contagemSL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~2_combout\ = (\inst6|contagemSL\(0) & (!\inst6|contagemSL\(1) & ((\inst6|contagemSL\(2)) # (!\inst6|contagemSL\(3))))) # (!\inst6|contagemSL\(0) & (((\inst6|contagemSL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(2),
	datab => \inst6|contagemSL\(3),
	datac => \inst6|contagemSL\(0),
	datad => \inst6|contagemSL\(1),
	combout => \inst6|contagemSL~2_combout\);

-- Location: LCCOMB_X24_Y11_N30
\inst6|contagemSL~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~3_combout\ = (\inst9|result~q\ & (\inst6|contagemSL~2_combout\)) # (!\inst9|result~q\ & ((\inst5|sl[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|result~q\,
	datac => \inst6|contagemSL~2_combout\,
	datad => \inst5|sl[1]~6_combout\,
	combout => \inst6|contagemSL~3_combout\);

-- Location: FF_X24_Y11_N31
\inst6|contagemSL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSL~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSL\(1));

-- Location: LCCOMB_X24_Y11_N4
\inst6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (\inst6|contagemSL\(1)) # (((\inst6|contagemSL\(2)) # (!\inst6|contagemSL\(0))) # (!\inst6|contagemSL\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(1),
	datab => \inst6|contagemSL\(3),
	datac => \inst6|contagemSL\(0),
	datad => \inst6|contagemSL\(2),
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y10_N30
\inst6|contagemSL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSL~0_combout\ = (!\inst9|result~q\) # (!\inst6|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Equal0~0_combout\,
	datad => \inst9|result~q\,
	combout => \inst6|contagemSL~0_combout\);

-- Location: FF_X25_Y10_N25
\inst6|contagemSH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSH[0]~_wirecell_combout\,
	asdata => \inst5|sh[0]~2_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemSL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSH\(0));

-- Location: LCCOMB_X25_Y10_N14
\inst6|contagemSH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSH~0_combout\ = (\inst6|contagemSH\(0) & (!\inst6|contagemSH\(1) & !\inst6|contagemSH\(2))) # (!\inst6|contagemSH\(0) & (\inst6|contagemSH\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSH\(0),
	datac => \inst6|contagemSH\(1),
	datad => \inst6|contagemSH\(2),
	combout => \inst6|contagemSH~0_combout\);

-- Location: LCCOMB_X25_Y10_N26
\inst5|sh[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[1]~5_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemSH\(1)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|sh[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sh[1]~5_combout\,
	datac => \inst6|contagemSH\(1),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sh[1]~5_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst5|sh[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[2]~9_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemSH\(2)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|sh[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|sh[2]~9_combout\,
	datac => \inst6|contagemSH\(2),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|sh[2]~9_combout\);

-- Location: LCCOMB_X25_Y10_N20
\inst5|sh[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[2]~11_combout\ = \inst5|sh[2]~9_combout\ $ (((\inst5|sh[2]~10_combout\ & ((!\inst5|sh[0]~2_combout\))) # (!\inst5|sh[2]~10_combout\ & (\inst5|sh[1]~6_combout\ & \inst5|sh[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sh[2]~10_combout\,
	datab => \inst5|sh[1]~6_combout\,
	datac => \inst5|sh[0]~2_combout\,
	datad => \inst5|sh[2]~9_combout\,
	combout => \inst5|sh[2]~11_combout\);

-- Location: FF_X25_Y10_N21
\inst5|sh[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sh[2]~11_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|sh[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sh[2]~_emulated_q\);

-- Location: LCCOMB_X25_Y10_N10
\inst5|sh[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[2]~10_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemSH\(2))))) # (!\inst5|process_0~0_combout\ & (\inst5|sh[2]~9_combout\ $ (((\inst5|sh[2]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|sh[2]~9_combout\,
	datac => \inst6|contagemSH\(2),
	datad => \inst5|sh[2]~_emulated_q\,
	combout => \inst5|sh[2]~10_combout\);

-- Location: LCCOMB_X25_Y10_N28
\inst5|sh[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[1]~7_combout\ = \inst5|sh[1]~5_combout\ $ (((\inst5|sh[1]~6_combout\ & ((!\inst5|sh[0]~2_combout\))) # (!\inst5|sh[1]~6_combout\ & (!\inst5|sh[2]~10_combout\ & \inst5|sh[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|sh[2]~10_combout\,
	datab => \inst5|sh[1]~6_combout\,
	datac => \inst5|sh[0]~2_combout\,
	datad => \inst5|sh[1]~5_combout\,
	combout => \inst5|sh[1]~7_combout\);

-- Location: FF_X25_Y10_N29
\inst5|sh[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|sh[1]~7_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|sh[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sh[1]~_emulated_q\);

-- Location: LCCOMB_X25_Y10_N18
\inst5|sh[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sh[1]~6_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemSH\(1))) # (!\inst5|process_0~0_combout\ & ((\inst5|sh[1]~5_combout\ $ (\inst5|sh[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst6|contagemSH\(1),
	datac => \inst5|sh[1]~5_combout\,
	datad => \inst5|sh[1]~_emulated_q\,
	combout => \inst5|sh[1]~6_combout\);

-- Location: FF_X25_Y10_N15
\inst6|contagemSH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSH~0_combout\,
	asdata => \inst5|sh[1]~6_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemSL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSH\(1));

-- Location: LCCOMB_X25_Y10_N4
\inst6|contagemSH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemSH~1_combout\ = (\inst6|contagemSH\(0) & (\inst6|contagemSH\(1) & !\inst6|contagemSH\(2))) # (!\inst6|contagemSH\(0) & ((\inst6|contagemSH\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSH\(0),
	datab => \inst6|contagemSH\(1),
	datac => \inst6|contagemSH\(2),
	combout => \inst6|contagemSH~1_combout\);

-- Location: FF_X25_Y10_N5
\inst6|contagemSH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemSH~1_combout\,
	asdata => \inst5|sh[2]~10_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemSL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemSH\(2));

-- Location: LCCOMB_X25_Y10_N8
\inst6|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal1~0_combout\ = (\inst6|contagemSH\(2) & (!\inst6|contagemSH\(1) & \inst6|contagemSH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemSH\(2),
	datac => \inst6|contagemSH\(1),
	datad => \inst6|contagemSH\(0),
	combout => \inst6|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\inst5|ml[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[0]~1_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((!\inst6|contagemML\(0)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|ml[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|ml[0]~1_combout\,
	datac => \inst6|contagemML\(0),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|ml[0]~1_combout\);

-- Location: LCCOMB_X22_Y8_N12
\inst5|ml[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[0]~3_combout\ = \inst5|ml[0]~2_combout\ $ (!\inst5|ml[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ml[0]~2_combout\,
	datad => \inst5|ml[0]~1_combout\,
	combout => \inst5|ml[0]~3_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst5|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\inst5|digito\(1) & !\inst5|digito\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digito\(1),
	datad => \inst5|digito\(0),
	combout => \inst5|Mux7~0_combout\);

-- Location: FF_X22_Y8_N13
\inst5|ml[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|ml[0]~3_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|ml[0]~_emulated_q\);

-- Location: LCCOMB_X22_Y8_N22
\inst5|ml[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[0]~2_combout\ = (\inst5|process_0~0_combout\ & (((!\inst6|contagemML\(0))))) # (!\inst5|process_0~0_combout\ & (\inst5|ml[0]~1_combout\ $ (((\inst5|ml[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|ml[0]~1_combout\,
	datac => \inst6|contagemML\(0),
	datad => \inst5|ml[0]~_emulated_q\,
	combout => \inst5|ml[0]~2_combout\);

-- Location: LCCOMB_X23_Y8_N18
\inst6|contagemML~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemML~6_combout\ = (\inst6|contagemSH\(2) & (!\inst6|contagemSH\(1) & (!\inst6|Equal0~0_combout\ & \inst6|contagemSH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSH\(2),
	datab => \inst6|contagemSH\(1),
	datac => \inst6|Equal0~0_combout\,
	datad => \inst6|contagemSH\(0),
	combout => \inst6|contagemML~6_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst6|contagemML~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemML~2_combout\ = (\inst9|result~q\ & ((\inst6|contagemML\(0) $ (\inst6|contagemML~6_combout\)))) # (!\inst9|result~q\ & (!\inst5|ml[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~q\,
	datab => \inst5|ml[0]~2_combout\,
	datac => \inst6|contagemML\(0),
	datad => \inst6|contagemML~6_combout\,
	combout => \inst6|contagemML~2_combout\);

-- Location: FF_X23_Y8_N23
\inst6|contagemML[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemML~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemML\(0));

-- Location: LCCOMB_X23_Y8_N16
\inst6|contagemML~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemML~3_combout\ = (\inst6|contagemML\(0) & (((\inst6|contagemML\(1))))) # (!\inst6|contagemML\(0) & (!\inst6|contagemML\(1) & ((\inst6|contagemML\(2)) # (!\inst6|contagemML\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(2),
	datab => \inst6|contagemML\(0),
	datac => \inst6|contagemML\(1),
	datad => \inst6|contagemML\(3),
	combout => \inst6|contagemML~3_combout\);

-- Location: LCCOMB_X22_Y8_N18
\inst5|ml[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[1]~5_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemML\(1))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|ml[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(1),
	datac => \inst5|process_0~0clkctrl_outclk\,
	datad => \inst5|ml[1]~5_combout\,
	combout => \inst5|ml[1]~5_combout\);

-- Location: LCCOMB_X22_Y8_N8
\inst5|ml[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[2]~9_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemML\(2))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|ml[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemML\(2),
	datac => \inst5|ml[2]~9_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|ml[2]~9_combout\);

-- Location: LCCOMB_X22_Y8_N4
\inst5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~0_combout\ = (\inst5|ml[0]~2_combout\ & \inst5|ml[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|ml[0]~2_combout\,
	datad => \inst5|ml[1]~6_combout\,
	combout => \inst5|Add3~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\inst5|ml[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[2]~11_combout\ = \inst5|ml[2]~9_combout\ $ (\inst5|ml[2]~10_combout\ $ (((\inst5|Mux7~0_combout\ & \inst5|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ml[2]~9_combout\,
	datab => \inst5|Mux7~0_combout\,
	datac => \inst5|Add3~0_combout\,
	datad => \inst5|ml[2]~10_combout\,
	combout => \inst5|ml[2]~11_combout\);

-- Location: FF_X22_Y8_N1
\inst5|ml[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|ml[2]~11_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|ml[2]~_emulated_q\);

-- Location: LCCOMB_X22_Y8_N10
\inst5|ml[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[2]~10_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemML\(2))) # (!\inst5|process_0~0_combout\ & ((\inst5|ml[2]~9_combout\ $ (\inst5|ml[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(2),
	datab => \inst5|process_0~0_combout\,
	datac => \inst5|ml[2]~9_combout\,
	datad => \inst5|ml[2]~_emulated_q\,
	combout => \inst5|ml[2]~10_combout\);

-- Location: LCCOMB_X22_Y8_N26
\inst5|ml[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[3]~13_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemML\(3))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|ml[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemML\(3),
	datac => \inst5|ml[3]~13_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|ml[3]~13_combout\);

-- Location: LCCOMB_X22_Y8_N30
\inst5|ml[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[3]~20_combout\ = (\inst5|ml[0]~2_combout\ & (\inst5|ml[2]~10_combout\ $ (!\inst5|ml[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ml[2]~10_combout\,
	datab => \inst5|ml[1]~6_combout\,
	datad => \inst5|ml[0]~2_combout\,
	combout => \inst5|ml[3]~20_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst5|ml[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[3]~15_combout\ = \inst5|ml[3]~13_combout\ $ (((\inst5|ml[3]~14_combout\ & (!\inst5|ml[3]~20_combout\)) # (!\inst5|ml[3]~14_combout\ & (\inst5|ml[3]~20_combout\ & \inst5|ml[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ml[3]~13_combout\,
	datab => \inst5|ml[3]~14_combout\,
	datac => \inst5|ml[3]~20_combout\,
	datad => \inst5|ml[2]~10_combout\,
	combout => \inst5|ml[3]~15_combout\);

-- Location: FF_X22_Y8_N25
\inst5|ml[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|ml[3]~15_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|ml[3]~_emulated_q\);

-- Location: LCCOMB_X22_Y8_N2
\inst5|ml[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[3]~14_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemML\(3))) # (!\inst5|process_0~0_combout\ & ((\inst5|ml[3]~13_combout\ $ (\inst5|ml[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(3),
	datab => \inst5|process_0~0_combout\,
	datac => \inst5|ml[3]~13_combout\,
	datad => \inst5|ml[3]~_emulated_q\,
	combout => \inst5|ml[3]~14_combout\);

-- Location: LCCOMB_X22_Y8_N6
\inst5|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~0_combout\ = (!\inst5|ml[2]~10_combout\ & (\inst5|ml[3]~14_combout\ & (\inst5|ml[0]~2_combout\ & !\inst5|ml[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|ml[2]~10_combout\,
	datab => \inst5|ml[3]~14_combout\,
	datac => \inst5|ml[0]~2_combout\,
	datad => \inst5|ml[1]~6_combout\,
	combout => \inst5|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\inst5|ml[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[1]~7_combout\ = \inst5|ml[1]~5_combout\ $ (((!\inst5|Equal4~0_combout\ & (\inst5|ml[1]~6_combout\ $ (\inst5|ml[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~0_combout\,
	datab => \inst5|ml[1]~6_combout\,
	datac => \inst5|ml[0]~2_combout\,
	datad => \inst5|ml[1]~5_combout\,
	combout => \inst5|ml[1]~7_combout\);

-- Location: FF_X22_Y8_N21
\inst5|ml[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|ml[1]~7_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|ml[1]~_emulated_q\);

-- Location: LCCOMB_X22_Y8_N14
\inst5|ml[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|ml[1]~6_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemML\(1))) # (!\inst5|process_0~0_combout\ & ((\inst5|ml[1]~5_combout\ $ (\inst5|ml[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(1),
	datab => \inst5|ml[1]~5_combout\,
	datac => \inst5|process_0~0_combout\,
	datad => \inst5|ml[1]~_emulated_q\,
	combout => \inst5|ml[1]~6_combout\);

-- Location: LCCOMB_X23_Y8_N30
\inst6|contagemML[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemML[1]~4_combout\ = ((!\inst6|Equal0~0_combout\ & \inst6|Equal1~0_combout\)) # (!\inst9|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~q\,
	datac => \inst6|Equal0~0_combout\,
	datad => \inst6|Equal1~0_combout\,
	combout => \inst6|contagemML[1]~4_combout\);

-- Location: FF_X23_Y8_N17
\inst6|contagemML[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemML~3_combout\,
	asdata => \inst5|ml[1]~6_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemML[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemML\(1));

-- Location: LCCOMB_X23_Y8_N26
\inst6|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = \inst6|contagemML\(2) $ (((!\inst6|contagemML\(0) & \inst6|contagemML\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(0),
	datac => \inst6|contagemML\(2),
	datad => \inst6|contagemML\(1),
	combout => \inst6|Add2~0_combout\);

-- Location: FF_X23_Y8_N27
\inst6|contagemML[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|Add2~0_combout\,
	asdata => \inst5|ml[2]~10_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemML[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemML\(2));

-- Location: LCCOMB_X23_Y8_N8
\inst6|contagemML~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemML~5_combout\ = (\inst6|contagemML\(2) & (\inst6|contagemML\(3) $ (((!\inst6|contagemML\(0) & \inst6|contagemML\(1)))))) # (!\inst6|contagemML\(2) & (\inst6|contagemML\(3) & ((\inst6|contagemML\(0)) # (\inst6|contagemML\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(2),
	datab => \inst6|contagemML\(0),
	datac => \inst6|contagemML\(3),
	datad => \inst6|contagemML\(1),
	combout => \inst6|contagemML~5_combout\);

-- Location: FF_X23_Y8_N9
\inst6|contagemML[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemML~5_combout\,
	asdata => \inst5|ml[3]~14_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemML[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemML\(3));

-- Location: LCCOMB_X23_Y8_N0
\inst6|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal2~0_combout\ = (!\inst6|contagemML\(0) & (\inst6|contagemML\(3) & (!\inst6|contagemML\(2) & !\inst6|contagemML\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(0),
	datab => \inst6|contagemML\(3),
	datac => \inst6|contagemML\(2),
	datad => \inst6|contagemML\(1),
	combout => \inst6|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y10_N12
\inst6|contagemMH[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemMH[2]~0_combout\ = ((\inst6|Equal1~0_combout\ & (\inst6|Equal2~0_combout\ & !\inst6|Equal0~0_combout\))) # (!\inst9|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal1~0_combout\,
	datab => \inst9|result~q\,
	datac => \inst6|Equal2~0_combout\,
	datad => \inst6|Equal0~0_combout\,
	combout => \inst6|contagemMH[2]~0_combout\);

-- Location: FF_X22_Y10_N17
\inst6|contagemMH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemMH[0]~_wirecell_combout\,
	asdata => \inst5|mh[0]~2_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemMH[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemMH\(0));

-- Location: LCCOMB_X22_Y10_N30
\inst6|contagemMH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemMH~1_combout\ = (\inst6|contagemMH\(0) & (!\inst6|contagemMH\(1) & !\inst6|contagemMH\(2))) # (!\inst6|contagemMH\(0) & (\inst6|contagemMH\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemMH\(0),
	datac => \inst6|contagemMH\(1),
	datad => \inst6|contagemMH\(2),
	combout => \inst6|contagemMH~1_combout\);

-- Location: LCCOMB_X21_Y10_N26
\inst5|mh[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[1]~5_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemMH\(1))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|mh[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemMH\(1),
	datac => \inst5|mh[1]~5_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|mh[1]~5_combout\);

-- Location: LCCOMB_X22_Y10_N18
\inst5|mh[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[2]~9_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemMH\(2))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|mh[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemMH\(2),
	datab => \inst5|mh[2]~9_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|mh[2]~9_combout\);

-- Location: LCCOMB_X22_Y10_N6
\inst5|mh[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[2]~11_combout\ = \inst5|mh[2]~9_combout\ $ (((\inst5|mh[2]~10_combout\ & (!\inst5|mh[0]~2_combout\)) # (!\inst5|mh[2]~10_combout\ & (\inst5|mh[0]~2_combout\ & \inst5|mh[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mh[2]~10_combout\,
	datab => \inst5|mh[0]~2_combout\,
	datac => \inst5|mh[1]~6_combout\,
	datad => \inst5|mh[2]~9_combout\,
	combout => \inst5|mh[2]~11_combout\);

-- Location: FF_X22_Y10_N7
\inst5|mh[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|mh[2]~11_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mh[2]~_emulated_q\);

-- Location: LCCOMB_X22_Y10_N20
\inst5|mh[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[2]~10_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemMH\(2))))) # (!\inst5|process_0~0_combout\ & (\inst5|mh[2]~9_combout\ $ (((\inst5|mh[2]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|mh[2]~9_combout\,
	datac => \inst6|contagemMH\(2),
	datad => \inst5|mh[2]~_emulated_q\,
	combout => \inst5|mh[2]~10_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst5|mh[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[1]~7_combout\ = \inst5|mh[1]~5_combout\ $ (((\inst5|mh[0]~2_combout\ & (!\inst5|mh[2]~10_combout\ & !\inst5|mh[1]~6_combout\)) # (!\inst5|mh[0]~2_combout\ & ((\inst5|mh[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|mh[2]~10_combout\,
	datab => \inst5|mh[0]~2_combout\,
	datac => \inst5|mh[1]~6_combout\,
	datad => \inst5|mh[1]~5_combout\,
	combout => \inst5|mh[1]~7_combout\);

-- Location: FF_X22_Y10_N3
\inst5|mh[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|mh[1]~7_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|mh[1]~_emulated_q\);

-- Location: LCCOMB_X22_Y10_N24
\inst5|mh[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|mh[1]~6_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemMH\(1))) # (!\inst5|process_0~0_combout\ & ((\inst5|mh[1]~5_combout\ $ (\inst5|mh[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst6|contagemMH\(1),
	datac => \inst5|mh[1]~5_combout\,
	datad => \inst5|mh[1]~_emulated_q\,
	combout => \inst5|mh[1]~6_combout\);

-- Location: FF_X22_Y10_N31
\inst6|contagemMH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemMH~1_combout\,
	asdata => \inst5|mh[1]~6_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemMH[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemMH\(1));

-- Location: LCCOMB_X22_Y10_N8
\inst6|contagemMH~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemMH~2_combout\ = (\inst6|contagemMH\(0) & (!\inst6|contagemMH\(2) & \inst6|contagemMH\(1))) # (!\inst6|contagemMH\(0) & (\inst6|contagemMH\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemMH\(0),
	datac => \inst6|contagemMH\(2),
	datad => \inst6|contagemMH\(1),
	combout => \inst6|contagemMH~2_combout\);

-- Location: FF_X22_Y10_N9
\inst6|contagemMH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemMH~2_combout\,
	asdata => \inst5|mh[2]~10_combout\,
	sload => \inst9|ALT_INV_result~q\,
	ena => \inst6|contagemMH[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemMH\(2));

-- Location: LCCOMB_X22_Y10_N12
\inst6|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal3~0_combout\ = (\inst6|contagemMH\(2) & (!\inst6|contagemMH\(1) & \inst6|contagemMH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemMH\(2),
	datac => \inst6|contagemMH\(1),
	datad => \inst6|contagemMH\(0),
	combout => \inst6|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y9_N18
\inst6|contagemHH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHH~0_combout\ = (\inst6|Equal3~0_combout\ & (\inst6|Equal2~0_combout\ & (\inst6|Equal1~0_combout\ & !\inst6|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal3~0_combout\,
	datab => \inst6|Equal2~0_combout\,
	datac => \inst6|Equal1~0_combout\,
	datad => \inst6|Equal0~0_combout\,
	combout => \inst6|contagemHH~0_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst6|contagemHL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~0_combout\ = \inst6|contagemHL\(0) $ (\inst6|contagemHH~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemHL\(0),
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHL~0_combout\);

-- Location: LCCOMB_X22_Y9_N24
\inst6|contagemHL~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~8_combout\ = (\inst6|contagemHL~7_combout\ & ((\inst6|contagemHL~0_combout\) # ((!\inst9|result~q\ & \inst5|hl[0]~2_combout\)))) # (!\inst6|contagemHL~7_combout\ & (!\inst9|result~q\ & (\inst5|hl[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL~7_combout\,
	datab => \inst9|result~q\,
	datac => \inst5|hl[0]~2_combout\,
	datad => \inst6|contagemHL~0_combout\,
	combout => \inst6|contagemHL~8_combout\);

-- Location: FF_X22_Y9_N25
\inst6|contagemHL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemHL~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemHL\(0));

-- Location: LCCOMB_X22_Y9_N12
\inst6|contagemHL~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~3_combout\ = (\inst6|contagemHL\(0)) # (\inst6|contagemHL\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemHL\(0),
	datad => \inst6|contagemHL\(3),
	combout => \inst6|contagemHL~3_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst5|hl[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[3]~13_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst6|contagemHL\(3))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst5|hl[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemHL\(3),
	datac => \inst5|hl[3]~13_combout\,
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|hl[3]~13_combout\);

-- Location: LCCOMB_X22_Y9_N10
\inst6|contagemHL~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~6_combout\ = \inst6|contagemHL\(2) $ (((\inst6|contagemHL\(0) & (\inst6|contagemHL\(1) & \inst6|contagemHH~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(2),
	datab => \inst6|contagemHL\(0),
	datac => \inst6|contagemHL\(1),
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHL~6_combout\);

-- Location: LCCOMB_X22_Y12_N6
\inst5|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add5~0_combout\ = (\inst5|hl[0]~2_combout\ & \inst5|hl[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|hl[0]~2_combout\,
	datad => \inst5|hl[1]~6_combout\,
	combout => \inst5|Add5~0_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst5|hl[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[2]~9_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemHL\(2)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|hl[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|hl[2]~9_combout\,
	datac => \inst6|contagemHL\(2),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|hl[2]~9_combout\);

-- Location: LCCOMB_X22_Y12_N16
\inst5|hl~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl~21_combout\ = (!\inst5|hl[2]~10_combout\ & (\inst5|hl[0]~2_combout\ & \inst5|hl~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|hl[2]~10_combout\,
	datac => \inst5|hl[0]~2_combout\,
	datad => \inst5|hl~20_combout\,
	combout => \inst5|hl~21_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst5|hl[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[2]~11_combout\ = \inst5|hl[2]~9_combout\ $ (((!\inst5|hl~21_combout\ & (\inst5|Add5~0_combout\ $ (\inst5|hl[2]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add5~0_combout\,
	datab => \inst5|hl[2]~9_combout\,
	datac => \inst5|hl[2]~10_combout\,
	datad => \inst5|hl~21_combout\,
	combout => \inst5|hl[2]~11_combout\);

-- Location: FF_X22_Y12_N29
\inst5|hl[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|hl[2]~11_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|hl[2]~_emulated_q\);

-- Location: LCCOMB_X22_Y12_N26
\inst5|hl[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[2]~10_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemHL\(2))))) # (!\inst5|process_0~0_combout\ & (\inst5|hl[2]~_emulated_q\ $ (((\inst5|hl[2]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|hl[2]~_emulated_q\,
	datac => \inst6|contagemHL\(2),
	datad => \inst5|hl[2]~9_combout\,
	combout => \inst5|hl[2]~10_combout\);

-- Location: LCCOMB_X22_Y9_N18
\inst6|contagemHL~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~10_combout\ = (\inst6|contagemHL~7_combout\ & ((\inst6|contagemHL~6_combout\) # ((!\inst9|result~q\ & \inst5|hl[2]~10_combout\)))) # (!\inst6|contagemHL~7_combout\ & (!\inst9|result~q\ & ((\inst5|hl[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL~7_combout\,
	datab => \inst9|result~q\,
	datac => \inst6|contagemHL~6_combout\,
	datad => \inst5|hl[2]~10_combout\,
	combout => \inst6|contagemHL~10_combout\);

-- Location: FF_X22_Y9_N19
\inst6|contagemHL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemHL~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemHL\(2));

-- Location: LCCOMB_X22_Y9_N14
\inst6|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Equal4~0_combout\ = (!\inst6|contagemHL\(2) & (\inst6|contagemHL\(3) & (!\inst6|contagemHL\(1) & \inst6|contagemHL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(2),
	datab => \inst6|contagemHL\(3),
	datac => \inst6|contagemHL\(1),
	datad => \inst6|contagemHL\(0),
	combout => \inst6|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y9_N8
\inst6|contagemHL~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~5_combout\ = (\inst6|contagemHH~0_combout\ & (!\inst6|Equal4~0_combout\ & (\inst6|contagemHL\(0) $ (\inst6|contagemHL\(1))))) # (!\inst6|contagemHH~0_combout\ & (((\inst6|contagemHL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(0),
	datab => \inst6|contagemHL\(1),
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHL~5_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst6|contagemHL~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~9_combout\ = (\inst6|contagemHL~5_combout\ & ((\inst6|contagemHL~7_combout\) # ((!\inst9|result~q\ & \inst5|hl[1]~6_combout\)))) # (!\inst6|contagemHL~5_combout\ & (((!\inst9|result~q\ & \inst5|hl[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL~5_combout\,
	datab => \inst6|contagemHL~7_combout\,
	datac => \inst9|result~q\,
	datad => \inst5|hl[1]~6_combout\,
	combout => \inst6|contagemHL~9_combout\);

-- Location: FF_X22_Y12_N15
\inst6|contagemHL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemHL~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemHL\(1));

-- Location: LCCOMB_X22_Y12_N22
\inst5|hl[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[1]~5_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemHL\(1)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|hl[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hl[1]~5_combout\,
	datac => \inst6|contagemHL\(1),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|hl[1]~5_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst5|hl[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[1]~7_combout\ = \inst5|hl[1]~5_combout\ $ (((!\inst5|hl~21_combout\ & (\inst5|hl[1]~6_combout\ $ (\inst5|hl[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hl[1]~6_combout\,
	datab => \inst5|hl[1]~5_combout\,
	datac => \inst5|hl[0]~2_combout\,
	datad => \inst5|hl~21_combout\,
	combout => \inst5|hl[1]~7_combout\);

-- Location: FF_X22_Y12_N3
\inst5|hl[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|hl[1]~7_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|hl[1]~_emulated_q\);

-- Location: LCCOMB_X22_Y12_N10
\inst5|hl[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[1]~6_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemHL\(1))) # (!\inst5|process_0~0_combout\ & ((\inst5|hl[1]~5_combout\ $ (\inst5|hl[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst6|contagemHL\(1),
	datac => \inst5|hl[1]~5_combout\,
	datad => \inst5|hl[1]~_emulated_q\,
	combout => \inst5|hl[1]~6_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst6|contagemHH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHH~1_combout\ = \inst6|contagemHH\(0) $ (((\inst6|Equal4~0_combout\ & \inst6|contagemHH~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH\(0),
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHH~1_combout\);

-- Location: LCCOMB_X22_Y11_N12
\inst6|contagemHH~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHH~2_combout\ = (\inst6|contagemHH~1_combout\ & ((\inst6|contagemHL~7_combout\) # ((\inst5|hh[0]~2_combout\ & !\inst9|result~q\)))) # (!\inst6|contagemHH~1_combout\ & (((\inst5|hh[0]~2_combout\ & !\inst9|result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH~1_combout\,
	datab => \inst6|contagemHL~7_combout\,
	datac => \inst5|hh[0]~2_combout\,
	datad => \inst9|result~q\,
	combout => \inst6|contagemHH~2_combout\);

-- Location: FF_X22_Y11_N13
\inst6|contagemHH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemHH~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemHH\(0));

-- Location: LCCOMB_X22_Y11_N16
\inst5|hh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hh[0]~1_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemHH\(0)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|hh[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|hh[0]~1_combout\,
	datac => \inst6|contagemHH\(0),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|hh[0]~1_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst5|hh[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hh[0]~3_combout\ = \inst5|hh[0]~1_combout\ $ (((!\inst5|hh[1]~6_combout\ & !\inst5|hh[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hh[1]~6_combout\,
	datab => \inst5|hh[0]~2_combout\,
	datad => \inst5|hh[0]~1_combout\,
	combout => \inst5|hh[0]~3_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst5|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux19~0_combout\ = (\inst5|digito\(0) & \inst5|digito\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|digito\(0),
	datad => \inst5|digito\(2),
	combout => \inst5|Mux19~0_combout\);

-- Location: FF_X22_Y11_N27
\inst5|hh[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|hh[0]~3_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|hh[0]~_emulated_q\);

-- Location: LCCOMB_X22_Y11_N4
\inst5|hh[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hh[0]~2_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemHH\(0))) # (!\inst5|process_0~0_combout\ & ((\inst5|hh[0]~_emulated_q\ $ (\inst5|hh[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH\(0),
	datab => \inst5|process_0~0_combout\,
	datac => \inst5|hh[0]~_emulated_q\,
	datad => \inst5|hh[0]~1_combout\,
	combout => \inst5|hh[0]~2_combout\);

-- Location: LCCOMB_X22_Y12_N20
\inst5|hl~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl~20_combout\ = (\inst5|hl[1]~6_combout\ & (!\inst5|hl[3]~14_combout\ & (!\inst5|hh[0]~2_combout\ & \inst5|hh[1]~6_combout\))) # (!\inst5|hl[1]~6_combout\ & (\inst5|hl[3]~14_combout\ & ((\inst5|hh[0]~2_combout\) # (!\inst5|hh[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hl[1]~6_combout\,
	datab => \inst5|hl[3]~14_combout\,
	datac => \inst5|hh[0]~2_combout\,
	datad => \inst5|hh[1]~6_combout\,
	combout => \inst5|hl~20_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst5|hl[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[3]~22_combout\ = \inst5|hl[3]~13_combout\ $ (((\inst5|hl[1]~6_combout\ & (\inst5|hl[0]~2_combout\ & \inst5|hl[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hl[1]~6_combout\,
	datab => \inst5|hl[0]~2_combout\,
	datac => \inst5|hl[3]~13_combout\,
	datad => \inst5|hl[2]~10_combout\,
	combout => \inst5|hl[3]~22_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst5|hl[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[3]~23_combout\ = (!\inst5|hl[2]~10_combout\ & \inst5|hl[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|hl[2]~10_combout\,
	datad => \inst5|hl[0]~2_combout\,
	combout => \inst5|hl[3]~23_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst5|hl[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[3]~15_combout\ = \inst5|hl[3]~22_combout\ $ (((\inst5|hl[3]~14_combout\ & ((!\inst5|hl[3]~23_combout\) # (!\inst5|hl~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hl[3]~14_combout\,
	datab => \inst5|hl~20_combout\,
	datac => \inst5|hl[3]~22_combout\,
	datad => \inst5|hl[3]~23_combout\,
	combout => \inst5|hl[3]~15_combout\);

-- Location: FF_X22_Y12_N13
\inst5|hl[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|hl[3]~15_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|hl[3]~_emulated_q\);

-- Location: LCCOMB_X22_Y12_N30
\inst5|hl[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hl[3]~14_combout\ = (\inst5|process_0~0_combout\ & (\inst6|contagemHL\(3))) # (!\inst5|process_0~0_combout\ & ((\inst5|hl[3]~13_combout\ $ (\inst5|hl[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(3),
	datab => \inst5|process_0~0_combout\,
	datac => \inst5|hl[3]~13_combout\,
	datad => \inst5|hl[3]~_emulated_q\,
	combout => \inst5|hl[3]~14_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst5|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux18~0_combout\ = (!\inst5|hl[3]~14_combout\ & (!\inst5|hh[1]~6_combout\ & (\inst5|hh[0]~2_combout\ & !\inst5|hl[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hl[3]~14_combout\,
	datab => \inst5|hh[1]~6_combout\,
	datac => \inst5|hh[0]~2_combout\,
	datad => \inst5|hl[2]~10_combout\,
	combout => \inst5|Mux18~0_combout\);

-- Location: LCCOMB_X22_Y11_N10
\inst5|hh[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hh[1]~5_combout\ = (GLOBAL(\inst5|process_0~0clkctrl_outclk\) & ((\inst6|contagemHH\(1)))) # (!GLOBAL(\inst5|process_0~0clkctrl_outclk\) & (\inst5|hh[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hh[1]~5_combout\,
	datac => \inst6|contagemHH\(1),
	datad => \inst5|process_0~0clkctrl_outclk\,
	combout => \inst5|hh[1]~5_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst5|hh[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hh[1]~7_combout\ = \inst5|Mux18~0_combout\ $ (\inst5|hh[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mux18~0_combout\,
	datad => \inst5|hh[1]~5_combout\,
	combout => \inst5|hh[1]~7_combout\);

-- Location: FF_X22_Y11_N23
\inst5|hh[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst5|hh[1]~7_combout\,
	clrn => \inst5|ALT_INV_process_0~0clkctrl_outclk\,
	ena => \inst5|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|hh[1]~_emulated_q\);

-- Location: LCCOMB_X22_Y11_N24
\inst5|hh[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|hh[1]~6_combout\ = (\inst5|process_0~0_combout\ & (((\inst6|contagemHH\(1))))) # (!\inst5|process_0~0_combout\ & (\inst5|hh[1]~_emulated_q\ $ (((\inst5|hh[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|hh[1]~_emulated_q\,
	datab => \inst6|contagemHH\(1),
	datac => \inst5|process_0~0_combout\,
	datad => \inst5|hh[1]~5_combout\,
	combout => \inst5|hh[1]~6_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst6|contagemHH~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHH~3_combout\ = \inst6|contagemHH\(1) $ (((\inst6|contagemHH\(0) & (\inst6|Equal4~0_combout\ & \inst6|contagemHH~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH\(0),
	datab => \inst6|Equal4~0_combout\,
	datac => \inst6|contagemHH\(1),
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHH~3_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst6|contagemHH~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHH~4_combout\ = (\inst9|result~q\ & (\inst6|contagemHL~7_combout\ & ((\inst6|contagemHH~3_combout\)))) # (!\inst9|result~q\ & ((\inst5|hh[1]~6_combout\) # ((\inst6|contagemHL~7_combout\ & \inst6|contagemHH~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~q\,
	datab => \inst6|contagemHL~7_combout\,
	datac => \inst5|hh[1]~6_combout\,
	datad => \inst6|contagemHH~3_combout\,
	combout => \inst6|contagemHH~4_combout\);

-- Location: FF_X22_Y11_N31
\inst6|contagemHH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemHH~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemHH\(1));

-- Location: LCCOMB_X22_Y9_N16
\inst6|contagemHL~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~1_combout\ = (\inst6|contagemHH\(1) & ((\inst6|contagemHH\(0)) # ((\inst6|contagemHL\(0) & \inst6|Equal4~0_combout\)))) # (!\inst6|contagemHH\(1) & (((!\inst6|contagemHH\(0)) # (!\inst6|Equal4~0_combout\)) # (!\inst6|contagemHL\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH\(1),
	datab => \inst6|contagemHL\(0),
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|contagemHH\(0),
	combout => \inst6|contagemHL~1_combout\);

-- Location: LCCOMB_X21_Y9_N24
\inst6|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~0_combout\ = \inst6|contagemHL\(3) $ (((\inst6|contagemHL\(2) & (\inst6|contagemHL\(0) & \inst6|contagemHL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(2),
	datab => \inst6|contagemHL\(0),
	datac => \inst6|contagemHL\(3),
	datad => \inst6|contagemHL\(1),
	combout => \inst6|Add4~0_combout\);

-- Location: LCCOMB_X22_Y9_N26
\inst6|contagemHL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~2_combout\ = ((!\inst6|Equal4~0_combout\ & \inst6|Add4~0_combout\)) # (!\inst6|contagemHL\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contagemHL\(0),
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|Add4~0_combout\,
	combout => \inst6|contagemHL~2_combout\);

-- Location: LCCOMB_X22_Y9_N22
\inst6|contagemHL~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~4_combout\ = (\inst6|contagemHL~1_combout\) # ((\inst6|contagemHH~0_combout\ & ((\inst6|contagemHL~2_combout\))) # (!\inst6|contagemHH~0_combout\ & (\inst6|contagemHL~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL~3_combout\,
	datab => \inst6|contagemHL~1_combout\,
	datac => \inst6|contagemHL~2_combout\,
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHL~4_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst6|contagemHL~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~7_combout\ = (\inst9|result~q\ & ((\inst6|contagemHL~4_combout\) # ((\inst6|contagemHL~5_combout\) # (!\inst6|contagemHL~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL~4_combout\,
	datab => \inst9|result~q\,
	datac => \inst6|contagemHL~5_combout\,
	datad => \inst6|contagemHL~6_combout\,
	combout => \inst6|contagemHL~7_combout\);

-- Location: LCCOMB_X22_Y9_N6
\inst6|contagemHL~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~11_combout\ = (\inst6|contagemHH~0_combout\ & (((\inst6|Add4~0_combout\ & !\inst6|Equal4~0_combout\)))) # (!\inst6|contagemHH~0_combout\ & (\inst6|contagemHL\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(3),
	datab => \inst6|Add4~0_combout\,
	datac => \inst6|Equal4~0_combout\,
	datad => \inst6|contagemHH~0_combout\,
	combout => \inst6|contagemHL~11_combout\);

-- Location: LCCOMB_X22_Y9_N0
\inst6|contagemHL~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contagemHL~12_combout\ = (\inst6|contagemHL~7_combout\ & ((\inst6|contagemHL~11_combout\) # ((!\inst9|result~q\ & \inst5|hl[3]~14_combout\)))) # (!\inst6|contagemHL~7_combout\ & (!\inst9|result~q\ & ((\inst5|hl[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL~7_combout\,
	datab => \inst9|result~q\,
	datac => \inst6|contagemHL~11_combout\,
	datad => \inst5|hl[3]~14_combout\,
	combout => \inst6|contagemHL~12_combout\);

-- Location: FF_X22_Y9_N1
\inst6|contagemHL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|aux~clkctrl_outclk\,
	d => \inst6|contagemHL~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contagemHL\(3));

-- Location: LCCOMB_X18_Y8_N12
\inst26|hl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|hl[0]~2_combout\ = !\inst26|hl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|hl\(0),
	combout => \inst26|hl[0]~2_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst26|digito[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|digito[0]~2_combout\ = !\inst26|digito\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|digito\(0),
	combout => \inst26|digito[0]~2_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst26|edicao\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|edicao~combout\ = (\inst9|result~q\) # ((\inst4|aux\(0)) # (!\inst4|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|result~q\,
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst26|edicao~combout\);

-- Location: FF_X17_Y10_N25
\inst26|digito[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|digito[0]~2_combout\,
	clrn => \inst26|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|digito\(0));

-- Location: LCCOMB_X17_Y10_N6
\inst26|digito~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|digito~1_combout\ = (\inst26|digito\(1) & ((!\inst26|digito\(0)))) # (!\inst26|digito\(1) & (!\inst26|digito\(2) & \inst26|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|digito\(2),
	datac => \inst26|digito\(1),
	datad => \inst26|digito\(0),
	combout => \inst26|digito~1_combout\);

-- Location: FF_X17_Y10_N7
\inst26|digito[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|digito~1_combout\,
	clrn => \inst26|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|digito\(1));

-- Location: LCCOMB_X17_Y10_N26
\inst26|digito~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|digito~0_combout\ = (\inst26|digito\(2) & ((!\inst26|digito\(0)))) # (!\inst26|digito\(2) & (\inst26|digito\(1) & \inst26|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|digito\(1),
	datac => \inst26|digito\(2),
	datad => \inst26|digito\(0),
	combout => \inst26|digito~0_combout\);

-- Location: FF_X17_Y10_N27
\inst26|digito[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|digito~0_combout\,
	clrn => \inst26|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|digito\(2));

-- Location: LCCOMB_X18_Y8_N20
\inst26|hl[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|hl[3]~0_combout\ = (!\inst26|digito\(0) & (\inst26|digito\(2) & !\inst26|edicao~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|digito\(0),
	datac => \inst26|digito\(2),
	datad => \inst26|edicao~combout\,
	combout => \inst26|hl[3]~0_combout\);

-- Location: FF_X18_Y8_N13
\inst26|hl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|hl[0]~2_combout\,
	ena => \inst26|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|hl\(0));

-- Location: LCCOMB_X18_Y8_N26
\inst26|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux16~0_combout\ = (\inst26|hl\(1) & (((!\inst26|hl\(0))))) # (!\inst26|hl\(1) & (\inst26|hl\(0) & ((\inst26|hl\(2)) # (!\inst26|hl~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hl~1_combout\,
	datab => \inst26|hl\(2),
	datac => \inst26|hl\(1),
	datad => \inst26|hl\(0),
	combout => \inst26|Mux16~0_combout\);

-- Location: FF_X18_Y8_N27
\inst26|hl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux16~0_combout\,
	ena => \inst26|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|hl\(1));

-- Location: LCCOMB_X18_Y8_N16
\inst26|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux15~0_combout\ = (\inst26|hl\(1) & ((\inst26|hl\(2) & ((!\inst26|hl\(0)))) # (!\inst26|hl\(2) & (!\inst26|hl~1_combout\ & \inst26|hl\(0))))) # (!\inst26|hl\(1) & (((\inst26|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hl\(1),
	datab => \inst26|hl~1_combout\,
	datac => \inst26|hl\(2),
	datad => \inst26|hl\(0),
	combout => \inst26|Mux15~0_combout\);

-- Location: FF_X18_Y8_N17
\inst26|hl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux15~0_combout\,
	ena => \inst26|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|hl\(2));

-- Location: LCCOMB_X18_Y8_N18
\inst26|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux18~0_combout\ = (\inst26|hh\(0) & (!\inst26|hl\(3) & (!\inst26|hh\(1) & !\inst26|hl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hh\(0),
	datab => \inst26|hl\(3),
	datac => \inst26|hh\(1),
	datad => \inst26|hl\(2),
	combout => \inst26|Mux18~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\inst26|hh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|hh[0]~0_combout\ = (\inst26|digito\(0) & (\inst26|digito\(2) & !\inst26|edicao~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|digito\(0),
	datac => \inst26|digito\(2),
	datad => \inst26|edicao~combout\,
	combout => \inst26|hh[0]~0_combout\);

-- Location: FF_X18_Y8_N19
\inst26|hh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux18~0_combout\,
	ena => \inst26|hh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|hh\(1));

-- Location: LCCOMB_X18_Y8_N0
\inst26|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux19~0_combout\ = (!\inst26|hh\(0) & !\inst26|hh\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|hh\(0),
	datad => \inst26|hh\(1),
	combout => \inst26|Mux19~0_combout\);

-- Location: FF_X18_Y8_N1
\inst26|hh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux19~0_combout\,
	ena => \inst26|hh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|hh\(0));

-- Location: LCCOMB_X18_Y8_N6
\inst26|hl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|hl~1_combout\ = (\inst26|hl\(1) & (!\inst26|hh\(0) & (\inst26|hh\(1) & !\inst26|hl\(3)))) # (!\inst26|hl\(1) & (\inst26|hl\(3) & ((\inst26|hh\(0)) # (!\inst26|hh\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hh\(0),
	datab => \inst26|hh\(1),
	datac => \inst26|hl\(1),
	datad => \inst26|hl\(3),
	combout => \inst26|hl~1_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst26|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Add5~0_combout\ = \inst26|hl\(3) $ (((\inst26|hl\(0) & (\inst26|hl\(1) & \inst26|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hl\(0),
	datab => \inst26|hl\(3),
	datac => \inst26|hl\(1),
	datad => \inst26|hl\(2),
	combout => \inst26|Add5~0_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst26|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux14~0_combout\ = (\inst26|Add5~0_combout\ & (((\inst26|hl\(2)) # (!\inst26|hl\(0))) # (!\inst26|hl~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hl~1_combout\,
	datab => \inst26|hl\(2),
	datac => \inst26|Add5~0_combout\,
	datad => \inst26|hl\(0),
	combout => \inst26|Mux14~0_combout\);

-- Location: FF_X18_Y8_N3
\inst26|hl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux14~0_combout\,
	ena => \inst26|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|hl\(3));

-- Location: LCCOMB_X17_Y10_N12
\inst12|igual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~3_combout\ = (\inst6|contagemHL\(3) & ((\inst6|contagemHL\(2) $ (\inst26|hl\(2))) # (!\inst26|hl\(3)))) # (!\inst6|contagemHL\(3) & ((\inst26|hl\(3)) # (\inst6|contagemHL\(2) $ (\inst26|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(3),
	datab => \inst6|contagemHL\(2),
	datac => \inst26|hl\(3),
	datad => \inst26|hl\(2),
	combout => \inst12|igual~3_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst12|igual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~2_combout\ = (\inst6|contagemHL\(0) & ((\inst6|contagemHL\(1) $ (\inst26|hl\(1))) # (!\inst26|hl\(0)))) # (!\inst6|contagemHL\(0) & ((\inst26|hl\(0)) # (\inst6|contagemHL\(1) $ (\inst26|hl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(0),
	datab => \inst6|contagemHL\(1),
	datac => \inst26|hl\(0),
	datad => \inst26|hl\(1),
	combout => \inst12|igual~2_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst26|ml[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|ml[0]~2_combout\ = !\inst26|ml\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ml\(0),
	combout => \inst26|ml[0]~2_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst26|ml[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|ml[3]~0_combout\ = (\inst26|digito\(1) & (!\inst26|edicao~combout\ & !\inst26|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|digito\(1),
	datab => \inst26|edicao~combout\,
	datad => \inst26|digito\(0),
	combout => \inst26|ml[3]~0_combout\);

-- Location: FF_X17_Y8_N7
\inst26|ml[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|ml[0]~2_combout\,
	ena => \inst26|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|ml\(0));

-- Location: LCCOMB_X17_Y8_N20
\inst26|ml[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|ml[2]~1_combout\ = \inst26|ml\(2) $ (((\inst26|ml\(0) & (\inst26|ml[3]~0_combout\ & \inst26|ml\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ml\(0),
	datab => \inst26|ml[3]~0_combout\,
	datac => \inst26|ml\(2),
	datad => \inst26|ml\(1),
	combout => \inst26|ml[2]~1_combout\);

-- Location: FF_X17_Y8_N21
\inst26|ml[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|ml[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|ml\(2));

-- Location: LCCOMB_X17_Y8_N18
\inst26|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux7~0_combout\ = (\inst26|ml\(1) & (\inst26|ml\(3) $ (((\inst26|ml\(2) & \inst26|ml\(0)))))) # (!\inst26|ml\(1) & (\inst26|ml\(3) & ((\inst26|ml\(2)) # (!\inst26|ml\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ml\(1),
	datab => \inst26|ml\(2),
	datac => \inst26|ml\(3),
	datad => \inst26|ml\(0),
	combout => \inst26|Mux7~0_combout\);

-- Location: FF_X17_Y8_N19
\inst26|ml[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux7~0_combout\,
	ena => \inst26|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|ml\(3));

-- Location: LCCOMB_X17_Y8_N4
\inst26|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux9~0_combout\ = (\inst26|ml\(0) & (!\inst26|ml\(1) & ((\inst26|ml\(2)) # (!\inst26|ml\(3))))) # (!\inst26|ml\(0) & (((\inst26|ml\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ml\(0),
	datab => \inst26|ml\(3),
	datac => \inst26|ml\(1),
	datad => \inst26|ml\(2),
	combout => \inst26|Mux9~0_combout\);

-- Location: FF_X17_Y8_N5
\inst26|ml[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux9~0_combout\,
	ena => \inst26|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|ml\(1));

-- Location: LCCOMB_X17_Y8_N22
\inst12|igual~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~11_combout\ = (\inst26|ml\(0) & ((\inst6|contagemML\(0)) # (\inst26|ml\(1) $ (\inst6|contagemML\(1))))) # (!\inst26|ml\(0) & ((\inst26|ml\(1) $ (\inst6|contagemML\(1))) # (!\inst6|contagemML\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ml\(0),
	datab => \inst26|ml\(1),
	datac => \inst6|contagemML\(1),
	datad => \inst6|contagemML\(0),
	combout => \inst12|igual~11_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst26|sl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|sl[0]~2_combout\ = !\inst26|sl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|sl\(0),
	combout => \inst26|sl[0]~2_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst26|sl[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|sl[3]~0_combout\ = (!\inst26|digito\(1) & (!\inst26|digito\(0) & (!\inst26|digito\(2) & !\inst26|edicao~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|digito\(1),
	datab => \inst26|digito\(0),
	datac => \inst26|digito\(2),
	datad => \inst26|edicao~combout\,
	combout => \inst26|sl[3]~0_combout\);

-- Location: FF_X17_Y9_N13
\inst26|sl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|sl[0]~2_combout\,
	ena => \inst26|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sl\(0));

-- Location: LCCOMB_X17_Y8_N14
\inst26|sl[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|sl[2]~1_combout\ = \inst26|sl\(2) $ (((\inst26|sl\(0) & (\inst26|sl\(1) & \inst26|sl[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sl\(0),
	datab => \inst26|sl\(1),
	datac => \inst26|sl\(2),
	datad => \inst26|sl[3]~0_combout\,
	combout => \inst26|sl[2]~1_combout\);

-- Location: FF_X17_Y8_N15
\inst26|sl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|sl[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sl\(2));

-- Location: LCCOMB_X19_Y8_N4
\inst26|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux2~0_combout\ = (\inst26|sl\(0) & (!\inst26|sl\(1) & ((\inst26|sl\(2)) # (!\inst26|sl\(3))))) # (!\inst26|sl\(0) & (((\inst26|sl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sl\(0),
	datab => \inst26|sl\(2),
	datac => \inst26|sl\(1),
	datad => \inst26|sl\(3),
	combout => \inst26|Mux2~0_combout\);

-- Location: FF_X19_Y8_N5
\inst26|sl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux2~0_combout\,
	ena => \inst26|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sl\(1));

-- Location: LCCOMB_X17_Y9_N30
\inst26|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux0~0_combout\ = (\inst26|sl\(1) & (\inst26|sl\(3) $ (((\inst26|sl\(0) & \inst26|sl\(2)))))) # (!\inst26|sl\(1) & (\inst26|sl\(3) & ((\inst26|sl\(2)) # (!\inst26|sl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sl\(1),
	datab => \inst26|sl\(0),
	datac => \inst26|sl\(3),
	datad => \inst26|sl\(2),
	combout => \inst26|Mux0~0_combout\);

-- Location: FF_X17_Y9_N31
\inst26|sl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux0~0_combout\,
	ena => \inst26|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sl\(3));

-- Location: LCCOMB_X17_Y8_N24
\inst12|igual~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~10_combout\ = (\inst26|sl\(3) & ((\inst26|sl\(2) $ (\inst6|contagemSL\(2))) # (!\inst6|contagemSL\(3)))) # (!\inst26|sl\(3) & ((\inst6|contagemSL\(3)) # (\inst26|sl\(2) $ (\inst6|contagemSL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sl\(3),
	datab => \inst26|sl\(2),
	datac => \inst6|contagemSL\(2),
	datad => \inst6|contagemSL\(3),
	combout => \inst12|igual~10_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst12|igual~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~12_combout\ = (\inst6|contagemML\(2) & ((\inst6|contagemML\(3) $ (\inst26|ml\(3))) # (!\inst26|ml\(2)))) # (!\inst6|contagemML\(2) & ((\inst26|ml\(2)) # (\inst6|contagemML\(3) $ (\inst26|ml\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(2),
	datab => \inst26|ml\(2),
	datac => \inst6|contagemML\(3),
	datad => \inst26|ml\(3),
	combout => \inst12|igual~12_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst12|igual~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~9_combout\ = (\inst26|sl\(0) & ((\inst26|sl\(1) $ (\inst6|contagemSL\(1))) # (!\inst6|contagemSL\(0)))) # (!\inst26|sl\(0) & ((\inst6|contagemSL\(0)) # (\inst26|sl\(1) $ (\inst6|contagemSL\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sl\(0),
	datab => \inst26|sl\(1),
	datac => \inst6|contagemSL\(0),
	datad => \inst6|contagemSL\(1),
	combout => \inst12|igual~9_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst12|igual~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~13_combout\ = (\inst12|igual~11_combout\) # ((\inst12|igual~10_combout\) # ((\inst12|igual~12_combout\) # (\inst12|igual~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~11_combout\,
	datab => \inst12|igual~10_combout\,
	datac => \inst12|igual~12_combout\,
	datad => \inst12|igual~9_combout\,
	combout => \inst12|igual~13_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst26|sh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|sh[0]~1_combout\ = !\inst26|sh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|sh\(0),
	combout => \inst26|sh[0]~1_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst26|sh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|sh[0]~0_combout\ = (!\inst26|digito\(1) & (\inst26|digito\(0) & (!\inst26|digito\(2) & !\inst26|edicao~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|digito\(1),
	datab => \inst26|digito\(0),
	datac => \inst26|digito\(2),
	datad => \inst26|edicao~combout\,
	combout => \inst26|sh[0]~0_combout\);

-- Location: FF_X21_Y10_N21
\inst26|sh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|sh[0]~1_combout\,
	ena => \inst26|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sh\(0));

-- Location: LCCOMB_X21_Y10_N6
\inst26|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux5~0_combout\ = (\inst26|sh\(0) & (!\inst26|sh\(1) & !\inst26|sh\(2))) # (!\inst26|sh\(0) & (\inst26|sh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|sh\(0),
	datac => \inst26|sh\(1),
	datad => \inst26|sh\(2),
	combout => \inst26|Mux5~0_combout\);

-- Location: FF_X21_Y10_N7
\inst26|sh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux5~0_combout\,
	ena => \inst26|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sh\(1));

-- Location: LCCOMB_X21_Y10_N8
\inst26|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux4~0_combout\ = (\inst26|sh\(2) & ((!\inst26|sh\(0)))) # (!\inst26|sh\(2) & (\inst26|sh\(1) & \inst26|sh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sh\(1),
	datac => \inst26|sh\(2),
	datad => \inst26|sh\(0),
	combout => \inst26|Mux4~0_combout\);

-- Location: FF_X21_Y10_N9
\inst26|sh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux4~0_combout\,
	ena => \inst26|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|sh\(2));

-- Location: LCCOMB_X22_Y6_N0
\inst26|mh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|mh[0]~1_combout\ = !\inst26|mh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|mh\(0),
	combout => \inst26|mh[0]~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\inst26|mh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|mh[0]~0_combout\ = (\inst26|digito\(0) & (!\inst26|edicao~combout\ & \inst26|digito\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|digito\(0),
	datac => \inst26|edicao~combout\,
	datad => \inst26|digito\(1),
	combout => \inst26|mh[0]~0_combout\);

-- Location: FF_X22_Y6_N1
\inst26|mh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|mh[0]~1_combout\,
	ena => \inst26|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|mh\(0));

-- Location: LCCOMB_X22_Y10_N26
\inst12|igual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~5_combout\ = (\inst26|sh\(2) & ((\inst6|contagemMH\(0) $ (\inst26|mh\(0))) # (!\inst6|contagemSH\(2)))) # (!\inst26|sh\(2) & ((\inst6|contagemSH\(2)) # (\inst6|contagemMH\(0) $ (\inst26|mh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sh\(2),
	datab => \inst6|contagemMH\(0),
	datac => \inst26|mh\(0),
	datad => \inst6|contagemSH\(2),
	combout => \inst12|igual~5_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst26|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux12~0_combout\ = (\inst26|mh\(0) & (!\inst26|mh\(1) & !\inst26|mh\(2))) # (!\inst26|mh\(0) & (\inst26|mh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|mh\(0),
	datac => \inst26|mh\(1),
	datad => \inst26|mh\(2),
	combout => \inst26|Mux12~0_combout\);

-- Location: FF_X22_Y6_N31
\inst26|mh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux12~0_combout\,
	ena => \inst26|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|mh\(1));

-- Location: LCCOMB_X22_Y6_N4
\inst26|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Mux11~0_combout\ = (\inst26|mh\(2) & ((!\inst26|mh\(0)))) # (!\inst26|mh\(2) & (\inst26|mh\(1) & \inst26|mh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|mh\(1),
	datac => \inst26|mh\(2),
	datad => \inst26|mh\(0),
	combout => \inst26|Mux11~0_combout\);

-- Location: FF_X22_Y6_N5
\inst26|mh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst26|Mux11~0_combout\,
	ena => \inst26|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|mh\(2));

-- Location: LCCOMB_X22_Y10_N4
\inst12|igual~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~6_combout\ = (\inst6|contagemMH\(1) & ((\inst6|contagemMH\(2) $ (\inst26|mh\(2))) # (!\inst26|mh\(1)))) # (!\inst6|contagemMH\(1) & ((\inst26|mh\(1)) # (\inst6|contagemMH\(2) $ (\inst26|mh\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemMH\(1),
	datab => \inst6|contagemMH\(2),
	datac => \inst26|mh\(2),
	datad => \inst26|mh\(1),
	combout => \inst12|igual~6_combout\);

-- Location: LCCOMB_X22_Y10_N22
\inst12|igual~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~7_combout\ = (\inst6|contagemHH\(1) & ((\inst6|contagemHH\(0) $ (\inst26|hh\(0))) # (!\inst26|hh\(1)))) # (!\inst6|contagemHH\(1) & ((\inst26|hh\(1)) # (\inst6|contagemHH\(0) $ (\inst26|hh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH\(1),
	datab => \inst6|contagemHH\(0),
	datac => \inst26|hh\(1),
	datad => \inst26|hh\(0),
	combout => \inst12|igual~7_combout\);

-- Location: LCCOMB_X25_Y10_N6
\inst12|igual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~4_combout\ = (\inst6|contagemSH\(1) & ((\inst6|contagemSH\(0) $ (\inst26|sh\(0))) # (!\inst26|sh\(1)))) # (!\inst6|contagemSH\(1) & ((\inst26|sh\(1)) # (\inst6|contagemSH\(0) $ (\inst26|sh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSH\(1),
	datab => \inst6|contagemSH\(0),
	datac => \inst26|sh\(0),
	datad => \inst26|sh\(1),
	combout => \inst12|igual~4_combout\);

-- Location: LCCOMB_X22_Y10_N28
\inst12|igual~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~8_combout\ = (\inst12|igual~5_combout\) # ((\inst12|igual~6_combout\) # ((\inst12|igual~7_combout\) # (\inst12|igual~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~5_combout\,
	datab => \inst12|igual~6_combout\,
	datac => \inst12|igual~7_combout\,
	datad => \inst12|igual~4_combout\,
	combout => \inst12|igual~8_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst12|igual~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~14_combout\ = (\inst12|igual~3_combout\) # ((\inst12|igual~2_combout\) # ((\inst12|igual~13_combout\) # (\inst12|igual~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~3_combout\,
	datab => \inst12|igual~2_combout\,
	datac => \inst12|igual~13_combout\,
	datad => \inst12|igual~8_combout\,
	combout => \inst12|igual~14_combout\);

-- Location: CLKCTRL_G8
\inst9|result~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst9|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst9|result~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y10_N26
\inst12|aux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux4~0_combout\ = \inst12|aux4~q\ $ (((!\inst12|igual~15_combout\ & \inst26|edicao~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst26|edicao~combout\,
	datac => \inst12|aux4~q\,
	combout => \inst12|aux4~0_combout\);

-- Location: CLKCTRL_G9
\inst8|result~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|result~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y10_N28
\inst12|aux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux3~0_combout\ = \inst12|aux3~q\ $ (((!\inst12|igual~15_combout\ & (\inst12|aux4~q\ & \inst26|edicao~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst12|aux4~q\,
	datac => \inst12|aux3~q\,
	datad => \inst26|edicao~combout\,
	combout => \inst12|aux3~0_combout\);

-- Location: FF_X17_Y10_N29
\inst12|aux3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst12|aux3~0_combout\,
	clrn => \inst12|ALT_INV_aux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|aux3~q\);

-- Location: LCCOMB_X17_Y10_N18
\inst12|aux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux1~0_combout\ = (\inst12|aux3~q\ & (\inst12|aux4~q\ & \inst12|aux2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|aux3~q\,
	datac => \inst12|aux4~q\,
	datad => \inst12|aux2~q\,
	combout => \inst12|aux1~0_combout\);

-- Location: LCCOMB_X18_Y10_N20
\inst12|aux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux1~1_combout\ = (\inst12|aux1~q\) # ((!\inst12|igual~15_combout\ & (\inst12|aux1~0_combout\ & \inst26|edicao~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst12|aux1~0_combout\,
	datac => \inst12|aux1~q\,
	datad => \inst26|edicao~combout\,
	combout => \inst12|aux1~1_combout\);

-- Location: FF_X18_Y10_N21
\inst12|aux1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|ALT_INV_result~clkctrl_outclk\,
	d => \inst12|aux1~1_combout\,
	clrn => \inst12|ALT_INV_aux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|aux1~q\);

-- Location: LCCOMB_X18_Y10_N30
\inst12|aux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux1~2_combout\ = (\inst12|aux2~q\ & (\inst12|aux1~q\ & \inst12|aux3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|aux2~q\,
	datab => \inst12|aux1~q\,
	datad => \inst12|aux3~q\,
	combout => \inst12|aux1~2_combout\);

-- Location: LCCOMB_X18_Y10_N12
\inst12|aux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux1~3_combout\ = (\inst12|aux1~2_combout\ & (\inst12|aux4~q\ & (!\inst12|igual~15_combout\ & \inst26|edicao~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|aux1~2_combout\,
	datab => \inst12|aux4~q\,
	datac => \inst12|igual~15_combout\,
	datad => \inst26|edicao~combout\,
	combout => \inst12|aux1~3_combout\);

-- Location: FF_X18_Y10_N27
\inst12|aux4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst12|aux4~0_combout\,
	clrn => \inst12|ALT_INV_aux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|aux4~q\);

-- Location: LCCOMB_X17_Y10_N0
\inst12|aux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux2~0_combout\ = ((!\inst12|aux3~q\) # (!\inst26|edicao~combout\)) # (!\inst12|aux4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|aux4~q\,
	datac => \inst26|edicao~combout\,
	datad => \inst12|aux3~q\,
	combout => \inst12|aux2~0_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst12|aux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|aux2~1_combout\ = \inst12|aux2~q\ $ (((!\inst12|igual~15_combout\ & !\inst12|aux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst12|aux2~0_combout\,
	datac => \inst12|aux2~q\,
	combout => \inst12|aux2~1_combout\);

-- Location: FF_X17_Y10_N31
\inst12|aux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_result~clkctrl_outclk\,
	d => \inst12|aux2~1_combout\,
	clrn => \inst12|ALT_INV_aux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|aux2~q\);

-- Location: LCCOMB_X17_Y10_N4
\inst12|igual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~1_combout\ = (\inst12|aux2~q\ & (\inst12|aux4~q\ & (\inst12|aux1~q\ & \inst12|aux3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|aux2~q\,
	datab => \inst12|aux4~q\,
	datac => \inst12|aux1~q\,
	datad => \inst12|aux3~q\,
	combout => \inst12|igual~1_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst12|igual~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|igual~15_combout\ = ((\inst12|igual~15_combout\ & (\inst12|igual~14_combout\)) # (!\inst12|igual~15_combout\ & ((\inst12|igual~1_combout\)))) # (!\inst26|edicao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~14_combout\,
	datab => \inst12|igual~15_combout\,
	datac => \inst12|igual~1_combout\,
	datad => \inst26|edicao~combout\,
	combout => \inst12|igual~15_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst27|edicao\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|edicao~combout\ = (\inst9|result~q\) # ((!\inst4|aux\(1)) # (!\inst4|aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~q\,
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst27|edicao~combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst14|aux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux2~0_combout\ = \inst14|aux2~q\ $ (((\inst27|edicao~combout\ & !\inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|edicao~combout\,
	datab => \inst14|igual~15_combout\,
	datac => \inst14|aux2~q\,
	combout => \inst14|aux2~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst14|aux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux1~0_combout\ = \inst14|aux1~q\ $ (((\inst14|aux2~q\ & (\inst27|edicao~combout\ & !\inst14|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|aux2~q\,
	datab => \inst27|edicao~combout\,
	datac => \inst14|aux1~q\,
	datad => \inst14|igual~15_combout\,
	combout => \inst14|aux1~0_combout\);

-- Location: FF_X19_Y9_N27
\inst14|aux1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|ALT_INV_result~clkctrl_outclk\,
	d => \inst14|aux1~0_combout\,
	clrn => \inst14|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|aux1~q\);

-- Location: LCCOMB_X19_Y9_N30
\inst14|aux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux3~0_combout\ = ((!\inst14|aux1~q\) # (!\inst27|edicao~combout\)) # (!\inst14|aux2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|aux2~q\,
	datac => \inst27|edicao~combout\,
	datad => \inst14|aux1~q\,
	combout => \inst14|aux3~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\inst14|aux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux3~1_combout\ = \inst14|aux3~q\ $ (((!\inst14|aux3~0_combout\ & !\inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|aux3~0_combout\,
	datac => \inst14|aux3~q\,
	datad => \inst14|igual~15_combout\,
	combout => \inst14|aux3~1_combout\);

-- Location: FF_X19_Y9_N17
\inst14|aux3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst14|aux3~1_combout\,
	clrn => \inst14|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|aux3~q\);

-- Location: LCCOMB_X19_Y9_N12
\inst14|aux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux4~0_combout\ = (\inst14|aux1~q\ & (\inst14|aux3~q\ & \inst14|aux2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|aux1~q\,
	datab => \inst14|aux3~q\,
	datac => \inst14|aux2~q\,
	combout => \inst14|aux4~0_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst14|aux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux4~1_combout\ = (\inst14|aux4~q\) # ((\inst27|edicao~combout\ & (\inst14|aux4~0_combout\ & !\inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|edicao~combout\,
	datab => \inst14|aux4~0_combout\,
	datac => \inst14|aux4~q\,
	datad => \inst14|igual~15_combout\,
	combout => \inst14|aux4~1_combout\);

-- Location: FF_X18_Y9_N27
\inst14|aux4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst14|aux4~1_combout\,
	clrn => \inst14|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|aux4~q\);

-- Location: LCCOMB_X19_Y9_N14
\inst14|aux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux4~2_combout\ = (\inst14|aux4~q\ & (\inst14|aux2~q\ & \inst14|aux3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|aux4~q\,
	datac => \inst14|aux2~q\,
	datad => \inst14|aux3~q\,
	combout => \inst14|aux4~2_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst14|aux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|aux4~3_combout\ = (\inst14|aux4~2_combout\ & (!\inst14|igual~15_combout\ & (\inst27|edicao~combout\ & \inst14|aux1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|aux4~2_combout\,
	datab => \inst14|igual~15_combout\,
	datac => \inst27|edicao~combout\,
	datad => \inst14|aux1~q\,
	combout => \inst14|aux4~3_combout\);

-- Location: FF_X18_Y9_N17
\inst14|aux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_result~clkctrl_outclk\,
	d => \inst14|aux2~0_combout\,
	clrn => \inst14|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|aux2~q\);

-- Location: LCCOMB_X19_Y9_N22
\inst14|igual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~1_combout\ = (\inst14|aux2~q\ & (\inst14|aux4~q\ & (\inst14|aux1~q\ & \inst14|aux3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|aux2~q\,
	datab => \inst14|aux4~q\,
	datac => \inst14|aux1~q\,
	datad => \inst14|aux3~q\,
	combout => \inst14|igual~1_combout\);

-- Location: LCCOMB_X19_Y6_N0
\inst27|hl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|hl[0]~2_combout\ = !\inst27|hl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst27|hl\(0),
	combout => \inst27|hl[0]~2_combout\);

-- Location: LCCOMB_X21_Y9_N12
\inst27|digito[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|digito[0]~2_combout\ = !\inst27|digito\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|digito\(0),
	combout => \inst27|digito[0]~2_combout\);

-- Location: FF_X21_Y9_N13
\inst27|digito[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|digito[0]~2_combout\,
	clrn => \inst27|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|digito\(0));

-- Location: LCCOMB_X21_Y9_N26
\inst27|digito~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|digito~1_combout\ = (\inst27|digito\(1) & ((!\inst27|digito\(0)))) # (!\inst27|digito\(1) & (!\inst27|digito\(2) & \inst27|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|digito\(2),
	datac => \inst27|digito\(1),
	datad => \inst27|digito\(0),
	combout => \inst27|digito~1_combout\);

-- Location: FF_X21_Y9_N27
\inst27|digito[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|digito~1_combout\,
	clrn => \inst27|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|digito\(1));

-- Location: LCCOMB_X21_Y9_N6
\inst27|digito~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|digito~0_combout\ = (\inst27|digito\(2) & ((!\inst27|digito\(0)))) # (!\inst27|digito\(2) & (\inst27|digito\(1) & \inst27|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|digito\(1),
	datac => \inst27|digito\(2),
	datad => \inst27|digito\(0),
	combout => \inst27|digito~0_combout\);

-- Location: FF_X21_Y9_N7
\inst27|digito[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|digito~0_combout\,
	clrn => \inst27|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|digito\(2));

-- Location: LCCOMB_X18_Y6_N20
\inst27|hl[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|hl[3]~0_combout\ = (!\inst27|edicao~combout\ & (!\inst27|digito\(0) & \inst27|digito\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst27|edicao~combout\,
	datac => \inst27|digito\(0),
	datad => \inst27|digito\(2),
	combout => \inst27|hl[3]~0_combout\);

-- Location: FF_X18_Y6_N13
\inst27|hl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	asdata => \inst27|hl[0]~2_combout\,
	sload => VCC,
	ena => \inst27|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|hl\(0));

-- Location: LCCOMB_X21_Y7_N22
\inst27|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux18~0_combout\ = (!\inst27|hl\(3) & (\inst27|hh\(0) & (!\inst27|hh\(1) & !\inst27|hl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(3),
	datab => \inst27|hh\(0),
	datac => \inst27|hh\(1),
	datad => \inst27|hl\(2),
	combout => \inst27|Mux18~0_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst27|hh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|hh[0]~0_combout\ = (\inst27|digito\(2) & (!\inst27|edicao~combout\ & \inst27|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|digito\(2),
	datac => \inst27|edicao~combout\,
	datad => \inst27|digito\(0),
	combout => \inst27|hh[0]~0_combout\);

-- Location: FF_X21_Y7_N23
\inst27|hh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux18~0_combout\,
	ena => \inst27|hh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|hh\(1));

-- Location: LCCOMB_X21_Y7_N8
\inst27|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux19~0_combout\ = (!\inst27|hh\(1) & !\inst27|hh\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hh\(1),
	datac => \inst27|hh\(0),
	combout => \inst27|Mux19~0_combout\);

-- Location: FF_X21_Y7_N9
\inst27|hh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux19~0_combout\,
	ena => \inst27|hh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|hh\(0));

-- Location: LCCOMB_X18_Y6_N6
\inst27|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux16~0_combout\ = (\inst27|hl\(0) & (!\inst27|hl\(1) & ((\inst27|hl\(2)) # (!\inst27|hl~1_combout\)))) # (!\inst27|hl\(0) & (((\inst27|hl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(0),
	datab => \inst27|hl~1_combout\,
	datac => \inst27|hl\(1),
	datad => \inst27|hl\(2),
	combout => \inst27|Mux16~0_combout\);

-- Location: FF_X18_Y6_N7
\inst27|hl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux16~0_combout\,
	ena => \inst27|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|hl\(1));

-- Location: LCCOMB_X21_Y7_N20
\inst27|hl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|hl~1_combout\ = (\inst27|hl\(3) & (!\inst27|hl\(1) & ((\inst27|hh\(0)) # (!\inst27|hh\(1))))) # (!\inst27|hl\(3) & (!\inst27|hh\(0) & (\inst27|hl\(1) & \inst27|hh\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(3),
	datab => \inst27|hh\(0),
	datac => \inst27|hl\(1),
	datad => \inst27|hh\(1),
	combout => \inst27|hl~1_combout\);

-- Location: LCCOMB_X18_Y6_N16
\inst27|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux15~0_combout\ = (\inst27|hl\(0) & ((\inst27|hl\(2) & ((!\inst27|hl\(1)))) # (!\inst27|hl\(2) & (!\inst27|hl~1_combout\ & \inst27|hl\(1))))) # (!\inst27|hl\(0) & (((\inst27|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(0),
	datab => \inst27|hl~1_combout\,
	datac => \inst27|hl\(2),
	datad => \inst27|hl\(1),
	combout => \inst27|Mux15~0_combout\);

-- Location: FF_X18_Y6_N17
\inst27|hl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux15~0_combout\,
	ena => \inst27|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|hl\(2));

-- Location: LCCOMB_X18_Y6_N12
\inst27|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Add5~0_combout\ = \inst27|hl\(3) $ (((\inst27|hl\(1) & (\inst27|hl\(0) & \inst27|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(1),
	datab => \inst27|hl\(3),
	datac => \inst27|hl\(0),
	datad => \inst27|hl\(2),
	combout => \inst27|Add5~0_combout\);

-- Location: LCCOMB_X18_Y6_N2
\inst27|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux14~0_combout\ = (\inst27|Add5~0_combout\ & (((\inst27|hl\(2)) # (!\inst27|hl~1_combout\)) # (!\inst27|hl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(0),
	datab => \inst27|hl\(2),
	datac => \inst27|hl~1_combout\,
	datad => \inst27|Add5~0_combout\,
	combout => \inst27|Mux14~0_combout\);

-- Location: FF_X18_Y6_N3
\inst27|hl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux14~0_combout\,
	ena => \inst27|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|hl\(3));

-- Location: LCCOMB_X19_Y9_N10
\inst14|igual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~3_combout\ = (\inst27|hl\(3) & ((\inst6|contagemHL\(2) $ (\inst27|hl\(2))) # (!\inst6|contagemHL\(3)))) # (!\inst27|hl\(3) & ((\inst6|contagemHL\(3)) # (\inst6|contagemHL\(2) $ (\inst27|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hl\(3),
	datab => \inst6|contagemHL\(3),
	datac => \inst6|contagemHL\(2),
	datad => \inst27|hl\(2),
	combout => \inst14|igual~3_combout\);

-- Location: LCCOMB_X22_Y9_N30
\inst14|igual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~2_combout\ = (\inst6|contagemHL\(1) & ((\inst6|contagemHL\(0) $ (\inst27|hl\(0))) # (!\inst27|hl\(1)))) # (!\inst6|contagemHL\(1) & ((\inst27|hl\(1)) # (\inst6|contagemHL\(0) $ (\inst27|hl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(1),
	datab => \inst6|contagemHL\(0),
	datac => \inst27|hl\(0),
	datad => \inst27|hl\(1),
	combout => \inst14|igual~2_combout\);

-- Location: LCCOMB_X23_Y9_N24
\inst27|sl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|sl[0]~2_combout\ = !\inst27|sl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|sl\(0),
	combout => \inst27|sl[0]~2_combout\);

-- Location: LCCOMB_X23_Y9_N4
\inst27|sl[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|sl[3]~0_combout\ = (!\inst27|digito\(2) & (!\inst27|edicao~combout\ & (!\inst27|digito\(0) & !\inst27|digito\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|digito\(2),
	datab => \inst27|edicao~combout\,
	datac => \inst27|digito\(0),
	datad => \inst27|digito\(1),
	combout => \inst27|sl[3]~0_combout\);

-- Location: FF_X23_Y9_N25
\inst27|sl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|sl[0]~2_combout\,
	ena => \inst27|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sl\(0));

-- Location: LCCOMB_X23_Y9_N16
\inst27|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux0~0_combout\ = (\inst27|sl\(2) & (\inst27|sl\(3) $ (((\inst27|sl\(1) & \inst27|sl\(0)))))) # (!\inst27|sl\(2) & (\inst27|sl\(3) & ((\inst27|sl\(1)) # (!\inst27|sl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sl\(2),
	datab => \inst27|sl\(1),
	datac => \inst27|sl\(3),
	datad => \inst27|sl\(0),
	combout => \inst27|Mux0~0_combout\);

-- Location: FF_X23_Y9_N17
\inst27|sl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux0~0_combout\,
	ena => \inst27|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sl\(3));

-- Location: LCCOMB_X23_Y9_N14
\inst27|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux2~0_combout\ = (\inst27|sl\(0) & (!\inst27|sl\(1) & ((\inst27|sl\(2)) # (!\inst27|sl\(3))))) # (!\inst27|sl\(0) & (((\inst27|sl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sl\(2),
	datab => \inst27|sl\(0),
	datac => \inst27|sl\(1),
	datad => \inst27|sl\(3),
	combout => \inst27|Mux2~0_combout\);

-- Location: FF_X23_Y9_N15
\inst27|sl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux2~0_combout\,
	ena => \inst27|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sl\(1));

-- Location: LCCOMB_X24_Y9_N24
\inst27|sl[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|sl[2]~1_combout\ = \inst27|sl\(2) $ (((\inst27|sl\(0) & (\inst27|sl[3]~0_combout\ & \inst27|sl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sl\(0),
	datab => \inst27|sl[3]~0_combout\,
	datac => \inst27|sl\(2),
	datad => \inst27|sl\(1),
	combout => \inst27|sl[2]~1_combout\);

-- Location: FF_X24_Y9_N25
\inst27|sl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|sl[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sl\(2));

-- Location: LCCOMB_X24_Y9_N26
\inst14|igual~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~10_combout\ = (\inst6|contagemSL\(3) & ((\inst27|sl\(2) $ (\inst6|contagemSL\(2))) # (!\inst27|sl\(3)))) # (!\inst6|contagemSL\(3) & ((\inst27|sl\(3)) # (\inst27|sl\(2) $ (\inst6|contagemSL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(3),
	datab => \inst27|sl\(2),
	datac => \inst27|sl\(3),
	datad => \inst6|contagemSL\(2),
	combout => \inst14|igual~10_combout\);

-- Location: LCCOMB_X24_Y9_N20
\inst27|ml[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|ml[0]~2_combout\ = !\inst27|ml\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ml\(0),
	combout => \inst27|ml[0]~2_combout\);

-- Location: LCCOMB_X24_Y9_N28
\inst27|ml[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|ml[3]~0_combout\ = (!\inst27|edicao~combout\ & (!\inst27|digito\(0) & \inst27|digito\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|edicao~combout\,
	datac => \inst27|digito\(0),
	datad => \inst27|digito\(1),
	combout => \inst27|ml[3]~0_combout\);

-- Location: FF_X24_Y9_N21
\inst27|ml[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|ml[0]~2_combout\,
	ena => \inst27|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|ml\(0));

-- Location: LCCOMB_X24_Y9_N16
\inst27|ml[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|ml[2]~1_combout\ = \inst27|ml\(2) $ (((\inst27|ml\(1) & (\inst27|ml\(0) & \inst27|ml[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ml\(1),
	datab => \inst27|ml\(0),
	datac => \inst27|ml\(2),
	datad => \inst27|ml[3]~0_combout\,
	combout => \inst27|ml[2]~1_combout\);

-- Location: FF_X24_Y9_N17
\inst27|ml[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|ml[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|ml\(2));

-- Location: LCCOMB_X24_Y9_N30
\inst27|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux9~0_combout\ = (\inst27|ml\(0) & (!\inst27|ml\(1) & ((\inst27|ml\(2)) # (!\inst27|ml\(3))))) # (!\inst27|ml\(0) & (((\inst27|ml\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ml\(3),
	datab => \inst27|ml\(0),
	datac => \inst27|ml\(1),
	datad => \inst27|ml\(2),
	combout => \inst27|Mux9~0_combout\);

-- Location: FF_X24_Y9_N31
\inst27|ml[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux9~0_combout\,
	ena => \inst27|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|ml\(1));

-- Location: LCCOMB_X24_Y9_N22
\inst27|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux7~0_combout\ = (\inst27|ml\(1) & (\inst27|ml\(3) $ (((\inst27|ml\(0) & \inst27|ml\(2)))))) # (!\inst27|ml\(1) & (\inst27|ml\(3) & ((\inst27|ml\(2)) # (!\inst27|ml\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ml\(1),
	datab => \inst27|ml\(0),
	datac => \inst27|ml\(3),
	datad => \inst27|ml\(2),
	combout => \inst27|Mux7~0_combout\);

-- Location: FF_X24_Y9_N23
\inst27|ml[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux7~0_combout\,
	ena => \inst27|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|ml\(3));

-- Location: LCCOMB_X24_Y9_N8
\inst14|igual~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~12_combout\ = (\inst27|ml\(3) & ((\inst6|contagemML\(2) $ (\inst27|ml\(2))) # (!\inst6|contagemML\(3)))) # (!\inst27|ml\(3) & ((\inst6|contagemML\(3)) # (\inst6|contagemML\(2) $ (\inst27|ml\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ml\(3),
	datab => \inst6|contagemML\(2),
	datac => \inst6|contagemML\(3),
	datad => \inst27|ml\(2),
	combout => \inst14|igual~12_combout\);

-- Location: LCCOMB_X23_Y8_N10
\inst14|igual~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~11_combout\ = (\inst6|contagemML\(0) & ((\inst27|ml\(0)) # (\inst6|contagemML\(1) $ (\inst27|ml\(1))))) # (!\inst6|contagemML\(0) & ((\inst6|contagemML\(1) $ (\inst27|ml\(1))) # (!\inst27|ml\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(0),
	datab => \inst6|contagemML\(1),
	datac => \inst27|ml\(1),
	datad => \inst27|ml\(0),
	combout => \inst14|igual~11_combout\);

-- Location: LCCOMB_X24_Y11_N14
\inst14|igual~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~9_combout\ = (\inst6|contagemSL\(1) & ((\inst6|contagemSL\(0) $ (\inst27|sl\(0))) # (!\inst27|sl\(1)))) # (!\inst6|contagemSL\(1) & ((\inst27|sl\(1)) # (\inst6|contagemSL\(0) $ (\inst27|sl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(1),
	datab => \inst6|contagemSL\(0),
	datac => \inst27|sl\(1),
	datad => \inst27|sl\(0),
	combout => \inst14|igual~9_combout\);

-- Location: LCCOMB_X24_Y9_N14
\inst14|igual~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~13_combout\ = (\inst14|igual~10_combout\) # ((\inst14|igual~12_combout\) # ((\inst14|igual~11_combout\) # (\inst14|igual~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~10_combout\,
	datab => \inst14|igual~12_combout\,
	datac => \inst14|igual~11_combout\,
	datad => \inst14|igual~9_combout\,
	combout => \inst14|igual~13_combout\);

-- Location: LCCOMB_X22_Y7_N4
\inst27|sh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|sh[0]~1_combout\ = !\inst27|sh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|sh\(0),
	combout => \inst27|sh[0]~1_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst27|sh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|sh[0]~0_combout\ = (!\inst27|digito\(2) & (!\inst27|digito\(1) & (!\inst27|edicao~combout\ & \inst27|digito\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|digito\(2),
	datab => \inst27|digito\(1),
	datac => \inst27|edicao~combout\,
	datad => \inst27|digito\(0),
	combout => \inst27|sh[0]~0_combout\);

-- Location: FF_X22_Y7_N5
\inst27|sh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|sh[0]~1_combout\,
	ena => \inst27|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sh\(0));

-- Location: LCCOMB_X22_Y7_N30
\inst27|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux5~0_combout\ = (\inst27|sh\(1) & ((!\inst27|sh\(0)))) # (!\inst27|sh\(1) & (!\inst27|sh\(2) & \inst27|sh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sh\(2),
	datac => \inst27|sh\(1),
	datad => \inst27|sh\(0),
	combout => \inst27|Mux5~0_combout\);

-- Location: FF_X22_Y7_N31
\inst27|sh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux5~0_combout\,
	ena => \inst27|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sh\(1));

-- Location: LCCOMB_X21_Y7_N12
\inst27|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux4~0_combout\ = (\inst27|sh\(2) & ((!\inst27|sh\(0)))) # (!\inst27|sh\(2) & (\inst27|sh\(1) & \inst27|sh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sh\(1),
	datac => \inst27|sh\(2),
	datad => \inst27|sh\(0),
	combout => \inst27|Mux4~0_combout\);

-- Location: FF_X21_Y7_N13
\inst27|sh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux4~0_combout\,
	ena => \inst27|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|sh\(2));

-- Location: LCCOMB_X21_Y9_N20
\inst27|mh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|mh[0]~1_combout\ = !\inst27|mh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst27|mh\(0),
	combout => \inst27|mh[0]~1_combout\);

-- Location: LCCOMB_X21_Y9_N10
\inst27|mh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|mh[0]~0_combout\ = (\inst27|digito\(1) & (!\inst27|edicao~combout\ & \inst27|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|digito\(1),
	datac => \inst27|edicao~combout\,
	datad => \inst27|digito\(0),
	combout => \inst27|mh[0]~0_combout\);

-- Location: FF_X21_Y9_N21
\inst27|mh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|mh[0]~1_combout\,
	ena => \inst27|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|mh\(0));

-- Location: LCCOMB_X21_Y7_N6
\inst14|igual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~5_combout\ = (\inst27|sh\(2) & ((\inst6|contagemMH\(0) $ (\inst27|mh\(0))) # (!\inst6|contagemSH\(2)))) # (!\inst27|sh\(2) & ((\inst6|contagemSH\(2)) # (\inst6|contagemMH\(0) $ (\inst27|mh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sh\(2),
	datab => \inst6|contagemMH\(0),
	datac => \inst27|mh\(0),
	datad => \inst6|contagemSH\(2),
	combout => \inst14|igual~5_combout\);

-- Location: LCCOMB_X21_Y7_N0
\inst14|igual~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~7_combout\ = (\inst27|hh\(1) & ((\inst6|contagemHH\(0) $ (\inst27|hh\(0))) # (!\inst6|contagemHH\(1)))) # (!\inst27|hh\(1) & ((\inst6|contagemHH\(1)) # (\inst6|contagemHH\(0) $ (\inst27|hh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|hh\(1),
	datab => \inst6|contagemHH\(1),
	datac => \inst6|contagemHH\(0),
	datad => \inst27|hh\(0),
	combout => \inst14|igual~7_combout\);

-- Location: LCCOMB_X21_Y9_N14
\inst27|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux12~0_combout\ = (\inst27|mh\(1) & ((!\inst27|mh\(0)))) # (!\inst27|mh\(1) & (!\inst27|mh\(2) & \inst27|mh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|mh\(2),
	datac => \inst27|mh\(1),
	datad => \inst27|mh\(0),
	combout => \inst27|Mux12~0_combout\);

-- Location: FF_X21_Y9_N15
\inst27|mh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux12~0_combout\,
	ena => \inst27|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|mh\(1));

-- Location: LCCOMB_X21_Y9_N4
\inst27|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|Mux11~0_combout\ = (\inst27|mh\(2) & ((!\inst27|mh\(0)))) # (!\inst27|mh\(2) & (\inst27|mh\(1) & \inst27|mh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|mh\(1),
	datac => \inst27|mh\(2),
	datad => \inst27|mh\(0),
	combout => \inst27|Mux11~0_combout\);

-- Location: FF_X21_Y9_N5
\inst27|mh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst27|Mux11~0_combout\,
	ena => \inst27|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|mh\(2));

-- Location: LCCOMB_X21_Y9_N18
\inst14|igual~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~6_combout\ = (\inst27|mh\(2) & ((\inst27|mh\(1) $ (\inst6|contagemMH\(1))) # (!\inst6|contagemMH\(2)))) # (!\inst27|mh\(2) & ((\inst6|contagemMH\(2)) # (\inst27|mh\(1) $ (\inst6|contagemMH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|mh\(2),
	datab => \inst27|mh\(1),
	datac => \inst6|contagemMH\(1),
	datad => \inst6|contagemMH\(2),
	combout => \inst14|igual~6_combout\);

-- Location: LCCOMB_X22_Y7_N16
\inst14|igual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~4_combout\ = (\inst27|sh\(1) & ((\inst27|sh\(0) $ (\inst6|contagemSH\(0))) # (!\inst6|contagemSH\(1)))) # (!\inst27|sh\(1) & ((\inst6|contagemSH\(1)) # (\inst27|sh\(0) $ (\inst6|contagemSH\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sh\(1),
	datab => \inst27|sh\(0),
	datac => \inst6|contagemSH\(1),
	datad => \inst6|contagemSH\(0),
	combout => \inst14|igual~4_combout\);

-- Location: LCCOMB_X21_Y7_N14
\inst14|igual~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~8_combout\ = (\inst14|igual~5_combout\) # ((\inst14|igual~7_combout\) # ((\inst14|igual~6_combout\) # (\inst14|igual~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~5_combout\,
	datab => \inst14|igual~7_combout\,
	datac => \inst14|igual~6_combout\,
	datad => \inst14|igual~4_combout\,
	combout => \inst14|igual~8_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst14|igual~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~14_combout\ = (\inst14|igual~3_combout\) # ((\inst14|igual~2_combout\) # ((\inst14|igual~13_combout\) # (\inst14|igual~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~3_combout\,
	datab => \inst14|igual~2_combout\,
	datac => \inst14|igual~13_combout\,
	datad => \inst14|igual~8_combout\,
	combout => \inst14|igual~14_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst14|igual~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|igual~15_combout\ = ((\inst14|igual~15_combout\ & ((\inst14|igual~14_combout\))) # (!\inst14|igual~15_combout\ & (\inst14|igual~1_combout\))) # (!\inst27|edicao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~1_combout\,
	datab => \inst14|igual~15_combout\,
	datac => \inst27|edicao~combout\,
	datad => \inst14|igual~14_combout\,
	combout => \inst14|igual~15_combout\);

-- Location: LCCOMB_X19_Y10_N22
\inst31|edicao\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|edicao~combout\ = (\inst9|result~q\) # ((\inst4|aux\(1)) # (!\inst4|aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|result~q\,
	datab => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst31|edicao~combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst31|hl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|hl[0]~2_combout\ = !\inst31|hl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|hl\(0),
	combout => \inst31|hl[0]~2_combout\);

-- Location: LCCOMB_X24_Y8_N12
\inst31|digito[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|digito[0]~2_combout\ = !\inst31|digito\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|digito\(0),
	combout => \inst31|digito[0]~2_combout\);

-- Location: FF_X24_Y8_N13
\inst31|digito[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|digito[0]~2_combout\,
	clrn => \inst31|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|digito\(0));

-- Location: LCCOMB_X24_Y8_N26
\inst31|digito~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|digito~1_combout\ = (\inst31|digito\(1) & ((!\inst31|digito\(0)))) # (!\inst31|digito\(1) & (!\inst31|digito\(2) & \inst31|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|digito\(2),
	datac => \inst31|digito\(1),
	datad => \inst31|digito\(0),
	combout => \inst31|digito~1_combout\);

-- Location: FF_X24_Y8_N27
\inst31|digito[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|digito~1_combout\,
	clrn => \inst31|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|digito\(1));

-- Location: LCCOMB_X24_Y8_N2
\inst31|digito~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|digito~0_combout\ = (\inst31|digito\(2) & ((!\inst31|digito\(0)))) # (!\inst31|digito\(2) & (\inst31|digito\(1) & \inst31|digito\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|digito\(1),
	datac => \inst31|digito\(2),
	datad => \inst31|digito\(0),
	combout => \inst31|digito~0_combout\);

-- Location: FF_X24_Y8_N3
\inst31|digito[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|digito~0_combout\,
	clrn => \inst31|ALT_INV_edicao~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|digito\(2));

-- Location: LCCOMB_X23_Y11_N24
\inst31|hl[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|hl[3]~0_combout\ = (!\inst31|edicao~combout\ & (!\inst31|digito\(0) & \inst31|digito\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|edicao~combout\,
	datac => \inst31|digito\(0),
	datad => \inst31|digito\(2),
	combout => \inst31|hl[3]~0_combout\);

-- Location: FF_X23_Y11_N17
\inst31|hl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|hl[0]~2_combout\,
	ena => \inst31|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|hl\(0));

-- Location: LCCOMB_X23_Y11_N20
\inst31|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux15~0_combout\ = (\inst31|hl\(0) & ((\inst31|hl\(2) & ((!\inst31|hl\(1)))) # (!\inst31|hl\(2) & (!\inst31|hl~1_combout\ & \inst31|hl\(1))))) # (!\inst31|hl\(0) & (((\inst31|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl~1_combout\,
	datab => \inst31|hl\(0),
	datac => \inst31|hl\(2),
	datad => \inst31|hl\(1),
	combout => \inst31|Mux15~0_combout\);

-- Location: FF_X23_Y11_N21
\inst31|hl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux15~0_combout\,
	ena => \inst31|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|hl\(2));

-- Location: LCCOMB_X23_Y11_N28
\inst31|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Add5~0_combout\ = \inst31|hl\(3) $ (((\inst31|hl\(0) & (\inst31|hl\(2) & \inst31|hl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl\(3),
	datab => \inst31|hl\(0),
	datac => \inst31|hl\(2),
	datad => \inst31|hl\(1),
	combout => \inst31|Add5~0_combout\);

-- Location: LCCOMB_X23_Y11_N26
\inst31|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux14~0_combout\ = (\inst31|Add5~0_combout\ & (((\inst31|hl\(2)) # (!\inst31|hl\(0))) # (!\inst31|hl~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl~1_combout\,
	datab => \inst31|Add5~0_combout\,
	datac => \inst31|hl\(2),
	datad => \inst31|hl\(0),
	combout => \inst31|Mux14~0_combout\);

-- Location: FF_X23_Y11_N27
\inst31|hl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux14~0_combout\,
	ena => \inst31|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|hl\(3));

-- Location: LCCOMB_X23_Y11_N22
\inst31|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux18~0_combout\ = (!\inst31|hl\(2) & (\inst31|hh\(0) & (!\inst31|hh\(1) & !\inst31|hl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl\(2),
	datab => \inst31|hh\(0),
	datac => \inst31|hh\(1),
	datad => \inst31|hl\(3),
	combout => \inst31|Mux18~0_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst31|hh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|hh[0]~0_combout\ = (!\inst31|edicao~combout\ & (\inst31|digito\(0) & \inst31|digito\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|edicao~combout\,
	datac => \inst31|digito\(0),
	datad => \inst31|digito\(2),
	combout => \inst31|hh[0]~0_combout\);

-- Location: FF_X23_Y11_N23
\inst31|hh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux18~0_combout\,
	ena => \inst31|hh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|hh\(1));

-- Location: LCCOMB_X23_Y11_N8
\inst31|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux19~0_combout\ = (!\inst31|hh\(1) & !\inst31|hh\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hh\(1),
	datac => \inst31|hh\(0),
	combout => \inst31|Mux19~0_combout\);

-- Location: FF_X23_Y11_N9
\inst31|hh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux19~0_combout\,
	ena => \inst31|hh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|hh\(0));

-- Location: LCCOMB_X23_Y11_N30
\inst31|hl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|hl~1_combout\ = (\inst31|hl\(3) & (!\inst31|hl\(1) & ((\inst31|hh\(0)) # (!\inst31|hh\(1))))) # (!\inst31|hl\(3) & (!\inst31|hh\(0) & (\inst31|hh\(1) & \inst31|hl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl\(3),
	datab => \inst31|hh\(0),
	datac => \inst31|hh\(1),
	datad => \inst31|hl\(1),
	combout => \inst31|hl~1_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst31|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux16~0_combout\ = (\inst31|hl\(0) & (!\inst31|hl\(1) & ((\inst31|hl\(2)) # (!\inst31|hl~1_combout\)))) # (!\inst31|hl\(0) & (((\inst31|hl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl~1_combout\,
	datab => \inst31|hl\(0),
	datac => \inst31|hl\(1),
	datad => \inst31|hl\(2),
	combout => \inst31|Mux16~0_combout\);

-- Location: FF_X23_Y11_N3
\inst31|hl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux16~0_combout\,
	ena => \inst31|hl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|hl\(1));

-- Location: LCCOMB_X22_Y9_N2
\inst3|igual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~2_combout\ = (\inst6|contagemHL\(1) & ((\inst6|contagemHL\(0) $ (\inst31|hl\(0))) # (!\inst31|hl\(1)))) # (!\inst6|contagemHL\(1) & ((\inst31|hl\(1)) # (\inst6|contagemHL\(0) $ (\inst31|hl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(1),
	datab => \inst6|contagemHL\(0),
	datac => \inst31|hl\(0),
	datad => \inst31|hl\(1),
	combout => \inst3|igual~2_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst31|sh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|sh[0]~1_combout\ = !\inst31|sh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|sh\(0),
	combout => \inst31|sh[0]~1_combout\);

-- Location: LCCOMB_X23_Y10_N14
\inst31|sh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|sh[0]~0_combout\ = (!\inst31|edicao~combout\ & (!\inst31|digito\(1) & (\inst31|digito\(0) & !\inst31|digito\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|edicao~combout\,
	datab => \inst31|digito\(1),
	datac => \inst31|digito\(0),
	datad => \inst31|digito\(2),
	combout => \inst31|sh[0]~0_combout\);

-- Location: FF_X23_Y10_N25
\inst31|sh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|sh[0]~1_combout\,
	ena => \inst31|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sh\(0));

-- Location: LCCOMB_X23_Y10_N18
\inst31|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux5~0_combout\ = (\inst31|sh\(0) & (!\inst31|sh\(1) & !\inst31|sh\(2))) # (!\inst31|sh\(0) & (\inst31|sh\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|sh\(0),
	datac => \inst31|sh\(1),
	datad => \inst31|sh\(2),
	combout => \inst31|Mux5~0_combout\);

-- Location: FF_X23_Y10_N19
\inst31|sh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux5~0_combout\,
	ena => \inst31|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sh\(1));

-- Location: LCCOMB_X23_Y10_N6
\inst31|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux4~0_combout\ = (\inst31|sh\(2) & ((!\inst31|sh\(0)))) # (!\inst31|sh\(2) & (\inst31|sh\(1) & \inst31|sh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|sh\(1),
	datac => \inst31|sh\(2),
	datad => \inst31|sh\(0),
	combout => \inst31|Mux4~0_combout\);

-- Location: FF_X23_Y10_N7
\inst31|sh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux4~0_combout\,
	ena => \inst31|sh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sh\(2));

-- Location: LCCOMB_X23_Y10_N28
\inst31|mh[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|mh[0]~1_combout\ = !\inst31|mh\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|mh\(0),
	combout => \inst31|mh[0]~1_combout\);

-- Location: LCCOMB_X23_Y10_N20
\inst31|mh[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|mh[0]~0_combout\ = (!\inst31|edicao~combout\ & (\inst31|digito\(0) & \inst31|digito\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|edicao~combout\,
	datac => \inst31|digito\(0),
	datad => \inst31|digito\(1),
	combout => \inst31|mh[0]~0_combout\);

-- Location: FF_X23_Y10_N29
\inst31|mh[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|mh[0]~1_combout\,
	ena => \inst31|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|mh\(0));

-- Location: LCCOMB_X23_Y10_N10
\inst3|igual~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~5_combout\ = (\inst31|sh\(2) & ((\inst6|contagemMH\(0) $ (\inst31|mh\(0))) # (!\inst6|contagemSH\(2)))) # (!\inst31|sh\(2) & ((\inst6|contagemSH\(2)) # (\inst6|contagemMH\(0) $ (\inst31|mh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sh\(2),
	datab => \inst6|contagemSH\(2),
	datac => \inst6|contagemMH\(0),
	datad => \inst31|mh\(0),
	combout => \inst3|igual~5_combout\);

-- Location: LCCOMB_X23_Y10_N8
\inst3|igual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~4_combout\ = (\inst6|contagemSH\(0) & ((\inst31|sh\(1) $ (\inst6|contagemSH\(1))) # (!\inst31|sh\(0)))) # (!\inst6|contagemSH\(0) & ((\inst31|sh\(0)) # (\inst31|sh\(1) $ (\inst6|contagemSH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSH\(0),
	datab => \inst31|sh\(1),
	datac => \inst6|contagemSH\(1),
	datad => \inst31|sh\(0),
	combout => \inst3|igual~4_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst3|igual~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~7_combout\ = (\inst6|contagemHH\(0) & ((\inst6|contagemHH\(1) $ (\inst31|hh\(1))) # (!\inst31|hh\(0)))) # (!\inst6|contagemHH\(0) & ((\inst31|hh\(0)) # (\inst6|contagemHH\(1) $ (\inst31|hh\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHH\(0),
	datab => \inst31|hh\(0),
	datac => \inst6|contagemHH\(1),
	datad => \inst31|hh\(1),
	combout => \inst3|igual~7_combout\);

-- Location: LCCOMB_X23_Y10_N16
\inst31|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux12~0_combout\ = (\inst31|mh\(1) & ((!\inst31|mh\(0)))) # (!\inst31|mh\(1) & (!\inst31|mh\(2) & \inst31|mh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mh\(2),
	datac => \inst31|mh\(1),
	datad => \inst31|mh\(0),
	combout => \inst31|Mux12~0_combout\);

-- Location: FF_X23_Y10_N17
\inst31|mh[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux12~0_combout\,
	ena => \inst31|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|mh\(1));

-- Location: LCCOMB_X23_Y10_N26
\inst31|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux11~0_combout\ = (\inst31|mh\(2) & ((!\inst31|mh\(0)))) # (!\inst31|mh\(2) & (\inst31|mh\(1) & \inst31|mh\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|mh\(1),
	datac => \inst31|mh\(2),
	datad => \inst31|mh\(0),
	combout => \inst31|Mux11~0_combout\);

-- Location: FF_X23_Y10_N27
\inst31|mh[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux11~0_combout\,
	ena => \inst31|mh[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|mh\(2));

-- Location: LCCOMB_X22_Y10_N14
\inst3|igual~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~6_combout\ = (\inst6|contagemMH\(1) & ((\inst31|mh\(2) $ (\inst6|contagemMH\(2))) # (!\inst31|mh\(1)))) # (!\inst6|contagemMH\(1) & ((\inst31|mh\(1)) # (\inst31|mh\(2) $ (\inst6|contagemMH\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemMH\(1),
	datab => \inst31|mh\(2),
	datac => \inst6|contagemMH\(2),
	datad => \inst31|mh\(1),
	combout => \inst3|igual~6_combout\);

-- Location: LCCOMB_X23_Y10_N0
\inst3|igual~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~8_combout\ = (\inst3|igual~5_combout\) # ((\inst3|igual~4_combout\) # ((\inst3|igual~7_combout\) # (\inst3|igual~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~5_combout\,
	datab => \inst3|igual~4_combout\,
	datac => \inst3|igual~7_combout\,
	datad => \inst3|igual~6_combout\,
	combout => \inst3|igual~8_combout\);

-- Location: LCCOMB_X22_Y9_N28
\inst3|igual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~3_combout\ = (\inst6|contagemHL\(3) & ((\inst6|contagemHL\(2) $ (\inst31|hl\(2))) # (!\inst31|hl\(3)))) # (!\inst6|contagemHL\(3) & ((\inst31|hl\(3)) # (\inst6|contagemHL\(2) $ (\inst31|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(3),
	datab => \inst6|contagemHL\(2),
	datac => \inst31|hl\(2),
	datad => \inst31|hl\(3),
	combout => \inst3|igual~3_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst31|ml[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|ml[0]~2_combout\ = !\inst31|ml\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|ml\(0),
	combout => \inst31|ml[0]~2_combout\);

-- Location: LCCOMB_X24_Y8_N4
\inst31|ml[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|ml[3]~0_combout\ = (\inst31|digito\(1) & (!\inst31|digito\(0) & !\inst31|edicao~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|digito\(1),
	datac => \inst31|digito\(0),
	datad => \inst31|edicao~combout\,
	combout => \inst31|ml[3]~0_combout\);

-- Location: FF_X24_Y8_N17
\inst31|ml[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|ml[0]~2_combout\,
	ena => \inst31|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|ml\(0));

-- Location: LCCOMB_X25_Y8_N16
\inst31|ml[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|ml[2]~1_combout\ = \inst31|ml\(2) $ (((\inst31|ml\(0) & (\inst31|ml[3]~0_combout\ & \inst31|ml\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|ml\(0),
	datab => \inst31|ml[3]~0_combout\,
	datac => \inst31|ml\(2),
	datad => \inst31|ml\(1),
	combout => \inst31|ml[2]~1_combout\);

-- Location: FF_X25_Y8_N17
\inst31|ml[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|ml[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|ml\(2));

-- Location: LCCOMB_X24_Y8_N28
\inst31|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux7~0_combout\ = (\inst31|ml\(1) & (\inst31|ml\(3) $ (((\inst31|ml\(2) & \inst31|ml\(0)))))) # (!\inst31|ml\(1) & (\inst31|ml\(3) & ((\inst31|ml\(2)) # (!\inst31|ml\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|ml\(1),
	datab => \inst31|ml\(2),
	datac => \inst31|ml\(3),
	datad => \inst31|ml\(0),
	combout => \inst31|Mux7~0_combout\);

-- Location: FF_X24_Y8_N29
\inst31|ml[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux7~0_combout\,
	ena => \inst31|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|ml\(3));

-- Location: LCCOMB_X24_Y8_N30
\inst31|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux9~0_combout\ = (\inst31|ml\(1) & (((!\inst31|ml\(0))))) # (!\inst31|ml\(1) & (\inst31|ml\(0) & ((\inst31|ml\(2)) # (!\inst31|ml\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|ml\(3),
	datab => \inst31|ml\(2),
	datac => \inst31|ml\(1),
	datad => \inst31|ml\(0),
	combout => \inst31|Mux9~0_combout\);

-- Location: FF_X24_Y8_N31
\inst31|ml[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux9~0_combout\,
	ena => \inst31|ml[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|ml\(1));

-- Location: LCCOMB_X23_Y8_N4
\inst3|igual~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~11_combout\ = (\inst6|contagemML\(0) & ((\inst31|ml\(0)) # (\inst6|contagemML\(1) $ (\inst31|ml\(1))))) # (!\inst6|contagemML\(0) & ((\inst6|contagemML\(1) $ (\inst31|ml\(1))) # (!\inst31|ml\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(0),
	datab => \inst6|contagemML\(1),
	datac => \inst31|ml\(1),
	datad => \inst31|ml\(0),
	combout => \inst3|igual~11_combout\);

-- Location: LCCOMB_X23_Y8_N14
\inst3|igual~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~12_combout\ = (\inst6|contagemML\(2) & ((\inst6|contagemML\(3) $ (\inst31|ml\(3))) # (!\inst31|ml\(2)))) # (!\inst6|contagemML\(2) & ((\inst31|ml\(2)) # (\inst6|contagemML\(3) $ (\inst31|ml\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(2),
	datab => \inst6|contagemML\(3),
	datac => \inst31|ml\(2),
	datad => \inst31|ml\(3),
	combout => \inst3|igual~12_combout\);

-- Location: LCCOMB_X24_Y10_N4
\inst31|sl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|sl[0]~2_combout\ = !\inst31|sl\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|sl\(0),
	combout => \inst31|sl[0]~2_combout\);

-- Location: LCCOMB_X24_Y10_N8
\inst31|sl[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|sl[3]~0_combout\ = (!\inst31|digito\(0) & (!\inst31|edicao~combout\ & (!\inst31|digito\(2) & !\inst31|digito\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|digito\(0),
	datab => \inst31|edicao~combout\,
	datac => \inst31|digito\(2),
	datad => \inst31|digito\(1),
	combout => \inst31|sl[3]~0_combout\);

-- Location: FF_X24_Y10_N5
\inst31|sl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|sl[0]~2_combout\,
	ena => \inst31|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sl\(0));

-- Location: LCCOMB_X24_Y10_N10
\inst31|sl[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|sl[2]~1_combout\ = \inst31|sl\(2) $ (((\inst31|sl\(0) & (\inst31|sl\(1) & \inst31|sl[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sl\(0),
	datab => \inst31|sl\(1),
	datac => \inst31|sl\(2),
	datad => \inst31|sl[3]~0_combout\,
	combout => \inst31|sl[2]~1_combout\);

-- Location: FF_X24_Y10_N11
\inst31|sl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|sl[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sl\(2));

-- Location: LCCOMB_X24_Y10_N18
\inst31|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux2~0_combout\ = (\inst31|sl\(0) & (!\inst31|sl\(1) & ((\inst31|sl\(2)) # (!\inst31|sl\(3))))) # (!\inst31|sl\(0) & (((\inst31|sl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sl\(2),
	datab => \inst31|sl\(0),
	datac => \inst31|sl\(1),
	datad => \inst31|sl\(3),
	combout => \inst31|Mux2~0_combout\);

-- Location: FF_X24_Y10_N19
\inst31|sl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux2~0_combout\,
	ena => \inst31|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sl\(1));

-- Location: LCCOMB_X24_Y10_N0
\inst31|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|Mux0~0_combout\ = (\inst31|sl\(0) & ((\inst31|sl\(1) & (\inst31|sl\(3) $ (\inst31|sl\(2)))) # (!\inst31|sl\(1) & (\inst31|sl\(3) & \inst31|sl\(2))))) # (!\inst31|sl\(0) & (((\inst31|sl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sl\(0),
	datab => \inst31|sl\(1),
	datac => \inst31|sl\(3),
	datad => \inst31|sl\(2),
	combout => \inst31|Mux0~0_combout\);

-- Location: FF_X24_Y10_N1
\inst31|sl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst31|Mux0~0_combout\,
	ena => \inst31|sl[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|sl\(3));

-- Location: LCCOMB_X24_Y10_N26
\inst3|igual~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~10_combout\ = (\inst6|contagemSL\(3) & ((\inst6|contagemSL\(2) $ (\inst31|sl\(2))) # (!\inst31|sl\(3)))) # (!\inst6|contagemSL\(3) & ((\inst31|sl\(3)) # (\inst6|contagemSL\(2) $ (\inst31|sl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(3),
	datab => \inst31|sl\(3),
	datac => \inst6|contagemSL\(2),
	datad => \inst31|sl\(2),
	combout => \inst3|igual~10_combout\);

-- Location: LCCOMB_X24_Y10_N20
\inst3|igual~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~9_combout\ = (\inst6|contagemSL\(1) & ((\inst31|sl\(0) $ (\inst6|contagemSL\(0))) # (!\inst31|sl\(1)))) # (!\inst6|contagemSL\(1) & ((\inst31|sl\(1)) # (\inst31|sl\(0) $ (\inst6|contagemSL\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(1),
	datab => \inst31|sl\(0),
	datac => \inst6|contagemSL\(0),
	datad => \inst31|sl\(1),
	combout => \inst3|igual~9_combout\);

-- Location: LCCOMB_X23_Y8_N12
\inst3|igual~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~13_combout\ = (\inst3|igual~11_combout\) # ((\inst3|igual~12_combout\) # ((\inst3|igual~10_combout\) # (\inst3|igual~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~11_combout\,
	datab => \inst3|igual~12_combout\,
	datac => \inst3|igual~10_combout\,
	datad => \inst3|igual~9_combout\,
	combout => \inst3|igual~13_combout\);

-- Location: LCCOMB_X23_Y10_N2
\inst3|igual~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~14_combout\ = (\inst3|igual~2_combout\) # ((\inst3|igual~8_combout\) # ((\inst3|igual~3_combout\) # (\inst3|igual~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~2_combout\,
	datab => \inst3|igual~8_combout\,
	datac => \inst3|igual~3_combout\,
	datad => \inst3|igual~13_combout\,
	combout => \inst3|igual~14_combout\);

-- Location: LCCOMB_X18_Y10_N16
\inst3|aux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux1~0_combout\ = \inst3|aux1~q\ $ (((\inst31|edicao~combout\ & !\inst3|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|edicao~combout\,
	datac => \inst3|aux1~q\,
	datad => \inst3|igual~15_combout\,
	combout => \inst3|aux1~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\inst3|aux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux2~0_combout\ = \inst3|aux2~q\ $ (((\inst31|edicao~combout\ & (\inst3|aux1~q\ & !\inst3|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|edicao~combout\,
	datab => \inst3|aux1~q\,
	datac => \inst3|aux2~q\,
	datad => \inst3|igual~15_combout\,
	combout => \inst3|aux2~0_combout\);

-- Location: FF_X19_Y8_N23
\inst3|aux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9|ALT_INV_result~clkctrl_outclk\,
	d => \inst3|aux2~0_combout\,
	clrn => \inst3|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux2~q\);

-- Location: LCCOMB_X19_Y10_N6
\inst3|aux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux4~2_combout\ = (\inst3|aux4~q\ & (\inst3|aux3~q\ & \inst3|aux1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux4~q\,
	datab => \inst3|aux3~q\,
	datac => \inst3|aux1~q\,
	combout => \inst3|aux4~2_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst3|aux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux4~3_combout\ = (\inst3|aux2~q\ & (!\inst3|igual~15_combout\ & (\inst31|edicao~combout\ & \inst3|aux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux2~q\,
	datab => \inst3|igual~15_combout\,
	datac => \inst31|edicao~combout\,
	datad => \inst3|aux4~2_combout\,
	combout => \inst3|aux4~3_combout\);

-- Location: FF_X18_Y10_N17
\inst3|aux1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|ALT_INV_result~clkctrl_outclk\,
	d => \inst3|aux1~0_combout\,
	clrn => \inst3|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux1~q\);

-- Location: LCCOMB_X19_Y10_N26
\inst3|aux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux3~0_combout\ = ((!\inst31|edicao~combout\) # (!\inst3|aux2~q\)) # (!\inst3|aux1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux1~q\,
	datac => \inst3|aux2~q\,
	datad => \inst31|edicao~combout\,
	combout => \inst3|aux3~0_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst3|aux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux3~1_combout\ = \inst3|aux3~q\ $ (((!\inst3|igual~15_combout\ & !\inst3|aux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~15_combout\,
	datab => \inst3|aux3~0_combout\,
	datac => \inst3|aux3~q\,
	combout => \inst3|aux3~1_combout\);

-- Location: FF_X19_Y9_N1
\inst3|aux3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|ALT_INV_result~clkctrl_outclk\,
	d => \inst3|aux3~1_combout\,
	clrn => \inst3|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux3~q\);

-- Location: LCCOMB_X18_Y9_N18
\inst3|aux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux4~0_combout\ = (\inst3|aux3~q\ & (\inst3|aux2~q\ & \inst3|aux1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux3~q\,
	datab => \inst3|aux2~q\,
	datac => \inst3|aux1~q\,
	combout => \inst3|aux4~0_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst3|aux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|aux4~1_combout\ = (\inst3|aux4~q\) # ((!\inst3|igual~15_combout\ & (\inst31|edicao~combout\ & \inst3|aux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~15_combout\,
	datab => \inst31|edicao~combout\,
	datac => \inst3|aux4~q\,
	datad => \inst3|aux4~0_combout\,
	combout => \inst3|aux4~1_combout\);

-- Location: FF_X18_Y9_N1
\inst3|aux4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11|ALT_INV_result~clkctrl_outclk\,
	d => \inst3|aux4~1_combout\,
	clrn => \inst3|ALT_INV_aux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|aux4~q\);

-- Location: LCCOMB_X19_Y10_N0
\inst3|igual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~1_combout\ = (\inst3|aux4~q\ & (\inst3|aux2~q\ & (\inst3|aux1~q\ & \inst3|aux3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|aux4~q\,
	datab => \inst3|aux2~q\,
	datac => \inst3|aux1~q\,
	datad => \inst3|aux3~q\,
	combout => \inst3|igual~1_combout\);

-- Location: LCCOMB_X19_Y10_N4
\inst3|igual~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|igual~15_combout\ = ((\inst3|igual~15_combout\ & (\inst3|igual~14_combout\)) # (!\inst3|igual~15_combout\ & ((\inst3|igual~1_combout\)))) # (!\inst31|edicao~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|edicao~combout\,
	datab => \inst3|igual~15_combout\,
	datac => \inst3|igual~14_combout\,
	datad => \inst3|igual~1_combout\,
	combout => \inst3|igual~15_combout\);

-- Location: LCCOMB_X18_Y12_N16
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = ((!\inst3|igual~15_combout\) # (!\inst14|igual~15_combout\)) # (!\inst12|igual~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datac => \inst14|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X18_Y12_N18
\inst4|aux[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|aux[1]~1_combout\ = \inst4|aux\(1) $ (((\inst4|aux\(0) & (!\inst8|result~q\ & !\inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst8|result~q\,
	datac => \inst4|aux\(1),
	datad => \inst7~combout\,
	combout => \inst4|aux[1]~1_combout\);

-- Location: FF_X18_Y12_N19
\inst4|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|aux~q\,
	d => \inst4|aux[1]~1_combout\,
	clrn => \ALT_INV_inst7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux\(1));

-- Location: LCCOMB_X19_Y10_N20
\inst4|aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|aux~2_combout\ = (\inst4|aux\(0) & (\inst4|aux\(2) $ (\inst4|aux\(1)))) # (!\inst4|aux\(0) & (\inst4|aux\(2) & \inst4|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|aux\(0),
	datac => \inst4|aux\(2),
	datad => \inst4|aux\(1),
	combout => \inst4|aux~2_combout\);

-- Location: LCCOMB_X19_Y10_N16
\inst4|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~0_combout\ = (!\inst8|result~q\ & (\inst3|igual~15_combout\ & (\inst12|igual~15_combout\ & \inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|result~q\,
	datab => \inst3|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst4|process_0~0_combout\);

-- Location: FF_X19_Y10_N21
\inst4|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|aux~q\,
	d => \inst4|aux~2_combout\,
	clrn => \ALT_INV_inst7~combout\,
	ena => \inst4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux\(2));

-- Location: LCCOMB_X19_Y10_N28
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

-- Location: FF_X19_Y10_N29
\inst4|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|aux~q\,
	d => \inst4|aux~0_combout\,
	clrn => \ALT_INV_inst7~combout\,
	ena => \inst4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|aux\(0));

-- Location: LCCOMB_X18_Y7_N26
\inst|lcd_bus[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[9]~5_combout\ = (\inst|char\(1) & \inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst|lcd_bus[9]~5_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst|lcd_bus[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[9]~6_combout\ = (!\inst|char\(4) & (\inst|char\(3) $ (((\inst|lcd_bus[9]~5_combout\ & \inst|char\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|lcd_bus[9]~5_combout\,
	datac => \inst|char\(0),
	datad => \inst|char\(4),
	combout => \inst|lcd_bus[9]~6_combout\);

-- Location: LCCOMB_X16_Y11_N2
\inst19|lcd_bus[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|lcd_bus[9]~9_combout\ = ((\inst|lcd_bus[9]~6_combout\ & ((\inst4|aux\(0)) # (\inst4|aux\(1))))) # (!\inst|char\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst4|aux\(0),
	datac => \inst4|aux\(1),
	datad => \inst|lcd_bus[9]~6_combout\,
	combout => \inst19|lcd_bus[9]~9_combout\);

-- Location: LCCOMB_X16_Y11_N28
\inst19|lcd_bus[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|lcd_bus[7]~10_combout\ = (\inst|process_0~0_combout\ & (((\inst4|aux\(1)) # (\inst4|aux\(0))) # (!\inst|lcd_bus[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~6_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst19|lcd_bus[7]~10_combout\);

-- Location: FF_X16_Y11_N3
\inst19|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|lcd_bus[9]~9_combout\,
	ena => \inst19|lcd_bus[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(9));

-- Location: LCCOMB_X12_Y13_N12
\inst19|dut|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector36~0_combout\ = (\inst|lcd_enable~q\ & (\inst|dut|state.power_up~q\ & \inst19|lcd_bus\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datac => \inst|dut|state.power_up~q\,
	datad => \inst19|lcd_bus\(9),
	combout => \inst19|dut|Selector36~0_combout\);

-- Location: LCCOMB_X12_Y13_N22
\inst|dut|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|rs~0_combout\ = (\inst|dut|state.power_up~q\ & (\inst|dut|state.ready~q\)) # (!\inst|dut|state.power_up~q\ & ((!\inst|dut|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.ready~q\,
	datac => \inst|dut|state.power_up~q\,
	datad => \inst|dut|LessThan0~6_combout\,
	combout => \inst|dut|rs~0_combout\);

-- Location: FF_X12_Y13_N13
\inst19|dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector36~0_combout\,
	ena => \inst|dut|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|rs~q\);

-- Location: LCCOMB_X16_Y11_N24
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|char\(4)) # ((\inst|char\(1) & (\inst|char\(2) & \inst|char\(0))))

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
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst|lcd_bus~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~7_combout\ = (\inst14|igual~15_combout\ & (\inst3|igual~15_combout\ $ (!\inst12|igual~15_combout\))) # (!\inst14|igual~15_combout\ & ((!\inst12|igual~15_combout\) # (!\inst3|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|igual~15_combout\,
	datac => \inst3|igual~15_combout\,
	datad => \inst12|igual~15_combout\,
	combout => \inst|lcd_bus~7_combout\);

-- Location: LCCOMB_X16_Y11_N18
\inst|lcd_bus[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[9]~8_combout\ = (\inst|lcd_bus[9]~6_combout\ & (\inst7~combout\ & !\inst|lcd_bus~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~6_combout\,
	datac => \inst7~combout\,
	datad => \inst|lcd_bus~7_combout\,
	combout => \inst|lcd_bus[9]~8_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst|lcd_bus[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[9]~9_combout\ = ((\inst|lcd_bus[9]~8_combout\) # ((!\inst|Mux10~0_combout\ & !\inst7~combout\))) # (!\inst|char\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux10~0_combout\,
	datac => \inst7~combout\,
	datad => \inst|lcd_bus[9]~8_combout\,
	combout => \inst|lcd_bus[9]~9_combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst|lcd_bus[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[7]~10_combout\ = (\inst|process_0~0_combout\ & (((!\inst|lcd_bus~7_combout\) # (!\inst7~combout\)) # (!\inst|lcd_bus[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~6_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst7~combout\,
	datad => \inst|lcd_bus~7_combout\,
	combout => \inst|lcd_bus[7]~10_combout\);

-- Location: FF_X16_Y11_N17
\inst|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[9]~9_combout\,
	ena => \inst|lcd_bus[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(9));

-- Location: LCCOMB_X12_Y13_N26
\inst|dut|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector36~0_combout\ = (\inst|lcd_enable~q\ & (\inst|lcd_bus\(9) & \inst|dut|state.power_up~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|lcd_bus\(9),
	datac => \inst|dut|state.power_up~q\,
	combout => \inst|dut|Selector36~0_combout\);

-- Location: FF_X12_Y13_N27
\inst|dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector36~0_combout\,
	ena => \inst|dut|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|rs~q\);

-- Location: LCCOMB_X12_Y13_N4
\inst24|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux1~0_combout\ = (\inst4|aux\(1) & (\inst19|dut|rs~q\)) # (!\inst4|aux\(1) & ((\inst4|aux\(0) & (\inst19|dut|rs~q\)) # (!\inst4|aux\(0) & ((\inst|dut|rs~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|dut|rs~q\,
	datab => \inst4|aux\(1),
	datac => \inst|dut|rs~q\,
	datad => \inst4|aux\(0),
	combout => \inst24|Mux1~0_combout\);

-- Location: FF_X12_Y13_N5
\inst24|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|rs~q\);

-- Location: LCCOMB_X19_Y12_N24
inst13 : cycloneive_lcell_comb
-- Equation(s):
-- \inst13~combout\ = (\inst1|aux~q\ & (((!\inst3|igual~15_combout\) # (!\inst14|igual~15_combout\)) # (!\inst12|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst14|igual~15_combout\,
	datac => \inst1|aux~q\,
	datad => \inst3|igual~15_combout\,
	combout => \inst13~combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst|lcd_bus[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[7]~12_combout\ = (\inst7~combout\ & (!\inst|lcd_bus[9]~6_combout\)) # (!\inst7~combout\ & ((\inst|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~6_combout\,
	datab => \inst|Mux10~0_combout\,
	datac => \inst7~combout\,
	combout => \inst|lcd_bus[7]~12_combout\);

-- Location: FF_X16_Y11_N5
\inst|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[7]~12_combout\,
	sclr => \inst|ALT_INV_char\(3),
	ena => \inst|lcd_bus[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(7));

-- Location: LCCOMB_X11_Y9_N8
\inst|dut|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector38~0_combout\ = (\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst|lcd_bus\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst|lcd_bus\(7),
	combout => \inst|dut|Selector38~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
\inst|dut|lcd_data[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|lcd_data[1]~2_combout\ = (!\inst|dut|state.send~q\ & (\inst|dut|lcd_data[1]~0_combout\ & ((!\inst|dut|busy~7_combout\) # (!\inst|dut|state.initialize~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.initialize~q\,
	datab => \inst|dut|state.send~q\,
	datac => \inst|dut|lcd_data[1]~0_combout\,
	datad => \inst|dut|busy~7_combout\,
	combout => \inst|dut|lcd_data[1]~2_combout\);

-- Location: FF_X11_Y9_N9
\inst|dut|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector38~0_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(7));

-- Location: LCCOMB_X16_Y11_N14
\inst|lcd_bus[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[7]~11_combout\ = (\inst|char\(3) & ((\inst|char\(4)) # ((\inst|lcd_bus[9]~5_combout\ & \inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|lcd_bus[9]~5_combout\,
	datac => \inst|char\(0),
	datad => \inst|char\(4),
	combout => \inst|lcd_bus[7]~11_combout\);

-- Location: FF_X16_Y11_N15
\inst19|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[7]~11_combout\,
	ena => \inst19|lcd_bus[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(7));

-- Location: LCCOMB_X11_Y9_N22
\inst19|dut|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector38~0_combout\ = (\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst19|lcd_bus\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst19|lcd_bus\(7),
	combout => \inst19|dut|Selector38~0_combout\);

-- Location: FF_X11_Y9_N23
\inst19|dut|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector38~0_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(7));

-- Location: LCCOMB_X11_Y9_N4
\inst24|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux3~0_combout\ = (\inst4|aux\(1) & (((\inst19|dut|lcd_data\(7))))) # (!\inst4|aux\(1) & ((\inst4|aux\(0) & ((\inst19|dut|lcd_data\(7)))) # (!\inst4|aux\(0) & (\inst|dut|lcd_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst4|aux\(0),
	datac => \inst|dut|lcd_data\(7),
	datad => \inst19|dut|lcd_data\(7),
	combout => \inst24|Mux3~0_combout\);

-- Location: FF_X11_Y9_N5
\inst24|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(7));

-- Location: LCCOMB_X18_Y12_N24
\inst|lcd_bus[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[6]~15_combout\ = (!\inst|char\(4) & ((\inst|Mux12~0_combout\) # ((\inst|char\(3) & !\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|Mux12~0_combout\,
	datac => \inst|char\(3),
	datad => \inst|char\(2),
	combout => \inst|lcd_bus[6]~15_combout\);

-- Location: LCCOMB_X18_Y12_N26
\inst|lcd_bus~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~14_combout\ = (\inst|char\(4)) # ((\inst|Mux12~0_combout\) # ((\inst|char\(3) & !\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|Mux12~0_combout\,
	datac => \inst|char\(3),
	datad => \inst|char\(2),
	combout => \inst|lcd_bus~14_combout\);

-- Location: LCCOMB_X17_Y12_N12
\inst|lcd_bus~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~13_combout\ = ((\inst|char\(1) & ((\inst|char\(0)))) # (!\inst|char\(1) & ((!\inst|char\(0)) # (!\inst|char\(3))))) # (!\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(3),
	datad => \inst|char\(0),
	combout => \inst|lcd_bus~13_combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst14|igual~15_combout\) # ((!\inst3|igual~15_combout\) # (!\inst12|igual~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X18_Y10_N14
\inst19|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~2_combout\ = (\inst|char\(0) & \inst|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(0),
	datac => \inst|char\(1),
	combout => \inst19|Mux5~2_combout\);

-- Location: LCCOMB_X18_Y10_N8
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst3|igual~15_combout\ & (!\inst12|igual~15_combout\ & \inst14|igual~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst|lcd_bus[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[6]~17_combout\ = (\inst|char\(2) & (\inst|char\(3) & (!\inst19|Mux5~2_combout\ & !\inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(3),
	datac => \inst19|Mux5~2_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|lcd_bus[6]~17_combout\);

-- Location: LCCOMB_X18_Y12_N20
\inst|lcd_bus~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~18_combout\ = (!\inst|lcd_bus~14_combout\ & ((\inst|lcd_bus[6]~17_combout\ & ((!\inst|process_0~2_combout\))) # (!\inst|lcd_bus[6]~17_combout\ & (\inst|lcd_bus~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~14_combout\,
	datab => \inst|lcd_bus~13_combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|lcd_bus[6]~17_combout\,
	combout => \inst|lcd_bus~18_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst|lcd_bus~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~19_combout\ = (\inst|lcd_bus~18_combout\) # ((\inst|lcd_bus[6]~15_combout\ & ((\inst|lcd_bus\(6)) # (!\inst|lcd_bus~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[6]~15_combout\,
	datab => \inst|lcd_bus~7_combout\,
	datac => \inst|lcd_bus\(6),
	datad => \inst|lcd_bus~18_combout\,
	combout => \inst|lcd_bus~19_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst|lcd_bus~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~20_combout\ = (\inst7~combout\ & (((\inst|lcd_bus~19_combout\)))) # (!\inst7~combout\ & (!\inst|Mux12~0_combout\ & ((!\inst|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datab => \inst|Mux12~0_combout\,
	datac => \inst|lcd_bus~19_combout\,
	datad => \inst|char\(4),
	combout => \inst|lcd_bus~20_combout\);

-- Location: LCCOMB_X18_Y12_N8
\inst|lcd_bus[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[6]~16_combout\ = (!\inst|char\(4) & (\inst|char\(3) & (!\inst19|Mux5~2_combout\ & \inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(3),
	datac => \inst19|Mux5~2_combout\,
	datad => \inst|char\(2),
	combout => \inst|lcd_bus[6]~16_combout\);

-- Location: LCCOMB_X18_Y12_N12
\inst|lcd_bus[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[6]~21_combout\ = (\inst|process_0~0_combout\ & (((!\inst|lcd_bus~7_combout\) # (!\inst7~combout\)) # (!\inst|lcd_bus[6]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[6]~16_combout\,
	datab => \inst|process_0~0_combout\,
	datac => \inst7~combout\,
	datad => \inst|lcd_bus~7_combout\,
	combout => \inst|lcd_bus[6]~21_combout\);

-- Location: FF_X18_Y12_N1
\inst|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus~20_combout\,
	ena => \inst|lcd_bus[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(6));

-- Location: LCCOMB_X13_Y13_N26
\inst|dut|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector39~0_combout\ = (\inst|dut|state.ready~q\ & (\inst|lcd_bus\(6) & \inst|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.ready~q\,
	datac => \inst|lcd_bus\(6),
	datad => \inst|lcd_enable~q\,
	combout => \inst|dut|Selector39~0_combout\);

-- Location: FF_X13_Y13_N27
\inst|dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector39~0_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(6));

-- Location: LCCOMB_X16_Y8_N2
\inst30|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~6_combout\ = (!\inst4|aux\(0) & !\inst4|aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst30|Mux6~6_combout\);

-- Location: LCCOMB_X17_Y12_N14
\inst19|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal0~1_combout\ = (\inst4|aux\(1) & !\inst4|aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst19|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y12_N24
\inst19|lcd_bus[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|lcd_bus[6]~8_combout\ = (\inst|char\(2) & (\inst|char\(3) & (!\inst19|Equal0~1_combout\ & !\inst19|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(3),
	datac => \inst19|Equal0~1_combout\,
	datad => \inst19|Mux5~2_combout\,
	combout => \inst19|lcd_bus[6]~8_combout\);

-- Location: LCCOMB_X17_Y12_N22
\inst19|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = (\inst4|aux\(1) & \inst4|aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst19|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y12_N26
\inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~0_combout\ = (!\inst|lcd_bus~14_combout\ & ((\inst19|lcd_bus[6]~8_combout\ & ((\inst19|Equal0~0_combout\))) # (!\inst19|lcd_bus[6]~8_combout\ & (\inst|lcd_bus~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~13_combout\,
	datab => \inst19|lcd_bus[6]~8_combout\,
	datac => \inst19|Equal0~0_combout\,
	datad => \inst|lcd_bus~14_combout\,
	combout => \inst19|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\inst19|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux3~1_combout\ = (\inst19|Mux3~0_combout\) # ((\inst|lcd_bus[6]~15_combout\ & ((\inst19|lcd_bus\(6)) # (!\inst30|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux6~6_combout\,
	datab => \inst|lcd_bus[6]~15_combout\,
	datac => \inst19|lcd_bus\(6),
	datad => \inst19|Mux3~0_combout\,
	combout => \inst19|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y12_N8
\inst19|lcd_bus[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|lcd_bus[6]~11_combout\ = (\inst|process_0~0_combout\ & ((\inst4|aux\(1)) # ((\inst4|aux\(0)) # (!\inst|lcd_bus[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst|process_0~0_combout\,
	datac => \inst|lcd_bus[6]~16_combout\,
	datad => \inst4|aux\(0),
	combout => \inst19|lcd_bus[6]~11_combout\);

-- Location: FF_X17_Y12_N17
\inst19|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux3~1_combout\,
	ena => \inst19|lcd_bus[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(6));

-- Location: LCCOMB_X13_Y13_N4
\inst19|dut|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector39~0_combout\ = (\inst|dut|state.ready~q\ & (\inst19|lcd_bus\(6) & \inst|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|lcd_bus\(6),
	datad => \inst|lcd_enable~q\,
	combout => \inst19|dut|Selector39~0_combout\);

-- Location: FF_X13_Y13_N5
\inst19|dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector39~0_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(6));

-- Location: LCCOMB_X13_Y13_N24
\inst24|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux4~0_combout\ = (\inst4|aux\(0) & (((\inst19|dut|lcd_data\(6))))) # (!\inst4|aux\(0) & ((\inst4|aux\(1) & ((\inst19|dut|lcd_data\(6)))) # (!\inst4|aux\(1) & (\inst|dut|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst4|aux\(1),
	datac => \inst|dut|lcd_data\(6),
	datad => \inst19|dut|lcd_data\(6),
	combout => \inst24|Mux4~0_combout\);

-- Location: FF_X13_Y13_N25
\inst24|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(6));

-- Location: LCCOMB_X18_Y12_N14
\inst|lcd_bus~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~24_combout\ = (\inst|char\(4) & (((!\inst|char\(3))))) # (!\inst|char\(4) & (\inst|lcd_bus\(5) & ((\inst|lcd_bus~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(5),
	datab => \inst|char\(4),
	datac => \inst|char\(3),
	datad => \inst|lcd_bus~7_combout\,
	combout => \inst|lcd_bus~24_combout\);

-- Location: LCCOMB_X17_Y12_N6
\inst|lcd_bus~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~22_combout\ = (\inst|char\(2) & ((\inst|char\(1) & ((!\inst|char\(0)))) # (!\inst|char\(1) & (\inst|char\(3) & \inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(3),
	datad => \inst|char\(0),
	combout => \inst|lcd_bus~22_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst|lcd_bus~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~23_combout\ = (\inst|lcd_bus[6]~17_combout\ & ((\inst|process_0~2_combout\))) # (!\inst|lcd_bus[6]~17_combout\ & (\inst|lcd_bus~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~22_combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|lcd_bus[6]~17_combout\,
	combout => \inst|lcd_bus~23_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst|lcd_bus[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[5]~0_combout\ = (\inst|lcd_bus~14_combout\ & (\inst|lcd_bus~24_combout\)) # (!\inst|lcd_bus~14_combout\ & ((\inst|lcd_bus~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~14_combout\,
	datab => \inst|lcd_bus~24_combout\,
	datad => \inst|lcd_bus~23_combout\,
	combout => \inst|lcd_bus[5]~0_combout\);

-- Location: LCCOMB_X17_Y11_N16
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (!\inst|char\(3) & \inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(3),
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X18_Y12_N31
\inst|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[5]~0_combout\,
	asdata => \inst|Mux13~0_combout\,
	sload => \ALT_INV_inst7~combout\,
	ena => \inst|lcd_bus[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(5));

-- Location: LCCOMB_X13_Y13_N16
\inst19|dut|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector40~2_combout\ = (!\inst|dut|state.ready~q\ & ((\inst|dut|Add0~62_combout\) # (!\inst|dut|state.initialize~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|Add0~62_combout\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|dut|state.ready~q\,
	combout => \inst19|dut|Selector40~2_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst19|dut|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector40~3_combout\ = (\inst19|dut|Selector40~2_combout\) # ((!\inst|dut|state.ready~q\ & (!\inst|dut|Add0~60_combout\ & \inst|dut|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.ready~q\,
	datab => \inst|dut|Add0~60_combout\,
	datac => \inst|dut|LessThan1~2_combout\,
	datad => \inst19|dut|Selector40~2_combout\,
	combout => \inst19|dut|Selector40~3_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst|dut|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector40~2_combout\ = (\inst19|dut|Selector40~3_combout\) # ((\inst|lcd_bus\(5) & (\inst|dut|state.ready~q\ & \inst|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(5),
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|dut|Selector40~3_combout\,
	datad => \inst|lcd_enable~q\,
	combout => \inst|dut|Selector40~2_combout\);

-- Location: FF_X13_Y13_N7
\inst|dut|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector40~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(5));

-- Location: LCCOMB_X17_Y12_N28
\inst19|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux4~2_combout\ = (\inst|char\(4) & (!\inst|char\(3))) # (!\inst|char\(4) & (((\inst19|lcd_bus\(5) & \inst30|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(3),
	datac => \inst19|lcd_bus\(5),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst19|Mux4~2_combout\);

-- Location: LCCOMB_X17_Y12_N2
\inst19|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux4~4_combout\ = (\inst19|lcd_bus[6]~8_combout\ & (((!\inst4|aux\(0)) # (!\inst4|aux\(1))))) # (!\inst19|lcd_bus[6]~8_combout\ & (\inst|lcd_bus~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~22_combout\,
	datab => \inst19|lcd_bus[6]~8_combout\,
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst19|Mux4~4_combout\);

-- Location: LCCOMB_X17_Y12_N30
\inst19|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux4~3_combout\ = (\inst|lcd_bus~14_combout\ & (\inst19|Mux4~2_combout\)) # (!\inst|lcd_bus~14_combout\ & ((\inst19|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Mux4~2_combout\,
	datac => \inst19|Mux4~4_combout\,
	datad => \inst|lcd_bus~14_combout\,
	combout => \inst19|Mux4~3_combout\);

-- Location: FF_X17_Y12_N31
\inst19|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux4~3_combout\,
	ena => \inst19|lcd_bus[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(5));

-- Location: LCCOMB_X13_Y13_N0
\inst19|dut|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector40~4_combout\ = (\inst19|dut|Selector40~3_combout\) # ((\inst19|lcd_bus\(5) & (\inst|dut|state.ready~q\ & \inst|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|lcd_bus\(5),
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|dut|Selector40~3_combout\,
	datad => \inst|lcd_enable~q\,
	combout => \inst19|dut|Selector40~4_combout\);

-- Location: FF_X13_Y13_N1
\inst19|dut|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector40~4_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(5));

-- Location: LCCOMB_X12_Y13_N10
\inst24|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux5~0_combout\ = (\inst4|aux\(1) & (((\inst19|dut|lcd_data\(5))))) # (!\inst4|aux\(1) & ((\inst4|aux\(0) & ((\inst19|dut|lcd_data\(5)))) # (!\inst4|aux\(0) & (\inst|dut|lcd_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data\(5),
	datab => \inst19|dut|lcd_data\(5),
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst24|Mux5~0_combout\);

-- Location: FF_X12_Y13_N11
\inst24|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(5));

-- Location: LCCOMB_X16_Y9_N26
\inst19|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~3_combout\ = ((\inst4|aux\(1)) # ((\inst19|lcd_bus\(4) & !\inst4|aux\(0)))) # (!\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|lcd_bus\(4),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst19|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~5_combout\ = (\inst4|aux\(0) & (!\inst|char\(2) & ((!\inst4|aux\(1))))) # (!\inst4|aux\(0) & ((\inst4|aux\(1) & (\inst|char\(2))) # (!\inst4|aux\(1) & ((\inst19|lcd_bus\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|lcd_bus\(4),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux5~5_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst19|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~9_combout\ = (!\inst|char\(1) & (\inst19|Mux5~5_combout\ & ((!\inst|char\(0)) # (!\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst|char\(1),
	datad => \inst19|Mux5~5_combout\,
	combout => \inst19|Mux5~9_combout\);

-- Location: LCCOMB_X19_Y7_N24
\inst19|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~4_combout\ = \inst|char\(0) $ (\inst|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(0),
	datad => \inst|char\(1),
	combout => \inst19|Mux5~4_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~4_combout\ = (!\inst|char\(2) & \inst|char\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(2),
	datad => \inst|char\(1),
	combout => \inst|Mux15~4_combout\);

-- Location: LCCOMB_X16_Y9_N30
\inst19|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~6_combout\ = (!\inst4|aux\(0) & ((\inst4|aux\(1) & (!\inst|char\(0))) # (!\inst4|aux\(1) & ((\inst19|lcd_bus\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst19|lcd_bus\(4),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux5~6_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst19|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~7_combout\ = (\inst|char\(2) & ((\inst4|aux\(0) & ((\inst4|aux\(1)))) # (!\inst4|aux\(0) & (\inst19|lcd_bus\(4) & !\inst4|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|lcd_bus\(4),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux5~7_combout\);

-- Location: LCCOMB_X16_Y9_N22
\inst19|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~8_combout\ = (\inst19|Mux5~4_combout\ & ((\inst19|Mux5~7_combout\) # ((\inst|Mux15~4_combout\ & \inst19|Mux5~6_combout\)))) # (!\inst19|Mux5~4_combout\ & (\inst|Mux15~4_combout\ & (\inst19|Mux5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux5~4_combout\,
	datab => \inst|Mux15~4_combout\,
	datac => \inst19|Mux5~6_combout\,
	datad => \inst19|Mux5~7_combout\,
	combout => \inst19|Mux5~8_combout\);

-- Location: LCCOMB_X17_Y9_N20
\inst19|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~10_combout\ = (\inst|char\(4) & (!\inst|char\(3))) # (!\inst|char\(4) & (\inst|char\(3) & ((\inst19|Mux5~9_combout\) # (\inst19|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(3),
	datac => \inst19|Mux5~9_combout\,
	datad => \inst19|Mux5~8_combout\,
	combout => \inst19|Mux5~10_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst19|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux5~11_combout\ = (\inst19|Mux5~10_combout\) # ((\inst19|Mux5~3_combout\ & (\inst19|Mux5~2_combout\ & !\inst|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux5~3_combout\,
	datab => \inst19|Mux5~2_combout\,
	datac => \inst|char\(3),
	datad => \inst19|Mux5~10_combout\,
	combout => \inst19|Mux5~11_combout\);

-- Location: FF_X17_Y9_N9
\inst19|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux5~11_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(4));

-- Location: LCCOMB_X13_Y13_N20
\inst19|dut|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector41~2_combout\ = (\inst19|dut|Selector40~3_combout\) # ((\inst19|lcd_bus\(4) & (\inst|dut|state.ready~q\ & \inst|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|lcd_bus\(4),
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|dut|Selector40~3_combout\,
	datad => \inst|lcd_enable~q\,
	combout => \inst19|dut|Selector41~2_combout\);

-- Location: FF_X13_Y13_N21
\inst19|dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector41~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(4));

-- Location: LCCOMB_X19_Y7_N26
\inst|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~2_combout\ = (\inst|char\(3) & (((!\inst14|igual~15_combout\) # (!\inst12|igual~15_combout\)) # (!\inst3|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~15_combout\,
	datab => \inst|char\(3),
	datac => \inst12|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux14~2_combout\);

-- Location: LCCOMB_X19_Y7_N14
\inst|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~5_combout\ = (!\inst|char\(1) & (((\inst12|igual~15_combout\) # (!\inst14|igual~15_combout\)) # (!\inst3|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst3|igual~15_combout\,
	datac => \inst14|igual~15_combout\,
	datad => \inst12|igual~15_combout\,
	combout => \inst|Mux15~5_combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~6_combout\ = (\inst|lcd_bus\(4) & (\inst14|igual~15_combout\ & (\inst12|igual~15_combout\ $ (\inst3|igual~15_combout\)))) # (!\inst|lcd_bus\(4) & (\inst12|igual~15_combout\ & (\inst3|igual~15_combout\ & !\inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst|lcd_bus\(4),
	datac => \inst3|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux14~6_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst|lcd_bus~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~26_combout\ = (\inst14|igual~15_combout\ $ (!\inst3|igual~15_combout\)) # (!\inst12|igual~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|lcd_bus~26_combout\);

-- Location: LCCOMB_X19_Y7_N2
\inst|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~7_combout\ = (\inst19|Mux5~4_combout\ & (\inst|lcd_bus\(4) $ ((\inst|Mux14~6_combout\)))) # (!\inst19|Mux5~4_combout\ & (\inst|lcd_bus\(4) & ((\inst|lcd_bus~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(4),
	datab => \inst19|Mux5~4_combout\,
	datac => \inst|Mux14~6_combout\,
	datad => \inst|lcd_bus~26_combout\,
	combout => \inst|Mux14~7_combout\);

-- Location: LCCOMB_X19_Y7_N8
\inst|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~8_combout\ = (\inst|char\(2) & ((\inst|Mux14~7_combout\) # ((!\inst19|Mux5~4_combout\ & !\inst|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|Mux5~4_combout\,
	datac => \inst|Mux15~5_combout\,
	datad => \inst|Mux14~7_combout\,
	combout => \inst|Mux14~8_combout\);

-- Location: LCCOMB_X19_Y7_N6
\inst|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~4_combout\ = (\inst|lcd_bus\(4) & ((\inst12|igual~15_combout\ $ (!\inst14|igual~15_combout\)) # (!\inst3|igual~15_combout\))) # (!\inst|lcd_bus\(4) & (\inst12|igual~15_combout\ & (!\inst3|igual~15_combout\ & \inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|igual~15_combout\,
	datab => \inst|lcd_bus\(4),
	datac => \inst3|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux14~4_combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~3_combout\ = (\inst|process_0~1_combout\ & (((!\inst|char\(0))))) # (!\inst|process_0~1_combout\ & (\inst|lcd_bus\(4) & ((\inst|lcd_bus~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(4),
	datab => \inst|char\(0),
	datac => \inst|process_0~1_combout\,
	datad => \inst|lcd_bus~26_combout\,
	combout => \inst|Mux14~3_combout\);

-- Location: LCCOMB_X19_Y7_N4
\inst|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~5_combout\ = (!\inst|char\(2) & ((\inst|char\(1) & ((\inst|Mux14~3_combout\))) # (!\inst|char\(1) & (\inst|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~4_combout\,
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst|Mux14~3_combout\,
	combout => \inst|Mux14~5_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst|Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~13_combout\ = (!\inst|char\(2) & (!\inst|char\(0) & (!\inst7~combout\ & !\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst7~combout\,
	datad => \inst|char\(1),
	combout => \inst|Mux14~13_combout\);

-- Location: LCCOMB_X19_Y7_N30
\inst|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~9_combout\ = (\inst|Mux14~13_combout\) # ((\inst|Mux14~2_combout\ & ((\inst|Mux14~8_combout\) # (\inst|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~2_combout\,
	datab => \inst|Mux14~8_combout\,
	datac => \inst|Mux14~5_combout\,
	datad => \inst|Mux14~13_combout\,
	combout => \inst|Mux14~9_combout\);

-- Location: LCCOMB_X18_Y7_N30
\inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = (\inst14|igual~15_combout\ & (\inst12|igual~15_combout\ & !\inst3|igual~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: LCCOMB_X18_Y7_N24
\inst|lcd_bus~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~27_combout\ = (\inst14|igual~15_combout\ $ (!\inst12|igual~15_combout\)) # (!\inst3|igual~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|lcd_bus~27_combout\);

-- Location: LCCOMB_X18_Y7_N22
\inst|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~10_combout\ = (((\inst|lcd_bus\(4) & !\inst|process_0~3_combout\)) # (!\inst|lcd_bus~27_combout\)) # (!\inst|lcd_bus[9]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~5_combout\,
	datab => \inst|lcd_bus\(4),
	datac => \inst|process_0~3_combout\,
	datad => \inst|lcd_bus~27_combout\,
	combout => \inst|Mux14~10_combout\);

-- Location: LCCOMB_X19_Y7_N12
\inst|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~11_combout\ = (\inst|char\(0) & (\inst|Mux14~10_combout\ & (\inst|char\(1) $ (!\inst7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst7~combout\,
	datad => \inst|Mux14~10_combout\,
	combout => \inst|Mux14~11_combout\);

-- Location: LCCOMB_X19_Y7_N10
\inst|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~12_combout\ = (\inst|char\(4) & (!\inst|char\(3))) # (!\inst|char\(4) & ((\inst|Mux14~9_combout\) # ((!\inst|char\(3) & \inst|Mux14~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(3),
	datac => \inst|Mux14~9_combout\,
	datad => \inst|Mux14~11_combout\,
	combout => \inst|Mux14~12_combout\);

-- Location: FF_X19_Y7_N11
\inst|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux14~12_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(4));

-- Location: LCCOMB_X13_Y13_N22
\inst|dut|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector41~2_combout\ = (\inst19|dut|Selector40~3_combout\) # ((\inst|lcd_bus\(4) & (\inst|dut|state.ready~q\ & \inst|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(4),
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|dut|Selector40~3_combout\,
	datad => \inst|lcd_enable~q\,
	combout => \inst|dut|Selector41~2_combout\);

-- Location: FF_X13_Y13_N23
\inst|dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector41~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(4));

-- Location: LCCOMB_X13_Y13_N10
\inst24|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux6~0_combout\ = (\inst4|aux\(0) & (\inst19|dut|lcd_data\(4))) # (!\inst4|aux\(0) & ((\inst4|aux\(1) & (\inst19|dut|lcd_data\(4))) # (!\inst4|aux\(1) & ((\inst|dut|lcd_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst19|dut|lcd_data\(4),
	datac => \inst|dut|lcd_data\(4),
	datad => \inst4|aux\(1),
	combout => \inst24|Mux6~0_combout\);

-- Location: FF_X13_Y13_N11
\inst24|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(4));

-- Location: LCCOMB_X14_Y8_N22
\inst|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~6_combout\ = (\inst|char\(0) & ((\inst|char\(2) & (\inst|char\(3) & !\inst|char\(1))) # (!\inst|char\(2) & ((\inst|char\(1)))))) # (!\inst|char\(0) & (((\inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(0),
	datac => \inst|char\(2),
	datad => \inst|char\(1),
	combout => \inst|Mux15~6_combout\);

-- Location: LCCOMB_X19_Y8_N0
\inst|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~11_combout\ = (\inst|lcd_bus\(3) & ((\inst14|igual~15_combout\ & (\inst12|igual~15_combout\ $ (!\inst3|igual~15_combout\))) # (!\inst14|igual~15_combout\ & ((!\inst3|igual~15_combout\) # (!\inst12|igual~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datab => \inst|lcd_bus\(3),
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|Mux15~11_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst|Mux15~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~45_combout\ = (\inst|char\(2) & (\inst|char\(1) & \inst|Mux15~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(2),
	datac => \inst|char\(1),
	datad => \inst|Mux15~11_combout\,
	combout => \inst|Mux15~45_combout\);

-- Location: LCCOMB_X19_Y8_N26
\inst|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~12_combout\ = (\inst|char\(3) & (\inst|char\(0))) # (!\inst|char\(3) & ((\inst|char\(0) & ((\inst|Mux15~45_combout\))) # (!\inst|char\(0) & (\inst|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(0),
	datac => \inst|Mux15~4_combout\,
	datad => \inst|Mux15~45_combout\,
	combout => \inst|Mux15~12_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~7_combout\ = (!\inst|char\(1) & !\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst|Mux15~7_combout\);

-- Location: LCCOMB_X19_Y8_N2
\inst|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~8_combout\ = (!\inst14|igual~15_combout\ & (!\inst|char\(1) & (\inst12|igual~15_combout\ & \inst3|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datab => \inst|char\(1),
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|Mux15~8_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~9_combout\ = (\inst|lcd_bus~26_combout\ & (((\inst|lcd_bus\(3))))) # (!\inst|lcd_bus~26_combout\ & (!\inst|char\(2) & (\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|lcd_bus\(3),
	datad => \inst|lcd_bus~26_combout\,
	combout => \inst|Mux15~9_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~10_combout\ = (\inst|process_0~1_combout\ & (\inst|Mux15~7_combout\)) # (!\inst|process_0~1_combout\ & (((\inst|Mux15~8_combout\) # (\inst|Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~7_combout\,
	datab => \inst|Mux15~8_combout\,
	datac => \inst|Mux15~9_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|Mux15~10_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst|Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~13_combout\ = (\inst14|igual~15_combout\ & ((\inst|lcd_bus\(3)) # (\inst12|igual~15_combout\ $ (\inst3|igual~15_combout\)))) # (!\inst14|igual~15_combout\ & (\inst|lcd_bus\(3) & ((!\inst3|igual~15_combout\) # (!\inst12|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datab => \inst|lcd_bus\(3),
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|Mux15~13_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst|Mux15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~14_combout\ = (\inst14|igual~15_combout\ & (\inst|lcd_bus\(3) & ((\inst3|igual~15_combout\) # (!\inst12|igual~15_combout\)))) # (!\inst14|igual~15_combout\ & ((\inst|lcd_bus\(3)) # ((\inst12|igual~15_combout\ & \inst3|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datab => \inst|lcd_bus\(3),
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|Mux15~14_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst|Mux15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~15_combout\ = (\inst|char\(2) & (\inst|Mux15~11_combout\)) # (!\inst|char\(2) & (((\inst|Mux15~14_combout\ & !\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|Mux15~11_combout\,
	datac => \inst|Mux15~14_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|Mux15~15_combout\);

-- Location: LCCOMB_X19_Y8_N10
\inst|Mux15~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~46_combout\ = (\inst|char\(1) & (!\inst|char\(2) & (\inst|Mux15~13_combout\))) # (!\inst|char\(1) & (((\inst|Mux15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|Mux15~13_combout\,
	datac => \inst|char\(1),
	datad => \inst|Mux15~15_combout\,
	combout => \inst|Mux15~46_combout\);

-- Location: LCCOMB_X19_Y8_N18
\inst|Mux15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~16_combout\ = (\inst|Mux15~12_combout\ & (((\inst|Mux15~46_combout\)) # (!\inst|char\(3)))) # (!\inst|Mux15~12_combout\ & (\inst|char\(3) & (\inst|Mux15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~12_combout\,
	datab => \inst|char\(3),
	datac => \inst|Mux15~10_combout\,
	datad => \inst|Mux15~46_combout\,
	combout => \inst|Mux15~16_combout\);

-- Location: LCCOMB_X16_Y8_N0
\inst|lcd_bus[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[3]~1_combout\ = (\inst7~combout\ & ((\inst|Mux15~16_combout\))) # (!\inst7~combout\ & (\inst|Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datab => \inst|Mux15~6_combout\,
	datad => \inst|Mux15~16_combout\,
	combout => \inst|lcd_bus[3]~1_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst|Mux15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~17_combout\ = (\inst|char\(2) & (((\inst|char\(0) & \inst6|contagemSL\(3))))) # (!\inst|char\(2) & (\inst|char\(1) & (!\inst|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(2),
	datac => \inst|char\(0),
	datad => \inst6|contagemSL\(3),
	combout => \inst|Mux15~17_combout\);

-- Location: LCCOMB_X17_Y8_N12
\inst|Mux15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~18_combout\ = (\inst|char\(0) & ((\inst6|contagemHL\(3)) # ((\inst|char\(2))))) # (!\inst|char\(0) & (((\inst6|contagemML\(3) & \inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemHL\(3),
	datab => \inst6|contagemML\(3),
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst|Mux15~18_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst|Mux15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~19_combout\ = (!\inst|char\(3) & ((\inst|Mux15~17_combout\) # ((!\inst|char\(1) & \inst|Mux15~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(3),
	datac => \inst|Mux15~17_combout\,
	datad => \inst|Mux15~18_combout\,
	combout => \inst|Mux15~19_combout\);

-- Location: FF_X16_Y8_N1
\inst|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[3]~1_combout\,
	asdata => \inst|Mux15~19_combout\,
	sload => \inst|char\(4),
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(3));

-- Location: LCCOMB_X13_Y13_N30
\inst30|dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector44~2_combout\ = (\inst|dut|state.initialize~q\ & ((!\inst|lcd_enable~q\) # (!\inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|dut|state.ready~q\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|lcd_enable~q\,
	combout => \inst30|dut|Selector44~2_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst30|dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector43~2_combout\ = (\inst|dut|state.initialize~q\ & (!\inst|dut|Add0~60_combout\ & ((!\inst|lcd_enable~q\) # (!\inst|dut|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|state.ready~q\,
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.initialize~q\,
	datad => \inst|dut|Add0~60_combout\,
	combout => \inst30|dut|Selector43~2_combout\);

-- Location: LCCOMB_X12_Y9_N6
\inst30|dut|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector43~3_combout\ = ((!\inst|dut|LessThan1~2_combout\ & ((\inst|dut|LessThan2~3_combout\) # (!\inst|dut|LessThan3~11_combout\)))) # (!\inst30|dut|Selector43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~11_combout\,
	datab => \inst30|dut|Selector43~2_combout\,
	datac => \inst|dut|LessThan2~3_combout\,
	datad => \inst|dut|LessThan1~2_combout\,
	combout => \inst30|dut|Selector43~3_combout\);

-- Location: LCCOMB_X12_Y9_N4
\inst30|dut|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector43~4_combout\ = (\inst30|dut|Selector43~3_combout\ & ((!\inst|dut|Add0~62_combout\) # (!\inst30|dut|Selector44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|dut|Selector44~2_combout\,
	datac => \inst|dut|Add0~62_combout\,
	datad => \inst30|dut|Selector43~3_combout\,
	combout => \inst30|dut|Selector43~4_combout\);

-- Location: LCCOMB_X11_Y9_N10
\inst|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector42~2_combout\ = ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst|lcd_bus\(3)))) # (!\inst30|dut|Selector43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst|lcd_bus\(3),
	datad => \inst30|dut|Selector43~4_combout\,
	combout => \inst|dut|Selector42~2_combout\);

-- Location: FF_X11_Y9_N11
\inst|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector42~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(3));

-- Location: LCCOMB_X18_Y10_N22
\inst19|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~11_combout\ = (!\inst|char\(2) & ((\inst|char\(1) & (!\inst|char\(0))) # (!\inst|char\(1) & (\inst|char\(0) & \inst26|hl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst26|hl\(3),
	datad => \inst|char\(2),
	combout => \inst19|Mux6~11_combout\);

-- Location: LCCOMB_X17_Y8_N16
\inst19|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~12_combout\ = (\inst|char\(0) & (((\inst26|sl\(3)) # (!\inst|char\(1))))) # (!\inst|char\(0) & (\inst26|ml\(3) & ((!\inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst26|ml\(3),
	datac => \inst26|sl\(3),
	datad => \inst|char\(1),
	combout => \inst19|Mux6~12_combout\);

-- Location: LCCOMB_X18_Y10_N28
\inst19|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~13_combout\ = (\inst19|Mux6~11_combout\) # ((\inst|char\(2) & \inst19|Mux6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(2),
	datac => \inst19|Mux6~11_combout\,
	datad => \inst19|Mux6~12_combout\,
	combout => \inst19|Mux6~13_combout\);

-- Location: LCCOMB_X16_Y8_N22
\inst19|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~16_combout\ = (\inst|char\(2) & (\inst|char\(0) & (\inst19|lcd_bus\(3) & \inst30|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst19|lcd_bus\(3),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst19|Mux6~16_combout\);

-- Location: LCCOMB_X16_Y7_N14
\inst30|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~8_combout\ = \inst|char\(0) $ (\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst30|Mux6~8_combout\);

-- Location: LCCOMB_X16_Y8_N12
\inst19|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~7_combout\ = (\inst|char\(3) & (((\inst|char\(1))))) # (!\inst|char\(3) & ((\inst|char\(1) & (\inst19|Mux6~16_combout\)) # (!\inst|char\(1) & ((\inst30|Mux6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux6~16_combout\,
	datab => \inst30|Mux6~8_combout\,
	datac => \inst|char\(3),
	datad => \inst|char\(1),
	combout => \inst19|Mux6~7_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst30|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~4_combout\ = (!\inst4|aux\(0) & (!\inst|char\(0) & !\inst4|aux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst|char\(0),
	datad => \inst4|aux\(1),
	combout => \inst30|Mux7~4_combout\);

-- Location: LCCOMB_X16_Y8_N6
\inst19|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~8_combout\ = (\inst4|aux\(1) & ((\inst|char\(0) $ (\inst4|aux\(0))))) # (!\inst4|aux\(1) & ((\inst19|lcd_bus\(3)) # ((\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|lcd_bus\(3),
	datab => \inst|char\(0),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux6~8_combout\);

-- Location: LCCOMB_X16_Y8_N8
\inst19|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~9_combout\ = (\inst|char\(2) & (\inst30|Mux7~4_combout\ & (\inst19|lcd_bus\(3)))) # (!\inst|char\(2) & ((\inst19|Mux6~8_combout\) # ((\inst30|Mux7~4_combout\ & \inst19|lcd_bus\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst30|Mux7~4_combout\,
	datac => \inst19|lcd_bus\(3),
	datad => \inst19|Mux6~8_combout\,
	combout => \inst19|Mux6~9_combout\);

-- Location: LCCOMB_X16_Y7_N0
\inst19|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~6_combout\ = (\inst4|aux\(1) & ((\inst|char\(2) & (\inst4|aux\(0) & !\inst|char\(0))) # (!\inst|char\(2) & ((\inst4|aux\(0)) # (!\inst|char\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst4|aux\(0),
	datac => \inst|char\(0),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux6~6_combout\);

-- Location: LCCOMB_X16_Y8_N20
\inst19|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~15_combout\ = (\inst19|Mux6~6_combout\) # ((\inst19|lcd_bus\(3) & (!\inst4|aux\(1) & !\inst4|aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|lcd_bus\(3),
	datab => \inst4|aux\(1),
	datac => \inst4|aux\(0),
	datad => \inst19|Mux6~6_combout\,
	combout => \inst19|Mux6~15_combout\);

-- Location: LCCOMB_X16_Y8_N18
\inst19|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~10_combout\ = (\inst19|Mux6~7_combout\ & (((\inst19|Mux6~9_combout\)) # (!\inst|char\(3)))) # (!\inst19|Mux6~7_combout\ & (\inst|char\(3) & ((\inst19|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux6~7_combout\,
	datab => \inst|char\(3),
	datac => \inst19|Mux6~9_combout\,
	datad => \inst19|Mux6~15_combout\,
	combout => \inst19|Mux6~10_combout\);

-- Location: LCCOMB_X16_Y8_N30
\inst19|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux6~14_combout\ = (\inst|char\(4) & (\inst19|Mux6~13_combout\ & (!\inst|char\(3)))) # (!\inst|char\(4) & (((\inst19|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux6~13_combout\,
	datab => \inst|char\(3),
	datac => \inst|char\(4),
	datad => \inst19|Mux6~10_combout\,
	combout => \inst19|Mux6~14_combout\);

-- Location: FF_X16_Y8_N31
\inst19|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux6~14_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(3));

-- Location: LCCOMB_X11_Y9_N24
\inst19|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector42~2_combout\ = ((\inst|lcd_enable~q\ & (\inst19|lcd_bus\(3) & \inst|dut|state.ready~q\))) # (!\inst30|dut|Selector43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst19|lcd_bus\(3),
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|dut|Selector43~4_combout\,
	combout => \inst19|dut|Selector42~2_combout\);

-- Location: FF_X11_Y9_N25
\inst19|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector42~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(3));

-- Location: LCCOMB_X11_Y9_N12
\inst24|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux7~0_combout\ = (\inst4|aux\(0) & (((\inst4|aux\(1))))) # (!\inst4|aux\(0) & ((\inst4|aux\(1) & ((\inst19|dut|lcd_data\(3)))) # (!\inst4|aux\(1) & (\inst|dut|lcd_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|lcd_data\(3),
	datab => \inst4|aux\(0),
	datac => \inst4|aux\(1),
	datad => \inst19|dut|lcd_data\(3),
	combout => \inst24|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y10_N22
\inst30|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~13_combout\ = (!\inst|char\(2) & ((\inst|char\(1) & ((!\inst|char\(0)))) # (!\inst|char\(1) & (\inst31|hl\(3) & \inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hl\(3),
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst|char\(0),
	combout => \inst30|Mux6~13_combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst30|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~14_combout\ = (\inst|char\(0) & (((\inst31|sl\(3))) # (!\inst|char\(1)))) # (!\inst|char\(0) & (!\inst|char\(1) & (\inst31|ml\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|char\(1),
	datac => \inst31|ml\(3),
	datad => \inst31|sl\(3),
	combout => \inst30|Mux6~14_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst30|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~15_combout\ = (\inst30|Mux6~13_combout\) # ((\inst|char\(2) & \inst30|Mux6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|Mux6~13_combout\,
	datac => \inst|char\(2),
	datad => \inst30|Mux6~14_combout\,
	combout => \inst30|Mux6~15_combout\);

-- Location: LCCOMB_X16_Y7_N26
\inst30|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~18_combout\ = (\inst|char\(2) & (\inst|char\(0) & (\inst30|lcd_bus\(3) & \inst30|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst30|lcd_bus\(3),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst30|Mux6~18_combout\);

-- Location: LCCOMB_X16_Y7_N12
\inst30|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~9_combout\ = (\inst|char\(3) & (((\inst|char\(1))))) # (!\inst|char\(3) & ((\inst|char\(1) & ((\inst30|Mux6~18_combout\))) # (!\inst|char\(1) & (\inst30|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst30|Mux6~8_combout\,
	datac => \inst30|Mux6~18_combout\,
	datad => \inst|char\(1),
	combout => \inst30|Mux6~9_combout\);

-- Location: LCCOMB_X16_Y7_N28
\inst30|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~17_combout\ = (\inst19|Mux6~6_combout\) # ((!\inst4|aux\(0) & (\inst30|lcd_bus\(3) & !\inst4|aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst19|Mux6~6_combout\,
	datac => \inst30|lcd_bus\(3),
	datad => \inst4|aux\(1),
	combout => \inst30|Mux6~17_combout\);

-- Location: LCCOMB_X16_Y7_N18
\inst30|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~10_combout\ = (\inst4|aux\(1) & (\inst4|aux\(0) $ ((\inst|char\(0))))) # (!\inst4|aux\(1) & ((\inst4|aux\(0)) # ((\inst30|lcd_bus\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst|char\(0),
	datac => \inst30|lcd_bus\(3),
	datad => \inst4|aux\(1),
	combout => \inst30|Mux6~10_combout\);

-- Location: LCCOMB_X16_Y7_N24
\inst30|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~11_combout\ = (\inst|char\(2) & (\inst30|lcd_bus\(3) & (\inst30|Mux7~4_combout\))) # (!\inst|char\(2) & ((\inst30|Mux6~10_combout\) # ((\inst30|lcd_bus\(3) & \inst30|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst30|lcd_bus\(3),
	datac => \inst30|Mux7~4_combout\,
	datad => \inst30|Mux6~10_combout\,
	combout => \inst30|Mux6~11_combout\);

-- Location: LCCOMB_X16_Y7_N2
\inst30|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~12_combout\ = (\inst30|Mux6~9_combout\ & (((\inst30|Mux6~11_combout\) # (!\inst|char\(3))))) # (!\inst30|Mux6~9_combout\ & (\inst30|Mux6~17_combout\ & (\inst|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux6~9_combout\,
	datab => \inst30|Mux6~17_combout\,
	datac => \inst|char\(3),
	datad => \inst30|Mux6~11_combout\,
	combout => \inst30|Mux6~12_combout\);

-- Location: LCCOMB_X16_Y7_N8
\inst30|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~16_combout\ = (\inst|char\(4) & (\inst30|Mux6~15_combout\ & (!\inst|char\(3)))) # (!\inst|char\(4) & (((\inst30|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst30|Mux6~15_combout\,
	datac => \inst|char\(3),
	datad => \inst30|Mux6~12_combout\,
	combout => \inst30|Mux6~16_combout\);

-- Location: FF_X16_Y7_N9
\inst30|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|Mux6~16_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|lcd_bus\(3));

-- Location: LCCOMB_X11_Y9_N14
\inst30|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector42~2_combout\ = ((\inst|lcd_enable~q\ & (\inst30|lcd_bus\(3) & \inst|dut|state.ready~q\))) # (!\inst30|dut|Selector43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst30|lcd_bus\(3),
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|dut|Selector43~4_combout\,
	combout => \inst30|dut|Selector42~2_combout\);

-- Location: FF_X11_Y9_N15
\inst30|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|dut|Selector42~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|dut|lcd_data\(3));

-- Location: LCCOMB_X23_Y9_N12
\inst22|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~11_combout\ = (\inst|char\(1) & (\inst|char\(0) & ((\inst27|sl\(3))))) # (!\inst|char\(1) & ((\inst|char\(0)) # ((\inst27|ml\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst27|ml\(3),
	datad => \inst27|sl\(3),
	combout => \inst22|Mux6~11_combout\);

-- Location: LCCOMB_X23_Y9_N30
\inst22|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~10_combout\ = (!\inst|char\(2) & ((\inst|char\(1) & (!\inst|char\(0))) # (!\inst|char\(1) & (\inst|char\(0) & \inst27|hl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(2),
	datad => \inst27|hl\(3),
	combout => \inst22|Mux6~10_combout\);

-- Location: LCCOMB_X23_Y9_N10
\inst22|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~12_combout\ = (\inst22|Mux6~10_combout\) # ((\inst22|Mux6~11_combout\ & \inst|char\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux6~11_combout\,
	datac => \inst22|Mux6~10_combout\,
	datad => \inst|char\(2),
	combout => \inst22|Mux6~12_combout\);

-- Location: LCCOMB_X16_Y7_N30
\inst22|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~7_combout\ = (\inst4|aux\(1) & (\inst4|aux\(0) $ (((\inst|char\(0)))))) # (!\inst4|aux\(1) & ((\inst4|aux\(0)) # ((\inst22|lcd_bus\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst22|lcd_bus\(3),
	datac => \inst|char\(0),
	datad => \inst4|aux\(1),
	combout => \inst22|Mux6~7_combout\);

-- Location: LCCOMB_X16_Y7_N16
\inst22|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~8_combout\ = (\inst22|Mux6~7_combout\ & (((\inst22|lcd_bus\(3) & \inst30|Mux7~4_combout\)) # (!\inst|char\(2)))) # (!\inst22|Mux6~7_combout\ & (\inst22|lcd_bus\(3) & (\inst30|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux6~7_combout\,
	datab => \inst22|lcd_bus\(3),
	datac => \inst30|Mux7~4_combout\,
	datad => \inst|char\(2),
	combout => \inst22|Mux6~8_combout\);

-- Location: LCCOMB_X16_Y7_N4
\inst22|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~14_combout\ = (\inst19|Mux6~6_combout\) # ((\inst22|lcd_bus\(3) & (!\inst4|aux\(0) & !\inst4|aux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux6~6_combout\,
	datab => \inst22|lcd_bus\(3),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst22|Mux6~14_combout\);

-- Location: LCCOMB_X16_Y7_N10
\inst22|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~15_combout\ = (\inst|char\(2) & (\inst22|lcd_bus\(3) & (\inst|char\(0) & \inst30|Mux6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst22|lcd_bus\(3),
	datac => \inst|char\(0),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst22|Mux6~15_combout\);

-- Location: LCCOMB_X16_Y7_N20
\inst22|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~6_combout\ = (\inst|char\(3) & (\inst|char\(1))) # (!\inst|char\(3) & ((\inst|char\(1) & ((\inst22|Mux6~15_combout\))) # (!\inst|char\(1) & (\inst30|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(1),
	datac => \inst30|Mux6~8_combout\,
	datad => \inst22|Mux6~15_combout\,
	combout => \inst22|Mux6~6_combout\);

-- Location: LCCOMB_X16_Y7_N6
\inst22|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~9_combout\ = (\inst|char\(3) & ((\inst22|Mux6~6_combout\ & (\inst22|Mux6~8_combout\)) # (!\inst22|Mux6~6_combout\ & ((\inst22|Mux6~14_combout\))))) # (!\inst|char\(3) & (((\inst22|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst22|Mux6~8_combout\,
	datac => \inst22|Mux6~14_combout\,
	datad => \inst22|Mux6~6_combout\,
	combout => \inst22|Mux6~9_combout\);

-- Location: LCCOMB_X16_Y7_N22
\inst22|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux6~13_combout\ = (\inst|char\(4) & (\inst22|Mux6~12_combout\ & (!\inst|char\(3)))) # (!\inst|char\(4) & (((\inst22|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst22|Mux6~12_combout\,
	datac => \inst|char\(3),
	datad => \inst22|Mux6~9_combout\,
	combout => \inst22|Mux6~13_combout\);

-- Location: FF_X16_Y7_N23
\inst22|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|Mux6~13_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|lcd_bus\(3));

-- Location: LCCOMB_X11_Y9_N30
\inst22|dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|dut|Selector42~2_combout\ = ((\inst|lcd_enable~q\ & (\inst22|lcd_bus\(3) & \inst|dut|state.ready~q\))) # (!\inst30|dut|Selector43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst22|lcd_bus\(3),
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|dut|Selector43~4_combout\,
	combout => \inst22|dut|Selector42~2_combout\);

-- Location: FF_X11_Y9_N31
\inst22|dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|dut|Selector42~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|dut|lcd_data\(3));

-- Location: LCCOMB_X11_Y9_N6
\inst24|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux7~1_combout\ = (\inst24|Mux7~0_combout\ & (((\inst22|dut|lcd_data\(3)) # (!\inst4|aux\(0))))) # (!\inst24|Mux7~0_combout\ & (\inst30|dut|lcd_data\(3) & ((\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux7~0_combout\,
	datab => \inst30|dut|lcd_data\(3),
	datac => \inst22|dut|lcd_data\(3),
	datad => \inst4|aux\(0),
	combout => \inst24|Mux7~1_combout\);

-- Location: FF_X11_Y9_N7
\inst24|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(3));

-- Location: LCCOMB_X24_Y10_N28
\inst30|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~11_combout\ = (\inst|char\(1) & ((\inst|char\(2) & (\inst31|sl\(2))) # (!\inst|char\(2) & ((\inst31|mh\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sl\(2),
	datab => \inst31|mh\(2),
	datac => \inst|char\(2),
	datad => \inst|char\(1),
	combout => \inst30|Mux7~11_combout\);

-- Location: LCCOMB_X23_Y10_N30
\inst30|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~12_combout\ = (\inst|char\(0) & ((\inst30|Mux7~11_combout\) # ((\inst|Mux15~7_combout\ & \inst31|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~7_combout\,
	datab => \inst|char\(0),
	datac => \inst31|hl\(2),
	datad => \inst30|Mux7~11_combout\,
	combout => \inst30|Mux7~12_combout\);

-- Location: LCCOMB_X23_Y9_N20
\inst30|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~13_combout\ = (\inst|char\(1) & (\inst31|sh\(2))) # (!\inst|char\(1) & ((\inst31|ml\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datac => \inst31|sh\(2),
	datad => \inst31|ml\(2),
	combout => \inst30|Mux7~13_combout\);

-- Location: LCCOMB_X23_Y9_N28
\inst30|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~17_combout\ = (\inst30|Mux7~12_combout\) # ((\inst|char\(2) & (!\inst|char\(0) & \inst30|Mux7~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst30|Mux7~12_combout\,
	datad => \inst30|Mux7~13_combout\,
	combout => \inst30|Mux7~17_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst30|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~8_combout\ = (!\inst|char\(2) & ((\inst4|aux\(1) & ((!\inst4|aux\(0)))) # (!\inst4|aux\(1) & ((\inst30|lcd_bus\(2)) # (\inst4|aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst30|lcd_bus\(2),
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst30|Mux7~8_combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst30|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~9_combout\ = (\inst30|Mux7~8_combout\) # ((\inst30|lcd_bus\(2) & \inst30|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|lcd_bus\(2),
	datab => \inst30|Mux7~8_combout\,
	datad => \inst30|Mux7~4_combout\,
	combout => \inst30|Mux7~9_combout\);

-- Location: LCCOMB_X14_Y8_N0
\inst|Mux15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~20_combout\ = (!\inst|char\(0) & !\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst|Mux15~20_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst30|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux6~7_combout\ = (\inst|char\(0) & \inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst30|Mux6~7_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst30|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~6_combout\ = (\inst30|Mux6~7_combout\ & ((\inst4|aux\(1)) # ((\inst30|lcd_bus\(2) & !\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst30|lcd_bus\(2),
	datac => \inst30|Mux6~7_combout\,
	datad => \inst4|aux\(0),
	combout => \inst30|Mux7~6_combout\);

-- Location: LCCOMB_X13_Y9_N22
\inst30|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~7_combout\ = (\inst|char\(1) & (((\inst|char\(3)) # (\inst30|Mux7~6_combout\)))) # (!\inst|char\(1) & (!\inst|Mux15~20_combout\ & (!\inst|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|Mux15~20_combout\,
	datac => \inst|char\(3),
	datad => \inst30|Mux7~6_combout\,
	combout => \inst30|Mux7~7_combout\);

-- Location: LCCOMB_X18_Y6_N24
\inst30|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~5_combout\ = (\inst4|aux\(0) & (\inst|char\(0) & ((\inst4|aux\(1)) # (!\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst|char\(0),
	datac => \inst4|aux\(1),
	datad => \inst|char\(2),
	combout => \inst30|Mux7~5_combout\);

-- Location: LCCOMB_X18_Y6_N26
\inst30|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~16_combout\ = (\inst30|Mux7~5_combout\) # ((\inst30|lcd_bus\(2) & (!\inst4|aux\(1) & !\inst4|aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|lcd_bus\(2),
	datab => \inst4|aux\(1),
	datac => \inst4|aux\(0),
	datad => \inst30|Mux7~5_combout\,
	combout => \inst30|Mux7~16_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst30|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~10_combout\ = (\inst|char\(3) & ((\inst30|Mux7~7_combout\ & (\inst30|Mux7~9_combout\)) # (!\inst30|Mux7~7_combout\ & ((\inst30|Mux7~16_combout\))))) # (!\inst|char\(3) & (((\inst30|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux7~9_combout\,
	datab => \inst|char\(3),
	datac => \inst30|Mux7~7_combout\,
	datad => \inst30|Mux7~16_combout\,
	combout => \inst30|Mux7~10_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst30|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~15_combout\ = (\inst|char\(4) & (\inst30|Mux7~17_combout\ & (!\inst|char\(3)))) # (!\inst|char\(4) & (((\inst30|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux7~17_combout\,
	datab => \inst|char\(4),
	datac => \inst|char\(3),
	datad => \inst30|Mux7~10_combout\,
	combout => \inst30|Mux7~15_combout\);

-- Location: FF_X13_Y9_N13
\inst30|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|Mux7~15_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|lcd_bus\(2));

-- Location: LCCOMB_X12_Y9_N18
\inst|dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~2_combout\ = (!\inst|dut|busy~5_combout\ & (\inst|dut|LessThan7~2_combout\ & (!\inst|dut|LessThan4~3_combout\ & !\inst|dut|Selector46~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|busy~5_combout\,
	datab => \inst|dut|LessThan7~2_combout\,
	datac => \inst|dut|LessThan4~3_combout\,
	datad => \inst|dut|Selector46~6_combout\,
	combout => \inst|dut|Selector43~2_combout\);

-- Location: LCCOMB_X12_Y9_N28
\inst30|dut|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector43~5_combout\ = ((!\inst|dut|LessThan2~3_combout\ & (\inst30|dut|Selector43~2_combout\ & \inst|dut|Selector43~2_combout\))) # (!\inst30|dut|Selector43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan2~3_combout\,
	datab => \inst30|dut|Selector43~2_combout\,
	datac => \inst30|dut|Selector43~4_combout\,
	datad => \inst|dut|Selector43~2_combout\,
	combout => \inst30|dut|Selector43~5_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst30|dut|Selector43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector43~6_combout\ = (\inst30|dut|Selector43~5_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst30|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst30|lcd_bus\(2),
	datad => \inst30|dut|Selector43~5_combout\,
	combout => \inst30|dut|Selector43~6_combout\);

-- Location: FF_X13_Y9_N17
\inst30|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|dut|Selector43~6_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|dut|lcd_data\(2));

-- Location: LCCOMB_X21_Y7_N4
\inst22|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~11_combout\ = (\inst|char\(1) & (\inst27|sh\(2))) # (!\inst|char\(1) & ((\inst27|ml\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sh\(2),
	datab => \inst|char\(1),
	datad => \inst27|ml\(2),
	combout => \inst22|Mux7~11_combout\);

-- Location: LCCOMB_X21_Y9_N30
\inst22|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~9_combout\ = (\inst|char\(1) & ((\inst|char\(2) & (\inst27|sl\(2))) # (!\inst|char\(2) & ((\inst27|mh\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst27|sl\(2),
	datac => \inst|char\(1),
	datad => \inst27|mh\(2),
	combout => \inst22|Mux7~9_combout\);

-- Location: LCCOMB_X18_Y6_N4
\inst22|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~10_combout\ = (\inst|char\(0) & ((\inst22|Mux7~9_combout\) # ((\inst|Mux15~7_combout\ & \inst27|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~7_combout\,
	datab => \inst27|hl\(2),
	datac => \inst|char\(0),
	datad => \inst22|Mux7~9_combout\,
	combout => \inst22|Mux7~10_combout\);

-- Location: LCCOMB_X18_Y6_N22
\inst22|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~14_combout\ = (\inst22|Mux7~10_combout\) # ((\inst22|Mux7~11_combout\ & (!\inst|char\(0) & \inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux7~11_combout\,
	datab => \inst|char\(0),
	datac => \inst22|Mux7~10_combout\,
	datad => \inst|char\(2),
	combout => \inst22|Mux7~14_combout\);

-- Location: LCCOMB_X18_Y6_N28
\inst22|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~13_combout\ = (\inst30|Mux7~5_combout\) # ((\inst22|lcd_bus\(2) & (!\inst4|aux\(1) & !\inst4|aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lcd_bus\(2),
	datab => \inst4|aux\(1),
	datac => \inst4|aux\(0),
	datad => \inst30|Mux7~5_combout\,
	combout => \inst22|Mux7~13_combout\);

-- Location: LCCOMB_X18_Y6_N14
\inst22|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~4_combout\ = (\inst30|Mux6~7_combout\ & ((\inst4|aux\(1)) # ((\inst22|lcd_bus\(2) & !\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lcd_bus\(2),
	datab => \inst30|Mux6~7_combout\,
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst22|Mux7~4_combout\);

-- Location: LCCOMB_X18_Y6_N8
\inst22|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~5_combout\ = (\inst|char\(3) & (((\inst|char\(1))))) # (!\inst|char\(3) & ((\inst|char\(1) & ((\inst22|Mux7~4_combout\))) # (!\inst|char\(1) & (!\inst|Mux15~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~20_combout\,
	datab => \inst|char\(3),
	datac => \inst22|Mux7~4_combout\,
	datad => \inst|char\(1),
	combout => \inst22|Mux7~5_combout\);

-- Location: LCCOMB_X18_Y6_N10
\inst22|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~6_combout\ = (!\inst|char\(2) & ((\inst4|aux\(1) & ((!\inst4|aux\(0)))) # (!\inst4|aux\(1) & ((\inst22|lcd_bus\(2)) # (\inst4|aux\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lcd_bus\(2),
	datab => \inst|char\(2),
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst22|Mux7~6_combout\);

-- Location: LCCOMB_X18_Y6_N0
\inst22|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~7_combout\ = (\inst22|Mux7~6_combout\) # ((\inst22|lcd_bus\(2) & \inst30|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lcd_bus\(2),
	datac => \inst30|Mux7~4_combout\,
	datad => \inst22|Mux7~6_combout\,
	combout => \inst22|Mux7~7_combout\);

-- Location: LCCOMB_X18_Y6_N18
\inst22|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~8_combout\ = (\inst|char\(3) & ((\inst22|Mux7~5_combout\ & ((\inst22|Mux7~7_combout\))) # (!\inst22|Mux7~5_combout\ & (\inst22|Mux7~13_combout\)))) # (!\inst|char\(3) & (((\inst22|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst22|Mux7~13_combout\,
	datac => \inst22|Mux7~5_combout\,
	datad => \inst22|Mux7~7_combout\,
	combout => \inst22|Mux7~8_combout\);

-- Location: LCCOMB_X18_Y6_N30
\inst22|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux7~12_combout\ = (\inst|char\(4) & (!\inst|char\(3) & (\inst22|Mux7~14_combout\))) # (!\inst|char\(4) & (((\inst22|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(3),
	datac => \inst22|Mux7~14_combout\,
	datad => \inst22|Mux7~8_combout\,
	combout => \inst22|Mux7~12_combout\);

-- Location: FF_X18_Y6_N31
\inst22|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|Mux7~12_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|lcd_bus\(2));

-- Location: LCCOMB_X13_Y9_N4
\inst22|dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|dut|Selector43~2_combout\ = (\inst30|dut|Selector43~5_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst22|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst22|lcd_bus\(2),
	datad => \inst30|dut|Selector43~5_combout\,
	combout => \inst22|dut|Selector43~2_combout\);

-- Location: FF_X13_Y9_N5
\inst22|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|dut|Selector43~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|dut|lcd_data\(2));

-- Location: LCCOMB_X21_Y10_N22
\inst19|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~11_combout\ = (\inst|char\(1) & ((\inst26|sh\(2)))) # (!\inst|char\(1) & (\inst26|ml\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datac => \inst26|ml\(2),
	datad => \inst26|sh\(2),
	combout => \inst19|Mux7~11_combout\);

-- Location: LCCOMB_X21_Y10_N10
\inst19|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~9_combout\ = (\inst|char\(1) & ((\inst|char\(2) & (\inst26|sl\(2))) # (!\inst|char\(2) & ((\inst26|mh\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst26|sl\(2),
	datad => \inst26|mh\(2),
	combout => \inst19|Mux7~9_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst19|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~10_combout\ = (\inst|char\(0) & ((\inst19|Mux7~9_combout\) # ((\inst|Mux15~7_combout\ & \inst26|hl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~7_combout\,
	datab => \inst|char\(0),
	datac => \inst26|hl\(2),
	datad => \inst19|Mux7~9_combout\,
	combout => \inst19|Mux7~10_combout\);

-- Location: LCCOMB_X21_Y10_N30
\inst19|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~14_combout\ = (\inst19|Mux7~10_combout\) # ((\inst|char\(2) & (!\inst|char\(0) & \inst19|Mux7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst19|Mux7~11_combout\,
	datad => \inst19|Mux7~10_combout\,
	combout => \inst19|Mux7~14_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst19|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~6_combout\ = (!\inst|char\(2) & ((\inst4|aux\(0) & ((!\inst4|aux\(1)))) # (!\inst4|aux\(0) & ((\inst19|lcd_bus\(2)) # (\inst4|aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst|char\(2),
	datac => \inst19|lcd_bus\(2),
	datad => \inst4|aux\(1),
	combout => \inst19|Mux7~6_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst19|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~7_combout\ = (\inst19|Mux7~6_combout\) # ((\inst19|lcd_bus\(2) & \inst30|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|lcd_bus\(2),
	datac => \inst30|Mux7~4_combout\,
	datad => \inst19|Mux7~6_combout\,
	combout => \inst19|Mux7~7_combout\);

-- Location: LCCOMB_X13_Y9_N6
\inst19|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~4_combout\ = (\inst30|Mux6~7_combout\ & ((\inst4|aux\(1)) # ((\inst19|lcd_bus\(2) & !\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux6~7_combout\,
	datab => \inst4|aux\(1),
	datac => \inst19|lcd_bus\(2),
	datad => \inst4|aux\(0),
	combout => \inst19|Mux7~4_combout\);

-- Location: LCCOMB_X13_Y9_N0
\inst19|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~5_combout\ = (\inst|char\(1) & (((\inst|char\(3)) # (\inst19|Mux7~4_combout\)))) # (!\inst|char\(1) & (!\inst|Mux15~20_combout\ & (!\inst|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|Mux15~20_combout\,
	datac => \inst|char\(3),
	datad => \inst19|Mux7~4_combout\,
	combout => \inst19|Mux7~5_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst19|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~13_combout\ = (\inst30|Mux7~5_combout\) # ((!\inst4|aux\(1) & (!\inst4|aux\(0) & \inst19|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst4|aux\(0),
	datac => \inst19|lcd_bus\(2),
	datad => \inst30|Mux7~5_combout\,
	combout => \inst19|Mux7~13_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst19|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~8_combout\ = (\inst|char\(3) & ((\inst19|Mux7~5_combout\ & (\inst19|Mux7~7_combout\)) # (!\inst19|Mux7~5_combout\ & ((\inst19|Mux7~13_combout\))))) # (!\inst|char\(3) & (((\inst19|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst19|Mux7~7_combout\,
	datac => \inst19|Mux7~5_combout\,
	datad => \inst19|Mux7~13_combout\,
	combout => \inst19|Mux7~8_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst19|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux7~12_combout\ = (\inst|char\(4) & (!\inst|char\(3) & (\inst19|Mux7~14_combout\))) # (!\inst|char\(4) & (((\inst19|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(4),
	datac => \inst19|Mux7~14_combout\,
	datad => \inst19|Mux7~8_combout\,
	combout => \inst19|Mux7~12_combout\);

-- Location: FF_X14_Y10_N31
\inst19|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux7~12_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(2));

-- Location: LCCOMB_X13_Y9_N18
\inst19|dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector43~2_combout\ = (\inst30|dut|Selector43~5_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst19|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|lcd_bus\(2),
	datad => \inst30|dut|Selector43~5_combout\,
	combout => \inst19|dut|Selector43~2_combout\);

-- Location: FF_X13_Y9_N19
\inst19|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector43~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(2));

-- Location: LCCOMB_X18_Y7_N28
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|char\(2) & (((!\inst|char\(1) & !\inst|char\(3))) # (!\inst|char\(0)))) # (!\inst|char\(2) & ((\inst|char\(0) & ((\inst|char\(3)))) # (!\inst|char\(0) & (\inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|char\(3),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y7_N10
\inst|lcd_bus~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~28_combout\ = (\inst|lcd_bus\(2) & ((\inst14|igual~15_combout\) # ((!\inst3|igual~15_combout\) # (!\inst12|igual~15_combout\)))) # (!\inst|lcd_bus\(2) & (\inst14|igual~15_combout\ & (\inst12|igual~15_combout\ $ (\inst3|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(2),
	datab => \inst14|igual~15_combout\,
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|lcd_bus~28_combout\);

-- Location: LCCOMB_X18_Y7_N0
\inst|Mux15~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~24_combout\ = ((\inst|process_0~3_combout\ & ((!\inst|char\(2)))) # (!\inst|process_0~3_combout\ & (\inst|lcd_bus\(2)))) # (!\inst|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(2),
	datab => \inst|char\(2),
	datac => \inst|process_0~3_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|Mux15~24_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst|Mux15~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~25_combout\ = (\inst|lcd_bus~28_combout\ & ((\inst|Mux15~4_combout\) # ((\inst|Mux15~5_combout\ & \inst|Mux15~24_combout\)))) # (!\inst|lcd_bus~28_combout\ & (((\inst|Mux15~5_combout\ & \inst|Mux15~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~28_combout\,
	datab => \inst|Mux15~4_combout\,
	datac => \inst|Mux15~5_combout\,
	datad => \inst|Mux15~24_combout\,
	combout => \inst|Mux15~25_combout\);

-- Location: LCCOMB_X18_Y7_N4
\inst|Mux15~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~21_combout\ = (\inst|Mux15~4_combout\ & (((\inst|lcd_bus~28_combout\)))) # (!\inst|Mux15~4_combout\ & (\inst|lcd_bus\(2) & (\inst|lcd_bus~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(2),
	datab => \inst|Mux15~4_combout\,
	datac => \inst|lcd_bus~7_combout\,
	datad => \inst|lcd_bus~28_combout\,
	combout => \inst|Mux15~21_combout\);

-- Location: LCCOMB_X18_Y7_N16
\inst|Mux15~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~23_combout\ = \inst|char\(1) $ (\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst|Mux15~23_combout\);

-- Location: LCCOMB_X18_Y7_N2
\inst|Mux15~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~22_combout\ = (\inst|lcd_bus[9]~5_combout\ & (((\inst|lcd_bus\(2) & !\inst|process_0~3_combout\)) # (!\inst|lcd_bus~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(2),
	datab => \inst|lcd_bus[9]~5_combout\,
	datac => \inst|process_0~3_combout\,
	datad => \inst|lcd_bus~27_combout\,
	combout => \inst|Mux15~22_combout\);

-- Location: LCCOMB_X18_Y7_N18
\inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\inst|char\(3) & (((\inst|char\(0))))) # (!\inst|char\(3) & ((\inst|char\(0) & ((\inst|Mux15~22_combout\))) # (!\inst|char\(0) & (\inst|Mux15~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux15~23_combout\,
	datac => \inst|char\(0),
	datad => \inst|Mux15~22_combout\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y7_N8
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (\inst|char\(3) & ((\inst|Mux7~1_combout\ & (\inst|Mux15~25_combout\)) # (!\inst|Mux7~1_combout\ & ((\inst|Mux15~21_combout\))))) # (!\inst|char\(3) & (((\inst|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux15~25_combout\,
	datac => \inst|Mux15~21_combout\,
	datad => \inst|Mux7~1_combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y7_N12
\inst|lcd_bus[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[2]~2_combout\ = (\inst7~combout\ & ((\inst|Mux7~2_combout\))) # (!\inst7~combout\ & (\inst|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst|Mux7~2_combout\,
	datad => \inst7~combout\,
	combout => \inst|lcd_bus[2]~2_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~5_combout\ = (\inst|char\(1) & ((\inst6|contagemSH\(2)))) # (!\inst|char\(1) & (\inst6|contagemML\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(2),
	datab => \inst6|contagemSH\(2),
	datad => \inst|char\(1),
	combout => \inst|Mux7~5_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst30|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux7~14_combout\ = (!\inst|char\(0) & \inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst30|Mux7~14_combout\);

-- Location: LCCOMB_X21_Y9_N8
\inst|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = (!\inst|char\(2) & ((\inst|char\(1) & ((\inst6|contagemMH\(2)))) # (!\inst|char\(1) & (\inst6|contagemHL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst6|contagemHL\(2),
	datac => \inst|char\(1),
	datad => \inst6|contagemMH\(2),
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (\inst|char\(0) & ((\inst|Mux7~3_combout\) # ((\inst|lcd_bus[9]~5_combout\ & \inst6|contagemSL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst|lcd_bus[9]~5_combout\,
	datac => \inst6|contagemSL\(2),
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~6_combout\ = (!\inst|char\(3) & ((\inst|Mux7~4_combout\) # ((\inst|Mux7~5_combout\ & \inst30|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux7~5_combout\,
	datac => \inst30|Mux7~14_combout\,
	datad => \inst|Mux7~4_combout\,
	combout => \inst|Mux7~6_combout\);

-- Location: FF_X18_Y7_N13
\inst|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[2]~2_combout\,
	asdata => \inst|Mux7~6_combout\,
	sload => \inst|char\(4),
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(2));

-- Location: LCCOMB_X13_Y9_N8
\inst|dut|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector43~3_combout\ = (\inst30|dut|Selector43~5_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst|lcd_bus\(2),
	datad => \inst30|dut|Selector43~5_combout\,
	combout => \inst|dut|Selector43~3_combout\);

-- Location: FF_X13_Y9_N9
\inst|dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector43~3_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(2));

-- Location: LCCOMB_X13_Y9_N14
\inst24|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux8~0_combout\ = (\inst4|aux\(1) & ((\inst19|dut|lcd_data\(2)) # ((\inst4|aux\(0))))) # (!\inst4|aux\(1) & (((\inst|dut|lcd_data\(2) & !\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst19|dut|lcd_data\(2),
	datac => \inst|dut|lcd_data\(2),
	datad => \inst4|aux\(0),
	combout => \inst24|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y9_N8
\inst24|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux8~1_combout\ = (\inst4|aux\(0) & ((\inst24|Mux8~0_combout\ & ((\inst22|dut|lcd_data\(2)))) # (!\inst24|Mux8~0_combout\ & (\inst30|dut|lcd_data\(2))))) # (!\inst4|aux\(0) & (((\inst24|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|dut|lcd_data\(2),
	datab => \inst22|dut|lcd_data\(2),
	datac => \inst4|aux\(0),
	datad => \inst24|Mux8~0_combout\,
	combout => \inst24|Mux8~1_combout\);

-- Location: FF_X14_Y9_N9
\inst24|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(2));

-- Location: LCCOMB_X22_Y6_N16
\inst19|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~9_combout\ = (!\inst|char\(4) & (((\inst19|lcd_bus\(1)) # (!\inst30|Mux6~6_combout\)) # (!\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|lcd_bus\(1),
	datac => \inst|char\(4),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst19|Mux8~9_combout\);

-- Location: LCCOMB_X22_Y6_N6
\inst19|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~10_combout\ = (\inst19|Mux5~2_combout\ & ((\inst19|Mux8~9_combout\) # ((!\inst|char\(2) & \inst26|mh\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|Mux5~2_combout\,
	datac => \inst26|mh\(1),
	datad => \inst19|Mux8~9_combout\,
	combout => \inst19|Mux8~10_combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst30|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~2_combout\ = (!\inst|char\(1) & \inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datad => \inst|char\(2),
	combout => \inst30|Mux9~2_combout\);

-- Location: LCCOMB_X18_Y8_N10
\inst19|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~5_combout\ = (\inst|char\(1) & (\inst|char\(2) & ((\inst26|sl\(1))))) # (!\inst|char\(1) & ((\inst26|hl\(1)) # ((\inst|char\(2) & \inst26|sl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(2),
	datac => \inst26|hl\(1),
	datad => \inst26|sl\(1),
	combout => \inst19|Mux8~5_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst19|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~6_combout\ = (\inst|char\(0) & ((\inst30|Mux9~2_combout\) # ((\inst19|Mux8~5_combout\)))) # (!\inst|char\(0) & (\inst30|Mux9~2_combout\ & (\inst26|ml\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst30|Mux9~2_combout\,
	datac => \inst26|ml\(1),
	datad => \inst19|Mux8~5_combout\,
	combout => \inst19|Mux8~6_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst19|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~7_combout\ = (\inst|char\(1) & ((\inst26|sh\(1)) # ((!\inst|char\(2))))) # (!\inst|char\(1) & (((\inst26|hh\(1) & !\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|sh\(1),
	datab => \inst|char\(1),
	datac => \inst26|hh\(1),
	datad => \inst|char\(2),
	combout => \inst19|Mux8~7_combout\);

-- Location: LCCOMB_X21_Y6_N16
\inst19|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~8_combout\ = (\inst|char\(4) & ((\inst19|Mux8~6_combout\) # ((!\inst|char\(0) & \inst19|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(0),
	datac => \inst19|Mux8~6_combout\,
	datad => \inst19|Mux8~7_combout\,
	combout => \inst19|Mux8~8_combout\);

-- Location: LCCOMB_X21_Y6_N22
\inst22|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~4_combout\ = (\inst|char\(0) & (((!\inst|char\(2))))) # (!\inst|char\(0) & (\inst|char\(2) & (\inst|char\(1) $ (!\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(2),
	datad => \inst4|aux\(0),
	combout => \inst22|Mux8~4_combout\);

-- Location: LCCOMB_X22_Y6_N12
\inst22|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~5_combout\ = (\inst4|aux\(1) & \inst22|Mux8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|aux\(1),
	datad => \inst22|Mux8~4_combout\,
	combout => \inst22|Mux8~5_combout\);

-- Location: LCCOMB_X22_Y6_N22
\inst30|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~5_combout\ = (!\inst4|aux\(0) & (((!\inst|char\(2)) # (!\inst|char\(0))) # (!\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(0),
	datac => \inst|char\(2),
	datad => \inst4|aux\(0),
	combout => \inst30|Mux8~5_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst30|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~4_combout\ = (!\inst|char\(2) & (\inst4|aux\(0) & ((\inst|char\(1)) # (!\inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst|char\(1),
	datad => \inst4|aux\(0),
	combout => \inst30|Mux8~4_combout\);

-- Location: LCCOMB_X22_Y6_N2
\inst19|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~4_combout\ = (!\inst4|aux\(1) & ((\inst30|Mux8~4_combout\) # ((\inst19|lcd_bus\(1) & \inst30|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst19|lcd_bus\(1),
	datac => \inst30|Mux8~5_combout\,
	datad => \inst30|Mux8~4_combout\,
	combout => \inst19|Mux8~4_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst19|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~12_combout\ = (!\inst|char\(4) & (\inst|char\(3) & ((\inst22|Mux8~5_combout\) # (\inst19|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux8~5_combout\,
	datab => \inst|char\(4),
	datac => \inst19|Mux8~4_combout\,
	datad => \inst|char\(3),
	combout => \inst19|Mux8~12_combout\);

-- Location: LCCOMB_X22_Y6_N20
\inst19|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux8~11_combout\ = (\inst19|Mux8~12_combout\) # ((!\inst|char\(3) & ((\inst19|Mux8~10_combout\) # (\inst19|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux8~10_combout\,
	datab => \inst|char\(3),
	datac => \inst19|Mux8~8_combout\,
	datad => \inst19|Mux8~12_combout\,
	combout => \inst19|Mux8~11_combout\);

-- Location: FF_X22_Y6_N21
\inst19|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux8~11_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(1));

-- Location: LCCOMB_X12_Y9_N22
\inst30|dut|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector44~3_combout\ = (!\inst|dut|busy~8_combout\ & (\inst30|dut|Selector44~2_combout\ & (!\inst|dut|Add0~62_combout\ & \inst|dut|Selector43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|busy~8_combout\,
	datab => \inst30|dut|Selector44~2_combout\,
	datac => \inst|dut|Add0~62_combout\,
	datad => \inst|dut|Selector43~2_combout\,
	combout => \inst30|dut|Selector44~3_combout\);

-- Location: LCCOMB_X11_Y9_N18
\inst19|dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector44~2_combout\ = (\inst30|dut|Selector44~3_combout\) # ((\inst|lcd_enable~q\ & (\inst19|lcd_bus\(1) & \inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst19|lcd_bus\(1),
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|dut|Selector44~3_combout\,
	combout => \inst19|dut|Selector44~2_combout\);

-- Location: FF_X11_Y9_N19
\inst19|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector44~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(1));

-- Location: LCCOMB_X18_Y11_N14
\inst|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~2_combout\ = (\inst|char\(3) & (\inst|char\(0) $ (((\inst|char\(2)) # (!\inst|char\(1)))))) # (!\inst|char\(3) & ((\inst|char\(0) & (!\inst|char\(2))) # (!\inst|char\(0) & ((\inst|char\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(0),
	datac => \inst|char\(1),
	datad => \inst|char\(3),
	combout => \inst|Mux17~2_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst|lcd_bus~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~29_combout\ = (\inst|lcd_bus\(1) & ((\inst14|igual~15_combout\ $ (!\inst12|igual~15_combout\)) # (!\inst3|igual~15_combout\))) # (!\inst|lcd_bus\(1) & (\inst14|igual~15_combout\ & (\inst12|igual~15_combout\ & !\inst3|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datab => \inst12|igual~15_combout\,
	datac => \inst|lcd_bus\(1),
	datad => \inst3|igual~15_combout\,
	combout => \inst|lcd_bus~29_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst|Mux15~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~27_combout\ = (\inst|lcd_bus\(1) & (((\inst3|igual~15_combout\) # (!\inst12|igual~15_combout\)) # (!\inst14|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|igual~15_combout\,
	datab => \inst|lcd_bus\(1),
	datac => \inst12|igual~15_combout\,
	datad => \inst3|igual~15_combout\,
	combout => \inst|Mux15~27_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst|Mux15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~28_combout\ = (\inst|char\(0) & (((\inst|Mux15~27_combout\) # (!\inst|lcd_bus~27_combout\)))) # (!\inst|char\(0) & (\inst|lcd_bus~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~29_combout\,
	datab => \inst|char\(0),
	datac => \inst|Mux15~27_combout\,
	datad => \inst|lcd_bus~27_combout\,
	combout => \inst|Mux15~28_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst|Mux15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~26_combout\ = (\inst|lcd_bus\(1) & ((\inst|lcd_bus~7_combout\) # ((\inst|process_0~1_combout\ & !\inst|char\(0))))) # (!\inst|lcd_bus\(1) & (\inst|process_0~1_combout\ & ((!\inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(1),
	datab => \inst|process_0~1_combout\,
	datac => \inst|lcd_bus~7_combout\,
	datad => \inst|char\(0),
	combout => \inst|Mux15~26_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst|Mux15~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~29_combout\ = (\inst|char\(2) & ((\inst|Mux15~26_combout\))) # (!\inst|char\(2) & (\inst|Mux15~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datac => \inst|Mux15~28_combout\,
	datad => \inst|Mux15~26_combout\,
	combout => \inst|Mux15~29_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst|Mux15~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~31_combout\ = (!\inst|char\(2) & \inst|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(2),
	datad => \inst|char\(0),
	combout => \inst|Mux15~31_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst|Mux15~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~30_combout\ = ((\inst|char\(0) & ((\inst|lcd_bus\(1)) # (!\inst|lcd_bus~7_combout\)))) # (!\inst|char\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|lcd_bus\(1),
	datac => \inst|char\(0),
	datad => \inst|lcd_bus~7_combout\,
	combout => \inst|Mux15~30_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~3_combout\ = (\inst|char\(3) & (((\inst|char\(1))))) # (!\inst|char\(3) & ((\inst|char\(1) & ((\inst|Mux15~30_combout\))) # (!\inst|char\(1) & (\inst|Mux15~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux15~31_combout\,
	datac => \inst|char\(1),
	datad => \inst|Mux15~30_combout\,
	combout => \inst|Mux17~3_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst|Mux15~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~32_combout\ = (\inst|char\(2) & (!\inst|process_0~1_combout\ & ((\inst|Mux15~27_combout\) # (!\inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~27_combout\,
	datab => \inst|char\(2),
	datac => \inst|process_0~1_combout\,
	datad => \inst|process_0~2_combout\,
	combout => \inst|Mux15~32_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst|Mux15~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~33_combout\ = (!\inst|char\(0) & ((\inst|Mux15~32_combout\) # ((\inst|lcd_bus~29_combout\ & !\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~29_combout\,
	datab => \inst|char\(0),
	datac => \inst|char\(2),
	datad => \inst|Mux15~32_combout\,
	combout => \inst|Mux15~33_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst|Mux15~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~34_combout\ = (\inst|Mux15~33_combout\) # ((\inst|Mux15~31_combout\ & ((\inst|lcd_bus\(1)) # (!\inst|lcd_bus~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~31_combout\,
	datab => \inst|lcd_bus\(1),
	datac => \inst|lcd_bus~7_combout\,
	datad => \inst|Mux15~33_combout\,
	combout => \inst|Mux15~34_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~4_combout\ = (\inst|char\(3) & ((\inst|Mux17~3_combout\ & ((\inst|Mux15~34_combout\))) # (!\inst|Mux17~3_combout\ & (\inst|Mux15~29_combout\)))) # (!\inst|char\(3) & (((\inst|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux15~29_combout\,
	datac => \inst|Mux17~3_combout\,
	datad => \inst|Mux15~34_combout\,
	combout => \inst|Mux17~4_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst|lcd_bus[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[1]~3_combout\ = (\inst7~combout\ & ((\inst|Mux17~4_combout\))) # (!\inst7~combout\ & (\inst|Mux17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datab => \inst|Mux17~2_combout\,
	datad => \inst|Mux17~4_combout\,
	combout => \inst|lcd_bus[1]~3_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst|Mux15~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~35_combout\ = (\inst|char\(2) & (((\inst|char\(0))))) # (!\inst|char\(2) & ((\inst|char\(0) & ((\inst6|contagemHL\(1)))) # (!\inst|char\(0) & (\inst6|contagemHH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst6|contagemHH\(1),
	datac => \inst|char\(0),
	datad => \inst6|contagemHL\(1),
	combout => \inst|Mux15~35_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst|Mux15~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~36_combout\ = (!\inst|char\(1) & ((\inst|Mux15~35_combout\) # ((\inst|char\(2) & \inst6|contagemML\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst6|contagemML\(1),
	datac => \inst|char\(1),
	datad => \inst|Mux15~35_combout\,
	combout => \inst|Mux15~36_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst|Mux15~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~37_combout\ = (\inst|char\(2) & ((\inst|char\(0) & ((\inst6|contagemSL\(1)))) # (!\inst|char\(0) & (\inst6|contagemSH\(1))))) # (!\inst|char\(2) & (((!\inst|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst6|contagemSH\(1),
	datac => \inst|char\(0),
	datad => \inst6|contagemSL\(1),
	combout => \inst|Mux15~37_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst|Mux15~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~38_combout\ = (\inst|char\(1) & ((\inst|Mux15~37_combout\) # ((!\inst|char\(2) & \inst6|contagemMH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst6|contagemMH\(1),
	datad => \inst|Mux15~37_combout\,
	combout => \inst|Mux15~38_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst|Mux15~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~39_combout\ = (!\inst|char\(3) & ((\inst|Mux15~36_combout\) # (\inst|Mux15~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datac => \inst|Mux15~36_combout\,
	datad => \inst|Mux15~38_combout\,
	combout => \inst|Mux15~39_combout\);

-- Location: FF_X18_Y11_N5
\inst|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[1]~3_combout\,
	asdata => \inst|Mux15~39_combout\,
	sload => \inst|char\(4),
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(1));

-- Location: LCCOMB_X11_Y9_N0
\inst|dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector44~2_combout\ = (\inst30|dut|Selector44~3_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst|lcd_bus\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst|lcd_bus\(1),
	datad => \inst30|dut|Selector44~3_combout\,
	combout => \inst|dut|Selector44~2_combout\);

-- Location: FF_X11_Y9_N1
\inst|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector44~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(1));

-- Location: LCCOMB_X11_Y9_N26
\inst24|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux9~0_combout\ = (\inst4|aux\(1) & ((\inst19|dut|lcd_data\(1)) # ((\inst4|aux\(0))))) # (!\inst4|aux\(1) & (((!\inst4|aux\(0) & \inst|dut|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst19|dut|lcd_data\(1),
	datac => \inst4|aux\(0),
	datad => \inst|dut|lcd_data\(1),
	combout => \inst24|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y6_N0
\inst30|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~6_combout\ = (!\inst4|aux\(1) & ((\inst30|Mux8~4_combout\) # ((\inst30|lcd_bus\(1) & \inst30|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux8~4_combout\,
	datab => \inst4|aux\(1),
	datac => \inst30|lcd_bus\(1),
	datad => \inst30|Mux8~5_combout\,
	combout => \inst30|Mux8~6_combout\);

-- Location: LCCOMB_X22_Y6_N10
\inst30|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~14_combout\ = (\inst|char\(3) & (!\inst|char\(4) & ((\inst30|Mux8~6_combout\) # (\inst22|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux8~6_combout\,
	datab => \inst|char\(3),
	datac => \inst|char\(4),
	datad => \inst22|Mux8~5_combout\,
	combout => \inst30|Mux8~14_combout\);

-- Location: LCCOMB_X22_Y6_N18
\inst30|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~11_combout\ = (!\inst|char\(4) & (((\inst30|lcd_bus\(1)) # (!\inst30|Mux6~6_combout\)) # (!\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst30|lcd_bus\(1),
	datac => \inst|char\(4),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst30|Mux8~11_combout\);

-- Location: LCCOMB_X22_Y6_N8
\inst30|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~12_combout\ = (\inst19|Mux5~2_combout\ & ((\inst30|Mux8~11_combout\) # ((!\inst|char\(2) & \inst31|mh\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst31|mh\(1),
	datac => \inst19|Mux5~2_combout\,
	datad => \inst30|Mux8~11_combout\,
	combout => \inst30|Mux8~12_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst30|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~9_combout\ = (\inst|char\(1) & (((\inst31|sh\(1)) # (!\inst|char\(2))))) # (!\inst|char\(1) & (\inst31|hh\(1) & (!\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|hh\(1),
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst31|sh\(1),
	combout => \inst30|Mux8~9_combout\);

-- Location: LCCOMB_X23_Y11_N12
\inst30|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~7_combout\ = (\inst31|sl\(1) & ((\inst|char\(2)) # ((!\inst|char\(1) & \inst31|hl\(1))))) # (!\inst31|sl\(1) & (!\inst|char\(1) & ((\inst31|hl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|sl\(1),
	datab => \inst|char\(1),
	datac => \inst|char\(2),
	datad => \inst31|hl\(1),
	combout => \inst30|Mux8~7_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst30|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~8_combout\ = (\inst|char\(0) & (((\inst30|Mux9~2_combout\) # (\inst30|Mux8~7_combout\)))) # (!\inst|char\(0) & (\inst31|ml\(1) & (\inst30|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst31|ml\(1),
	datac => \inst30|Mux9~2_combout\,
	datad => \inst30|Mux8~7_combout\,
	combout => \inst30|Mux8~8_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst30|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~10_combout\ = (\inst|char\(4) & ((\inst30|Mux8~8_combout\) # ((!\inst|char\(0) & \inst30|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst30|Mux8~9_combout\,
	datac => \inst|char\(4),
	datad => \inst30|Mux8~8_combout\,
	combout => \inst30|Mux8~10_combout\);

-- Location: LCCOMB_X22_Y6_N14
\inst30|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux8~13_combout\ = (\inst30|Mux8~14_combout\) # ((!\inst|char\(3) & ((\inst30|Mux8~12_combout\) # (\inst30|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux8~14_combout\,
	datab => \inst|char\(3),
	datac => \inst30|Mux8~12_combout\,
	datad => \inst30|Mux8~10_combout\,
	combout => \inst30|Mux8~13_combout\);

-- Location: FF_X22_Y6_N15
\inst30|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|Mux8~13_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|lcd_bus\(1));

-- Location: LCCOMB_X11_Y9_N16
\inst30|dut|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector44~4_combout\ = (\inst30|dut|Selector44~3_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst30|lcd_bus\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst30|lcd_bus\(1),
	datad => \inst30|dut|Selector44~3_combout\,
	combout => \inst30|dut|Selector44~4_combout\);

-- Location: FF_X11_Y9_N17
\inst30|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|dut|Selector44~4_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|dut|lcd_data\(1));

-- Location: LCCOMB_X17_Y12_N0
\inst22|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~11_combout\ = (!\inst|char\(4) & ((\inst22|lcd_bus\(1)) # ((!\inst30|Mux6~6_combout\) # (!\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst22|lcd_bus\(1),
	datac => \inst|char\(2),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst22|Mux8~11_combout\);

-- Location: LCCOMB_X17_Y12_N10
\inst22|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~12_combout\ = (\inst19|Mux5~2_combout\ & ((\inst22|Mux8~11_combout\) # ((\inst27|mh\(1) & !\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux5~2_combout\,
	datab => \inst27|mh\(1),
	datac => \inst|char\(2),
	datad => \inst22|Mux8~11_combout\,
	combout => \inst22|Mux8~12_combout\);

-- Location: LCCOMB_X23_Y9_N22
\inst22|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~7_combout\ = (\inst|char\(2) & ((\inst27|sl\(1)) # ((\inst27|hl\(1) & !\inst|char\(1))))) # (!\inst|char\(2) & (((\inst27|hl\(1) & !\inst|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst27|sl\(1),
	datac => \inst27|hl\(1),
	datad => \inst|char\(1),
	combout => \inst22|Mux8~7_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst22|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~8_combout\ = (\inst|char\(0) & (((\inst30|Mux9~2_combout\) # (\inst22|Mux8~7_combout\)))) # (!\inst|char\(0) & (\inst27|ml\(1) & (\inst30|Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst27|ml\(1),
	datac => \inst30|Mux9~2_combout\,
	datad => \inst22|Mux8~7_combout\,
	combout => \inst22|Mux8~8_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst22|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~9_combout\ = (\inst|char\(2) & (\inst|char\(1) & (\inst27|sh\(1)))) # (!\inst|char\(2) & ((\inst|char\(1)) # ((\inst27|hh\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst27|sh\(1),
	datad => \inst27|hh\(1),
	combout => \inst22|Mux8~9_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst22|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~10_combout\ = (\inst|char\(4) & ((\inst22|Mux8~8_combout\) # ((!\inst|char\(0) & \inst22|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst22|Mux8~8_combout\,
	datac => \inst|char\(0),
	datad => \inst22|Mux8~9_combout\,
	combout => \inst22|Mux8~10_combout\);

-- Location: LCCOMB_X22_Y6_N24
\inst22|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~6_combout\ = (!\inst4|aux\(1) & ((\inst30|Mux8~4_combout\) # ((\inst22|lcd_bus\(1) & \inst30|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst22|lcd_bus\(1),
	datac => \inst30|Mux8~5_combout\,
	datad => \inst30|Mux8~4_combout\,
	combout => \inst22|Mux8~6_combout\);

-- Location: LCCOMB_X22_Y6_N26
\inst22|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~14_combout\ = (\inst|char\(3) & (!\inst|char\(4) & ((\inst22|Mux8~5_combout\) # (\inst22|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux8~5_combout\,
	datab => \inst|char\(3),
	datac => \inst|char\(4),
	datad => \inst22|Mux8~6_combout\,
	combout => \inst22|Mux8~14_combout\);

-- Location: LCCOMB_X17_Y12_N20
\inst22|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux8~13_combout\ = (\inst22|Mux8~14_combout\) # ((!\inst|char\(3) & ((\inst22|Mux8~12_combout\) # (\inst22|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux8~12_combout\,
	datab => \inst|char\(3),
	datac => \inst22|Mux8~10_combout\,
	datad => \inst22|Mux8~14_combout\,
	combout => \inst22|Mux8~13_combout\);

-- Location: FF_X17_Y12_N21
\inst22|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|Mux8~13_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|lcd_bus\(1));

-- Location: LCCOMB_X11_Y9_N20
\inst22|dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|dut|Selector44~2_combout\ = (\inst30|dut|Selector44~3_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst22|lcd_bus\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst22|lcd_bus\(1),
	datad => \inst30|dut|Selector44~3_combout\,
	combout => \inst22|dut|Selector44~2_combout\);

-- Location: FF_X11_Y9_N21
\inst22|dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|dut|Selector44~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|dut|lcd_data\(1));

-- Location: LCCOMB_X11_Y9_N28
\inst24|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux9~1_combout\ = (\inst24|Mux9~0_combout\ & (((\inst22|dut|lcd_data\(1)) # (!\inst4|aux\(0))))) # (!\inst24|Mux9~0_combout\ & (\inst30|dut|lcd_data\(1) & ((\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Mux9~0_combout\,
	datab => \inst30|dut|lcd_data\(1),
	datac => \inst22|dut|lcd_data\(1),
	datad => \inst4|aux\(0),
	combout => \inst24|Mux9~1_combout\);

-- Location: FF_X11_Y9_N29
\inst24|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(1));

-- Location: LCCOMB_X21_Y7_N18
\inst22|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~8_combout\ = (\inst|char\(1) & ((\inst27|mh\(0)))) # (!\inst|char\(1) & (\inst27|hl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst27|hl\(0),
	datac => \inst27|mh\(0),
	datad => \inst|char\(1),
	combout => \inst22|Mux9~8_combout\);

-- Location: LCCOMB_X22_Y7_N28
\inst22|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~6_combout\ = (\inst|lcd_bus[9]~5_combout\ & ((\inst|char\(0) & (\inst27|sl\(0))) # (!\inst|char\(0) & ((\inst27|sh\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sl\(0),
	datab => \inst|lcd_bus[9]~5_combout\,
	datac => \inst|char\(0),
	datad => \inst27|sh\(0),
	combout => \inst22|Mux9~6_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst|lcd_bus~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus~25_combout\ = (!\inst|char\(1) & !\inst|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|char\(1),
	datad => \inst|char\(0),
	combout => \inst|lcd_bus~25_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst22|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~7_combout\ = (\inst|lcd_bus~25_combout\ & ((\inst|char\(2) & (\inst27|ml\(0))) # (!\inst|char\(2) & ((\inst27|hh\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|lcd_bus~25_combout\,
	datac => \inst27|ml\(0),
	datad => \inst27|hh\(0),
	combout => \inst22|Mux9~7_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst22|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~9_combout\ = (\inst22|Mux9~6_combout\) # ((\inst22|Mux9~7_combout\) # ((\inst|Mux15~31_combout\ & \inst22|Mux9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~31_combout\,
	datab => \inst22|Mux9~8_combout\,
	datac => \inst22|Mux9~6_combout\,
	datad => \inst22|Mux9~7_combout\,
	combout => \inst22|Mux9~9_combout\);

-- Location: LCCOMB_X16_Y8_N24
\inst22|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~11_combout\ = (\inst|char\(1) & ((\inst4|aux\(1)) # ((!\inst22|lcd_bus\(0) & \inst4|aux\(0))))) # (!\inst|char\(1) & (\inst4|aux\(0) $ (((\inst22|lcd_bus\(0)) # (\inst4|aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst22|lcd_bus\(0),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst22|Mux9~11_combout\);

-- Location: LCCOMB_X16_Y8_N26
\inst22|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~12_combout\ = (\inst|char\(2) & ((\inst4|aux\(1) & ((!\inst22|Mux9~11_combout\))) # (!\inst4|aux\(1) & (\inst22|lcd_bus\(0) & \inst22|Mux9~11_combout\)))) # (!\inst|char\(2) & ((\inst22|Mux9~11_combout\) # ((!\inst4|aux\(1) & 
-- \inst22|lcd_bus\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst4|aux\(1),
	datac => \inst22|lcd_bus\(0),
	datad => \inst22|Mux9~11_combout\,
	combout => \inst22|Mux9~12_combout\);

-- Location: LCCOMB_X16_Y8_N28
\inst22|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~2_combout\ = (\inst4|aux\(0) & (\inst4|aux\(1))) # (!\inst4|aux\(0) & ((\inst4|aux\(1) & ((\inst|Mux15~7_combout\))) # (!\inst4|aux\(1) & (\inst22|lcd_bus\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(0),
	datab => \inst4|aux\(1),
	datac => \inst22|lcd_bus\(0),
	datad => \inst|Mux15~7_combout\,
	combout => \inst22|Mux9~2_combout\);

-- Location: LCCOMB_X16_Y8_N14
\inst22|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~3_combout\ = (\inst|char\(2) & (((\inst22|lcd_bus\(0) & \inst30|Mux6~6_combout\)) # (!\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst|char\(2),
	datac => \inst22|lcd_bus\(0),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst22|Mux9~3_combout\);

-- Location: LCCOMB_X16_Y8_N16
\inst22|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~4_combout\ = (\inst|char\(3) & (((\inst|char\(0))))) # (!\inst|char\(3) & ((\inst|char\(0) & ((\inst22|Mux9~3_combout\))) # (!\inst|char\(0) & (!\inst|lcd_bus[9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~5_combout\,
	datab => \inst22|Mux9~3_combout\,
	datac => \inst|char\(3),
	datad => \inst|char\(0),
	combout => \inst22|Mux9~4_combout\);

-- Location: LCCOMB_X16_Y8_N10
\inst22|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~5_combout\ = (\inst|char\(3) & ((\inst22|Mux9~4_combout\ & (\inst22|Mux9~12_combout\)) # (!\inst22|Mux9~4_combout\ & ((\inst22|Mux9~2_combout\))))) # (!\inst|char\(3) & (((\inst22|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|Mux9~12_combout\,
	datab => \inst22|Mux9~2_combout\,
	datac => \inst|char\(3),
	datad => \inst22|Mux9~4_combout\,
	combout => \inst22|Mux9~5_combout\);

-- Location: LCCOMB_X16_Y8_N4
\inst22|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|Mux9~10_combout\ = (\inst|char\(4) & (!\inst|char\(3) & (\inst22|Mux9~9_combout\))) # (!\inst|char\(4) & (((\inst22|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(4),
	datab => \inst|char\(3),
	datac => \inst22|Mux9~9_combout\,
	datad => \inst22|Mux9~5_combout\,
	combout => \inst22|Mux9~10_combout\);

-- Location: FF_X16_Y8_N5
\inst22|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|Mux9~10_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|lcd_bus\(0));

-- Location: LCCOMB_X11_Y12_N30
\inst30|dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector45~2_combout\ = (\inst30|dut|Selector44~2_combout\ & (!\inst|dut|Add0~60_combout\ & ((!\inst|dut|busy~6_combout\) # (!\inst|dut|LessThan3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan3~10_combout\,
	datab => \inst|dut|busy~6_combout\,
	datac => \inst30|dut|Selector44~2_combout\,
	datad => \inst|dut|Add0~60_combout\,
	combout => \inst30|dut|Selector45~2_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst30|dut|Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector45~3_combout\ = (!\inst|dut|LessThan4~3_combout\ & (!\inst|dut|Add0~62_combout\ & (\inst30|dut|Selector45~2_combout\ & \inst|dut|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dut|LessThan4~3_combout\,
	datab => \inst|dut|Add0~62_combout\,
	datac => \inst30|dut|Selector45~2_combout\,
	datad => \inst|dut|LessThan5~3_combout\,
	combout => \inst30|dut|Selector45~3_combout\);

-- Location: LCCOMB_X13_Y10_N30
\inst22|dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|dut|Selector45~2_combout\ = (\inst30|dut|Selector45~3_combout\) # ((\inst22|lcd_bus\(0) & (\inst|lcd_enable~q\ & \inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|lcd_bus\(0),
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|dut|Selector45~3_combout\,
	combout => \inst22|dut|Selector45~2_combout\);

-- Location: FF_X13_Y10_N31
\inst22|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst22|dut|Selector45~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|dut|lcd_data\(0));

-- Location: LCCOMB_X17_Y7_N22
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|char\(1) & (\inst|char\(0) $ (((\inst|char\(2)) # (!\inst|char\(3)))))) # (!\inst|char\(1) & ((\inst|char\(0) & ((\inst|char\(3)))) # (!\inst|char\(0) & (\inst|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|char\(3),
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X17_Y7_N16
\inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = (\inst|lcd_bus\(0) & ((\inst12|igual~15_combout\ & (\inst3|igual~15_combout\ $ (!\inst14|igual~15_combout\))) # (!\inst12|igual~15_combout\ & ((!\inst14|igual~15_combout\) # (!\inst3|igual~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(0),
	datab => \inst12|igual~15_combout\,
	datac => \inst3|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux18~1_combout\);

-- Location: LCCOMB_X17_Y7_N14
\inst|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~2_combout\ = (\inst|char\(0) & (((\inst|char\(2) & \inst|Mux18~1_combout\)) # (!\inst|char\(1)))) # (!\inst|char\(0) & (!\inst|char\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|Mux18~1_combout\,
	combout => \inst|Mux18~2_combout\);

-- Location: LCCOMB_X18_Y10_N0
\inst|Mux17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~11_combout\ = (\inst|lcd_bus\(0) & ((\inst3|igual~15_combout\ $ (!\inst14|igual~15_combout\)) # (!\inst12|igual~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~15_combout\,
	datab => \inst|lcd_bus\(0),
	datac => \inst12|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux17~11_combout\);

-- Location: LCCOMB_X17_Y7_N4
\inst|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~5_combout\ = (\inst|char\(0) & (\inst14|igual~15_combout\ & (\inst12|igual~15_combout\ $ (\inst3|igual~15_combout\)))) # (!\inst|char\(0) & (\inst3|igual~15_combout\ & (\inst12|igual~15_combout\ $ (\inst14|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst12|igual~15_combout\,
	datac => \inst3|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux17~5_combout\);

-- Location: LCCOMB_X17_Y7_N6
\inst|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~6_combout\ = (\inst|Mux17~5_combout\ & ((\inst14|igual~15_combout\ & (!\inst|char\(2))) # (!\inst14|igual~15_combout\ & ((!\inst|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst14|igual~15_combout\,
	datac => \inst|Mux17~5_combout\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|Mux17~6_combout\);

-- Location: LCCOMB_X17_Y7_N8
\inst|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~7_combout\ = (!\inst|char\(1) & ((\inst|Mux17~6_combout\) # ((!\inst|process_0~1_combout\ & \inst|Mux17~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst|char\(1),
	datac => \inst|Mux17~11_combout\,
	datad => \inst|Mux17~6_combout\,
	combout => \inst|Mux17~7_combout\);

-- Location: LCCOMB_X17_Y7_N26
\inst|Mux15~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~40_combout\ = (\inst|char\(1) & (\inst|char\(0))) # (!\inst|char\(1) & ((!\inst|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datac => \inst|char\(0),
	datad => \inst|char\(2),
	combout => \inst|Mux15~40_combout\);

-- Location: LCCOMB_X18_Y10_N10
\inst|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~9_combout\ = (\inst3|igual~15_combout\ & ((\inst|lcd_bus\(0)) # ((\inst12|igual~15_combout\ & !\inst14|igual~15_combout\)))) # (!\inst3|igual~15_combout\ & (\inst|lcd_bus\(0) & ((!\inst14|igual~15_combout\) # (!\inst12|igual~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|igual~15_combout\,
	datab => \inst|lcd_bus\(0),
	datac => \inst12|igual~15_combout\,
	datad => \inst14|igual~15_combout\,
	combout => \inst|Mux17~9_combout\);

-- Location: LCCOMB_X17_Y7_N28
\inst|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~8_combout\ = (\inst|Mux15~4_combout\ & (\inst|Mux15~40_combout\ & ((\inst|lcd_bus\(0)) # (!\inst|lcd_bus~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~4_combout\,
	datab => \inst|lcd_bus\(0),
	datac => \inst|Mux15~40_combout\,
	datad => \inst|lcd_bus~7_combout\,
	combout => \inst|Mux17~8_combout\);

-- Location: LCCOMB_X17_Y7_N18
\inst|Mux17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~10_combout\ = (\inst|Mux17~8_combout\) # ((!\inst|Mux15~40_combout\ & (!\inst|process_0~1_combout\ & \inst|Mux17~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~40_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|Mux17~9_combout\,
	datad => \inst|Mux17~8_combout\,
	combout => \inst|Mux17~10_combout\);

-- Location: LCCOMB_X17_Y7_N20
\inst|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~3_combout\ = (\inst|char\(3) & (((\inst|Mux17~7_combout\) # (\inst|Mux17~10_combout\)))) # (!\inst|char\(3) & (\inst|Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|Mux18~2_combout\,
	datac => \inst|Mux17~7_combout\,
	datad => \inst|Mux17~10_combout\,
	combout => \inst|Mux18~3_combout\);

-- Location: LCCOMB_X17_Y7_N24
\inst|lcd_bus[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|lcd_bus[0]~4_combout\ = (\inst7~combout\ & ((\inst|Mux18~3_combout\))) # (!\inst7~combout\ & (\inst|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~combout\,
	datab => \inst|Mux18~0_combout\,
	datad => \inst|Mux18~3_combout\,
	combout => \inst|lcd_bus[0]~4_combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst|Mux15~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~43_combout\ = (\inst|Mux15~31_combout\ & ((\inst|char\(1) & (\inst6|contagemMH\(0))) # (!\inst|char\(1) & ((\inst6|contagemHL\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~31_combout\,
	datab => \inst6|contagemMH\(0),
	datac => \inst6|contagemHL\(0),
	datad => \inst|char\(1),
	combout => \inst|Mux15~43_combout\);

-- Location: LCCOMB_X22_Y7_N26
\inst|Mux15~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~41_combout\ = (\inst|lcd_bus[9]~5_combout\ & ((\inst|char\(0) & (\inst6|contagemSL\(0))) # (!\inst|char\(0) & ((\inst6|contagemSH\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemSL\(0),
	datab => \inst|lcd_bus[9]~5_combout\,
	datac => \inst|char\(0),
	datad => \inst6|contagemSH\(0),
	combout => \inst|Mux15~41_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst|Mux15~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~42_combout\ = (\inst|lcd_bus~25_combout\ & ((\inst|char\(2) & (!\inst6|contagemML\(0))) # (!\inst|char\(2) & ((\inst6|contagemHH\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contagemML\(0),
	datab => \inst|char\(2),
	datac => \inst6|contagemHH\(0),
	datad => \inst|lcd_bus~25_combout\,
	combout => \inst|Mux15~42_combout\);

-- Location: LCCOMB_X21_Y7_N10
\inst|Mux15~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~44_combout\ = (!\inst|char\(3) & ((\inst|Mux15~43_combout\) # ((\inst|Mux15~41_combout\) # (\inst|Mux15~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~43_combout\,
	datab => \inst|Mux15~41_combout\,
	datac => \inst|char\(3),
	datad => \inst|Mux15~42_combout\,
	combout => \inst|Mux15~44_combout\);

-- Location: FF_X17_Y7_N25
\inst|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|lcd_bus[0]~4_combout\,
	asdata => \inst|Mux15~44_combout\,
	sload => \inst|char\(4),
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|lcd_bus\(0));

-- Location: LCCOMB_X13_Y10_N2
\inst|dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|dut|Selector45~2_combout\ = (\inst30|dut|Selector45~3_combout\) # ((\inst|lcd_bus\(0) & (\inst|lcd_enable~q\ & \inst|dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus\(0),
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|dut|Selector45~3_combout\,
	combout => \inst|dut|Selector45~2_combout\);

-- Location: FF_X13_Y10_N3
\inst|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|dut|Selector45~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dut|lcd_data\(0));

-- Location: LCCOMB_X18_Y8_N22
\inst19|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~7_combout\ = (\inst|lcd_bus~25_combout\ & ((\inst|char\(2) & (\inst26|ml\(0))) # (!\inst|char\(2) & ((\inst26|hh\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ml\(0),
	datab => \inst|char\(2),
	datac => \inst|lcd_bus~25_combout\,
	datad => \inst26|hh\(0),
	combout => \inst19|Mux9~7_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst19|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~6_combout\ = (\inst|lcd_bus[9]~5_combout\ & ((\inst|char\(0) & ((\inst26|sl\(0)))) # (!\inst|char\(0) & (\inst26|sh\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus[9]~5_combout\,
	datab => \inst26|sh\(0),
	datac => \inst|char\(0),
	datad => \inst26|sl\(0),
	combout => \inst19|Mux9~6_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst19|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~8_combout\ = (\inst|char\(1) & ((\inst26|mh\(0)))) # (!\inst|char\(1) & (\inst26|hl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|hl\(0),
	datab => \inst26|mh\(0),
	datad => \inst|char\(1),
	combout => \inst19|Mux9~8_combout\);

-- Location: LCCOMB_X18_Y8_N30
\inst19|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~9_combout\ = (\inst19|Mux9~7_combout\) # ((\inst19|Mux9~6_combout\) # ((\inst|Mux15~31_combout\ & \inst19|Mux9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Mux9~7_combout\,
	datab => \inst|Mux15~31_combout\,
	datac => \inst19|Mux9~6_combout\,
	datad => \inst19|Mux9~8_combout\,
	combout => \inst19|Mux9~9_combout\);

-- Location: LCCOMB_X13_Y10_N28
\inst19|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~2_combout\ = (\inst4|aux\(1) & (((\inst|Mux15~7_combout\) # (\inst4|aux\(0))))) # (!\inst4|aux\(1) & (\inst19|lcd_bus\(0) & ((!\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst19|lcd_bus\(0),
	datac => \inst|Mux15~7_combout\,
	datad => \inst4|aux\(0),
	combout => \inst19|Mux9~2_combout\);

-- Location: LCCOMB_X13_Y10_N12
\inst19|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~11_combout\ = (\inst|char\(1) & ((\inst4|aux\(1)) # ((!\inst19|lcd_bus\(0) & \inst4|aux\(0))))) # (!\inst|char\(1) & (\inst4|aux\(0) $ (((\inst19|lcd_bus\(0)) # (\inst4|aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst19|lcd_bus\(0),
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst19|Mux9~11_combout\);

-- Location: LCCOMB_X13_Y10_N22
\inst19|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~12_combout\ = (\inst|char\(2) & ((\inst4|aux\(1) & ((!\inst19|Mux9~11_combout\))) # (!\inst4|aux\(1) & (\inst19|lcd_bus\(0) & \inst19|Mux9~11_combout\)))) # (!\inst|char\(2) & ((\inst19|Mux9~11_combout\) # ((\inst19|lcd_bus\(0) & 
-- !\inst4|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|lcd_bus\(0),
	datac => \inst4|aux\(1),
	datad => \inst19|Mux9~11_combout\,
	combout => \inst19|Mux9~12_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst19|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~3_combout\ = (\inst|char\(2) & (((\inst19|lcd_bus\(0) & \inst30|Mux6~6_combout\)) # (!\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst19|lcd_bus\(0),
	datac => \inst|char\(1),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst19|Mux9~3_combout\);

-- Location: LCCOMB_X13_Y10_N20
\inst19|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~4_combout\ = (\inst|char\(3) & (\inst|char\(0))) # (!\inst|char\(3) & ((\inst|char\(0) & ((\inst19|Mux9~3_combout\))) # (!\inst|char\(0) & (!\inst|lcd_bus[9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(0),
	datac => \inst|lcd_bus[9]~5_combout\,
	datad => \inst19|Mux9~3_combout\,
	combout => \inst19|Mux9~4_combout\);

-- Location: LCCOMB_X13_Y10_N18
\inst19|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~5_combout\ = (\inst|char\(3) & ((\inst19|Mux9~4_combout\ & ((\inst19|Mux9~12_combout\))) # (!\inst19|Mux9~4_combout\ & (\inst19|Mux9~2_combout\)))) # (!\inst|char\(3) & (((\inst19|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst19|Mux9~2_combout\,
	datac => \inst19|Mux9~12_combout\,
	datad => \inst19|Mux9~4_combout\,
	combout => \inst19|Mux9~5_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst19|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Mux9~10_combout\ = (\inst|char\(4) & (!\inst|char\(3) & (\inst19|Mux9~9_combout\))) # (!\inst|char\(4) & (((\inst19|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(4),
	datac => \inst19|Mux9~9_combout\,
	datad => \inst19|Mux9~5_combout\,
	combout => \inst19|Mux9~10_combout\);

-- Location: FF_X14_Y10_N23
\inst19|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|Mux9~10_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|lcd_bus\(0));

-- Location: LCCOMB_X13_Y10_N8
\inst19|dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|dut|Selector45~2_combout\ = (\inst30|dut|Selector45~3_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst19|lcd_bus\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_enable~q\,
	datab => \inst|dut|state.ready~q\,
	datac => \inst19|lcd_bus\(0),
	datad => \inst30|dut|Selector45~3_combout\,
	combout => \inst19|dut|Selector45~2_combout\);

-- Location: FF_X13_Y10_N9
\inst19|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst19|dut|Selector45~2_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|dut|lcd_data\(0));

-- Location: LCCOMB_X13_Y10_N24
\inst24|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux10~0_combout\ = (\inst4|aux\(1) & (((\inst19|dut|lcd_data\(0)) # (\inst4|aux\(0))))) # (!\inst4|aux\(1) & (\inst|dut|lcd_data\(0) & ((!\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|aux\(1),
	datab => \inst|dut|lcd_data\(0),
	datac => \inst19|dut|lcd_data\(0),
	datad => \inst4|aux\(0),
	combout => \inst24|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst30|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~7_combout\ = (\inst|lcd_bus[9]~5_combout\ & ((\inst|char\(0) & (\inst31|sl\(0))) # (!\inst|char\(0) & ((\inst31|sh\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(0),
	datab => \inst31|sl\(0),
	datac => \inst|lcd_bus[9]~5_combout\,
	datad => \inst31|sh\(0),
	combout => \inst30|Mux9~7_combout\);

-- Location: LCCOMB_X23_Y10_N4
\inst30|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~9_combout\ = (\inst|char\(1) & ((\inst31|mh\(0)))) # (!\inst|char\(1) & (\inst31|hl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|char\(1),
	datac => \inst31|hl\(0),
	datad => \inst31|mh\(0),
	combout => \inst30|Mux9~9_combout\);

-- Location: LCCOMB_X23_Y8_N24
\inst30|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~8_combout\ = (\inst|lcd_bus~25_combout\ & ((\inst|char\(2) & (\inst31|ml\(0))) # (!\inst|char\(2) & ((\inst31|hh\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|lcd_bus~25_combout\,
	datab => \inst31|ml\(0),
	datac => \inst31|hh\(0),
	datad => \inst|char\(2),
	combout => \inst30|Mux9~8_combout\);

-- Location: LCCOMB_X23_Y10_N22
\inst30|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~10_combout\ = (\inst30|Mux9~7_combout\) # ((\inst30|Mux9~8_combout\) # ((\inst30|Mux9~9_combout\ & \inst|Mux15~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|Mux9~7_combout\,
	datab => \inst30|Mux9~9_combout\,
	datac => \inst30|Mux9~8_combout\,
	datad => \inst|Mux15~31_combout\,
	combout => \inst30|Mux9~10_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst30|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~12_combout\ = (\inst|char\(1) & ((\inst4|aux\(1)) # ((!\inst30|lcd_bus\(0) & \inst4|aux\(0))))) # (!\inst|char\(1) & (\inst4|aux\(0) $ (((\inst30|lcd_bus\(0)) # (\inst4|aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(1),
	datab => \inst30|lcd_bus\(0),
	datac => \inst4|aux\(0),
	datad => \inst4|aux\(1),
	combout => \inst30|Mux9~12_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst30|Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~13_combout\ = (\inst|char\(2) & ((\inst4|aux\(1) & ((!\inst30|Mux9~12_combout\))) # (!\inst4|aux\(1) & (\inst30|lcd_bus\(0) & \inst30|Mux9~12_combout\)))) # (!\inst|char\(2) & ((\inst30|Mux9~12_combout\) # ((\inst30|lcd_bus\(0) & 
-- !\inst4|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst30|lcd_bus\(0),
	datac => \inst4|aux\(1),
	datad => \inst30|Mux9~12_combout\,
	combout => \inst30|Mux9~13_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst30|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~3_combout\ = (\inst4|aux\(1) & ((\inst|Mux15~7_combout\) # ((\inst4|aux\(0))))) # (!\inst4|aux\(1) & (((\inst30|lcd_bus\(0) & !\inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~7_combout\,
	datab => \inst30|lcd_bus\(0),
	datac => \inst4|aux\(1),
	datad => \inst4|aux\(0),
	combout => \inst30|Mux9~3_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst30|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~4_combout\ = (\inst|char\(2) & (((\inst30|lcd_bus\(0) & \inst30|Mux6~6_combout\)) # (!\inst|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(2),
	datab => \inst30|lcd_bus\(0),
	datac => \inst|char\(1),
	datad => \inst30|Mux6~6_combout\,
	combout => \inst30|Mux9~4_combout\);

-- Location: LCCOMB_X13_Y10_N14
\inst30|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~5_combout\ = (\inst|char\(3) & (\inst|char\(0))) # (!\inst|char\(3) & ((\inst|char\(0) & ((\inst30|Mux9~4_combout\))) # (!\inst|char\(0) & (!\inst|lcd_bus[9]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(0),
	datac => \inst|lcd_bus[9]~5_combout\,
	datad => \inst30|Mux9~4_combout\,
	combout => \inst30|Mux9~5_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst30|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~6_combout\ = (\inst|char\(3) & ((\inst30|Mux9~5_combout\ & (\inst30|Mux9~13_combout\)) # (!\inst30|Mux9~5_combout\ & ((\inst30|Mux9~3_combout\))))) # (!\inst|char\(3) & (((\inst30|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst30|Mux9~13_combout\,
	datac => \inst30|Mux9~3_combout\,
	datad => \inst30|Mux9~5_combout\,
	combout => \inst30|Mux9~6_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst30|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Mux9~11_combout\ = (\inst|char\(4) & (!\inst|char\(3) & (\inst30|Mux9~10_combout\))) # (!\inst|char\(4) & (((\inst30|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|char\(3),
	datab => \inst|char\(4),
	datac => \inst30|Mux9~10_combout\,
	datad => \inst30|Mux9~6_combout\,
	combout => \inst30|Mux9~11_combout\);

-- Location: FF_X14_Y10_N29
\inst30|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|Mux9~11_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|lcd_bus\(0));

-- Location: LCCOMB_X13_Y10_N26
\inst30|dut|Selector45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|dut|Selector45~4_combout\ = (\inst30|dut|Selector45~3_combout\) # ((\inst|lcd_enable~q\ & (\inst|dut|state.ready~q\ & \inst30|lcd_bus\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|dut|Selector45~3_combout\,
	datab => \inst|lcd_enable~q\,
	datac => \inst|dut|state.ready~q\,
	datad => \inst30|lcd_bus\(0),
	combout => \inst30|dut|Selector45~4_combout\);

-- Location: FF_X13_Y10_N27
\inst30|dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|dut|Selector45~4_combout\,
	ena => \inst|dut|lcd_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|dut|lcd_data\(0));

-- Location: LCCOMB_X13_Y10_N0
\inst24|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Mux10~1_combout\ = (\inst24|Mux10~0_combout\ & ((\inst22|dut|lcd_data\(0)) # ((!\inst4|aux\(0))))) # (!\inst24|Mux10~0_combout\ & (((\inst30|dut|lcd_data\(0) & \inst4|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|dut|lcd_data\(0),
	datab => \inst24|Mux10~0_combout\,
	datac => \inst30|dut|lcd_data\(0),
	datad => \inst4|aux\(0),
	combout => \inst24|Mux10~1_combout\);

-- Location: FF_X13_Y10_N1
\inst24|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|lcd_data\(0));

ww_e <= \e~output_o\;

ww_rw <= \rw~output_o\;

ww_rs <= \rs~output_o\;

ww_buzzer <= \buzzer~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;
END structure;


