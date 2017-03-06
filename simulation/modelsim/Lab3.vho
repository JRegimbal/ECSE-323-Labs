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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/06/2017 10:59:43"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g55_lab3 IS
    PORT (
	data : IN std_logic_vector(5 DOWNTO 0);
	mode : IN std_logic_vector(1 DOWNTO 0);
	addr : IN std_logic_vector(5 DOWNTO 0);
	enable : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	value : OUT std_logic_vector(5 DOWNTO 0);
	empty : OUT std_logic;
	full : OUT std_logic;
	num : OUT std_logic_vector(5 DOWNTO 0)
	);
END g55_lab3;

-- Design Ports Information
-- value[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[2]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[4]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- value[5]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- empty	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- full	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[3]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[4]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[4]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g55_lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_value : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_num : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|M0|auto_generated|_~12_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~13_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~14_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~15_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~19_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~20_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~21_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~23_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~24_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~25_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~26_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~29_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~30_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~31_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~39_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~19_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~20_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~21_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~22_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~23_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~24_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~41_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~45_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~46_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~50_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~51_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~52_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~57_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~60_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~61_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~37_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~48_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~73_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~76_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~77_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~78_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~79_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~80_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~81_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~83_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~84_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~53_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~54_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~55_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~56_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~57_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~58_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~89_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~90_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~91_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~92_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~60_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~61_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~62_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~63_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~93_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~94_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~95_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~99_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~100_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~101_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~70_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~71_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~72_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~79_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~81_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~122_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~123_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~124_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~125_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~126_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~127_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~129_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~130_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~87_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~88_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~89_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~90_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~91_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~92_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~137_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~138_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~99_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~142_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~143_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~145_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~146_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~147_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~148_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~149_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~150_combout\ : std_logic;
SIGNAL \U0|S6|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S5|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S4|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S7|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S2|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S1|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S0|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S3|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S9|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S8|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S20|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S37|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S33|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S1|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S0|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S13|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S12|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S9|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S8|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S15|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S14|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S11|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S10|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S49|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S18|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S17|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S16|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S39|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S34|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S35|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S10|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S31|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S32|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S47|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S45|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S46|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S44|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S43|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S42|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S7|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S15|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S13|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S14|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S12|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S11|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S9|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S10|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S8|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S48|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S22|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S21|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S20|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S23|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S18|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S17|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S16|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S19|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S26|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S47|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S15|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S13|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S14|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S12|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S10|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S51|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S20|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S18|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S17|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S16|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S19|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S28|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S45|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S44|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S46|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S41|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S40|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S43|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S42|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S6|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S5|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S4|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S7|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S15|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S13|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S14|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S12|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S11|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S9|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S10|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S8|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S17|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S18|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S16|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S19|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S27|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S36|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S33|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S34|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S32|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S35|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S40|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S6|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S5|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S4|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S7|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S2|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S1|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S0|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S3|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S8|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|S1|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S0|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S13|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S12|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S9|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S8|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S15|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S14|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S11|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S10|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S49|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S18|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S17|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S16|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S39|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S34|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S35|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S31|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S47|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S45|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S46|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S44|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S43|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S42|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S15|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S13|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S14|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S12|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S11|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S9|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S10|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S8|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S22|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S21|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S20|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S23|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S18|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S17|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S16|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S19|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S47|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S15|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S13|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S14|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S16|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S19|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S45|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S44|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S41|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S40|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S43|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S42|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S6|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S5|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S4|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S7|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S15|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S13|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S14|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S12|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S11|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S9|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S10|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S8|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S17|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S18|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S16|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S19|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S36|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S33|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S34|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S32|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S35|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S40|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S37|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|pop~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \U0|enableArray[37]~37_combout\ : std_logic;
SIGNAL \U0|S36|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S36|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U0|enableArray[36]~38_combout\ : std_logic;
SIGNAL \U0|S34|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S34|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[34]~40_combout\ : std_logic;
SIGNAL \U0|S35|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S35|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[35]~43_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~27_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~28_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~35_combout\ : std_logic;
SIGNAL \U0|S38|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S38|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[38]~36_combout\ : std_logic;
SIGNAL \U0|S39|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S39|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[39]~39_combout\ : std_logic;
SIGNAL \U0|S40|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S40|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[40]~51_combout\ : std_logic;
SIGNAL \U0|S41|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S41|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[41]~49_combout\ : std_logic;
SIGNAL \U0|S42|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S42|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[42]~50_combout\ : std_logic;
SIGNAL \U0|S46|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S46|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[46]~46_combout\ : std_logic;
SIGNAL \U0|S45|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S45|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[45]~45_combout\ : std_logic;
SIGNAL \U0|S44|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S44|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[44]~47_combout\ : std_logic;
SIGNAL \U0|S43|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S43|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[43]~48_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~32_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~33_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~34_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~36_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S14|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S14|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[14]~12_combout\ : std_logic;
SIGNAL \U0|S9|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[9]~11_combout\ : std_logic;
SIGNAL \U0|S10|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S10|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[10]~14_combout\ : std_logic;
SIGNAL \U0|S11|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S11|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[11]~10_combout\ : std_logic;
SIGNAL \U0|S12|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S12|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[12]~13_combout\ : std_logic;
SIGNAL \U0|S13|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S13|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[13]~9_combout\ : std_logic;
SIGNAL \U0|S20|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[20]~22_combout\ : std_logic;
SIGNAL \U0|S19|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S19|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[19]~27_combout\ : std_logic;
SIGNAL \U0|S18|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S18|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[18]~24_combout\ : std_logic;
SIGNAL \U0|S17|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S17|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[17]~25_combout\ : std_logic;
SIGNAL \U0|S16|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S16|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[16]~26_combout\ : std_logic;
SIGNAL \U0|S15|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S15|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[15]~8_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \U0|S50|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S50|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[50]~16_combout\ : std_logic;
SIGNAL \U0|S49|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S49|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[49]~17_combout\ : std_logic;
SIGNAL \U0|S47|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S47|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[47]~44_combout\ : std_logic;
SIGNAL \U0|S48|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S48|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[48]~18_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~17_combout\ : std_logic;
SIGNAL \U0|S51|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|enableArray[51]~19_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~18_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~152_combout\ : std_logic;
SIGNAL \U0|S21|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S21|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[21]~21_combout\ : std_logic;
SIGNAL \U0|S22|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S22|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[22]~20_combout\ : std_logic;
SIGNAL \U0|S23|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S23|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[23]~23_combout\ : std_logic;
SIGNAL \U0|S33|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[33]~41_combout\ : std_logic;
SIGNAL \U0|S32|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S32|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[32]~42_combout\ : std_logic;
SIGNAL \U0|S31|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S31|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[31]~28_combout\ : std_logic;
SIGNAL \U0|S30|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S30|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[30]~30_combout\ : std_logic;
SIGNAL \U0|S29|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S29|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[29]~29_combout\ : std_logic;
SIGNAL \U0|S28|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S28|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[28]~31_combout\ : std_logic;
SIGNAL \U0|S27|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S27|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[27]~32_combout\ : std_logic;
SIGNAL \U0|S26|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S26|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[26]~34_combout\ : std_logic;
SIGNAL \U0|S25|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S25|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[25]~33_combout\ : std_logic;
SIGNAL \U0|S24|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \U0|S24|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[24]~35_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~22_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \U0|S2|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S2|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[2]~4_combout\ : std_logic;
SIGNAL \U0|S7|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S7|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[7]~3_combout\ : std_logic;
SIGNAL \U0|S6|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S6|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[6]~0_combout\ : std_logic;
SIGNAL \U0|S5|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S5|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[5]~1_combout\ : std_logic;
SIGNAL \U0|S4|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S4|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[4]~2_combout\ : std_logic;
SIGNAL \U0|S3|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S3|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[3]~7_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~40_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~37_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~38_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~18_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~25_combout\ : std_logic;
SIGNAL \U0|S51|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S50|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S50|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~42_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~153_combout\ : std_logic;
SIGNAL \U0|S41|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S41|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S40|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S40|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~56_combout\ : std_logic;
SIGNAL \U0|S42|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S42|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S43|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S43|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S44|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S44|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S45|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S45|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~53_combout\ : std_logic;
SIGNAL \U0|S46|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S46|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S48|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S48|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S47|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S47|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~54_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~55_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~58_combout\ : std_logic;
SIGNAL \U0|S36|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S36|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S38|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S38|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S37|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S37|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~47_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~48_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~49_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~59_combout\ : std_logic;
SIGNAL \U0|S22|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S22|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S23|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S23|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S33|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S33|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S32|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S32|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S31|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S31|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S30|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S30|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S29|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S29|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S28|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S28|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S27|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S27|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S26|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S26|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S25|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S25|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S24|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S24|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~30_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~28_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~27_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~29_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~31_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~32_combout\ : std_logic;
SIGNAL \U0|S19|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S19|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S20|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S20|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|S21|U0|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \U0|S21|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~43_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~44_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~26_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~33_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[1]~34_combout\ : std_logic;
SIGNAL \U0|S48|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S48|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S49|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S49|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S51|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S50|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S50|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~64_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~65_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~154_combout\ : std_logic;
SIGNAL \U0|S10|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S18|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S18|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S17|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S17|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S16|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S16|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S15|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S15|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S11|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S11|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S12|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S12|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S13|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S13|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S14|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S14|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~40_combout\ : std_logic;
SIGNAL \U0|S9|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S9|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~36_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~38_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~39_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~41_combout\ : std_logic;
SIGNAL \U0|S8|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S8|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[8]~15_combout\ : std_logic;
SIGNAL \U0|S7|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S7|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S6|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S6|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S5|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S5|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S4|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S4|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S3|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S3|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S1|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S1|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[1]~5_combout\ : std_logic;
SIGNAL \U0|S2|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S2|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S0|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S0|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|enableArray[0]~6_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~62_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~63_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~35_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~42_combout\ : std_logic;
SIGNAL \U0|S32|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S33|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S33|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S34|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S34|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S41|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S41|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S40|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S40|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S39|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S39|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S38|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S38|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S37|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S37|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S36|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S36|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S35|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S35|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~74_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~16_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~75_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~70_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~71_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~72_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~82_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~68_combout\ : std_logic;
SIGNAL \U0|S26|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S26|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S25|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S25|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S24|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S24|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S23|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S23|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S22|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S22|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S21|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S21|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S20|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S20|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S19|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S19|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~69_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~66_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~67_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~43_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~47_combout\ : std_logic;
SIGNAL \U0|S27|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S27|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S28|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S28|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S29|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S29|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|S30|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \U0|S30|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~45_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~44_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~46_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~49_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~50_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[2]~51_combout\ : std_logic;
SIGNAL \U0|S33|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S33|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S32|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S32|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S31|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S31|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S30|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S30|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S29|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S29|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S28|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S28|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S26|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S27|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S27|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~65_combout\ : std_logic;
SIGNAL \U0|S25|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S25|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S24|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S24|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~64_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~66_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~67_combout\ : std_logic;
SIGNAL \U0|S51|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S50|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S50|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S48|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S49|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S49|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~87_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~88_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~155_combout\ : std_logic;
SIGNAL \U0|S7|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S6|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S6|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S5|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S5|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S4|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S4|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S3|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S3|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S0|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S0|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S1|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S1|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S2|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S2|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~85_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~86_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~52_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~59_combout\ : std_logic;
SIGNAL \U0|S46|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S46|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S45|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S45|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S44|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S44|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S43|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S43|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S42|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S42|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~103_combout\ : std_logic;
SIGNAL \U0|S35|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S35|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S36|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S36|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S37|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S37|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S38|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S38|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S39|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S39|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S41|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S41|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|S40|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S40|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~102_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~104_combout\ : std_logic;
SIGNAL \U0|S34|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \U0|S34|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~96_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~97_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~98_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~105_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[3]~68_combout\ : std_logic;
SIGNAL \U0|S10|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~74_combout\ : std_logic;
SIGNAL \U0|S12|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S11|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S11|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~73_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~75_combout\ : std_logic;
SIGNAL \U0|S9|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S9|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S8|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S8|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S7|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S7|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S6|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S6|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S5|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S5|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S4|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S4|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S3|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S3|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S2|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S2|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S0|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S0|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S1|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S1|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~108_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~109_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~106_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~107_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~69_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~76_combout\ : std_logic;
SIGNAL \U0|S18|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S17|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~114_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~115_combout\ : std_logic;
SIGNAL \U0|S20|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S28|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S27|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S27|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S26|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S26|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S25|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S25|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S24|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S24|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S23|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S23|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S22|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S22|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S21|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S21|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~112_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~113_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~77_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~82_combout\ : std_logic;
SIGNAL \U0|S33|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S33|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S32|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S32|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S31|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S31|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S30|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S30|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S29|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S29|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~78_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~80_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~83_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~84_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~119_combout\ : std_logic;
SIGNAL \U0|S37|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S37|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S36|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S36|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S35|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S35|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S34|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S34|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~120_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~121_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~116_combout\ : std_logic;
SIGNAL \U0|S38|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S38|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S39|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S39|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~117_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~118_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~128_combout\ : std_logic;
SIGNAL \U0|S50|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S50|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S49|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S49|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S46|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S47|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S47|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|S48|U0|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \U0|S48|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~110_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~111_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~156_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[4]~85_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~144_combout\ : std_logic;
SIGNAL \U0|S37|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S37|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S38|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S38|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S39|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S39|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~139_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~140_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~141_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~151_combout\ : std_logic;
SIGNAL \U0|S51|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S50|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S50|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S41|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S41|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S42|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S42|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S43|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S43|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S44|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S44|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S45|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S45|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S46|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S46|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S47|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S47|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S48|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S48|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S49|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S49|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~133_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~134_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~157_combout\ : std_logic;
SIGNAL \U0|S3|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S3|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S2|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S2|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S0|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S0|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S1|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S1|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~131_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~132_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~86_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~93_combout\ : std_logic;
SIGNAL \U0|S31|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S31|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S30|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S30|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S27|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S28|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S28|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S29|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S29|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~95_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~96_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~97_combout\ : std_logic;
SIGNAL \U0|S23|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S23|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S26|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S26|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S25|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S25|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S24|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S24|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~98_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~100_combout\ : std_logic;
SIGNAL \U0|S22|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S22|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S20|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S20|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|S21|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \U0|S21|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~135_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|_~136_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~94_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~101_combout\ : std_logic;
SIGNAL \U0|M0|auto_generated|result_node[5]~102_combout\ : std_logic;
SIGNAL \U0|pop~1_combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \U0|full~0_combout\ : std_logic;
SIGNAL \U0|full~combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \U0|C0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \U0|empty~combout\ : std_logic;
SIGNAL \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \U0|S0|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S2|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S4|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S6|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S8|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S10|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S12|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S14|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S16|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S18|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S20|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S22|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S24|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S26|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S28|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S30|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S32|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S34|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S36|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S38|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S40|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S42|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S44|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S46|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S48|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S50|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \data~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|C0|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S1|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S3|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S5|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S7|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S9|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S11|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S13|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S15|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S17|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S19|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S21|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S23|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S25|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S27|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S29|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S31|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S33|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S35|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S37|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S39|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S41|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S43|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S45|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S47|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S49|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|S51|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U0|ALT_INV_empty~combout\ : std_logic;

BEGIN

ww_data <= data;
ww_mode <= mode;
ww_addr <= addr;
ww_enable <= enable;
ww_rst <= rst;
ww_clk <= clk;
value <= ww_value;
empty <= ww_empty;
full <= ww_full;
num <= ww_num;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2) & \addr~combout\(1) & \addr~combout\(0));

\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(0) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(1) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(2) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(3) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(4) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(5) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(6) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(7) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(8) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(9) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(10) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(11) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(12) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(13) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(14) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(15) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(16) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(17) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(18) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(19) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(20) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(21) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(22) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(23) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(24) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(25) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(26) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(27) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(28) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(29) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(30) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(31) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(48) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(49) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(33);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(50) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(34);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(51) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(35);

\U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2) & \addr~combout\(1) & \addr~combout\(0));

\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(32) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(33) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(1);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(34) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(2);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(35) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(3);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(36) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(4);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(37) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(5);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(38) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(6);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(39) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(7);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(40) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(8);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(41) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(9);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(42) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(10);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(43) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(11);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(44) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(12);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(45) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(13);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(46) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(14);
\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(47) <= \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(15);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\U0|ALT_INV_empty~combout\ <= NOT \U0|empty~combout\;

-- Location: LCFF_X19_Y26_N25
\U0|S6|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S6|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S6|U1|dffs\(0));

-- Location: LCFF_X19_Y26_N3
\U0|S5|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S5|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S5|U1|dffs\(0));

-- Location: LCFF_X18_Y22_N9
\U0|S4|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S4|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S4|U1|dffs\(0));

-- Location: LCFF_X18_Y24_N25
\U0|S7|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S7|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S7|U1|dffs\(0));

-- Location: LCFF_X16_Y26_N21
\U0|S2|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S2|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S2|U1|dffs\(0));

-- Location: LCFF_X15_Y26_N21
\U0|S1|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S1|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S1|U1|dffs\(0));

-- Location: LCFF_X18_Y24_N3
\U0|S0|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S0|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S0|U1|dffs\(0));

-- Location: LCFF_X18_Y26_N21
\U0|S3|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S3|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S3|U1|dffs\(0));

-- Location: LCFF_X18_Y26_N11
\U0|S8|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S8|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S8|U1|dffs\(0));

-- Location: LCFF_X16_Y26_N17
\U0|S1|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S1|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S1|U1|dffs\(1));

-- Location: LCFF_X18_Y24_N11
\U0|S0|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S0|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S0|U1|dffs\(1));

-- Location: LCFF_X16_Y24_N29
\U0|S13|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S13|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S13|U1|dffs\(1));

-- Location: LCFF_X16_Y22_N17
\U0|S12|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S12|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S12|U1|dffs\(1));

-- Location: LCFF_X18_Y25_N27
\U0|S9|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S9|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S9|U1|dffs\(1));

-- Location: LCFF_X19_Y25_N31
\U0|S8|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S8|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S8|U1|dffs\(1));

-- Location: LCFF_X16_Y24_N27
\U0|S15|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S15|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S15|U1|dffs\(1));

-- Location: LCFF_X16_Y22_N23
\U0|S14|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S14|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S14|U1|dffs\(1));

-- Location: LCFF_X16_Y21_N7
\U0|S11|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S11|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S11|U1|dffs\(1));

-- Location: LCFF_X14_Y22_N27
\U0|S10|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S10|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S10|U1|dffs\(1));

-- Location: LCFF_X12_Y22_N7
\U0|S49|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S49|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S49|U1|dffs\(1));

-- Location: LCFF_X18_Y20_N11
\U0|S18|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S18|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S18|U1|dffs\(1));

-- Location: LCFF_X19_Y20_N15
\U0|S17|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S17|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S17|U1|dffs\(1));

-- Location: LCFF_X21_Y22_N19
\U0|S16|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S16|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S16|U1|dffs\(1));

-- Location: LCFF_X13_Y23_N15
\U0|S39|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S39|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S39|U1|dffs\(1));

-- Location: LCFF_X14_Y23_N13
\U0|S34|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S34|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[34]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S34|U1|dffs\(1));

-- Location: LCFF_X18_Y23_N21
\U0|S35|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S35|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S35|U1|dffs\(1));

-- Location: LCFF_X19_Y22_N13
\U0|S31|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S31|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S31|U1|dffs\(2));

-- Location: LCFF_X15_Y25_N9
\U0|S47|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S47|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[47]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S47|U1|dffs\(2));

-- Location: LCFF_X15_Y21_N11
\U0|S45|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S45|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S45|U1|dffs\(2));

-- Location: LCFF_X16_Y25_N29
\U0|S46|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S46|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S46|U1|dffs\(2));

-- Location: LCFF_X16_Y25_N27
\U0|S44|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S44|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[44]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S44|U1|dffs\(2));

-- Location: LCFF_X18_Y23_N19
\U0|S43|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S43|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[43]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S43|U1|dffs\(2));

-- Location: LCFF_X19_Y23_N5
\U0|S42|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S42|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[42]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S42|U1|dffs\(2));

-- Location: LCFF_X16_Y24_N3
\U0|S15|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S15|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S15|U1|dffs\(3));

-- Location: LCFF_X16_Y24_N21
\U0|S13|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S13|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S13|U1|dffs\(3));

-- Location: LCFF_X16_Y22_N31
\U0|S14|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S14|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S14|U1|dffs\(3));

-- Location: LCFF_X16_Y22_N25
\U0|S12|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S12|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S12|U1|dffs\(3));

-- Location: LCFF_X16_Y21_N13
\U0|S11|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S11|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S11|U1|dffs\(3));

-- Location: LCFF_X18_Y25_N15
\U0|S9|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S9|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S9|U1|dffs\(3));

-- Location: LCFF_X14_Y22_N7
\U0|S10|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S10|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S10|U1|dffs\(3));

-- Location: LCFF_X18_Y26_N3
\U0|S8|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S8|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S8|U1|dffs\(3));

-- Location: LCFF_X18_Y20_N21
\U0|S22|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S22|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S22|U1|dffs\(3));

-- Location: LCFF_X20_Y22_N1
\U0|S21|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S21|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S21|U1|dffs\(3));

-- Location: LCFF_X20_Y22_N23
\U0|S20|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S20|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S20|U1|dffs\(3));

-- Location: LCFF_X18_Y21_N19
\U0|S23|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S23|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S23|U1|dffs\(3));

-- Location: LCFF_X18_Y20_N27
\U0|S18|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S18|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S18|U1|dffs\(3));

-- Location: LCFF_X19_Y20_N19
\U0|S17|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S17|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S17|U1|dffs\(3));

-- Location: LCFF_X21_Y22_N23
\U0|S16|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S16|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S16|U1|dffs\(3));

-- Location: LCFF_X18_Y22_N27
\U0|S19|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S19|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S19|U1|dffs\(3));

-- Location: LCFF_X15_Y21_N7
\U0|S47|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S47|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[47]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S47|U1|dffs\(3));

-- Location: LCFF_X16_Y24_N31
\U0|S15|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S15|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S15|U1|dffs\(4));

-- Location: LCFF_X16_Y24_N25
\U0|S13|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S13|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S13|U1|dffs\(4));

-- Location: LCFF_X16_Y22_N7
\U0|S14|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S14|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S14|U1|dffs\(4));

-- Location: LCFF_X13_Y22_N23
\U0|S51|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S51|U0|$00000|auto_generated|result_node[4]~4_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S51|U1|dffs\(4));

-- Location: LCFF_X21_Y22_N29
\U0|S16|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S16|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S16|U1|dffs\(4));

-- Location: LCFF_X19_Y21_N9
\U0|S19|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S19|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S19|U1|dffs\(4));

-- Location: LCFF_X15_Y21_N5
\U0|S45|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S45|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S45|U1|dffs\(4));

-- Location: LCFF_X16_Y25_N21
\U0|S44|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S44|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[44]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S44|U1|dffs\(4));

-- Location: LCFF_X14_Y23_N27
\U0|S41|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S41|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[41]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S41|U1|dffs\(4));

-- Location: LCFF_X16_Y23_N17
\U0|S40|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S40|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[40]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S40|U1|dffs\(4));

-- Location: LCFF_X18_Y23_N13
\U0|S43|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S43|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[43]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S43|U1|dffs\(4));

-- Location: LCFF_X19_Y23_N21
\U0|S42|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S42|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[42]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S42|U1|dffs\(4));

-- Location: LCFF_X19_Y26_N9
\U0|S6|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S6|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S6|U1|dffs\(5));

-- Location: LCFF_X19_Y26_N23
\U0|S5|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S5|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S5|U1|dffs\(5));

-- Location: LCFF_X18_Y22_N15
\U0|S4|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S4|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S4|U1|dffs\(5));

-- Location: LCFF_X18_Y24_N29
\U0|S7|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S7|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S7|U1|dffs\(5));

-- Location: LCFF_X16_Y24_N23
\U0|S15|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S15|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S15|U1|dffs\(5));

-- Location: LCFF_X16_Y24_N13
\U0|S13|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S13|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S13|U1|dffs\(5));

-- Location: LCFF_X16_Y22_N27
\U0|S14|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S14|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S14|U1|dffs\(5));

-- Location: LCFF_X16_Y22_N29
\U0|S12|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S12|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S12|U1|dffs\(5));

-- Location: LCFF_X16_Y21_N5
\U0|S11|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S11|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S11|U1|dffs\(5));

-- Location: LCFF_X18_Y25_N29
\U0|S9|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S9|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S9|U1|dffs\(5));

-- Location: LCFF_X14_Y22_N15
\U0|S10|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S10|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S10|U1|dffs\(5));

-- Location: LCFF_X18_Y26_N15
\U0|S8|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S8|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S8|U1|dffs\(5));

-- Location: LCFF_X19_Y20_N11
\U0|S17|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S17|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S17|U1|dffs\(5));

-- Location: LCFF_X18_Y20_N23
\U0|S18|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S18|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S18|U1|dffs\(5));

-- Location: LCFF_X21_Y22_N9
\U0|S16|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S16|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S16|U1|dffs\(5));

-- Location: LCFF_X19_Y20_N1
\U0|S19|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S19|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S19|U1|dffs\(5));

-- Location: LCFF_X15_Y23_N19
\U0|S36|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S36|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[36]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S36|U1|dffs\(5));

-- Location: LCFF_X21_Y23_N23
\U0|S33|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S33|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S33|U1|dffs\(5));

-- Location: LCFF_X14_Y23_N17
\U0|S34|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S34|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[34]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S34|U1|dffs\(5));

-- Location: LCFF_X19_Y23_N27
\U0|S32|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S32|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[32]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S32|U1|dffs\(5));

-- Location: LCFF_X18_Y23_N11
\U0|S35|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S35|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S35|U1|dffs\(5));

-- Location: LCFF_X16_Y23_N19
\U0|S40|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S40|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[40]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S40|U1|dffs\(5));

-- Location: LCCOMB_X15_Y26_N26
\U0|M0|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~12_combout\ = (\addr~combout\(0) & (((\U0|S5|U1|dffs\(0)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S4|U1|dffs\(0) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S4|U1|dffs\(0),
	datac => \U0|S5|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~12_combout\);

-- Location: LCCOMB_X15_Y26_N0
\U0|M0|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~13_combout\ = (\U0|M0|auto_generated|_~12_combout\ & ((\U0|S7|U1|dffs\(0)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~12_combout\ & (((\U0|S6|U1|dffs\(0) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S7|U1|dffs\(0),
	datab => \U0|S6|U1|dffs\(0),
	datac => \U0|M0|auto_generated|_~12_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~13_combout\);

-- Location: LCCOMB_X14_Y26_N26
\U0|M0|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~14_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\U0|S1|U1|dffs\(0))))) # (!\addr~combout\(0) & (\U0|S0|U1|dffs\(0) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S0|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S1|U1|dffs\(0),
	combout => \U0|M0|auto_generated|_~14_combout\);

-- Location: LCCOMB_X14_Y26_N12
\U0|M0|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~15_combout\ = (\U0|M0|auto_generated|_~14_combout\ & (((\U0|S3|U1|dffs\(0)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~14_combout\ & (\U0|S2|U1|dffs\(0) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S2|U1|dffs\(0),
	datab => \U0|M0|auto_generated|_~14_combout\,
	datac => \addr~combout\(1),
	datad => \U0|S3|U1|dffs\(0),
	combout => \U0|M0|auto_generated|_~15_combout\);

-- Location: LCCOMB_X14_Y26_N18
\U0|M0|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~1_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~13_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~15_combout\,
	datab => \addr~combout\(2),
	datac => \U0|M0|auto_generated|_~13_combout\,
	datad => \addr~combout\(3),
	combout => \U0|M0|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X16_Y21_N2
\U0|M0|auto_generated|result_node[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~3_combout\ = (!\addr~combout\(2) & ((\addr~combout\(1) & ((\U0|S11|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S9|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S9|U1|dffs\(0),
	datac => \U0|S11|U1|dffs\(0),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X14_Y22_N28
\U0|M0|auto_generated|result_node[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~6_combout\ = (!\addr~combout\(2) & ((\addr~combout\(1) & ((\U0|S10|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S8|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U1|dffs\(0),
	datab => \U0|S10|U1|dffs\(0),
	datac => \addr~combout\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X20_Y25_N12
\U0|M0|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~19_combout\ = (\addr~combout\(0) & ((\U0|S21|U1|dffs\(0)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S20|U1|dffs\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S21|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \U0|S20|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~19_combout\);

-- Location: LCCOMB_X21_Y21_N12
\U0|M0|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~20_combout\ = (\U0|M0|auto_generated|_~19_combout\ & (((\U0|S23|U1|dffs\(0)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~19_combout\ & (\U0|S22|U1|dffs\(0) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~19_combout\,
	datab => \U0|S22|U1|dffs\(0),
	datac => \U0|S23|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~20_combout\);

-- Location: LCCOMB_X22_Y20_N10
\U0|M0|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~21_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S17|U1|dffs\(0))) # (!\addr~combout\(0) & ((\U0|S16|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S17|U1|dffs\(0),
	datac => \U0|S16|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~21_combout\);

-- Location: LCCOMB_X21_Y21_N2
\U0|M0|auto_generated|result_node[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~13_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S27|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S25|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S25|U1|dffs\(0),
	datab => \U0|S27|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X16_Y19_N28
\U0|M0|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~23_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S37|U1|dffs\(0))) # (!\addr~combout\(0) & ((\U0|S36|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S37|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \U0|S36|U1|dffs\(0),
	combout => \U0|M0|auto_generated|_~23_combout\);

-- Location: LCCOMB_X16_Y19_N18
\U0|M0|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~24_combout\ = (\U0|M0|auto_generated|_~23_combout\ & (((\U0|S39|U1|dffs\(0)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~23_combout\ & (\U0|S38|U1|dffs\(0) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S38|U1|dffs\(0),
	datab => \U0|M0|auto_generated|_~23_combout\,
	datac => \U0|S39|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~24_combout\);

-- Location: LCCOMB_X21_Y24_N6
\U0|M0|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~25_combout\ = (\addr~combout\(2) & (\addr~combout\(5) & (!\addr~combout\(3) & \U0|M0|auto_generated|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(5),
	datac => \addr~combout\(3),
	datad => \U0|M0|auto_generated|_~24_combout\,
	combout => \U0|M0|auto_generated|_~25_combout\);

-- Location: LCCOMB_X21_Y24_N16
\U0|M0|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~26_combout\ = (\addr~combout\(0) & ((\U0|S33|U1|dffs\(0)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S32|U1|dffs\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S33|U1|dffs\(0),
	datab => \U0|S32|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~26_combout\);

-- Location: LCCOMB_X15_Y21_N20
\U0|M0|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~29_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S47|U1|dffs\(0))) # (!\addr~combout\(1) & ((\U0|S45|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S47|U1|dffs\(0),
	datad => \U0|S45|U1|dffs\(0),
	combout => \U0|M0|auto_generated|_~29_combout\);

-- Location: LCCOMB_X14_Y20_N20
\U0|M0|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~30_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S46|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S44|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S44|U1|dffs\(0),
	datab => \U0|S46|U1|dffs\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~30_combout\);

-- Location: LCCOMB_X15_Y21_N14
\U0|M0|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~31_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|_~30_combout\) # (\U0|M0|auto_generated|_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|_~30_combout\,
	datac => \U0|M0|auto_generated|_~29_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~31_combout\);

-- Location: LCCOMB_X20_Y25_N20
\U0|M0|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~39_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S1|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S0|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S0|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \U0|S1|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~39_combout\);

-- Location: LCCOMB_X15_Y25_N20
\U0|M0|auto_generated|result_node[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~19_combout\ = (\addr~combout\(2) & ((\addr~combout\(0) & ((\U0|S13|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S12|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U1|dffs\(1),
	datab => \addr~combout\(0),
	datac => \addr~combout\(2),
	datad => \U0|S13|U1|dffs\(1),
	combout => \U0|M0|auto_generated|result_node[1]~19_combout\);

-- Location: LCCOMB_X18_Y25_N10
\U0|M0|auto_generated|result_node[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~20_combout\ = (!\addr~combout\(2) & ((\addr~combout\(0) & (\U0|S9|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S8|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|S9|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \U0|S8|U1|dffs\(1),
	combout => \U0|M0|auto_generated|result_node[1]~20_combout\);

-- Location: LCCOMB_X15_Y25_N6
\U0|M0|auto_generated|result_node[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~21_combout\ = (!\addr~combout\(1) & ((\U0|M0|auto_generated|result_node[1]~20_combout\) # (\U0|M0|auto_generated|result_node[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|result_node[1]~20_combout\,
	datac => \U0|M0|auto_generated|result_node[1]~19_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[1]~21_combout\);

-- Location: LCCOMB_X15_Y22_N10
\U0|M0|auto_generated|result_node[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~22_combout\ = (\addr~combout\(2) & ((\addr~combout\(0) & (\U0|S15|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S14|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S15|U1|dffs\(1),
	datab => \U0|S14|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[1]~22_combout\);

-- Location: LCCOMB_X14_Y22_N30
\U0|M0|auto_generated|result_node[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~23_combout\ = (!\addr~combout\(2) & ((\addr~combout\(0) & ((\U0|S11|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S10|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S10|U1|dffs\(1),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \U0|S11|U1|dffs\(1),
	combout => \U0|M0|auto_generated|result_node[1]~23_combout\);

-- Location: LCCOMB_X15_Y25_N4
\U0|M0|auto_generated|result_node[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~24_combout\ = (\U0|M0|auto_generated|result_node[1]~21_combout\) # ((\addr~combout\(1) & ((\U0|M0|auto_generated|result_node[1]~22_combout\) # (\U0|M0|auto_generated|result_node[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[1]~21_combout\,
	datab => \U0|M0|auto_generated|result_node[1]~22_combout\,
	datac => \U0|M0|auto_generated|result_node[1]~23_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[1]~24_combout\);

-- Location: LCCOMB_X12_Y22_N12
\U0|M0|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~41_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\U0|S49|U1|dffs\(1))))) # (!\addr~combout\(0) & (\U0|S48|U1|dffs\(1) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S48|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \U0|S49|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~41_combout\);

-- Location: LCCOMB_X19_Y24_N4
\U0|M0|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~45_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S17|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S16|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \U0|S16|U1|dffs\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~45_combout\);

-- Location: LCCOMB_X19_Y24_N14
\U0|M0|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~46_combout\ = (\U0|M0|auto_generated|_~45_combout\ & (((\U0|S19|U1|dffs\(1)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~45_combout\ & (\U0|S18|U1|dffs\(1) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S18|U1|dffs\(1),
	datab => \U0|S19|U1|dffs\(1),
	datac => \U0|M0|auto_generated|_~45_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~46_combout\);

-- Location: LCCOMB_X14_Y20_N18
\U0|M0|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~50_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\U0|S33|U1|dffs\(1))))) # (!\addr~combout\(0) & (\U0|S32|U1|dffs\(1) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S32|U1|dffs\(1),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S33|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~50_combout\);

-- Location: LCCOMB_X14_Y20_N8
\U0|M0|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~51_combout\ = (\U0|M0|auto_generated|_~50_combout\ & ((\U0|S35|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~50_combout\ & (((\addr~combout\(1) & \U0|S34|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(1),
	datab => \U0|M0|auto_generated|_~50_combout\,
	datac => \addr~combout\(1),
	datad => \U0|S34|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~51_combout\);

-- Location: LCCOMB_X13_Y20_N2
\U0|M0|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~52_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\U0|M0|auto_generated|_~51_combout\ & \U0|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \U0|M0|auto_generated|_~51_combout\,
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|_~16_combout\,
	combout => \U0|M0|auto_generated|_~52_combout\);

-- Location: LCCOMB_X14_Y21_N12
\U0|M0|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~57_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S43|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S42|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S42|U1|dffs\(1),
	datab => \U0|S43|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~57_combout\);

-- Location: LCCOMB_X20_Y24_N18
\U0|M0|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~60_combout\ = (\addr~combout\(0) & ((\U0|S5|U1|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S4|U1|dffs\(2) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S5|U1|dffs\(2),
	datac => \U0|S4|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~60_combout\);

-- Location: LCCOMB_X20_Y24_N12
\U0|M0|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~61_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~60_combout\ & ((\U0|S7|U1|dffs\(2)))) # (!\U0|M0|auto_generated|_~60_combout\ & (\U0|S6|U1|dffs\(2))))) # (!\addr~combout\(1) & (((\U0|M0|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S6|U1|dffs\(2),
	datac => \U0|S7|U1|dffs\(2),
	datad => \U0|M0|auto_generated|_~60_combout\,
	combout => \U0|M0|auto_generated|_~61_combout\);

-- Location: LCCOMB_X14_Y24_N6
\U0|M0|auto_generated|result_node[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~37_combout\ = (!\addr~combout\(0) & ((\addr~combout\(2) & (\U0|S12|U1|dffs\(2))) # (!\addr~combout\(2) & ((\U0|S8|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S12|U1|dffs\(2),
	datac => \addr~combout\(2),
	datad => \U0|S8|U1|dffs\(2),
	combout => \U0|M0|auto_generated|result_node[2]~37_combout\);

-- Location: LCCOMB_X20_Y23_N2
\U0|M0|auto_generated|result_node[2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~48_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S27|U1|dffs\(2)))) # (!\addr~combout\(0) & (\U0|S26|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S26|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \U0|S27|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[2]~48_combout\);

-- Location: LCCOMB_X20_Y23_N12
\U0|M0|auto_generated|_~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~73_combout\ = (\addr~combout\(0) & (((\U0|S33|U1|dffs\(2)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S32|U1|dffs\(2) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S32|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \U0|S33|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~73_combout\);

-- Location: LCCOMB_X19_Y25_N10
\U0|M0|auto_generated|_~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~76_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S47|U1|dffs\(2))) # (!\addr~combout\(1) & ((\U0|S45|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S47|U1|dffs\(2),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \U0|S45|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~76_combout\);

-- Location: LCCOMB_X19_Y25_N28
\U0|M0|auto_generated|_~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~77_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S46|U1|dffs\(2)))) # (!\addr~combout\(1) & (\U0|S44|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \U0|S44|U1|dffs\(2),
	datad => \U0|S46|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~77_combout\);

-- Location: LCCOMB_X19_Y25_N18
\U0|M0|auto_generated|_~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~78_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|_~76_combout\) # (\U0|M0|auto_generated|_~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~76_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~77_combout\,
	combout => \U0|M0|auto_generated|_~78_combout\);

-- Location: LCCOMB_X19_Y24_N28
\U0|M0|auto_generated|_~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~79_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S43|U1|dffs\(2))) # (!\addr~combout\(1) & ((\U0|S41|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S43|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \U0|S41|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~79_combout\);

-- Location: LCCOMB_X13_Y23_N22
\U0|M0|auto_generated|_~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~80_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S42|U1|dffs\(2)))) # (!\addr~combout\(1) & (\U0|S40|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S40|U1|dffs\(2),
	datac => \addr~combout\(0),
	datad => \U0|S42|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~80_combout\);

-- Location: LCCOMB_X20_Y24_N10
\U0|M0|auto_generated|_~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~81_combout\ = (\U0|M0|auto_generated|_~78_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|_~79_combout\) # (\U0|M0|auto_generated|_~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|_~79_combout\,
	datac => \U0|M0|auto_generated|_~78_combout\,
	datad => \U0|M0|auto_generated|_~80_combout\,
	combout => \U0|M0|auto_generated|_~81_combout\);

-- Location: LCCOMB_X15_Y26_N18
\U0|M0|auto_generated|_~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~83_combout\ = (\addr~combout\(0) & ((\U0|S5|U1|dffs\(3)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S4|U1|dffs\(3) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S5|U1|dffs\(3),
	datab => \addr~combout\(0),
	datac => \U0|S4|U1|dffs\(3),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~83_combout\);

-- Location: LCCOMB_X15_Y26_N16
\U0|M0|auto_generated|_~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~84_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~83_combout\ & (\U0|S7|U1|dffs\(3))) # (!\U0|M0|auto_generated|_~83_combout\ & ((\U0|S6|U1|dffs\(3)))))) # (!\addr~combout\(1) & (((\U0|M0|auto_generated|_~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S7|U1|dffs\(3),
	datac => \U0|S6|U1|dffs\(3),
	datad => \U0|M0|auto_generated|_~83_combout\,
	combout => \U0|M0|auto_generated|_~84_combout\);

-- Location: LCCOMB_X15_Y25_N18
\U0|M0|auto_generated|result_node[3]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~53_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S15|U1|dffs\(3))) # (!\addr~combout\(1) & ((\U0|S13|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S15|U1|dffs\(3),
	datab => \U0|S13|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[3]~53_combout\);

-- Location: LCCOMB_X15_Y22_N16
\U0|M0|auto_generated|result_node[3]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~54_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S14|U1|dffs\(3)))) # (!\addr~combout\(1) & (\U0|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S12|U1|dffs\(3),
	datac => \U0|S14|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[3]~54_combout\);

-- Location: LCCOMB_X15_Y25_N0
\U0|M0|auto_generated|result_node[3]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~55_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[3]~53_combout\) # (\U0|M0|auto_generated|result_node[3]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|result_node[3]~53_combout\,
	datad => \U0|M0|auto_generated|result_node[3]~54_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~55_combout\);

-- Location: LCCOMB_X15_Y25_N2
\U0|M0|auto_generated|result_node[3]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~56_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S11|U1|dffs\(3)))) # (!\addr~combout\(1) & (\U0|S9|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S9|U1|dffs\(3),
	datab => \U0|S11|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[3]~56_combout\);

-- Location: LCCOMB_X19_Y25_N8
\U0|M0|auto_generated|result_node[3]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~57_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S10|U1|dffs\(3))) # (!\addr~combout\(1) & ((\U0|S8|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S10|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|S8|U1|dffs\(3),
	combout => \U0|M0|auto_generated|result_node[3]~57_combout\);

-- Location: LCCOMB_X15_Y25_N16
\U0|M0|auto_generated|result_node[3]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~58_combout\ = (\U0|M0|auto_generated|result_node[3]~55_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[3]~56_combout\) # (\U0|M0|auto_generated|result_node[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|result_node[3]~55_combout\,
	datac => \U0|M0|auto_generated|result_node[3]~56_combout\,
	datad => \U0|M0|auto_generated|result_node[3]~57_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~58_combout\);

-- Location: LCCOMB_X19_Y21_N10
\U0|M0|auto_generated|_~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~89_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S21|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S20|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \U0|S21|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~89_combout\);

-- Location: LCCOMB_X19_Y21_N12
\U0|M0|auto_generated|_~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~90_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~89_combout\ & (\U0|S23|U1|dffs\(3))) # (!\U0|M0|auto_generated|_~89_combout\ & ((\U0|S22|U1|dffs\(3)))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S23|U1|dffs\(3),
	datac => \U0|S22|U1|dffs\(3),
	datad => \U0|M0|auto_generated|_~89_combout\,
	combout => \U0|M0|auto_generated|_~90_combout\);

-- Location: LCCOMB_X19_Y21_N14
\U0|M0|auto_generated|_~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~91_combout\ = (\addr~combout\(0) & ((\U0|S17|U1|dffs\(3)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S16|U1|dffs\(3) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(3),
	datab => \U0|S16|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~91_combout\);

-- Location: LCCOMB_X19_Y21_N16
\U0|M0|auto_generated|_~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~92_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~91_combout\ & (\U0|S19|U1|dffs\(3))) # (!\U0|M0|auto_generated|_~91_combout\ & ((\U0|S18|U1|dffs\(3)))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S19|U1|dffs\(3),
	datac => \U0|M0|auto_generated|_~91_combout\,
	datad => \U0|S18|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~92_combout\);

-- Location: LCCOMB_X19_Y21_N18
\U0|M0|auto_generated|result_node[3]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~60_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~90_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(3),
	datac => \U0|M0|auto_generated|_~92_combout\,
	datad => \U0|M0|auto_generated|_~90_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~60_combout\);

-- Location: LCCOMB_X20_Y20_N2
\U0|M0|auto_generated|result_node[3]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~61_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S29|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S28|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S28|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \U0|S29|U1|dffs\(3),
	combout => \U0|M0|auto_generated|result_node[3]~61_combout\);

-- Location: LCCOMB_X20_Y20_N20
\U0|M0|auto_generated|result_node[3]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~62_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S31|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S30|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S30|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|S31|U1|dffs\(3),
	combout => \U0|M0|auto_generated|result_node[3]~62_combout\);

-- Location: LCCOMB_X20_Y20_N6
\U0|M0|auto_generated|result_node[3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~63_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[3]~62_combout\) # (\U0|M0|auto_generated|result_node[3]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(2),
	datac => \U0|M0|auto_generated|result_node[3]~62_combout\,
	datad => \U0|M0|auto_generated|result_node[3]~61_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~63_combout\);

-- Location: LCCOMB_X15_Y19_N12
\U0|M0|auto_generated|_~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~93_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\U0|S37|U1|dffs\(3))))) # (!\addr~combout\(0) & (\U0|S36|U1|dffs\(3) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S36|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|S37|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~93_combout\);

-- Location: LCCOMB_X15_Y19_N26
\U0|M0|auto_generated|_~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~94_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~93_combout\ & (\U0|S39|U1|dffs\(3))) # (!\U0|M0|auto_generated|_~93_combout\ & ((\U0|S38|U1|dffs\(3)))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S39|U1|dffs\(3),
	datab => \U0|S38|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|M0|auto_generated|_~93_combout\,
	combout => \U0|M0|auto_generated|_~94_combout\);

-- Location: LCCOMB_X13_Y20_N10
\U0|M0|auto_generated|_~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~95_combout\ = (\addr~combout\(5) & (!\addr~combout\(3) & (\addr~combout\(2) & \U0|M0|auto_generated|_~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~94_combout\,
	combout => \U0|M0|auto_generated|_~95_combout\);

-- Location: LCCOMB_X15_Y19_N16
\U0|M0|auto_generated|_~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~99_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S45|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S44|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S44|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|S45|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~99_combout\);

-- Location: LCCOMB_X15_Y21_N8
\U0|M0|auto_generated|_~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~100_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S47|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S46|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S46|U1|dffs\(3),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S47|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~100_combout\);

-- Location: LCCOMB_X15_Y19_N6
\U0|M0|auto_generated|_~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~101_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|_~100_combout\) # (\U0|M0|auto_generated|_~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~100_combout\,
	datac => \U0|M0|auto_generated|_~99_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~101_combout\);

-- Location: LCCOMB_X15_Y24_N22
\U0|M0|auto_generated|result_node[4]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~70_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S15|U1|dffs\(4))) # (!\addr~combout\(1) & ((\U0|S13|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S15|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \U0|S13|U1|dffs\(4),
	combout => \U0|M0|auto_generated|result_node[4]~70_combout\);

-- Location: LCCOMB_X15_Y24_N4
\U0|M0|auto_generated|result_node[4]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~71_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S14|U1|dffs\(4)))) # (!\addr~combout\(1) & (\U0|S12|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U1|dffs\(4),
	datab => \U0|S14|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[4]~71_combout\);

-- Location: LCCOMB_X15_Y24_N6
\U0|M0|auto_generated|result_node[4]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~72_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[4]~70_combout\) # (\U0|M0|auto_generated|result_node[4]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|result_node[4]~70_combout\,
	datac => \U0|M0|auto_generated|result_node[4]~71_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[4]~72_combout\);

-- Location: LCCOMB_X21_Y20_N14
\U0|M0|auto_generated|result_node[4]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~79_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S31|U1|dffs\(4)))) # (!\addr~combout\(0) & (\U0|S30|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S30|U1|dffs\(4),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S31|U1|dffs\(4),
	combout => \U0|M0|auto_generated|result_node[4]~79_combout\);

-- Location: LCCOMB_X21_Y20_N24
\U0|M0|auto_generated|result_node[4]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~81_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S25|U1|dffs\(4))) # (!\addr~combout\(0) & ((\U0|S24|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S25|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \U0|S24|U1|dffs\(4),
	combout => \U0|M0|auto_generated|result_node[4]~81_combout\);

-- Location: LCCOMB_X15_Y20_N22
\U0|M0|auto_generated|_~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~122_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S45|U1|dffs\(4))) # (!\addr~combout\(0) & ((\U0|S44|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S45|U1|dffs\(4),
	datac => \U0|S44|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~122_combout\);

-- Location: LCCOMB_X15_Y20_N20
\U0|M0|auto_generated|_~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~123_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S47|U1|dffs\(4)))) # (!\addr~combout\(0) & (\U0|S46|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S46|U1|dffs\(4),
	datac => \U0|S47|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~123_combout\);

-- Location: LCCOMB_X15_Y20_N14
\U0|M0|auto_generated|_~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~124_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|_~122_combout\) # (\U0|M0|auto_generated|_~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|_~122_combout\,
	datac => \U0|M0|auto_generated|_~123_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~124_combout\);

-- Location: LCCOMB_X14_Y20_N14
\U0|M0|auto_generated|_~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~125_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S41|U1|dffs\(4)))) # (!\addr~combout\(0) & (\U0|S40|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S40|U1|dffs\(4),
	datac => \U0|S41|U1|dffs\(4),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~125_combout\);

-- Location: LCCOMB_X15_Y20_N12
\U0|M0|auto_generated|_~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~126_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S43|U1|dffs\(4)))) # (!\addr~combout\(0) & (\U0|S42|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S42|U1|dffs\(4),
	datac => \U0|S43|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~126_combout\);

-- Location: LCCOMB_X15_Y20_N30
\U0|M0|auto_generated|_~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~127_combout\ = (\U0|M0|auto_generated|_~124_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|_~125_combout\) # (\U0|M0|auto_generated|_~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~125_combout\,
	datab => \addr~combout\(2),
	datac => \U0|M0|auto_generated|_~124_combout\,
	datad => \U0|M0|auto_generated|_~126_combout\,
	combout => \U0|M0|auto_generated|_~127_combout\);

-- Location: LCCOMB_X20_Y22_N8
\U0|M0|auto_generated|_~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~129_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S5|U1|dffs\(5)))) # (!\addr~combout\(0) & (\U0|S4|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S4|U1|dffs\(5),
	datad => \U0|S5|U1|dffs\(5),
	combout => \U0|M0|auto_generated|_~129_combout\);

-- Location: LCCOMB_X19_Y22_N2
\U0|M0|auto_generated|_~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~130_combout\ = (\U0|M0|auto_generated|_~129_combout\ & (((\U0|S7|U1|dffs\(5)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~129_combout\ & (\U0|S6|U1|dffs\(5) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S6|U1|dffs\(5),
	datab => \U0|M0|auto_generated|_~129_combout\,
	datac => \U0|S7|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~130_combout\);

-- Location: LCCOMB_X15_Y22_N30
\U0|M0|auto_generated|result_node[5]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~87_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S15|U1|dffs\(5))) # (!\addr~combout\(1) & ((\U0|S13|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S15|U1|dffs\(5),
	datad => \U0|S13|U1|dffs\(5),
	combout => \U0|M0|auto_generated|result_node[5]~87_combout\);

-- Location: LCCOMB_X15_Y22_N8
\U0|M0|auto_generated|result_node[5]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~88_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S14|U1|dffs\(5))) # (!\addr~combout\(1) & ((\U0|S12|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S14|U1|dffs\(5),
	datad => \U0|S12|U1|dffs\(5),
	combout => \U0|M0|auto_generated|result_node[5]~88_combout\);

-- Location: LCCOMB_X14_Y22_N4
\U0|M0|auto_generated|result_node[5]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~89_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[5]~88_combout\) # (\U0|M0|auto_generated|result_node[5]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|result_node[5]~88_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[5]~87_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~89_combout\);

-- Location: LCCOMB_X15_Y22_N6
\U0|M0|auto_generated|result_node[5]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~90_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S11|U1|dffs\(5))) # (!\addr~combout\(1) & ((\U0|S9|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S11|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S9|U1|dffs\(5),
	combout => \U0|M0|auto_generated|result_node[5]~90_combout\);

-- Location: LCCOMB_X15_Y22_N28
\U0|M0|auto_generated|result_node[5]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~91_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S10|U1|dffs\(5)))) # (!\addr~combout\(1) & (\U0|S8|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S10|U1|dffs\(5),
	combout => \U0|M0|auto_generated|result_node[5]~91_combout\);

-- Location: LCCOMB_X14_Y22_N10
\U0|M0|auto_generated|result_node[5]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~92_combout\ = (\U0|M0|auto_generated|result_node[5]~89_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[5]~90_combout\) # (\U0|M0|auto_generated|result_node[5]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[5]~90_combout\,
	datab => \addr~combout\(2),
	datac => \U0|M0|auto_generated|result_node[5]~89_combout\,
	datad => \U0|M0|auto_generated|result_node[5]~91_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~92_combout\);

-- Location: LCCOMB_X19_Y20_N6
\U0|M0|auto_generated|_~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~137_combout\ = (\addr~combout\(1) & ((\addr~combout\(0)) # ((\U0|S18|U1|dffs\(5))))) # (!\addr~combout\(1) & (!\addr~combout\(0) & (\U0|S16|U1|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S16|U1|dffs\(5),
	datad => \U0|S18|U1|dffs\(5),
	combout => \U0|M0|auto_generated|_~137_combout\);

-- Location: LCCOMB_X19_Y20_N4
\U0|M0|auto_generated|_~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~138_combout\ = (\addr~combout\(0) & ((\U0|M0|auto_generated|_~137_combout\ & ((\U0|S19|U1|dffs\(5)))) # (!\U0|M0|auto_generated|_~137_combout\ & (\U0|S17|U1|dffs\(5))))) # (!\addr~combout\(0) & 
-- (((\U0|M0|auto_generated|_~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \U0|S19|U1|dffs\(5),
	datad => \U0|M0|auto_generated|_~137_combout\,
	combout => \U0|M0|auto_generated|_~138_combout\);

-- Location: LCCOMB_X22_Y20_N12
\U0|M0|auto_generated|result_node[5]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~99_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S27|U1|dffs\(5)))) # (!\addr~combout\(0) & (\U0|S26|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S26|U1|dffs\(5),
	datac => \U0|S27|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[5]~99_combout\);

-- Location: LCCOMB_X21_Y23_N6
\U0|M0|auto_generated|_~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~142_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S34|U1|dffs\(5)))) # (!\addr~combout\(1) & (\U0|S32|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S32|U1|dffs\(5),
	datab => \U0|S34|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~142_combout\);

-- Location: LCCOMB_X21_Y23_N12
\U0|M0|auto_generated|_~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~143_combout\ = (\addr~combout\(0) & ((\U0|M0|auto_generated|_~142_combout\ & (\U0|S35|U1|dffs\(5))) # (!\U0|M0|auto_generated|_~142_combout\ & ((\U0|S33|U1|dffs\(5)))))) # (!\addr~combout\(0) & 
-- (((\U0|M0|auto_generated|_~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(5),
	datab => \U0|S33|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \U0|M0|auto_generated|_~142_combout\,
	combout => \U0|M0|auto_generated|_~143_combout\);

-- Location: LCCOMB_X13_Y21_N22
\U0|M0|auto_generated|_~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~145_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S45|U1|dffs\(5)))) # (!\addr~combout\(0) & (\U0|S44|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S44|U1|dffs\(5),
	datab => \U0|S45|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~145_combout\);

-- Location: LCCOMB_X12_Y21_N30
\U0|M0|auto_generated|_~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~146_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S47|U1|dffs\(5))) # (!\addr~combout\(0) & ((\U0|S46|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S47|U1|dffs\(5),
	datab => \U0|S46|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~146_combout\);

-- Location: LCCOMB_X13_Y21_N20
\U0|M0|auto_generated|_~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~147_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|_~145_combout\) # (\U0|M0|auto_generated|_~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|_~145_combout\,
	datac => \U0|M0|auto_generated|_~146_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~147_combout\);

-- Location: LCCOMB_X13_Y21_N14
\U0|M0|auto_generated|_~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~148_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S41|U1|dffs\(5)))) # (!\addr~combout\(0) & (\U0|S40|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S40|U1|dffs\(5),
	datab => \U0|S41|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~148_combout\);

-- Location: LCCOMB_X13_Y21_N28
\U0|M0|auto_generated|_~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~149_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S43|U1|dffs\(5)))) # (!\addr~combout\(0) & (\U0|S42|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S42|U1|dffs\(5),
	datab => \addr~combout\(1),
	datac => \U0|S43|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~149_combout\);

-- Location: LCCOMB_X13_Y21_N10
\U0|M0|auto_generated|_~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~150_combout\ = (\U0|M0|auto_generated|_~147_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|_~149_combout\) # (\U0|M0|auto_generated|_~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~147_combout\,
	datab => \U0|M0|auto_generated|_~149_combout\,
	datac => \U0|M0|auto_generated|_~148_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~150_combout\);

-- Location: LCCOMB_X15_Y26_N6
\U0|S6|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S5|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S7|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S5|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S5|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S7|U1|dffs\(0),
	combout => \U0|S6|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y26_N8
\U0|S5|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S4|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S6|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S4|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S4|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S6|U1|dffs\(0),
	combout => \U0|S5|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y26_N30
\U0|S4|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S3|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S5|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S3|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S3|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S5|U1|dffs\(0),
	combout => \U0|S4|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y26_N18
\U0|S7|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S6|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S8|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S6|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S6|U1|dffs\(0),
	datad => \U0|S8|U1|dffs\(0),
	combout => \U0|S7|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y26_N8
\U0|S2|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S1|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S3|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S1|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S1|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S3|U1|dffs\(0),
	combout => \U0|S2|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y26_N14
\U0|S1|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S0|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S2|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S0|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S2|U1|dffs\(0),
	datad => \U0|S0|U1|dffs\(0),
	combout => \U0|S1|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y26_N20
\U0|S0|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\data~combout\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S1|U1|dffs\(0))) # (!\mode~combout\(1) & ((\data~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S1|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \data~combout\(0),
	combout => \U0|S0|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y26_N2
\U0|S3|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S2|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S4|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S2|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S2|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S4|U1|dffs\(0),
	combout => \U0|S3|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y22_N18
\U0|S9|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S8|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S10|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S8|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S10|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S8|U1|dffs\(0),
	combout => \U0|S9|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y25_N2
\U0|S8|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S7|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S9|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S7|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S7|U1|dffs\(0),
	datab => \mode~combout\(1),
	datac => \U0|S9|U1|dffs\(0),
	datad => \mode~combout\(0),
	combout => \U0|S8|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y22_N20
\U0|S20|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S19|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S21|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S19|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S19|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S21|U1|dffs\(0),
	combout => \U0|S20|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y19_N26
\U0|S37|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S36|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S38|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S36|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S38|U1|dffs\(0),
	datad => \U0|S36|U1|dffs\(0),
	combout => \U0|S37|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X21_Y23_N24
\U0|S33|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S32|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S34|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S32|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S34|U1|dffs\(0),
	datad => \U0|S32|U1|dffs\(0),
	combout => \U0|S33|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y25_N10
\U0|S1|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S0|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S2|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S0|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S2|U1|dffs\(1),
	datad => \U0|S0|U1|dffs\(1),
	combout => \U0|S1|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X20_Y25_N16
\U0|S0|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\data~combout\(1))) # (!\mode~combout\(0) & ((\U0|S1|U1|dffs\(1)))))) # (!\mode~combout\(1) & (((\data~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \data~combout\(1),
	datad => \U0|S1|U1|dffs\(1),
	combout => \U0|S0|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y22_N18
\U0|S13|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S12|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S14|U1|dffs\(1)))))) # (!\mode~combout\(1) & (((\U0|S12|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S12|U1|dffs\(1),
	datad => \U0|S14|U1|dffs\(1),
	combout => \U0|S13|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y21_N0
\U0|S12|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S11|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S13|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S11|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S11|U1|dffs\(1),
	datab => \U0|S13|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S12|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y25_N30
\U0|S9|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S8|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S10|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S8|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S10|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S8|U1|dffs\(1),
	combout => \U0|S9|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y25_N24
\U0|S8|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S7|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S9|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S7|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S7|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S9|U1|dffs\(1),
	combout => \U0|S8|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y21_N26
\U0|S15|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S14|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S16|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S14|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S14|U1|dffs\(1),
	datad => \U0|S16|U1|dffs\(1),
	combout => \U0|S15|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y22_N12
\U0|S14|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S13|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S15|U1|dffs\(1)))))) # (!\mode~combout\(1) & (((\U0|S13|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S13|U1|dffs\(1),
	datad => \U0|S15|U1|dffs\(1),
	combout => \U0|S14|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y21_N28
\U0|S11|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S10|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S12|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S10|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \U0|S10|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \U0|S11|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X14_Y22_N22
\U0|S10|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S9|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S11|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S9|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S11|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \U0|S9|U1|dffs\(1),
	combout => \U0|S10|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X12_Y22_N22
\U0|S49|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S48|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S50|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S48|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S50|U1|dffs\(1),
	datad => \U0|S48|U1|dffs\(1),
	combout => \U0|S49|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y24_N30
\U0|S18|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S17|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S19|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S17|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S19|U1|dffs\(1),
	combout => \U0|S18|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y24_N8
\U0|S17|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S16|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S18|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S16|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S16|U1|dffs\(1),
	datad => \U0|S18|U1|dffs\(1),
	combout => \U0|S17|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X20_Y22_N14
\U0|S16|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S15|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S17|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S15|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S17|U1|dffs\(1),
	datad => \U0|S15|U1|dffs\(1),
	combout => \U0|S16|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X14_Y21_N10
\U0|S39|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S38|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S40|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S38|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S38|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S40|U1|dffs\(1),
	combout => \U0|S39|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X14_Y20_N28
\U0|S34|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S33|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S35|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S33|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S33|U1|dffs\(1),
	combout => \U0|S34|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X14_Y20_N16
\U0|S35|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S34|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S36|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S34|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S36|U1|dffs\(1),
	datad => \U0|S34|U1|dffs\(1),
	combout => \U0|S35|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X14_Y24_N18
\U0|S10|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S9|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S11|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S9|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S11|U1|dffs\(2),
	datad => \U0|S9|U1|dffs\(2),
	combout => \U0|S10|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X20_Y23_N10
\U0|S31|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S30|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S32|U1|dffs\(2)))))) # (!\mode~combout\(1) & (((\U0|S30|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S30|U1|dffs\(2),
	datad => \U0|S32|U1|dffs\(2),
	combout => \U0|S31|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X20_Y23_N16
\U0|S32|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S31|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S33|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S31|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S33|U1|dffs\(2),
	datad => \U0|S31|U1|dffs\(2),
	combout => \U0|S32|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y25_N24
\U0|S47|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S46|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S48|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S46|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S46|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \U0|S48|U1|dffs\(2),
	combout => \U0|S47|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y25_N2
\U0|S45|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S44|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S46|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S44|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S44|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \U0|S46|U1|dffs\(2),
	combout => \U0|S45|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y25_N4
\U0|S46|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S45|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S47|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S45|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S45|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S47|U1|dffs\(2),
	combout => \U0|S46|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y25_N2
\U0|S44|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S43|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S45|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S43|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S45|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(2),
	combout => \U0|S44|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y25_N20
\U0|S43|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S42|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S44|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S42|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S44|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S42|U1|dffs\(2),
	combout => \U0|S43|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y23_N8
\U0|S42|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S41|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S43|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S41|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(2),
	combout => \U0|S42|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y26_N24
\U0|S7|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S6|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S8|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S6|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S8|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \U0|S6|U1|dffs\(3),
	combout => \U0|S7|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y22_N22
\U0|S15|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S14|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S16|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S14|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S14|U1|dffs\(3),
	datad => \U0|S16|U1|dffs\(3),
	combout => \U0|S15|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y22_N10
\U0|S13|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S12|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S14|U1|dffs\(3)))))) # (!\mode~combout\(1) & (((\U0|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S12|U1|dffs\(3),
	datad => \U0|S14|U1|dffs\(3),
	combout => \U0|S13|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y25_N30
\U0|S14|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S13|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S15|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S13|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S13|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S15|U1|dffs\(3),
	combout => \U0|S14|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y25_N28
\U0|S12|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S11|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S13|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S11|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S13|U1|dffs\(3),
	datac => \U0|S11|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \U0|S12|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y22_N24
\U0|S11|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S10|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S12|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S10|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S10|U1|dffs\(3),
	datad => \U0|S12|U1|dffs\(3),
	combout => \U0|S11|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y25_N18
\U0|S9|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S8|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S10|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S8|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S10|U1|dffs\(3),
	combout => \U0|S9|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y25_N22
\U0|S10|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S9|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S11|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S9|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S11|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S9|U1|dffs\(3),
	combout => \U0|S10|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X20_Y25_N0
\U0|S8|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S7|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S9|U1|dffs\(3)))))) # (!\mode~combout\(1) & (((\U0|S7|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S7|U1|dffs\(3),
	datad => \U0|S9|U1|dffs\(3),
	combout => \U0|S8|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y24_N0
\U0|S48|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S47|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S49|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S47|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S49|U1|dffs\(3),
	datad => \U0|S47|U1|dffs\(3),
	combout => \U0|S48|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y21_N22
\U0|S22|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S21|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S23|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S21|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S23|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \U0|S21|U1|dffs\(3),
	combout => \U0|S22|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X20_Y22_N28
\U0|S21|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S20|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S22|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S20|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S20|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S22|U1|dffs\(3),
	combout => \U0|S21|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y21_N28
\U0|S20|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (\U0|S19|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S21|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S19|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S19|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \U0|S21|U1|dffs\(3),
	combout => \U0|S20|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X22_Y21_N16
\U0|S23|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S22|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S24|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S22|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S24|U1|dffs\(3),
	datad => \U0|S22|U1|dffs\(3),
	combout => \U0|S23|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y20_N24
\U0|S18|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S17|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S19|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S17|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S19|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S17|U1|dffs\(3),
	combout => \U0|S18|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y21_N2
\U0|S17|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S16|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S18|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S16|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S16|U1|dffs\(3),
	datad => \U0|S18|U1|dffs\(3),
	combout => \U0|S17|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X21_Y22_N24
\U0|S16|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S15|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S17|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S15|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \U0|S15|U1|dffs\(3),
	datad => \mode~combout\(0),
	combout => \U0|S16|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y21_N0
\U0|S19|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S18|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S20|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S18|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S18|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S20|U1|dffs\(3),
	combout => \U0|S19|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X21_Y22_N20
\U0|S26|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S25|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S27|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S25|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S27|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \U0|S25|U1|dffs\(3),
	datad => \mode~combout\(0),
	combout => \U0|S26|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y21_N22
\U0|S47|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S46|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S48|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S46|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S46|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S48|U1|dffs\(3),
	combout => \U0|S47|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y24_N14
\U0|S15|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S14|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S16|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S14|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S14|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S16|U1|dffs\(4),
	combout => \U0|S15|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y24_N16
\U0|S13|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S12|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S14|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S12|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S14|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S12|U1|dffs\(4),
	combout => \U0|S13|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y24_N18
\U0|S14|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S13|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S15|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S13|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S13|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S15|U1|dffs\(4),
	combout => \U0|S14|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y24_N8
\U0|S12|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S11|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S13|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S11|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S11|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S13|U1|dffs\(4),
	combout => \U0|S12|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y24_N0
\U0|S10|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S9|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S11|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S9|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S11|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S9|U1|dffs\(4),
	combout => \U0|S10|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X13_Y22_N22
\U0|S51|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S51|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\U0|S50|U1|dffs\(4) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S50|U1|dffs\(4),
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S51|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y21_N0
\U0|S20|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S19|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S21|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S19|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S21|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S19|U1|dffs\(4),
	combout => \U0|S20|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y20_N26
\U0|S18|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (\U0|S17|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S19|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S17|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S19|U1|dffs\(4),
	combout => \U0|S18|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y21_N20
\U0|S17|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S16|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S18|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S16|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S18|U1|dffs\(4),
	datad => \U0|S16|U1|dffs\(4),
	combout => \U0|S17|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y24_N26
\U0|S16|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S15|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S17|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S15|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S15|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S17|U1|dffs\(4),
	combout => \U0|S16|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y21_N6
\U0|S19|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (\U0|S18|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S20|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S18|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S18|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \U0|S20|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \U0|S19|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X20_Y20_N18
\U0|S28|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S27|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S29|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\U0|S27|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S27|U1|dffs\(4),
	datad => \U0|S29|U1|dffs\(4),
	combout => \U0|S28|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y20_N10
\U0|S45|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (\U0|S44|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S46|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S44|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S44|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S46|U1|dffs\(4),
	combout => \U0|S45|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X14_Y21_N24
\U0|S44|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S43|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S45|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S43|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S45|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(4),
	combout => \U0|S44|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y20_N2
\U0|S46|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S45|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S47|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S45|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S47|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S45|U1|dffs\(4),
	combout => \U0|S46|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X14_Y22_N2
\U0|S41|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S40|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S42|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S40|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S40|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S42|U1|dffs\(4),
	combout => \U0|S41|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X13_Y23_N10
\U0|S40|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S39|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S41|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S39|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(4),
	datab => \U0|S39|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S40|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y20_N4
\U0|S43|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S42|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S44|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S42|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S44|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S42|U1|dffs\(4),
	combout => \U0|S43|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X14_Y21_N18
\U0|S42|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S41|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S43|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S41|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S41|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(4),
	combout => \U0|S42|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y26_N0
\U0|S6|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S5|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S7|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S5|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S7|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S5|U1|dffs\(5),
	combout => \U0|S6|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y22_N6
\U0|S5|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S4|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S6|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S4|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S4|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S6|U1|dffs\(5),
	combout => \U0|S5|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y26_N30
\U0|S4|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (\U0|S3|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S5|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S3|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S3|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \U0|S5|U1|dffs\(5),
	combout => \U0|S4|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y24_N22
\U0|S7|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S6|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S8|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S6|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S8|U1|dffs\(5),
	datad => \U0|S6|U1|dffs\(5),
	combout => \U0|S7|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N26
\U0|S15|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S14|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S16|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S14|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S14|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \U0|S16|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \U0|S15|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N0
\U0|S13|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S12|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S14|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S12|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S14|U1|dffs\(5),
	datad => \U0|S12|U1|dffs\(5),
	combout => \U0|S13|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N14
\U0|S14|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S13|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S15|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S13|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S15|U1|dffs\(5),
	datad => \U0|S13|U1|dffs\(5),
	combout => \U0|S14|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N20
\U0|S12|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S11|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S13|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S11|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S11|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S13|U1|dffs\(5),
	combout => \U0|S12|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N18
\U0|S11|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S10|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S12|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S10|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S10|U1|dffs\(5),
	datab => \U0|S12|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S11|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N12
\U0|S9|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S8|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S10|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S8|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S10|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S8|U1|dffs\(5),
	combout => \U0|S9|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y22_N2
\U0|S10|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S9|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S11|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S9|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S11|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S9|U1|dffs\(5),
	combout => \U0|S10|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y26_N18
\U0|S8|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S7|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S9|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S7|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S7|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S9|U1|dffs\(5),
	combout => \U0|S8|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y20_N16
\U0|S17|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (\U0|S16|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S18|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S16|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S16|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S18|U1|dffs\(5),
	combout => \U0|S17|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y20_N2
\U0|S18|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S17|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S19|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S17|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \U0|S19|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \U0|S18|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y20_N12
\U0|S16|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S15|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S17|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S15|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S15|U1|dffs\(5),
	combout => \U0|S16|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y20_N22
\U0|S19|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S18|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S20|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S18|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S18|U1|dffs\(5),
	combout => \U0|S19|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X22_Y20_N20
\U0|S27|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S26|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S28|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S26|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S28|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \U0|S26|U1|dffs\(5),
	combout => \U0|S27|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y23_N0
\U0|S36|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S35|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S37|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S35|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S37|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S35|U1|dffs\(5),
	combout => \U0|S36|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X21_Y23_N2
\U0|S33|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S32|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S34|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S32|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S32|U1|dffs\(5),
	datab => \U0|S34|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S33|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y23_N30
\U0|S34|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S33|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S35|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S33|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S33|U1|dffs\(5),
	combout => \U0|S34|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X20_Y23_N30
\U0|S32|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S31|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S33|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S31|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S31|U1|dffs\(5),
	datac => \U0|S33|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \U0|S32|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y23_N30
\U0|S35|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S34|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S36|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S34|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S34|U1|dffs\(5),
	datad => \U0|S36|U1|dffs\(5),
	combout => \U0|S35|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y21_N16
\U0|S40|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S39|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S41|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S39|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S41|U1|dffs\(5),
	datad => \U0|S39|U1|dffs\(5),
	combout => \U0|S40|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: LCCOMB_X19_Y26_N24
\U0|S6|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U1|dffs[0]~feeder_combout\ = \U0|S6|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S6|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S6|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y26_N2
\U0|S5|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U1|dffs[0]~feeder_combout\ = \U0|S5|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S5|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S5|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N8
\U0|S4|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U1|dffs[0]~feeder_combout\ = \U0|S4|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S4|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S4|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y24_N24
\U0|S7|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U1|dffs[0]~feeder_combout\ = \U0|S7|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S7|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S7|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y26_N20
\U0|S2|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U1|dffs[0]~feeder_combout\ = \U0|S2|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S2|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S2|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y26_N20
\U0|S1|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U1|dffs[0]~feeder_combout\ = \U0|S1|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S1|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S1|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y24_N2
\U0|S0|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U1|dffs[0]~feeder_combout\ = \U0|S0|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S0|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S0|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y26_N20
\U0|S3|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U1|dffs[0]~feeder_combout\ = \U0|S3|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S3|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S3|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y26_N10
\U0|S8|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U1|dffs[0]~feeder_combout\ = \U0|S8|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S8|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S8|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y26_N16
\U0|S1|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U1|dffs[1]~feeder_combout\ = \U0|S1|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S1|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S1|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y24_N10
\U0|S0|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U1|dffs[1]~feeder_combout\ = \U0|S0|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S0|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S0|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N28
\U0|S13|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U1|dffs[1]~feeder_combout\ = \U0|S13|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S13|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S13|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N16
\U0|S12|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U1|dffs[1]~feeder_combout\ = \U0|S12|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S12|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S12|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y25_N26
\U0|S9|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U1|dffs[1]~feeder_combout\ = \U0|S9|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S9|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S9|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y25_N30
\U0|S8|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U1|dffs[1]~feeder_combout\ = \U0|S8|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S8|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S8|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N26
\U0|S15|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U1|dffs[1]~feeder_combout\ = \U0|S15|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S15|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S15|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N22
\U0|S14|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U1|dffs[1]~feeder_combout\ = \U0|S14|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S14|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S14|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N6
\U0|S11|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U1|dffs[1]~feeder_combout\ = \U0|S11|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S11|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S11|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N26
\U0|S10|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U1|dffs[1]~feeder_combout\ = \U0|S10|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S10|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S10|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X12_Y22_N6
\U0|S49|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U1|dffs[1]~feeder_combout\ = \U0|S49|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S49|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S49|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N10
\U0|S18|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U1|dffs[1]~feeder_combout\ = \U0|S18|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S18|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S18|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N14
\U0|S17|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U1|dffs[1]~feeder_combout\ = \U0|S17|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S17|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S17|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N18
\U0|S16|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U1|dffs[1]~feeder_combout\ = \U0|S16|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S16|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S16|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y23_N14
\U0|S39|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U1|dffs[1]~feeder_combout\ = \U0|S39|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S39|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S39|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N12
\U0|S34|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U1|dffs[1]~feeder_combout\ = \U0|S34|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S34|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S34|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N20
\U0|S35|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U1|dffs[1]~feeder_combout\ = \U0|S35|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S35|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y22_N12
\U0|S31|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U1|dffs[2]~feeder_combout\ = \U0|S31|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S31|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S31|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y25_N8
\U0|S47|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U1|dffs[2]~feeder_combout\ = \U0|S47|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S47|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S47|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y21_N10
\U0|S45|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U1|dffs[2]~feeder_combout\ = \U0|S45|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S45|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S45|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y25_N28
\U0|S46|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U1|dffs[2]~feeder_combout\ = \U0|S46|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S46|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S46|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y25_N26
\U0|S44|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U1|dffs[2]~feeder_combout\ = \U0|S44|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S44|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S44|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N18
\U0|S43|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U1|dffs[2]~feeder_combout\ = \U0|S43|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S43|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S43|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N4
\U0|S42|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U1|dffs[2]~feeder_combout\ = \U0|S42|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S42|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S42|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N2
\U0|S15|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U1|dffs[3]~feeder_combout\ = \U0|S15|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S15|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S15|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N20
\U0|S13|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U1|dffs[3]~feeder_combout\ = \U0|S13|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S13|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S13|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N30
\U0|S14|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U1|dffs[3]~feeder_combout\ = \U0|S14|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S14|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S14|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N24
\U0|S12|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U1|dffs[3]~feeder_combout\ = \U0|S12|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S12|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S12|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N12
\U0|S11|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U1|dffs[3]~feeder_combout\ = \U0|S11|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S11|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S11|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y25_N14
\U0|S9|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U1|dffs[3]~feeder_combout\ = \U0|S9|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S9|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S9|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N6
\U0|S10|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U1|dffs[3]~feeder_combout\ = \U0|S10|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S10|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S10|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y26_N2
\U0|S8|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U1|dffs[3]~feeder_combout\ = \U0|S8|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S8|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N20
\U0|S22|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U1|dffs[3]~feeder_combout\ = \U0|S22|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S22|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S22|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N0
\U0|S21|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U1|dffs[3]~feeder_combout\ = \U0|S21|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S21|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S21|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N22
\U0|S20|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U1|dffs[3]~feeder_combout\ = \U0|S20|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S20|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y21_N18
\U0|S23|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U1|dffs[3]~feeder_combout\ = \U0|S23|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S23|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S23|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N26
\U0|S18|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U1|dffs[3]~feeder_combout\ = \U0|S18|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S18|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S18|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N18
\U0|S17|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U1|dffs[3]~feeder_combout\ = \U0|S17|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S17|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S17|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N22
\U0|S16|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U1|dffs[3]~feeder_combout\ = \U0|S16|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S16|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S16|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N26
\U0|S19|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U1|dffs[3]~feeder_combout\ = \U0|S19|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S19|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S19|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y21_N6
\U0|S47|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U1|dffs[3]~feeder_combout\ = \U0|S47|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S47|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S47|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N30
\U0|S15|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U1|dffs[4]~feeder_combout\ = \U0|S15|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S15|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S15|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N24
\U0|S13|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U1|dffs[4]~feeder_combout\ = \U0|S13|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S13|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S13|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N6
\U0|S14|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U1|dffs[4]~feeder_combout\ = \U0|S14|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S14|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S14|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N28
\U0|S16|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U1|dffs[4]~feeder_combout\ = \U0|S16|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S16|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S16|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y21_N8
\U0|S19|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U1|dffs[4]~feeder_combout\ = \U0|S19|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S19|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S19|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y21_N4
\U0|S45|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U1|dffs[4]~feeder_combout\ = \U0|S45|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S45|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S45|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y25_N20
\U0|S44|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U1|dffs[4]~feeder_combout\ = \U0|S44|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S44|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S44|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N26
\U0|S41|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U1|dffs[4]~feeder_combout\ = \U0|S41|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S41|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N16
\U0|S40|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U1|dffs[4]~feeder_combout\ = \U0|S40|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S40|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S40|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N12
\U0|S43|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U1|dffs[4]~feeder_combout\ = \U0|S43|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S43|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S43|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N20
\U0|S42|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U1|dffs[4]~feeder_combout\ = \U0|S42|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S42|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S42|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y26_N8
\U0|S6|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U1|dffs[5]~feeder_combout\ = \U0|S6|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S6|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S6|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y26_N22
\U0|S5|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U1|dffs[5]~feeder_combout\ = \U0|S5|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S5|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S5|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N14
\U0|S4|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U1|dffs[5]~feeder_combout\ = \U0|S4|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S4|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S4|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y24_N28
\U0|S7|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U1|dffs[5]~feeder_combout\ = \U0|S7|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S7|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S7|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N22
\U0|S15|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U1|dffs[5]~feeder_combout\ = \U0|S15|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S15|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S15|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N12
\U0|S13|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U1|dffs[5]~feeder_combout\ = \U0|S13|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S13|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S13|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N26
\U0|S14|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U1|dffs[5]~feeder_combout\ = \U0|S14|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S14|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S14|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N28
\U0|S12|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U1|dffs[5]~feeder_combout\ = \U0|S12|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S12|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N4
\U0|S11|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U1|dffs[5]~feeder_combout\ = \U0|S11|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S11|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S11|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y25_N28
\U0|S9|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U1|dffs[5]~feeder_combout\ = \U0|S9|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S9|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S9|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N14
\U0|S10|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U1|dffs[5]~feeder_combout\ = \U0|S10|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S10|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S10|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y26_N14
\U0|S8|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U1|dffs[5]~feeder_combout\ = \U0|S8|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S8|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S8|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N10
\U0|S17|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U1|dffs[5]~feeder_combout\ = \U0|S17|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S17|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N22
\U0|S18|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U1|dffs[5]~feeder_combout\ = \U0|S18|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S18|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S18|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N8
\U0|S16|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U1|dffs[5]~feeder_combout\ = \U0|S16|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S16|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S16|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N0
\U0|S19|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U1|dffs[5]~feeder_combout\ = \U0|S19|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S19|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S19|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y23_N18
\U0|S36|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U1|dffs[5]~feeder_combout\ = \U0|S36|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S36|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S36|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N22
\U0|S33|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U1|dffs[5]~feeder_combout\ = \U0|S33|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S33|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S33|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N16
\U0|S34|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U1|dffs[5]~feeder_combout\ = \U0|S34|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S34|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S34|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y23_N26
\U0|S32|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U1|dffs[5]~feeder_combout\ = \U0|S32|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S32|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S32|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N10
\U0|S35|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U1|dffs[5]~feeder_combout\ = \U0|S35|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S35|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S35|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N18
\U0|S40|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U1|dffs[5]~feeder_combout\ = \U0|S40|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S40|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S40|U1|dffs[5]~feeder_combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(5),
	combout => \addr~combout\(5));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(4),
	combout => \addr~combout\(4));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mode(1),
	combout => \mode~combout\(1));

-- Location: LCCOMB_X15_Y23_N12
\U0|S37|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U1|dffs[0]~feeder_combout\ = \U0|S37|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S37|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S37|U1|dffs[0]~feeder_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mode(0),
	combout => \mode~combout\(0));

-- Location: LCCOMB_X22_Y20_N4
\U0|pop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|pop~0_combout\ = (\mode~combout\(0) & !\mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|pop~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(0),
	combout => \addr~combout\(0));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(1),
	combout => \addr~combout\(1));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(2),
	combout => \addr~combout\(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_addr(3),
	combout => \addr~combout\(3));

-- Location: M4K_X17_Y23
\U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100030007000F001F003F007F00FF01FF03FF07FF0FFF1FFF3FFF7FFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:U0|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 32,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y23_N8
\U0|enableArray[37]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[37]~37_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(37),
	combout => \U0|enableArray[37]~37_combout\);

-- Location: LCFF_X15_Y23_N13
\U0|S37|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S37|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S37|U1|dffs\(0));

-- Location: LCCOMB_X16_Y23_N2
\U0|S36|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (\U0|S35|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S37|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S35|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S35|U1|dffs\(0),
	datac => \U0|S37|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \U0|S36|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y23_N24
\U0|S36|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U1|dffs[0]~feeder_combout\ = \U0|S36|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S36|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S36|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y26_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X16_Y23_N12
\U0|enableArray[36]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[36]~38_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(36),
	combout => \U0|enableArray[36]~38_combout\);

-- Location: LCFF_X16_Y23_N25
\U0|S36|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S36|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[36]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S36|U1|dffs\(0));

-- Location: LCCOMB_X21_Y23_N10
\U0|S34|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (\U0|S33|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S35|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S33|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S33|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S35|U1|dffs\(0),
	combout => \U0|S34|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y23_N8
\U0|S34|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U1|dffs[0]~feeder_combout\ = \U0|S34|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S34|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S34|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N0
\U0|enableArray[34]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[34]~40_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(34),
	combout => \U0|enableArray[34]~40_combout\);

-- Location: LCFF_X14_Y23_N9
\U0|S34|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S34|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[34]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S34|U1|dffs\(0));

-- Location: LCCOMB_X16_Y23_N14
\U0|S35|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S34|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S36|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S34|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S36|U1|dffs\(0),
	datad => \U0|S34|U1|dffs\(0),
	combout => \U0|S35|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y23_N16
\U0|S35|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U1|dffs[0]~feeder_combout\ = \U0|S35|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S35|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S35|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N24
\U0|enableArray[35]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[35]~43_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(35),
	combout => \U0|enableArray[35]~43_combout\);

-- Location: LCFF_X18_Y23_N17
\U0|S35|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S35|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S35|U1|dffs\(0));

-- Location: LCCOMB_X21_Y23_N0
\U0|M0|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~27_combout\ = (\U0|M0|auto_generated|_~26_combout\ & ((\U0|S35|U1|dffs\(0)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~26_combout\ & (((\U0|S34|U1|dffs\(0) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~26_combout\,
	datab => \U0|S35|U1|dffs\(0),
	datac => \U0|S34|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~27_combout\);

-- Location: LCCOMB_X21_Y24_N26
\U0|M0|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~28_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\U0|M0|auto_generated|_~16_combout\ & \U0|M0|auto_generated|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~16_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|_~27_combout\,
	combout => \U0|M0|auto_generated|_~28_combout\);

-- Location: LCCOMB_X21_Y24_N20
\U0|M0|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~35_combout\ = (\addr~combout\(5) & \addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(5),
	datac => \addr~combout\(3),
	combout => \U0|M0|auto_generated|_~35_combout\);

-- Location: LCCOMB_X16_Y19_N2
\U0|S38|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S37|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S39|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S37|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S39|U1|dffs\(0),
	datac => \U0|S37|U1|dffs\(0),
	datad => \mode~combout\(0),
	combout => \U0|S38|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\U0|S38|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U1|dffs[0]~feeder_combout\ = \U0|S38|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S38|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S38|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y19_N0
\U0|enableArray[38]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[38]~36_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(38),
	datad => \enable~combout\,
	combout => \U0|enableArray[38]~36_combout\);

-- Location: LCFF_X16_Y19_N21
\U0|S38|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S38|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[38]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S38|U1|dffs\(0));

-- Location: LCCOMB_X16_Y19_N16
\U0|S39|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S38|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S40|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\U0|S38|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S38|U1|dffs\(0),
	datad => \U0|S40|U1|dffs\(0),
	combout => \U0|S39|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y23_N0
\U0|S39|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U1|dffs[0]~feeder_combout\ = \U0|S39|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S39|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S39|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y23_N30
\U0|enableArray[39]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[39]~39_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(39) & \mode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(39),
	datad => \mode~combout\(1),
	combout => \U0|enableArray[39]~39_combout\);

-- Location: LCFF_X13_Y23_N1
\U0|S39|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S39|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S39|U1|dffs\(0));

-- Location: LCCOMB_X14_Y25_N20
\U0|S40|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S39|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S41|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S39|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S39|U1|dffs\(0),
	datad => \U0|S41|U1|dffs\(0),
	combout => \U0|S40|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y23_N30
\U0|S40|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U1|dffs[0]~feeder_combout\ = \U0|S40|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S40|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S40|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N6
\U0|enableArray[40]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[40]~51_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(40),
	combout => \U0|enableArray[40]~51_combout\);

-- Location: LCFF_X16_Y23_N31
\U0|S40|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S40|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[40]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S40|U1|dffs\(0));

-- Location: LCCOMB_X16_Y19_N6
\U0|S41|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S40|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S42|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S40|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S42|U1|dffs\(0),
	datad => \U0|S40|U1|dffs\(0),
	combout => \U0|S41|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y23_N10
\U0|S41|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U1|dffs[0]~feeder_combout\ = \U0|S41|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S41|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S41|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N30
\U0|enableArray[41]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[41]~49_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(41),
	combout => \U0|enableArray[41]~49_combout\);

-- Location: LCFF_X14_Y23_N11
\U0|S41|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S41|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[41]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S41|U1|dffs\(0));

-- Location: LCCOMB_X20_Y25_N22
\U0|S42|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S41|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S43|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\U0|S41|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S41|U1|dffs\(0),
	datad => \U0|S43|U1|dffs\(0),
	combout => \U0|S42|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y23_N2
\U0|S42|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U1|dffs[0]~feeder_combout\ = \U0|S42|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S42|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S42|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N0
\U0|enableArray[42]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[42]~50_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(42),
	datad => \enable~combout\,
	combout => \U0|enableArray[42]~50_combout\);

-- Location: LCFF_X19_Y23_N3
\U0|S42|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S42|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[42]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S42|U1|dffs\(0));

-- Location: LCCOMB_X15_Y21_N24
\U0|S46|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S45|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S47|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S45|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S47|U1|dffs\(0),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S45|U1|dffs\(0),
	combout => \U0|S46|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y25_N16
\U0|S46|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U1|dffs[0]~feeder_combout\ = \U0|S46|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S46|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S46|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y25_N24
\U0|enableArray[46]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[46]~46_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(46),
	combout => \U0|enableArray[46]~46_combout\);

-- Location: LCFF_X16_Y25_N17
\U0|S46|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S46|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S46|U1|dffs\(0));

-- Location: LCCOMB_X14_Y20_N0
\U0|S45|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S44|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S46|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S44|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S46|U1|dffs\(0),
	datad => \U0|S44|U1|dffs\(0),
	combout => \U0|S45|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y21_N30
\U0|S45|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U1|dffs[0]~feeder_combout\ = \U0|S45|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S45|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S45|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N14
\U0|enableArray[45]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[45]~45_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(45),
	combout => \U0|enableArray[45]~45_combout\);

-- Location: LCFF_X15_Y21_N31
\U0|S45|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S45|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S45|U1|dffs\(0));

-- Location: LCCOMB_X16_Y25_N30
\U0|S44|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S43|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S45|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S43|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S45|U1|dffs\(0),
	datad => \U0|S43|U1|dffs\(0),
	combout => \U0|S44|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y25_N22
\U0|S44|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U1|dffs[0]~feeder_combout\ = \U0|S44|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S44|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S44|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y25_N4
\U0|enableArray[44]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[44]~47_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(44),
	combout => \U0|enableArray[44]~47_combout\);

-- Location: LCFF_X16_Y25_N23
\U0|S44|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S44|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[44]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S44|U1|dffs\(0));

-- Location: LCCOMB_X19_Y23_N24
\U0|S43|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (\U0|S42|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S44|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S42|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S42|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \U0|S44|U1|dffs\(0),
	combout => \U0|S43|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y23_N2
\U0|S43|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U1|dffs[0]~feeder_combout\ = \U0|S43|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S43|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S43|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N22
\U0|enableArray[43]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[43]~48_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(43),
	combout => \U0|enableArray[43]~48_combout\);

-- Location: LCFF_X18_Y23_N3
\U0|S43|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S43|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[43]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S43|U1|dffs\(0));

-- Location: LCCOMB_X20_Y25_N30
\U0|M0|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~32_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S43|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S41|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(0),
	datab => \U0|S43|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~32_combout\);

-- Location: LCCOMB_X16_Y19_N12
\U0|M0|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~33_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S42|U1|dffs\(0))) # (!\addr~combout\(1) & ((\U0|S40|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S42|U1|dffs\(0),
	datab => \U0|S40|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~33_combout\);

-- Location: LCCOMB_X16_Y21_N20
\U0|M0|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~34_combout\ = (\U0|M0|auto_generated|_~31_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|_~32_combout\) # (\U0|M0|auto_generated|_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~31_combout\,
	datab => \U0|M0|auto_generated|_~32_combout\,
	datac => \U0|M0|auto_generated|_~33_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~34_combout\);

-- Location: LCCOMB_X21_Y24_N10
\U0|M0|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~36_combout\ = (\U0|M0|auto_generated|_~25_combout\) # ((\U0|M0|auto_generated|_~28_combout\) # ((\U0|M0|auto_generated|_~35_combout\ & \U0|M0|auto_generated|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~25_combout\,
	datab => \U0|M0|auto_generated|_~28_combout\,
	datac => \U0|M0|auto_generated|_~35_combout\,
	datad => \U0|M0|auto_generated|_~34_combout\,
	combout => \U0|M0|auto_generated|_~36_combout\);

-- Location: LCCOMB_X14_Y26_N28
\U0|M0|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~0_combout\ = (!\addr~combout\(4) & !\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \U0|M0|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y24_N4
\U0|S14|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S13|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S15|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S13|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S15|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S13|U1|dffs\(0),
	combout => \U0|S14|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y22_N4
\U0|S14|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U1|dffs[0]~feeder_combout\ = \U0|S14|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S14|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S14|U1|dffs[0]~feeder_combout\);

-- Location: M4K_X17_Y22
\U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000100000000300000000700000000F00000001F00000003F00000007F0000000FF0000001FF0000003FF0000007FF000000FFF000001FFF000003FFF000007FFF00000FFFF00001FFFF00003FFFF00007FFFF0000FFFFF0001FFFFF0003FFFFF0007FFFFF000FFFFFF001FFFFFF003FFFFFF007FFFFFF00FFFFFFF01FFFFFFF03FFFFFFF07FFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF1FFFFFFFF3FFFFFFFF7FFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:U0|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U0|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y22_N14
\U0|enableArray[14]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[14]~12_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(14),
	datad => \enable~combout\,
	combout => \U0|enableArray[14]~12_combout\);

-- Location: LCFF_X16_Y22_N5
\U0|S14|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S14|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S14|U1|dffs\(0));

-- Location: LCCOMB_X18_Y25_N8
\U0|S9|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U1|dffs[0]~feeder_combout\ = \U0|S9|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S9|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S9|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y25_N4
\U0|enableArray[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[9]~11_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(9),
	combout => \U0|enableArray[9]~11_combout\);

-- Location: LCFF_X18_Y25_N9
\U0|S9|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S9|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S9|U1|dffs\(0));

-- Location: LCCOMB_X15_Y23_N20
\U0|S10|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S9|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S11|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S9|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S11|U1|dffs\(0),
	datad => \U0|S9|U1|dffs\(0),
	combout => \U0|S10|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y22_N0
\U0|S10|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U1|dffs[0]~feeder_combout\ = \U0|S10|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S10|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S10|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y22_N20
\U0|enableArray[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[10]~14_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(10),
	combout => \U0|enableArray[10]~14_combout\);

-- Location: LCFF_X14_Y22_N1
\U0|S10|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S10|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S10|U1|dffs\(0));

-- Location: LCCOMB_X14_Y22_N16
\U0|S11|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S10|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S12|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S10|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S10|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S12|U1|dffs\(0),
	combout => \U0|S11|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y21_N16
\U0|S11|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U1|dffs[0]~feeder_combout\ = \U0|S11|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S11|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S11|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N30
\U0|enableArray[11]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[11]~10_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(11),
	combout => \U0|enableArray[11]~10_combout\);

-- Location: LCFF_X16_Y21_N17
\U0|S11|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S11|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S11|U1|dffs\(0));

-- Location: LCCOMB_X16_Y24_N10
\U0|S12|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S11|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S13|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S11|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S11|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S13|U1|dffs\(0),
	combout => \U0|S12|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y22_N2
\U0|S12|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U1|dffs[0]~feeder_combout\ = \U0|S12|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S12|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S12|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y22_N8
\U0|enableArray[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[12]~13_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(12),
	combout => \U0|enableArray[12]~13_combout\);

-- Location: LCFF_X16_Y22_N3
\U0|S12|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S12|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S12|U1|dffs\(0));

-- Location: LCCOMB_X14_Y26_N10
\U0|S13|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S12|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S14|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S12|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S14|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S12|U1|dffs\(0),
	combout => \U0|S13|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y24_N18
\U0|S13|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U1|dffs[0]~feeder_combout\ = \U0|S13|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S13|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S13|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N14
\U0|enableArray[13]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[13]~9_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(13),
	combout => \U0|enableArray[13]~9_combout\);

-- Location: LCFF_X16_Y24_N19
\U0|S13|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S13|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S13|U1|dffs\(0));

-- Location: LCCOMB_X20_Y22_N18
\U0|S20|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U1|dffs[0]~feeder_combout\ = \U0|S20|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S20|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y22_N6
\U0|enableArray[20]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[20]~22_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(20),
	combout => \U0|enableArray[20]~22_combout\);

-- Location: LCFF_X20_Y22_N19
\U0|S20|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S20|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S20|U1|dffs\(0));

-- Location: LCCOMB_X20_Y21_N28
\U0|S19|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S18|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S20|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S18|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S18|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S20|U1|dffs\(0),
	combout => \U0|S19|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y21_N24
\U0|S19|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U1|dffs[0]~feeder_combout\ = \U0|S19|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S19|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S19|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N4
\U0|enableArray[19]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[19]~27_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(19),
	combout => \U0|enableArray[19]~27_combout\);

-- Location: LCFF_X19_Y21_N25
\U0|S19|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S19|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S19|U1|dffs\(0));

-- Location: LCCOMB_X22_Y20_N14
\U0|S18|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S17|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S19|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S17|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S17|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S19|U1|dffs\(0),
	combout => \U0|S18|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y20_N18
\U0|S18|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U1|dffs[0]~feeder_combout\ = \U0|S18|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S18|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S18|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N30
\U0|enableArray[18]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[18]~24_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(18),
	combout => \U0|enableArray[18]~24_combout\);

-- Location: LCFF_X18_Y20_N19
\U0|S18|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S18|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S18|U1|dffs\(0));

-- Location: LCCOMB_X20_Y21_N22
\U0|S17|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S16|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S18|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S16|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S18|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S16|U1|dffs\(0),
	combout => \U0|S17|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\U0|S17|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U1|dffs[0]~feeder_combout\ = \U0|S17|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S17|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S17|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N16
\U0|enableArray[17]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[17]~25_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(17),
	datad => \mode~combout\(0),
	combout => \U0|enableArray[17]~25_combout\);

-- Location: LCFF_X19_Y20_N29
\U0|S17|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S17|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S17|U1|dffs\(0));

-- Location: LCCOMB_X20_Y24_N2
\U0|S16|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S15|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S17|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S15|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S15|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S17|U1|dffs\(0),
	combout => \U0|S16|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X21_Y22_N0
\U0|S16|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U1|dffs[0]~feeder_combout\ = \U0|S16|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S16|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S16|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N30
\U0|enableArray[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[16]~26_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(16),
	combout => \U0|enableArray[16]~26_combout\);

-- Location: LCFF_X21_Y22_N1
\U0|S16|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S16|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S16|U1|dffs\(0));

-- Location: LCCOMB_X19_Y23_N22
\U0|S15|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (\U0|S14|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S16|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S14|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S14|U1|dffs\(0),
	datac => \U0|S16|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \U0|S15|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y24_N16
\U0|S15|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U1|dffs[0]~feeder_combout\ = \U0|S15|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S15|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S15|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N0
\U0|enableArray[15]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[15]~8_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(15),
	combout => \U0|enableArray[15]~8_combout\);

-- Location: LCFF_X16_Y24_N17
\U0|S15|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S15|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S15|U1|dffs\(0));

-- Location: LCCOMB_X16_Y24_N6
\U0|M0|auto_generated|result_node[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~2_combout\ = (\addr~combout\(2) & ((\addr~combout\(1) & ((\U0|S15|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S13|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S13|U1|dffs\(0),
	datac => \U0|S15|U1|dffs\(0),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X15_Y25_N14
\U0|M0|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~4_combout\ = (\addr~combout\(0) & ((\U0|M0|auto_generated|result_node[0]~3_combout\) # (\U0|M0|auto_generated|result_node[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[0]~3_combout\,
	datac => \addr~combout\(0),
	datad => \U0|M0|auto_generated|result_node[0]~2_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X14_Y26_N16
\U0|M0|auto_generated|result_node[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~5_combout\ = (\addr~combout\(2) & ((\addr~combout\(1) & ((\U0|S14|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S12|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U1|dffs\(0),
	datab => \U0|S14|U1|dffs\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X14_Y25_N12
\U0|M0|auto_generated|result_node[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~7_combout\ = (\U0|M0|auto_generated|result_node[0]~4_combout\) # ((!\addr~combout\(0) & ((\U0|M0|auto_generated|result_node[0]~6_combout\) # (\U0|M0|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[0]~6_combout\,
	datab => \U0|M0|auto_generated|result_node[0]~4_combout\,
	datac => \U0|M0|auto_generated|result_node[0]~5_combout\,
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X14_Y25_N26
\U0|M0|auto_generated|result_node[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~8_combout\ = (\U0|M0|auto_generated|result_node[0]~0_combout\ & ((\U0|M0|auto_generated|result_node[0]~1_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[0]~1_combout\,
	datab => \addr~combout\(3),
	datac => \U0|M0|auto_generated|result_node[0]~0_combout\,
	datad => \U0|M0|auto_generated|result_node[0]~7_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X12_Y22_N24
\U0|S50|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S49|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S51|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S49|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S51|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \U0|S49|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \U0|S50|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y22_N16
\U0|S50|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U1|dffs[0]~feeder_combout\ = \U0|S50|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S50|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S50|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y22_N26
\U0|enableArray[50]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[50]~16_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(50),
	combout => \U0|enableArray[50]~16_combout\);

-- Location: LCFF_X13_Y22_N17
\U0|S50|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S50|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S50|U1|dffs\(0));

-- Location: LCCOMB_X12_Y22_N30
\U0|S49|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S48|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S50|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S48|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S50|U1|dffs\(0),
	datad => \U0|S48|U1|dffs\(0),
	combout => \U0|S49|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X12_Y22_N16
\U0|S49|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U1|dffs[0]~feeder_combout\ = \U0|S49|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S49|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S49|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y22_N20
\U0|enableArray[49]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[49]~17_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(49),
	combout => \U0|enableArray[49]~17_combout\);

-- Location: LCFF_X12_Y22_N17
\U0|S49|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S49|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S49|U1|dffs\(0));

-- Location: LCCOMB_X15_Y21_N2
\U0|S47|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S46|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S48|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S46|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S46|U1|dffs\(0),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S48|U1|dffs\(0),
	combout => \U0|S47|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y21_N16
\U0|S47|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U1|dffs[0]~feeder_combout\ = \U0|S47|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S47|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S47|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y23_N20
\U0|enableArray[47]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[47]~44_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(47) & \mode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(47),
	datad => \mode~combout\(1),
	combout => \U0|enableArray[47]~44_combout\);

-- Location: LCFF_X15_Y21_N17
\U0|S47|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S47|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[47]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S47|U1|dffs\(0));

-- Location: LCCOMB_X16_Y21_N8
\U0|S48|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (((\U0|S47|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S49|U1|dffs\(0))) # (!\mode~combout\(1) & ((\U0|S47|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S49|U1|dffs\(0),
	datad => \U0|S47|U1|dffs\(0),
	combout => \U0|S48|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y25_N12
\U0|S48|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U1|dffs[0]~feeder_combout\ = \U0|S48|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S48|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S48|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y25_N20
\U0|enableArray[48]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[48]~18_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(48),
	combout => \U0|enableArray[48]~18_combout\);

-- Location: LCFF_X19_Y25_N13
\U0|S48|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S48|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S48|U1|dffs\(0));

-- Location: LCCOMB_X12_Y22_N4
\U0|M0|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~17_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S49|U1|dffs\(0))) # (!\addr~combout\(0) & ((\U0|S48|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S49|U1|dffs\(0),
	datab => \U0|S48|U1|dffs\(0),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~17_combout\);

-- Location: LCCOMB_X13_Y22_N6
\U0|S51|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S51|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\U0|S50|U1|dffs\(0) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S50|U1|dffs\(0),
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S51|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y22_N0
\U0|enableArray[51]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[51]~19_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(51),
	combout => \U0|enableArray[51]~19_combout\);

-- Location: LCFF_X13_Y22_N7
\U0|S51|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S51|U0|$00000|auto_generated|result_node[0]~0_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S51|U1|dffs\(0));

-- Location: LCCOMB_X12_Y22_N26
\U0|M0|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~18_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~17_combout\ & ((\U0|S51|U1|dffs\(0)))) # (!\U0|M0|auto_generated|_~17_combout\ & (\U0|S50|U1|dffs\(0))))) # (!\addr~combout\(1) & (\U0|M0|auto_generated|_~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|M0|auto_generated|_~17_combout\,
	datac => \U0|S50|U1|dffs\(0),
	datad => \U0|S51|U1|dffs\(0),
	combout => \U0|M0|auto_generated|_~18_combout\);

-- Location: LCCOMB_X13_Y24_N24
\U0|M0|auto_generated|_~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~152_combout\ = ((!\addr~combout\(3) & (\U0|M0|auto_generated|_~18_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|_~18_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~152_combout\);

-- Location: LCCOMB_X20_Y22_N30
\U0|S21|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S20|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S22|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S20|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S22|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S20|U1|dffs\(0),
	combout => \U0|S21|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y22_N12
\U0|S21|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U1|dffs[0]~feeder_combout\ = \U0|S21|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S21|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S21|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N10
\U0|enableArray[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[21]~21_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(21),
	combout => \U0|enableArray[21]~21_combout\);

-- Location: LCFF_X20_Y22_N13
\U0|S21|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S21|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S21|U1|dffs\(0));

-- Location: LCCOMB_X19_Y21_N20
\U0|S22|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S21|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S23|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S21|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S23|U1|dffs\(0),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S21|U1|dffs\(0),
	combout => \U0|S22|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y20_N0
\U0|S22|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U1|dffs[0]~feeder_combout\ = \U0|S22|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S22|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S22|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y20_N24
\U0|enableArray[22]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[22]~20_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(22),
	combout => \U0|enableArray[22]~20_combout\);

-- Location: LCFF_X18_Y20_N1
\U0|S22|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S22|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S22|U1|dffs\(0));

-- Location: LCCOMB_X21_Y21_N30
\U0|S23|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S22|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S24|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S22|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S24|U1|dffs\(0),
	datab => \U0|S22|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S23|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y21_N28
\U0|S23|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U1|dffs[0]~feeder_combout\ = \U0|S23|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S23|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S23|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y21_N10
\U0|enableArray[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[23]~23_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(23),
	combout => \U0|enableArray[23]~23_combout\);

-- Location: LCFF_X18_Y21_N29
\U0|S23|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S23|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S23|U1|dffs\(0));

-- Location: LCCOMB_X21_Y23_N8
\U0|S33|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U1|dffs[0]~feeder_combout\ = \U0|S33|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S33|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S33|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y23_N14
\U0|enableArray[33]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[33]~41_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(33),
	combout => \U0|enableArray[33]~41_combout\);

-- Location: LCFF_X21_Y23_N9
\U0|S33|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S33|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S33|U1|dffs\(0));

-- Location: LCCOMB_X20_Y24_N22
\U0|S32|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S31|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S33|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\U0|S31|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S31|U1|dffs\(0),
	datad => \U0|S33|U1|dffs\(0),
	combout => \U0|S32|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y23_N16
\U0|S32|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U1|dffs[0]~feeder_combout\ = \U0|S32|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S32|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S32|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y23_N14
\U0|enableArray[32]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[32]~42_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(32),
	combout => \U0|enableArray[32]~42_combout\);

-- Location: LCFF_X19_Y23_N17
\U0|S32|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S32|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[32]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S32|U1|dffs\(0));

-- Location: LCCOMB_X20_Y22_N24
\U0|S31|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S30|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S32|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S30|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S32|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S30|U1|dffs\(0),
	combout => \U0|S31|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y22_N0
\U0|S31|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U1|dffs[0]~feeder_combout\ = \U0|S31|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S31|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S31|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N30
\U0|enableArray[31]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[31]~28_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(31),
	combout => \U0|enableArray[31]~28_combout\);

-- Location: LCFF_X19_Y22_N1
\U0|S31|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S31|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S31|U1|dffs\(0));

-- Location: LCCOMB_X20_Y24_N16
\U0|S30|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S29|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S31|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S29|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S31|U1|dffs\(0),
	datad => \U0|S29|U1|dffs\(0),
	combout => \U0|S30|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y20_N16
\U0|S30|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U1|dffs[0]~feeder_combout\ = \U0|S30|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S30|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S30|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y20_N24
\U0|enableArray[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[30]~30_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(30),
	combout => \U0|enableArray[30]~30_combout\);

-- Location: LCFF_X16_Y20_N17
\U0|S30|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S30|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S30|U1|dffs\(0));

-- Location: LCCOMB_X20_Y20_N12
\U0|S29|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S28|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S30|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S28|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S30|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S28|U1|dffs\(0),
	combout => \U0|S29|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y22_N18
\U0|S29|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U1|dffs[0]~feeder_combout\ = \U0|S29|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S29|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S29|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N16
\U0|enableArray[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[29]~29_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(29),
	combout => \U0|enableArray[29]~29_combout\);

-- Location: LCFF_X19_Y22_N19
\U0|S29|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S29|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S29|U1|dffs\(0));

-- Location: LCCOMB_X20_Y20_N10
\U0|S28|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S27|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S29|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S27|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S27|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \U0|S29|U1|dffs\(0),
	combout => \U0|S28|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y20_N6
\U0|S28|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U1|dffs[0]~feeder_combout\ = \U0|S28|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S28|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S28|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y20_N2
\U0|enableArray[28]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[28]~31_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(28),
	combout => \U0|enableArray[28]~31_combout\);

-- Location: LCFF_X16_Y20_N7
\U0|S28|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S28|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S28|U1|dffs\(0));

-- Location: LCCOMB_X21_Y20_N6
\U0|S27|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S26|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S28|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\U0|S26|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S26|U1|dffs\(0),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S28|U1|dffs\(0),
	combout => \U0|S27|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y20_N0
\U0|S27|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U1|dffs[0]~feeder_combout\ = \U0|S27|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S27|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S27|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N16
\U0|enableArray[27]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[27]~32_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(27),
	combout => \U0|enableArray[27]~32_combout\);

-- Location: LCFF_X20_Y20_N1
\U0|S27|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S27|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S27|U1|dffs\(0));

-- Location: LCCOMB_X22_Y21_N0
\U0|S26|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S25|U1|dffs\(0)))) # (!\mode~combout\(0) & (\U0|S27|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\U0|S25|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S27|U1|dffs\(0),
	datad => \U0|S25|U1|dffs\(0),
	combout => \U0|S26|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\U0|S26|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U1|dffs[0]~feeder_combout\ = \U0|S26|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S26|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S26|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y22_N28
\U0|enableArray[26]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[26]~34_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(26),
	combout => \U0|enableArray[26]~34_combout\);

-- Location: LCFF_X22_Y22_N1
\U0|S26|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S26|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S26|U1|dffs\(0));

-- Location: LCCOMB_X21_Y21_N16
\U0|S25|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(0) & (\U0|S24|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S26|U1|dffs\(0)))) # (!\mode~combout\(1) & (\U0|S24|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S24|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S26|U1|dffs\(0),
	combout => \U0|S25|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X22_Y21_N12
\U0|S25|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U1|dffs[0]~feeder_combout\ = \U0|S25|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S25|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S25|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N26
\U0|enableArray[25]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[25]~33_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(25),
	combout => \U0|enableArray[25]~33_combout\);

-- Location: LCFF_X22_Y21_N13
\U0|S25|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S25|U1|dffs[0]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S25|U1|dffs\(0));

-- Location: LCCOMB_X22_Y21_N2
\U0|S24|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S23|U1|dffs\(0))) # (!\mode~combout\(0) & ((\U0|S25|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\U0|S23|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S23|U1|dffs\(0),
	datad => \U0|S25|U1|dffs\(0),
	combout => \U0|S24|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\U0|S24|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U1|dffs[0]~feeder_combout\ = \U0|S24|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S24|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \U0|S24|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X22_Y22_N10
\U0|enableArray[24]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[24]~35_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \enable~combout\,
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(24),
	combout => \U0|enableArray[24]~35_combout\);

-- Location: LCFF_X22_Y22_N15
\U0|S24|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S24|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S24|U1|dffs\(0));

-- Location: LCCOMB_X21_Y21_N24
\U0|M0|auto_generated|result_node[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~14_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\U0|S26|U1|dffs\(0))) # (!\addr~combout\(1) & ((\U0|S24|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S26|U1|dffs\(0),
	datab => \U0|S24|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X20_Y24_N28
\U0|M0|auto_generated|result_node[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~10_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S31|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S29|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S29|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \U0|S31|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X21_Y20_N8
\U0|M0|auto_generated|result_node[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~11_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S30|U1|dffs\(0)))) # (!\addr~combout\(1) & (\U0|S28|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S28|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \U0|S30|U1|dffs\(0),
	combout => \U0|M0|auto_generated|result_node[0]~11_combout\);

-- Location: LCCOMB_X21_Y24_N28
\U0|M0|auto_generated|result_node[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~12_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[0]~10_combout\) # (\U0|M0|auto_generated|result_node[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|result_node[0]~10_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[0]~11_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X21_Y24_N14
\U0|M0|auto_generated|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~15_combout\ = (\U0|M0|auto_generated|result_node[0]~12_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[0]~13_combout\) # (\U0|M0|auto_generated|result_node[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[0]~13_combout\,
	datab => \U0|M0|auto_generated|result_node[0]~14_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[0]~12_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X22_Y20_N8
\U0|M0|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~22_combout\ = (\U0|M0|auto_generated|_~21_combout\ & ((\U0|S19|U1|dffs\(0)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~21_combout\ & (((\U0|S18|U1|dffs\(0) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~21_combout\,
	datab => \U0|S19|U1|dffs\(0),
	datac => \U0|S18|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~22_combout\);

-- Location: LCCOMB_X21_Y24_N22
\U0|M0|auto_generated|result_node[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~9_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\U0|M0|auto_generated|_~20_combout\)) # (!\addr~combout\(2) & ((\U0|M0|auto_generated|_~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~20_combout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \U0|M0|auto_generated|_~22_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~9_combout\);

-- Location: LCCOMB_X21_Y24_N0
\U0|M0|auto_generated|result_node[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~16_combout\ = (\addr~combout\(4) & ((\U0|M0|auto_generated|result_node[0]~9_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|result_node[0]~15_combout\,
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|result_node[0]~9_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X21_Y24_N4
\U0|M0|auto_generated|result_node[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[0]~17_combout\ = (\U0|M0|auto_generated|result_node[0]~8_combout\) # ((\U0|M0|auto_generated|_~36_combout\ & (\U0|M0|auto_generated|_~152_combout\)) # (!\U0|M0|auto_generated|_~36_combout\ & 
-- ((\U0|M0|auto_generated|result_node[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~36_combout\,
	datab => \U0|M0|auto_generated|result_node[0]~8_combout\,
	datac => \U0|M0|auto_generated|_~152_combout\,
	datad => \U0|M0|auto_generated|result_node[0]~16_combout\,
	combout => \U0|M0|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X16_Y26_N18
\U0|S2|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S1|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S3|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S1|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S1|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S3|U1|dffs\(1),
	combout => \U0|S2|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y26_N14
\U0|S2|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U1|dffs[1]~feeder_combout\ = \U0|S2|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S2|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S2|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y26_N6
\U0|enableArray[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[2]~4_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(2),
	combout => \U0|enableArray[2]~4_combout\);

-- Location: LCFF_X16_Y26_N15
\U0|S2|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S2|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S2|U1|dffs\(1));

-- Location: LCCOMB_X19_Y25_N26
\U0|S7|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S6|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S8|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S6|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S6|U1|dffs\(1),
	combout => \U0|S7|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y24_N16
\U0|S7|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U1|dffs[1]~feeder_combout\ = \U0|S7|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S7|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S7|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y24_N12
\U0|enableArray[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[7]~3_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(7),
	combout => \U0|enableArray[7]~3_combout\);

-- Location: LCFF_X18_Y24_N17
\U0|S7|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S7|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S7|U1|dffs\(1));

-- Location: LCCOMB_X20_Y25_N28
\U0|S6|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S5|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S7|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S5|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S7|U1|dffs\(1),
	datad => \U0|S5|U1|dffs\(1),
	combout => \U0|S6|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y26_N20
\U0|S6|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U1|dffs[1]~feeder_combout\ = \U0|S6|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S6|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S6|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N28
\U0|enableArray[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[6]~0_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(6),
	combout => \U0|enableArray[6]~0_combout\);

-- Location: LCFF_X19_Y26_N21
\U0|S6|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S6|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S6|U1|dffs\(1));

-- Location: LCCOMB_X20_Y25_N6
\U0|S5|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S4|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S6|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S4|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S6|U1|dffs\(1),
	datad => \U0|S4|U1|dffs\(1),
	combout => \U0|S5|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y26_N26
\U0|S5|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U1|dffs[1]~feeder_combout\ = \U0|S5|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S5|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S5|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y26_N0
\U0|enableArray[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[5]~1_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(5),
	combout => \U0|enableArray[5]~1_combout\);

-- Location: LCFF_X19_Y26_N27
\U0|S5|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S5|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S5|U1|dffs\(1));

-- Location: LCCOMB_X20_Y25_N8
\U0|S4|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S3|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S5|U1|dffs\(1)))))) # (!\mode~combout\(1) & (((\U0|S3|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S3|U1|dffs\(1),
	datad => \U0|S5|U1|dffs\(1),
	combout => \U0|S4|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y22_N6
\U0|S4|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U1|dffs[1]~feeder_combout\ = \U0|S4|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S4|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S4|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N18
\U0|enableArray[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[4]~2_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(4),
	combout => \U0|enableArray[4]~2_combout\);

-- Location: LCFF_X18_Y22_N7
\U0|S4|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S4|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S4|U1|dffs\(1));

-- Location: LCCOMB_X20_Y25_N2
\U0|S3|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S2|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S4|U1|dffs\(1)))))) # (!\mode~combout\(1) & (((\U0|S2|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S2|U1|dffs\(1),
	datad => \U0|S4|U1|dffs\(1),
	combout => \U0|S3|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y26_N16
\U0|S3|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U1|dffs[1]~feeder_combout\ = \U0|S3|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S3|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S3|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y26_N28
\U0|enableArray[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[3]~7_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \enable~combout\,
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(3),
	combout => \U0|enableArray[3]~7_combout\);

-- Location: LCFF_X18_Y26_N17
\U0|S3|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S3|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S3|U1|dffs\(1));

-- Location: LCCOMB_X20_Y25_N14
\U0|M0|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~40_combout\ = (\U0|M0|auto_generated|_~39_combout\ & ((\U0|S3|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~39_combout\ & (((\U0|S2|U1|dffs\(1) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~39_combout\,
	datab => \U0|S3|U1|dffs\(1),
	datac => \U0|S2|U1|dffs\(1),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~40_combout\);

-- Location: LCCOMB_X20_Y25_N4
\U0|M0|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~37_combout\ = (\addr~combout\(0) & (((\U0|S5|U1|dffs\(1)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S4|U1|dffs\(1) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S4|U1|dffs\(1),
	datab => \U0|S5|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~37_combout\);

-- Location: LCCOMB_X20_Y25_N18
\U0|M0|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~38_combout\ = (\U0|M0|auto_generated|_~37_combout\ & (((\U0|S7|U1|dffs\(1)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~37_combout\ & (\U0|S6|U1|dffs\(1) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S6|U1|dffs\(1),
	datab => \U0|M0|auto_generated|_~37_combout\,
	datac => \U0|S7|U1|dffs\(1),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~38_combout\);

-- Location: LCCOMB_X20_Y25_N24
\U0|M0|auto_generated|result_node[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~18_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~38_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(2),
	datac => \U0|M0|auto_generated|_~40_combout\,
	datad => \U0|M0|auto_generated|_~38_combout\,
	combout => \U0|M0|auto_generated|result_node[1]~18_combout\);

-- Location: LCCOMB_X14_Y25_N16
\U0|M0|auto_generated|result_node[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~25_combout\ = (\U0|M0|auto_generated|result_node[0]~0_combout\ & ((\U0|M0|auto_generated|result_node[1]~18_combout\) # ((\U0|M0|auto_generated|result_node[1]~24_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[1]~24_combout\,
	datab => \addr~combout\(3),
	datac => \U0|M0|auto_generated|result_node[0]~0_combout\,
	datad => \U0|M0|auto_generated|result_node[1]~18_combout\,
	combout => \U0|M0|auto_generated|result_node[1]~25_combout\);

-- Location: LCCOMB_X13_Y22_N14
\U0|S51|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S51|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\U0|S50|U1|dffs\(1) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S50|U1|dffs\(1),
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S51|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X13_Y22_N15
\U0|S51|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S51|U0|$00000|auto_generated|result_node[1]~1_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S51|U1|dffs\(1));

-- Location: LCCOMB_X13_Y22_N2
\U0|S50|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S49|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S51|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S49|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S49|U1|dffs\(1),
	datab => \U0|S51|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S50|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X13_Y22_N12
\U0|S50|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U1|dffs[1]~feeder_combout\ = \U0|S50|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S50|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S50|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X13_Y22_N13
\U0|S50|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S50|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S50|U1|dffs\(1));

-- Location: LCCOMB_X13_Y22_N28
\U0|M0|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~42_combout\ = (\U0|M0|auto_generated|_~41_combout\ & ((\U0|S51|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~41_combout\ & (((\addr~combout\(1) & \U0|S50|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~41_combout\,
	datab => \U0|S51|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \U0|S50|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~42_combout\);

-- Location: LCCOMB_X13_Y24_N22
\U0|M0|auto_generated|_~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~153_combout\ = ((!\addr~combout\(3) & (\U0|M0|auto_generated|_~42_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|_~42_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~153_combout\);

-- Location: LCCOMB_X14_Y21_N6
\U0|S41|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S40|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S42|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S40|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S42|U1|dffs\(1),
	datab => \U0|S40|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S41|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X14_Y23_N2
\U0|S41|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U1|dffs[1]~feeder_combout\ = \U0|S41|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S41|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S41|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X14_Y23_N3
\U0|S41|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S41|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[41]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S41|U1|dffs\(1));

-- Location: LCCOMB_X14_Y23_N20
\U0|S40|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (\U0|S39|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S41|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S39|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S39|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S41|U1|dffs\(1),
	combout => \U0|S40|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y23_N0
\U0|S40|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U1|dffs[1]~feeder_combout\ = \U0|S40|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S40|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S40|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y23_N1
\U0|S40|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S40|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[40]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S40|U1|dffs\(1));

-- Location: LCCOMB_X14_Y21_N30
\U0|M0|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~56_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S41|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S40|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(1),
	datab => \U0|S40|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~56_combout\);

-- Location: LCCOMB_X14_Y21_N2
\U0|S42|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S41|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S43|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S41|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(1),
	combout => \U0|S42|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y23_N6
\U0|S42|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U1|dffs[1]~feeder_combout\ = \U0|S42|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S42|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S42|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y23_N7
\U0|S42|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S42|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[42]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S42|U1|dffs\(1));

-- Location: LCCOMB_X14_Y21_N20
\U0|S43|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S42|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S44|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S42|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S44|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \U0|S42|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \U0|S43|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y21_N24
\U0|S43|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U1|dffs[1]~feeder_combout\ = \U0|S43|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S43|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S43|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y21_N25
\U0|S43|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S43|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[43]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S43|U1|dffs\(1));

-- Location: LCCOMB_X15_Y21_N26
\U0|S44|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S43|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S45|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S43|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S45|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(1),
	combout => \U0|S44|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y25_N8
\U0|S44|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U1|dffs[1]~feeder_combout\ = \U0|S44|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S44|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S44|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y25_N9
\U0|S44|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S44|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[44]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S44|U1|dffs\(1));

-- Location: LCCOMB_X14_Y21_N16
\U0|S45|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S44|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S46|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S44|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S46|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S44|U1|dffs\(1),
	combout => \U0|S45|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X15_Y21_N0
\U0|S45|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U1|dffs[1]~feeder_combout\ = \U0|S45|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S45|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S45|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X15_Y21_N1
\U0|S45|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S45|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S45|U1|dffs\(1));

-- Location: LCCOMB_X14_Y21_N4
\U0|M0|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~53_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S45|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S44|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S44|U1|dffs\(1),
	datab => \U0|S45|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~53_combout\);

-- Location: LCCOMB_X14_Y25_N22
\U0|S46|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S45|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S47|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S45|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S47|U1|dffs\(1),
	datad => \U0|S45|U1|dffs\(1),
	combout => \U0|S46|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y25_N10
\U0|S46|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U1|dffs[1]~feeder_combout\ = \U0|S46|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S46|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S46|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y25_N11
\U0|S46|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S46|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S46|U1|dffs\(1));

-- Location: LCCOMB_X14_Y22_N8
\U0|S48|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S47|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S49|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S47|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S49|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S47|U1|dffs\(1),
	combout => \U0|S48|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y25_N12
\U0|S48|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U1|dffs[1]~feeder_combout\ = \U0|S48|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S48|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S48|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y25_N13
\U0|S48|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S48|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S48|U1|dffs\(1));

-- Location: LCCOMB_X12_Y23_N0
\U0|S47|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (\U0|S46|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S48|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S46|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S46|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \U0|S48|U1|dffs\(1),
	combout => \U0|S47|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X12_Y23_N16
\U0|S47|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U1|dffs[1]~feeder_combout\ = \U0|S47|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S47|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S47|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X12_Y23_N17
\U0|S47|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S47|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[47]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S47|U1|dffs\(1));

-- Location: LCCOMB_X14_Y21_N14
\U0|M0|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~54_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S47|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S46|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S46|U1|dffs\(1),
	datab => \addr~combout\(0),
	datac => \U0|S47|U1|dffs\(1),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~54_combout\);

-- Location: LCCOMB_X14_Y21_N8
\U0|M0|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~55_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|_~53_combout\) # (\U0|M0|auto_generated|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|_~53_combout\,
	datac => \U0|M0|auto_generated|_~54_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~55_combout\);

-- Location: LCCOMB_X14_Y21_N22
\U0|M0|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~58_combout\ = (\U0|M0|auto_generated|_~55_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|_~57_combout\) # (\U0|M0|auto_generated|_~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~57_combout\,
	datab => \U0|M0|auto_generated|_~56_combout\,
	datac => \U0|M0|auto_generated|_~55_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~58_combout\);

-- Location: LCCOMB_X14_Y20_N30
\U0|S36|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S35|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S37|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S35|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S37|U1|dffs\(1),
	combout => \U0|S36|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X15_Y23_N8
\U0|S36|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U1|dffs[1]~feeder_combout\ = \U0|S36|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S36|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S36|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X15_Y23_N9
\U0|S36|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S36|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[36]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S36|U1|dffs\(1));

-- Location: LCCOMB_X14_Y20_N2
\U0|S38|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S37|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S39|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S37|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S39|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S37|U1|dffs\(1),
	combout => \U0|S38|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y19_N22
\U0|S38|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U1|dffs[1]~feeder_combout\ = \U0|S38|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S38|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S38|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y19_N23
\U0|S38|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S38|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[38]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S38|U1|dffs\(1));

-- Location: LCCOMB_X14_Y20_N24
\U0|S37|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S36|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S38|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S36|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S36|U1|dffs\(1),
	datad => \U0|S38|U1|dffs\(1),
	combout => \U0|S37|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X15_Y23_N26
\U0|S37|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U1|dffs[1]~feeder_combout\ = \U0|S37|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S37|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S37|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X15_Y23_N27
\U0|S37|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S37|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S37|U1|dffs\(1));

-- Location: LCCOMB_X14_Y20_N26
\U0|M0|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~47_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S37|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S36|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S37|U1|dffs\(1),
	datac => \U0|S36|U1|dffs\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~47_combout\);

-- Location: LCCOMB_X14_Y20_N4
\U0|M0|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~48_combout\ = (\U0|M0|auto_generated|_~47_combout\ & ((\U0|S39|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~47_combout\ & (((\addr~combout\(1) & \U0|S38|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S39|U1|dffs\(1),
	datab => \U0|M0|auto_generated|_~47_combout\,
	datac => \addr~combout\(1),
	datad => \U0|S38|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~48_combout\);

-- Location: LCCOMB_X13_Y20_N24
\U0|M0|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~49_combout\ = (\addr~combout\(5) & (!\addr~combout\(3) & (\addr~combout\(2) & \U0|M0|auto_generated|_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~48_combout\,
	combout => \U0|M0|auto_generated|_~49_combout\);

-- Location: LCCOMB_X13_Y20_N28
\U0|M0|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~59_combout\ = (\U0|M0|auto_generated|_~52_combout\) # ((\U0|M0|auto_generated|_~49_combout\) # ((\U0|M0|auto_generated|_~58_combout\ & \U0|M0|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~52_combout\,
	datab => \U0|M0|auto_generated|_~58_combout\,
	datac => \U0|M0|auto_generated|_~49_combout\,
	datad => \U0|M0|auto_generated|_~35_combout\,
	combout => \U0|M0|auto_generated|_~59_combout\);

-- Location: LCCOMB_X19_Y24_N6
\U0|S22|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S21|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S23|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S21|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S21|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S23|U1|dffs\(1),
	combout => \U0|S22|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y20_N28
\U0|S22|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U1|dffs[1]~feeder_combout\ = \U0|S22|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S22|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S22|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y20_N29
\U0|S22|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S22|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S22|U1|dffs\(1));

-- Location: LCCOMB_X19_Y24_N20
\U0|S23|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S22|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S24|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S22|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S22|U1|dffs\(1),
	datad => \U0|S24|U1|dffs\(1),
	combout => \U0|S23|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X18_Y21_N26
\U0|S23|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U1|dffs[1]~feeder_combout\ = \U0|S23|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S23|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S23|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y21_N27
\U0|S23|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S23|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S23|U1|dffs\(1));

-- Location: LCCOMB_X14_Y20_N10
\U0|S33|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S32|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S34|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S32|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S34|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S32|U1|dffs\(1),
	combout => \U0|S33|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X20_Y23_N0
\U0|S33|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U1|dffs[1]~feeder_combout\ = \U0|S33|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S33|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S33|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y23_N1
\U0|S33|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S33|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S33|U1|dffs\(1));

-- Location: LCCOMB_X20_Y23_N24
\U0|S32|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S31|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S33|U1|dffs\(1)))))) # (!\mode~combout\(1) & (((\U0|S31|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S31|U1|dffs\(1),
	datad => \U0|S33|U1|dffs\(1),
	combout => \U0|S32|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y23_N8
\U0|S32|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U1|dffs[1]~feeder_combout\ = \U0|S32|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S32|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S32|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y23_N9
\U0|S32|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S32|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[32]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S32|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N18
\U0|S31|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S30|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S32|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S30|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S32|U1|dffs\(1),
	datad => \U0|S30|U1|dffs\(1),
	combout => \U0|S31|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y22_N24
\U0|S31|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U1|dffs[1]~feeder_combout\ = \U0|S31|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S31|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S31|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y22_N25
\U0|S31|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S31|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S31|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N24
\U0|S30|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (\U0|S29|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S31|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S29|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S29|U1|dffs\(1),
	datab => \U0|S31|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S30|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y20_N22
\U0|S30|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U1|dffs[1]~feeder_combout\ = \U0|S30|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S30|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S30|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y20_N23
\U0|S30|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S30|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S30|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N10
\U0|S29|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S28|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S30|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S28|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S30|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \U0|S28|U1|dffs\(1),
	combout => \U0|S29|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y21_N30
\U0|S29|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U1|dffs[1]~feeder_combout\ = \U0|S29|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S29|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S29|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y21_N31
\U0|S29|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S29|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S29|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N8
\U0|S28|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S27|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S29|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S27|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S29|U1|dffs\(1),
	datad => \U0|S27|U1|dffs\(1),
	combout => \U0|S28|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X16_Y20_N28
\U0|S28|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U1|dffs[1]~feeder_combout\ = \U0|S28|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S28|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S28|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y20_N29
\U0|S28|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S28|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S28|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N0
\U0|S27|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S26|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S28|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S26|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S26|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \U0|S28|U1|dffs\(1),
	combout => \U0|S27|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X22_Y23_N16
\U0|S27|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U1|dffs[1]~feeder_combout\ = \U0|S27|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S27|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S27|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y23_N17
\U0|S27|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S27|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S27|U1|dffs\(1));

-- Location: LCCOMB_X22_Y22_N12
\U0|S26|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S25|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S27|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S25|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S27|U1|dffs\(1),
	datad => \U0|S25|U1|dffs\(1),
	combout => \U0|S26|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X22_Y22_N26
\U0|S26|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U1|dffs[1]~feeder_combout\ = \U0|S26|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S26|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S26|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y22_N27
\U0|S26|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S26|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S26|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N2
\U0|S25|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S24|U1|dffs\(1)))) # (!\mode~combout\(0) & (\U0|S26|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\U0|S24|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S26|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \U0|S24|U1|dffs\(1),
	combout => \U0|S25|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X22_Y21_N6
\U0|S25|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U1|dffs[1]~feeder_combout\ = \U0|S25|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S25|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S25|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y21_N7
\U0|S25|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S25|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S25|U1|dffs\(1));

-- Location: LCCOMB_X19_Y24_N16
\U0|S24|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (\U0|S23|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S25|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S23|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S23|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \U0|S25|U1|dffs\(1),
	combout => \U0|S24|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X22_Y22_N4
\U0|S24|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U1|dffs[1]~feeder_combout\ = \U0|S24|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S24|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S24|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y22_N5
\U0|S24|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S24|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S24|U1|dffs\(1));

-- Location: LCCOMB_X20_Y21_N26
\U0|M0|auto_generated|result_node[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~30_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S25|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S24|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S25|U1|dffs\(1),
	datab => \U0|S24|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[1]~30_combout\);

-- Location: LCCOMB_X20_Y21_N14
\U0|M0|auto_generated|result_node[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~28_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S31|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S30|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S30|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \U0|S31|U1|dffs\(1),
	combout => \U0|M0|auto_generated|result_node[1]~28_combout\);

-- Location: LCCOMB_X20_Y21_N20
\U0|M0|auto_generated|result_node[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~27_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S29|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S28|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S29|U1|dffs\(1),
	datab => \U0|S28|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[1]~27_combout\);

-- Location: LCCOMB_X20_Y21_N4
\U0|M0|auto_generated|result_node[1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~29_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[1]~28_combout\) # (\U0|M0|auto_generated|result_node[1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|result_node[1]~28_combout\,
	datac => \U0|M0|auto_generated|result_node[1]~27_combout\,
	combout => \U0|M0|auto_generated|result_node[1]~29_combout\);

-- Location: LCCOMB_X20_Y21_N12
\U0|M0|auto_generated|result_node[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~31_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S27|U1|dffs\(1))) # (!\addr~combout\(0) & ((\U0|S26|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S27|U1|dffs\(1),
	datab => \U0|S26|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[1]~31_combout\);

-- Location: LCCOMB_X20_Y21_N30
\U0|M0|auto_generated|result_node[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~32_combout\ = (\U0|M0|auto_generated|result_node[1]~29_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[1]~30_combout\) # (\U0|M0|auto_generated|result_node[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|result_node[1]~30_combout\,
	datac => \U0|M0|auto_generated|result_node[1]~29_combout\,
	datad => \U0|M0|auto_generated|result_node[1]~31_combout\,
	combout => \U0|M0|auto_generated|result_node[1]~32_combout\);

-- Location: LCCOMB_X19_Y24_N2
\U0|S19|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S18|U1|dffs\(1))) # (!\mode~combout\(0) & ((\U0|S20|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\U0|S18|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S18|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S20|U1|dffs\(1),
	combout => \U0|S19|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y24_N18
\U0|S19|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U1|dffs[1]~feeder_combout\ = \U0|S19|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S19|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S19|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y24_N19
\U0|S19|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S19|U1|dffs[1]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S19|U1|dffs\(1));

-- Location: LCCOMB_X19_Y24_N10
\U0|S20|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (\U0|S19|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S21|U1|dffs\(1)))) # (!\mode~combout\(1) & (\U0|S19|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S19|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \U0|S21|U1|dffs\(1),
	combout => \U0|S20|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X20_Y22_N4
\U0|S20|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U1|dffs[1]~feeder_combout\ = \U0|S20|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S20|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S20|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y22_N5
\U0|S20|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S20|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S20|U1|dffs\(1));

-- Location: LCCOMB_X19_Y24_N0
\U0|S21|U0|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U0|$00000|auto_generated|result_node[1]~1_combout\ = (\mode~combout\(0) & (((\U0|S20|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S22|U1|dffs\(1))) # (!\mode~combout\(1) & ((\U0|S20|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S22|U1|dffs\(1),
	datad => \U0|S20|U1|dffs\(1),
	combout => \U0|S21|U0|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X19_Y24_N12
\U0|S21|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U1|dffs[1]~feeder_combout\ = \U0|S21|U0|$00000|auto_generated|result_node[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S21|U0|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \U0|S21|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y24_N13
\U0|S21|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S21|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S21|U1|dffs\(1));

-- Location: LCCOMB_X19_Y24_N24
\U0|M0|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~43_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S21|U1|dffs\(1)))) # (!\addr~combout\(0) & (\U0|S20|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \U0|S21|U1|dffs\(1),
	combout => \U0|M0|auto_generated|_~43_combout\);

-- Location: LCCOMB_X19_Y24_N26
\U0|M0|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~44_combout\ = (\U0|M0|auto_generated|_~43_combout\ & (((\U0|S23|U1|dffs\(1)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~43_combout\ & (\U0|S22|U1|dffs\(1) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S22|U1|dffs\(1),
	datab => \U0|S23|U1|dffs\(1),
	datac => \U0|M0|auto_generated|_~43_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~44_combout\);

-- Location: LCCOMB_X19_Y21_N26
\U0|M0|auto_generated|result_node[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~26_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~44_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~46_combout\,
	datab => \U0|M0|auto_generated|_~44_combout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[1]~26_combout\);

-- Location: LCCOMB_X19_Y21_N4
\U0|M0|auto_generated|result_node[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~33_combout\ = (\addr~combout\(4) & ((\U0|M0|auto_generated|result_node[1]~26_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|result_node[1]~32_combout\,
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|result_node[1]~26_combout\,
	combout => \U0|M0|auto_generated|result_node[1]~33_combout\);

-- Location: LCCOMB_X13_Y24_N0
\U0|M0|auto_generated|result_node[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[1]~34_combout\ = (\U0|M0|auto_generated|result_node[1]~25_combout\) # ((\U0|M0|auto_generated|_~59_combout\ & (\U0|M0|auto_generated|_~153_combout\)) # (!\U0|M0|auto_generated|_~59_combout\ & 
-- ((\U0|M0|auto_generated|result_node[1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[1]~25_combout\,
	datab => \U0|M0|auto_generated|_~153_combout\,
	datac => \U0|M0|auto_generated|_~59_combout\,
	datad => \U0|M0|auto_generated|result_node[1]~33_combout\,
	combout => \U0|M0|auto_generated|result_node[1]~34_combout\);

-- Location: LCCOMB_X19_Y25_N22
\U0|S48|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S47|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S49|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S47|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S47|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S49|U1|dffs\(2),
	combout => \U0|S48|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y25_N16
\U0|S48|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U1|dffs[2]~feeder_combout\ = \U0|S48|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S48|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S48|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y25_N17
\U0|S48|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S48|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S48|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N20
\U0|S49|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S48|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S50|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S48|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S50|U1|dffs\(2),
	datad => \U0|S48|U1|dffs\(2),
	combout => \U0|S49|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X12_Y22_N0
\U0|S49|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U1|dffs[2]~feeder_combout\ = \U0|S49|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S49|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S49|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X12_Y22_N1
\U0|S49|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S49|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S49|U1|dffs\(2));

-- Location: LCCOMB_X13_Y22_N10
\U0|S51|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S51|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\U0|S50|U1|dffs\(2) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S50|U1|dffs\(2),
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S51|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X13_Y22_N11
\U0|S51|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S51|U0|$00000|auto_generated|result_node[2]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S51|U1|dffs\(2));

-- Location: LCCOMB_X12_Y23_N6
\U0|S50|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S49|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S51|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S49|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S49|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \U0|S51|U1|dffs\(2),
	combout => \U0|S50|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y22_N8
\U0|S50|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U1|dffs[2]~feeder_combout\ = \U0|S50|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S50|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S50|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X13_Y22_N9
\U0|S50|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S50|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S50|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N24
\U0|M0|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~64_combout\ = (\addr~combout\(0) & ((\U0|S49|U1|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((!\addr~combout\(1) & \U0|S48|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S49|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \U0|S48|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~64_combout\);

-- Location: LCCOMB_X13_Y24_N8
\U0|M0|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~65_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~64_combout\ & (\U0|S51|U1|dffs\(2))) # (!\U0|M0|auto_generated|_~64_combout\ & ((\U0|S50|U1|dffs\(2)))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S51|U1|dffs\(2),
	datab => \U0|S50|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \U0|M0|auto_generated|_~64_combout\,
	combout => \U0|M0|auto_generated|_~65_combout\);

-- Location: LCCOMB_X13_Y24_N12
\U0|M0|auto_generated|_~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~154_combout\ = ((!\addr~combout\(3) & (\U0|M0|auto_generated|_~65_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|_~65_combout\,
	datac => \addr~combout\(4),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~154_combout\);

-- Location: LCCOMB_X14_Y22_N12
\U0|S10|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U1|dffs[2]~feeder_combout\ = \U0|S10|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S10|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S10|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X14_Y22_N13
\U0|S10|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S10|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S10|U1|dffs\(2));

-- Location: LCCOMB_X19_Y20_N30
\U0|S18|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S17|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S19|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S17|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S19|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \U0|S17|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \U0|S18|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y20_N2
\U0|S18|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U1|dffs[2]~feeder_combout\ = \U0|S18|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S18|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S18|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y20_N3
\U0|S18|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S18|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S18|U1|dffs\(2));

-- Location: LCCOMB_X18_Y20_N14
\U0|S17|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S16|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S18|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S16|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S16|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S18|U1|dffs\(2),
	combout => \U0|S17|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y20_N8
\U0|S17|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U1|dffs[2]~feeder_combout\ = \U0|S17|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S17|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S17|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y20_N9
\U0|S17|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S17|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S17|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N26
\U0|S16|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S15|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S17|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S15|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S15|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S17|U1|dffs\(2),
	combout => \U0|S16|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y22_N4
\U0|S16|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S16|U1|dffs[2]~feeder_combout\ = \U0|S16|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S16|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S16|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y22_N5
\U0|S16|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S16|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S16|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N14
\U0|S15|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S14|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S16|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S14|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S14|U1|dffs\(2),
	datab => \U0|S16|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S15|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y24_N8
\U0|S15|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S15|U1|dffs[2]~feeder_combout\ = \U0|S15|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S15|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S15|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y24_N9
\U0|S15|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S15|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S15|U1|dffs\(2));

-- Location: LCCOMB_X16_Y21_N22
\U0|S11|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S10|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S12|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S10|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U1|dffs\(2),
	datab => \U0|S10|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S11|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y21_N10
\U0|S11|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U1|dffs[2]~feeder_combout\ = \U0|S11|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S11|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S11|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y21_N11
\U0|S11|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S11|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S11|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N28
\U0|S12|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S11|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S13|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S11|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S13|U1|dffs\(2),
	datac => \U0|S11|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \U0|S12|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y22_N20
\U0|S12|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U1|dffs[2]~feeder_combout\ = \U0|S12|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S12|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S12|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y22_N21
\U0|S12|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S12|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S12|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N22
\U0|S13|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S12|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S14|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S12|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S14|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \U0|S12|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \U0|S13|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y24_N28
\U0|S13|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S13|U1|dffs[2]~feeder_combout\ = \U0|S13|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S13|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S13|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X15_Y24_N29
\U0|S13|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S13|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S13|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N16
\U0|S14|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S13|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S15|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S13|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S15|U1|dffs\(2),
	datad => \U0|S13|U1|dffs\(2),
	combout => \U0|S14|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y22_N4
\U0|S14|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S14|U1|dffs[2]~feeder_combout\ = \U0|S14|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S14|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S14|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X15_Y22_N5
\U0|S14|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S14|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S14|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N0
\U0|M0|auto_generated|result_node[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~40_combout\ = (!\addr~combout\(0) & ((\addr~combout\(2) & ((\U0|S14|U1|dffs\(2)))) # (!\addr~combout\(2) & (\U0|S10|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S10|U1|dffs\(2),
	datac => \addr~combout\(2),
	datad => \U0|S14|U1|dffs\(2),
	combout => \U0|M0|auto_generated|result_node[2]~40_combout\);

-- Location: LCCOMB_X19_Y25_N24
\U0|S9|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S8|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S10|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S8|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S10|U1|dffs\(2),
	combout => \U0|S9|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y25_N6
\U0|S9|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U1|dffs[2]~feeder_combout\ = \U0|S9|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S9|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S9|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y25_N7
\U0|S9|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S9|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S9|U1|dffs\(2));

-- Location: LCCOMB_X14_Y24_N4
\U0|M0|auto_generated|result_node[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~36_combout\ = (\addr~combout\(0) & ((\addr~combout\(2) & (\U0|S13|U1|dffs\(2))) # (!\addr~combout\(2) & ((\U0|S9|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S13|U1|dffs\(2),
	datac => \addr~combout\(2),
	datad => \U0|S9|U1|dffs\(2),
	combout => \U0|M0|auto_generated|result_node[2]~36_combout\);

-- Location: LCCOMB_X14_Y24_N8
\U0|M0|auto_generated|result_node[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~38_combout\ = (!\addr~combout\(1) & ((\U0|M0|auto_generated|result_node[2]~37_combout\) # (\U0|M0|auto_generated|result_node[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[2]~37_combout\,
	datab => \U0|M0|auto_generated|result_node[2]~36_combout\,
	datac => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[2]~38_combout\);

-- Location: LCCOMB_X14_Y24_N2
\U0|M0|auto_generated|result_node[2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~39_combout\ = (\addr~combout\(0) & ((\addr~combout\(2) & ((\U0|S15|U1|dffs\(2)))) # (!\addr~combout\(2) & (\U0|S11|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S11|U1|dffs\(2),
	datac => \U0|S15|U1|dffs\(2),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[2]~39_combout\);

-- Location: LCCOMB_X14_Y24_N30
\U0|M0|auto_generated|result_node[2]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~41_combout\ = (\U0|M0|auto_generated|result_node[2]~38_combout\) # ((\addr~combout\(1) & ((\U0|M0|auto_generated|result_node[2]~40_combout\) # (\U0|M0|auto_generated|result_node[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|M0|auto_generated|result_node[2]~40_combout\,
	datac => \U0|M0|auto_generated|result_node[2]~38_combout\,
	datad => \U0|M0|auto_generated|result_node[2]~39_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~41_combout\);

-- Location: LCCOMB_X19_Y24_N22
\U0|S8|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S7|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S9|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S7|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S7|U1|dffs\(2),
	datad => \U0|S9|U1|dffs\(2),
	combout => \U0|S8|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y25_N16
\U0|S8|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U1|dffs[2]~feeder_combout\ = \U0|S8|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S8|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S8|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y22_N12
\U0|enableArray[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[8]~15_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(8),
	combout => \U0|enableArray[8]~15_combout\);

-- Location: LCFF_X19_Y25_N17
\U0|S8|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S8|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S8|U1|dffs\(2));

-- Location: LCCOMB_X20_Y24_N8
\U0|S7|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S6|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S8|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S6|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S8|U1|dffs\(2),
	datad => \U0|S6|U1|dffs\(2),
	combout => \U0|S7|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y24_N20
\U0|S7|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U1|dffs[2]~feeder_combout\ = \U0|S7|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S7|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S7|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y24_N21
\U0|S7|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S7|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S7|U1|dffs\(2));

-- Location: LCCOMB_X20_Y24_N4
\U0|S6|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S5|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S7|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S5|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S7|U1|dffs\(2),
	datad => \U0|S5|U1|dffs\(2),
	combout => \U0|S6|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y26_N4
\U0|S6|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U1|dffs[2]~feeder_combout\ = \U0|S6|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S6|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S6|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y26_N5
\U0|S6|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S6|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S6|U1|dffs\(2));

-- Location: LCCOMB_X19_Y26_N12
\U0|S5|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S4|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S6|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S4|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S6|U1|dffs\(2),
	datad => \U0|S4|U1|dffs\(2),
	combout => \U0|S5|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y26_N10
\U0|S5|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U1|dffs[2]~feeder_combout\ = \U0|S5|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S5|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S5|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y26_N11
\U0|S5|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S5|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S5|U1|dffs\(2));

-- Location: LCCOMB_X20_Y24_N26
\U0|S4|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S3|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S5|U1|dffs\(2)))))) # (!\mode~combout\(1) & (((\U0|S3|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S3|U1|dffs\(2),
	datad => \U0|S5|U1|dffs\(2),
	combout => \U0|S4|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y22_N24
\U0|S4|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U1|dffs[2]~feeder_combout\ = \U0|S4|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S4|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S4|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y22_N25
\U0|S4|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S4|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S4|U1|dffs\(2));

-- Location: LCCOMB_X19_Y26_N14
\U0|S3|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S2|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S4|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S2|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S2|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S4|U1|dffs\(2),
	combout => \U0|S3|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y26_N22
\U0|S3|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U1|dffs[2]~feeder_combout\ = \U0|S3|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S3|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S3|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y26_N23
\U0|S3|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S3|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S3|U1|dffs\(2));

-- Location: LCCOMB_X16_Y26_N10
\U0|S1|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S0|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S2|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S0|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S0|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S2|U1|dffs\(2),
	combout => \U0|S1|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y26_N8
\U0|S1|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U1|dffs[2]~feeder_combout\ = \U0|S1|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S1|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S1|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y26_N28
\U0|enableArray[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[1]~5_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(1),
	combout => \U0|enableArray[1]~5_combout\);

-- Location: LCFF_X16_Y26_N9
\U0|S1|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S1|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S1|U1|dffs\(2));

-- Location: LCCOMB_X16_Y26_N0
\U0|S2|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S1|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S3|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S1|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S3|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S1|U1|dffs\(2),
	combout => \U0|S2|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y26_N26
\U0|S2|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U1|dffs[2]~feeder_combout\ = \U0|S2|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S2|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S2|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y26_N27
\U0|S2|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S2|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S2|U1|dffs\(2));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: LCCOMB_X14_Y25_N24
\U0|S0|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\data~combout\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S1|U1|dffs\(2)))) # (!\mode~combout\(1) & (\data~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \data~combout\(2),
	datad => \U0|S1|U1|dffs\(2),
	combout => \U0|S0|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y24_N30
\U0|S0|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U1|dffs[2]~feeder_combout\ = \U0|S0|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S0|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S0|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y24_N14
\U0|enableArray[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|enableArray[0]~6_combout\ = (\enable~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|E0|crc_table|altsyncram_component|auto_generated|q_a\(0),
	combout => \U0|enableArray[0]~6_combout\);

-- Location: LCFF_X18_Y24_N31
\U0|S0|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S0|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S0|U1|dffs\(2));

-- Location: LCCOMB_X21_Y24_N30
\U0|M0|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~62_combout\ = (\addr~combout\(0) & (((\U0|S1|U1|dffs\(2)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S0|U1|dffs\(2) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S0|U1|dffs\(2),
	datac => \U0|S1|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~62_combout\);

-- Location: LCCOMB_X20_Y24_N6
\U0|M0|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~63_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~62_combout\ & (\U0|S3|U1|dffs\(2))) # (!\U0|M0|auto_generated|_~62_combout\ & ((\U0|S2|U1|dffs\(2)))))) # (!\addr~combout\(1) & (((\U0|M0|auto_generated|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S3|U1|dffs\(2),
	datac => \U0|S2|U1|dffs\(2),
	datad => \U0|M0|auto_generated|_~62_combout\,
	combout => \U0|M0|auto_generated|_~63_combout\);

-- Location: LCCOMB_X20_Y24_N20
\U0|M0|auto_generated|result_node[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~35_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\U0|M0|auto_generated|_~61_combout\)) # (!\addr~combout\(2) & ((\U0|M0|auto_generated|_~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~61_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~63_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~35_combout\);

-- Location: LCCOMB_X13_Y24_N30
\U0|M0|auto_generated|result_node[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~42_combout\ = (\U0|M0|auto_generated|result_node[0]~0_combout\ & ((\U0|M0|auto_generated|result_node[2]~35_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|result_node[2]~41_combout\,
	datac => \U0|M0|auto_generated|result_node[0]~0_combout\,
	datad => \U0|M0|auto_generated|result_node[2]~35_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~42_combout\);

-- Location: LCCOMB_X20_Y23_N6
\U0|S32|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U1|dffs[2]~feeder_combout\ = \U0|S32|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S32|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S32|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y23_N7
\U0|S32|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S32|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[32]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S32|U1|dffs\(2));

-- Location: LCCOMB_X20_Y23_N14
\U0|S33|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S32|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S34|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S32|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S34|U1|dffs\(2),
	datad => \U0|S32|U1|dffs\(2),
	combout => \U0|S33|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y23_N18
\U0|S33|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U1|dffs[2]~feeder_combout\ = \U0|S33|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S33|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S33|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y23_N19
\U0|S33|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S33|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S33|U1|dffs\(2));

-- Location: LCCOMB_X18_Y23_N6
\U0|S34|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S33|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S35|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S33|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S33|U1|dffs\(2),
	combout => \U0|S34|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y23_N4
\U0|S34|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U1|dffs[2]~feeder_combout\ = \U0|S34|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S34|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S34|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X14_Y23_N5
\U0|S34|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S34|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[34]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S34|U1|dffs\(2));

-- Location: LCCOMB_X13_Y23_N16
\U0|S41|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S40|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S42|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S40|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S42|U1|dffs\(2),
	datab => \U0|S40|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S41|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y23_N6
\U0|S41|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U1|dffs[2]~feeder_combout\ = \U0|S41|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S41|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S41|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X14_Y23_N7
\U0|S41|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S41|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[41]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S41|U1|dffs\(2));

-- Location: LCCOMB_X12_Y23_N8
\U0|S40|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S39|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S41|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S39|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S39|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \U0|S41|U1|dffs\(2),
	combout => \U0|S40|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y23_N28
\U0|S40|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U1|dffs[2]~feeder_combout\ = \U0|S40|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S40|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S40|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y23_N29
\U0|S40|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S40|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[40]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S40|U1|dffs\(2));

-- Location: LCCOMB_X13_Y23_N6
\U0|S39|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S38|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S40|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S38|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S38|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \U0|S40|U1|dffs\(2),
	combout => \U0|S39|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y23_N8
\U0|S39|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U1|dffs[2]~feeder_combout\ = \U0|S39|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S39|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S39|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X13_Y23_N9
\U0|S39|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S39|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S39|U1|dffs\(2));

-- Location: LCCOMB_X12_Y23_N24
\U0|S38|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S37|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S39|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S37|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S39|U1|dffs\(2),
	datac => \U0|S37|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \U0|S38|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y19_N24
\U0|S38|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U1|dffs[2]~feeder_combout\ = \U0|S38|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S38|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S38|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y19_N25
\U0|S38|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S38|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[38]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S38|U1|dffs\(2));

-- Location: LCCOMB_X13_Y23_N24
\U0|S37|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S36|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S38|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S36|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S36|U1|dffs\(2),
	datab => \U0|S38|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S37|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y23_N2
\U0|S37|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U1|dffs[2]~feeder_combout\ = \U0|S37|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S37|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S37|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X15_Y23_N3
\U0|S37|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S37|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S37|U1|dffs\(2));

-- Location: LCCOMB_X15_Y23_N14
\U0|S36|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S35|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S37|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S35|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S35|U1|dffs\(2),
	datad => \U0|S37|U1|dffs\(2),
	combout => \U0|S36|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y23_N10
\U0|S36|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U1|dffs[2]~feeder_combout\ = \U0|S36|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S36|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S36|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y23_N11
\U0|S36|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S36|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[36]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S36|U1|dffs\(2));

-- Location: LCCOMB_X12_Y23_N2
\U0|S35|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S34|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S36|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S34|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S34|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \U0|S36|U1|dffs\(2),
	combout => \U0|S35|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y23_N2
\U0|S35|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U1|dffs[2]~feeder_combout\ = \U0|S35|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S35|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S35|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X13_Y23_N3
\U0|S35|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S35|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S35|U1|dffs\(2));

-- Location: LCCOMB_X20_Y23_N18
\U0|M0|auto_generated|_~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~74_combout\ = (\U0|M0|auto_generated|_~73_combout\ & (((\U0|S35|U1|dffs\(2)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~73_combout\ & (\U0|S34|U1|dffs\(2) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~73_combout\,
	datab => \U0|S34|U1|dffs\(2),
	datac => \U0|S35|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~74_combout\);

-- Location: LCCOMB_X21_Y24_N8
\U0|M0|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~16_combout\ = (!\addr~combout\(2) & !\addr~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datac => \addr~combout\(3),
	combout => \U0|M0|auto_generated|_~16_combout\);

-- Location: LCCOMB_X13_Y20_N0
\U0|M0|auto_generated|_~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~75_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\U0|M0|auto_generated|_~74_combout\ & \U0|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|_~74_combout\,
	datad => \U0|M0|auto_generated|_~16_combout\,
	combout => \U0|M0|auto_generated|_~75_combout\);

-- Location: LCCOMB_X13_Y23_N18
\U0|M0|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~70_combout\ = (\addr~combout\(0) & (((\U0|S37|U1|dffs\(2)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S36|U1|dffs\(2) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S36|U1|dffs\(2),
	datac => \U0|S37|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~70_combout\);

-- Location: LCCOMB_X13_Y23_N28
\U0|M0|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~71_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~70_combout\ & (\U0|S39|U1|dffs\(2))) # (!\U0|M0|auto_generated|_~70_combout\ & ((\U0|S38|U1|dffs\(2)))))) # (!\addr~combout\(1) & (\U0|M0|auto_generated|_~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|M0|auto_generated|_~70_combout\,
	datac => \U0|S39|U1|dffs\(2),
	datad => \U0|S38|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~71_combout\);

-- Location: LCCOMB_X13_Y20_N14
\U0|M0|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~72_combout\ = (\addr~combout\(5) & (!\addr~combout\(3) & (\addr~combout\(2) & \U0|M0|auto_generated|_~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~71_combout\,
	combout => \U0|M0|auto_generated|_~72_combout\);

-- Location: LCCOMB_X13_Y20_N6
\U0|M0|auto_generated|_~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~82_combout\ = (\U0|M0|auto_generated|_~75_combout\) # ((\U0|M0|auto_generated|_~72_combout\) # ((\U0|M0|auto_generated|_~81_combout\ & \U0|M0|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~81_combout\,
	datab => \U0|M0|auto_generated|_~75_combout\,
	datac => \U0|M0|auto_generated|_~72_combout\,
	datad => \U0|M0|auto_generated|_~35_combout\,
	combout => \U0|M0|auto_generated|_~82_combout\);

-- Location: LCCOMB_X14_Y24_N10
\U0|M0|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~68_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\U0|S17|U1|dffs\(2))))) # (!\addr~combout\(0) & (\U0|S16|U1|dffs\(2) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S16|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \U0|S17|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~68_combout\);

-- Location: LCCOMB_X21_Y21_N10
\U0|S26|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (((\U0|S25|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S27|U1|dffs\(2))) # (!\mode~combout\(1) & ((\U0|S25|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S27|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S25|U1|dffs\(2),
	combout => \U0|S26|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X22_Y22_N18
\U0|S26|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U1|dffs[2]~feeder_combout\ = \U0|S26|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S26|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S26|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X22_Y22_N19
\U0|S26|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S26|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S26|U1|dffs\(2));

-- Location: LCCOMB_X22_Y21_N4
\U0|S25|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S24|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S26|U1|dffs\(2)))))) # (!\mode~combout\(1) & (((\U0|S24|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S24|U1|dffs\(2),
	datad => \U0|S26|U1|dffs\(2),
	combout => \U0|S25|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X22_Y21_N20
\U0|S25|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U1|dffs[2]~feeder_combout\ = \U0|S25|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S25|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S25|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X22_Y21_N21
\U0|S25|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S25|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S25|U1|dffs\(2));

-- Location: LCCOMB_X22_Y21_N30
\U0|S24|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S23|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S25|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S23|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S25|U1|dffs\(2),
	datad => \U0|S23|U1|dffs\(2),
	combout => \U0|S24|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X22_Y22_N20
\U0|S24|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U1|dffs[2]~feeder_combout\ = \U0|S24|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S24|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S24|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X22_Y22_N21
\U0|S24|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S24|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S24|U1|dffs\(2));

-- Location: LCCOMB_X21_Y21_N8
\U0|S23|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S22|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S24|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S22|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S22|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S24|U1|dffs\(2),
	combout => \U0|S23|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y21_N24
\U0|S23|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U1|dffs[2]~feeder_combout\ = \U0|S23|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S23|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S23|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y21_N25
\U0|S23|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S23|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S23|U1|dffs\(2));

-- Location: LCCOMB_X21_Y21_N18
\U0|S22|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S21|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S23|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S21|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S21|U1|dffs\(2),
	datab => \U0|S23|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S22|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y20_N12
\U0|S22|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U1|dffs[2]~feeder_combout\ = \U0|S22|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S22|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S22|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y20_N13
\U0|S22|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S22|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S22|U1|dffs\(2));

-- Location: LCCOMB_X21_Y21_N4
\U0|S21|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S20|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S22|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S20|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S22|U1|dffs\(2),
	combout => \U0|S21|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X20_Y22_N26
\U0|S21|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U1|dffs[2]~feeder_combout\ = \U0|S21|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S21|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S21|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y22_N27
\U0|S21|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S21|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S21|U1|dffs\(2));

-- Location: LCCOMB_X21_Y21_N22
\U0|S20|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(0) & (\U0|S19|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S21|U1|dffs\(2)))) # (!\mode~combout\(1) & (\U0|S19|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S19|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S21|U1|dffs\(2),
	combout => \U0|S20|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y21_N20
\U0|S20|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U1|dffs[2]~feeder_combout\ = \U0|S20|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S20|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S20|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y21_N21
\U0|S20|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S20|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S20|U1|dffs\(2));

-- Location: LCCOMB_X20_Y21_N6
\U0|S19|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S18|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S20|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\U0|S18|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S18|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \U0|S20|U1|dffs\(2),
	combout => \U0|S19|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y22_N22
\U0|S19|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S19|U1|dffs[2]~feeder_combout\ = \U0|S19|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S19|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S19|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y22_N23
\U0|S19|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S19|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S19|U1|dffs\(2));

-- Location: LCCOMB_X20_Y21_N16
\U0|M0|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~69_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~68_combout\ & ((\U0|S19|U1|dffs\(2)))) # (!\U0|M0|auto_generated|_~68_combout\ & (\U0|S18|U1|dffs\(2))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S18|U1|dffs\(2),
	datac => \U0|M0|auto_generated|_~68_combout\,
	datad => \U0|S19|U1|dffs\(2),
	combout => \U0|M0|auto_generated|_~69_combout\);

-- Location: LCCOMB_X21_Y21_N14
\U0|M0|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~66_combout\ = (\addr~combout\(0) & ((\U0|S21|U1|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S20|U1|dffs\(2) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S21|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \U0|S20|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~66_combout\);

-- Location: LCCOMB_X21_Y21_N0
\U0|M0|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~67_combout\ = (\U0|M0|auto_generated|_~66_combout\ & (((\U0|S23|U1|dffs\(2)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~66_combout\ & (\U0|S22|U1|dffs\(2) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S22|U1|dffs\(2),
	datab => \U0|S23|U1|dffs\(2),
	datac => \U0|M0|auto_generated|_~66_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~67_combout\);

-- Location: LCCOMB_X21_Y21_N26
\U0|M0|auto_generated|result_node[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~43_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~67_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|_~69_combout\,
	datac => \addr~combout\(3),
	datad => \U0|M0|auto_generated|_~67_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~43_combout\);

-- Location: LCCOMB_X21_Y21_N28
\U0|M0|auto_generated|result_node[2]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~47_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S25|U1|dffs\(2))) # (!\addr~combout\(0) & ((\U0|S24|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S25|U1|dffs\(2),
	datac => \addr~combout\(0),
	datad => \U0|S24|U1|dffs\(2),
	combout => \U0|M0|auto_generated|result_node[2]~47_combout\);

-- Location: LCCOMB_X20_Y23_N20
\U0|S27|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S26|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S28|U1|dffs\(2)))))) # (!\mode~combout\(1) & (((\U0|S26|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S26|U1|dffs\(2),
	datad => \U0|S28|U1|dffs\(2),
	combout => \U0|S27|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y21_N6
\U0|S27|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U1|dffs[2]~feeder_combout\ = \U0|S27|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S27|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S27|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y21_N7
\U0|S27|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S27|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S27|U1|dffs\(2));

-- Location: LCCOMB_X20_Y23_N8
\U0|S28|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S27|U1|dffs\(2))) # (!\mode~combout\(0) & ((\U0|S29|U1|dffs\(2)))))) # (!\mode~combout\(1) & (((\U0|S27|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S27|U1|dffs\(2),
	datad => \U0|S29|U1|dffs\(2),
	combout => \U0|S28|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y20_N12
\U0|S28|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U1|dffs[2]~feeder_combout\ = \U0|S28|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S28|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S28|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y20_N13
\U0|S28|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S28|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S28|U1|dffs\(2));

-- Location: LCCOMB_X20_Y23_N22
\U0|S29|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S28|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S30|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S28|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S30|U1|dffs\(2),
	datad => \U0|S28|U1|dffs\(2),
	combout => \U0|S29|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y22_N30
\U0|S29|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U1|dffs[2]~feeder_combout\ = \U0|S29|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S29|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S29|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y22_N31
\U0|S29|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S29|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S29|U1|dffs\(2));

-- Location: LCCOMB_X19_Y22_N20
\U0|S30|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S29|U1|dffs\(2)))) # (!\mode~combout\(0) & (\U0|S31|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\U0|S29|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S31|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S29|U1|dffs\(2),
	combout => \U0|S30|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y20_N26
\U0|S30|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U1|dffs[2]~feeder_combout\ = \U0|S30|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S30|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \U0|S30|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y20_N27
\U0|S30|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S30|U1|dffs[2]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S30|U1|dffs\(2));

-- Location: LCCOMB_X20_Y23_N26
\U0|M0|auto_generated|result_node[2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~45_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S31|U1|dffs\(2))) # (!\addr~combout\(0) & ((\U0|S30|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S31|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \U0|S30|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[2]~45_combout\);

-- Location: LCCOMB_X20_Y23_N28
\U0|M0|auto_generated|result_node[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~44_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S29|U1|dffs\(2))) # (!\addr~combout\(0) & ((\U0|S28|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S29|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \U0|S28|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[2]~44_combout\);

-- Location: LCCOMB_X20_Y23_N4
\U0|M0|auto_generated|result_node[2]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~46_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[2]~45_combout\) # (\U0|M0|auto_generated|result_node[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|result_node[2]~45_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[2]~44_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~46_combout\);

-- Location: LCCOMB_X21_Y24_N12
\U0|M0|auto_generated|result_node[2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~49_combout\ = (\U0|M0|auto_generated|result_node[2]~46_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[2]~48_combout\) # (\U0|M0|auto_generated|result_node[2]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[2]~48_combout\,
	datab => \U0|M0|auto_generated|result_node[2]~47_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[2]~46_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~49_combout\);

-- Location: LCCOMB_X21_Y24_N18
\U0|M0|auto_generated|result_node[2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~50_combout\ = (\addr~combout\(4) & ((\U0|M0|auto_generated|result_node[2]~43_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|result_node[2]~43_combout\,
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|result_node[2]~49_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~50_combout\);

-- Location: LCCOMB_X13_Y24_N6
\U0|M0|auto_generated|result_node[2]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[2]~51_combout\ = (\U0|M0|auto_generated|result_node[2]~42_combout\) # ((\U0|M0|auto_generated|_~82_combout\ & (\U0|M0|auto_generated|_~154_combout\)) # (!\U0|M0|auto_generated|_~82_combout\ & 
-- ((\U0|M0|auto_generated|result_node[2]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~154_combout\,
	datab => \U0|M0|auto_generated|result_node[2]~42_combout\,
	datac => \U0|M0|auto_generated|_~82_combout\,
	datad => \U0|M0|auto_generated|result_node[2]~50_combout\,
	combout => \U0|M0|auto_generated|result_node[2]~51_combout\);

-- Location: LCCOMB_X21_Y23_N28
\U0|S33|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S32|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S34|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S32|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S34|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S32|U1|dffs\(3),
	combout => \U0|S33|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X21_Y23_N20
\U0|S33|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U1|dffs[3]~feeder_combout\ = \U0|S33|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S33|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S33|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X21_Y23_N21
\U0|S33|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S33|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S33|U1|dffs\(3));

-- Location: LCCOMB_X19_Y23_N10
\U0|S32|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S31|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S33|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S31|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S33|U1|dffs\(3),
	datad => \U0|S31|U1|dffs\(3),
	combout => \U0|S32|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y23_N18
\U0|S32|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U1|dffs[3]~feeder_combout\ = \U0|S32|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S32|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S32|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y23_N19
\U0|S32|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S32|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[32]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S32|U1|dffs\(3));

-- Location: LCCOMB_X20_Y20_N4
\U0|S31|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S30|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S32|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S30|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S30|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S32|U1|dffs\(3),
	combout => \U0|S31|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y22_N8
\U0|S31|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U1|dffs[3]~feeder_combout\ = \U0|S31|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S31|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S31|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y22_N9
\U0|S31|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S31|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S31|U1|dffs\(3));

-- Location: LCCOMB_X20_Y20_N22
\U0|S30|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S29|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S31|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S29|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S29|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S31|U1|dffs\(3),
	combout => \U0|S30|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y20_N14
\U0|S30|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U1|dffs[3]~feeder_combout\ = \U0|S30|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S30|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S30|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y20_N15
\U0|S30|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S30|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S30|U1|dffs\(3));

-- Location: LCCOMB_X20_Y20_N28
\U0|S29|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S28|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S30|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S28|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S30|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S28|U1|dffs\(3),
	combout => \U0|S29|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y22_N10
\U0|S29|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U1|dffs[3]~feeder_combout\ = \U0|S29|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S29|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S29|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y22_N11
\U0|S29|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S29|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S29|U1|dffs\(3));

-- Location: LCCOMB_X20_Y20_N26
\U0|S28|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S27|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S29|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S27|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S29|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S27|U1|dffs\(3),
	combout => \U0|S28|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y20_N20
\U0|S28|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U1|dffs[3]~feeder_combout\ = \U0|S28|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S28|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S28|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y20_N21
\U0|S28|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S28|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S28|U1|dffs\(3));

-- Location: LCCOMB_X22_Y22_N2
\U0|S26|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U1|dffs[3]~feeder_combout\ = \U0|S26|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S26|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S26|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X22_Y22_N3
\U0|S26|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S26|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S26|U1|dffs\(3));

-- Location: LCCOMB_X20_Y20_N8
\U0|S27|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S26|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S28|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S26|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S28|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S26|U1|dffs\(3),
	combout => \U0|S27|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X20_Y20_N30
\U0|S27|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U1|dffs[3]~feeder_combout\ = \U0|S27|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S27|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S27|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X20_Y20_N31
\U0|S27|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S27|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S27|U1|dffs\(3));

-- Location: LCCOMB_X20_Y20_N24
\U0|M0|auto_generated|result_node[3]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~65_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S27|U1|dffs\(3))) # (!\addr~combout\(0) & ((\U0|S26|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S27|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|S26|U1|dffs\(3),
	combout => \U0|M0|auto_generated|result_node[3]~65_combout\);

-- Location: LCCOMB_X22_Y21_N10
\U0|S25|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S24|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S26|U1|dffs\(3)))))) # (!\mode~combout\(1) & (((\U0|S24|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S24|U1|dffs\(3),
	datad => \U0|S26|U1|dffs\(3),
	combout => \U0|S25|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X22_Y21_N18
\U0|S25|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U1|dffs[3]~feeder_combout\ = \U0|S25|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S25|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S25|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X22_Y21_N19
\U0|S25|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S25|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S25|U1|dffs\(3));

-- Location: LCCOMB_X21_Y22_N10
\U0|S24|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S23|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S25|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S23|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S23|U1|dffs\(3),
	datab => \U0|S25|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S24|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X22_Y22_N16
\U0|S24|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U1|dffs[3]~feeder_combout\ = \U0|S24|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S24|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S24|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X22_Y22_N17
\U0|S24|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S24|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S24|U1|dffs\(3));

-- Location: LCCOMB_X21_Y20_N30
\U0|M0|auto_generated|result_node[3]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~64_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S25|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S24|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S24|U1|dffs\(3),
	datad => \U0|S25|U1|dffs\(3),
	combout => \U0|M0|auto_generated|result_node[3]~64_combout\);

-- Location: LCCOMB_X20_Y20_N14
\U0|M0|auto_generated|result_node[3]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~66_combout\ = (\U0|M0|auto_generated|result_node[3]~63_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[3]~65_combout\) # (\U0|M0|auto_generated|result_node[3]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[3]~63_combout\,
	datab => \addr~combout\(2),
	datac => \U0|M0|auto_generated|result_node[3]~65_combout\,
	datad => \U0|M0|auto_generated|result_node[3]~64_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~66_combout\);

-- Location: LCCOMB_X13_Y20_N12
\U0|M0|auto_generated|result_node[3]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~67_combout\ = (\addr~combout\(4) & ((\U0|M0|auto_generated|result_node[3]~60_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[3]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[3]~60_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|result_node[3]~66_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~67_combout\);

-- Location: LCCOMB_X13_Y22_N18
\U0|S51|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S51|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\U0|S50|U1|dffs\(3) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datad => \U0|S50|U1|dffs\(3),
	combout => \U0|S51|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCFF_X13_Y22_N19
\U0|S51|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S51|U0|$00000|auto_generated|result_node[3]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S51|U1|dffs\(3));

-- Location: LCCOMB_X12_Y22_N28
\U0|S50|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (\U0|S49|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S51|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S49|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S49|U1|dffs\(3),
	datab => \U0|S51|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S50|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X13_Y22_N4
\U0|S50|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U1|dffs[3]~feeder_combout\ = \U0|S50|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S50|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S50|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X13_Y22_N5
\U0|S50|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S50|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S50|U1|dffs\(3));

-- Location: LCCOMB_X19_Y25_N14
\U0|S48|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U1|dffs[3]~feeder_combout\ = \U0|S48|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S48|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S48|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y25_N15
\U0|S48|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S48|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S48|U1|dffs\(3));

-- Location: LCCOMB_X15_Y25_N12
\U0|S49|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S48|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S50|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S48|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S50|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S48|U1|dffs\(3),
	combout => \U0|S49|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X12_Y22_N10
\U0|S49|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U1|dffs[3]~feeder_combout\ = \U0|S49|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S49|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S49|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X12_Y22_N11
\U0|S49|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S49|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S49|U1|dffs\(3));

-- Location: LCCOMB_X15_Y25_N26
\U0|M0|auto_generated|_~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~87_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S49|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S48|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S48|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \U0|S49|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~87_combout\);

-- Location: LCCOMB_X14_Y21_N0
\U0|M0|auto_generated|_~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~88_combout\ = (\U0|M0|auto_generated|_~87_combout\ & ((\U0|S51|U1|dffs\(3)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~87_combout\ & (((\U0|S50|U1|dffs\(3) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S51|U1|dffs\(3),
	datab => \U0|S50|U1|dffs\(3),
	datac => \U0|M0|auto_generated|_~87_combout\,
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~88_combout\);

-- Location: LCCOMB_X13_Y20_N30
\U0|M0|auto_generated|_~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~155_combout\ = ((!\addr~combout\(2) & (\U0|M0|auto_generated|_~88_combout\ & !\addr~combout\(3)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|_~88_combout\,
	datad => \addr~combout\(3),
	combout => \U0|M0|auto_generated|_~155_combout\);

-- Location: LCCOMB_X18_Y24_N4
\U0|S7|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U1|dffs[3]~feeder_combout\ = \U0|S7|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S7|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S7|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y24_N5
\U0|S7|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S7|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S7|U1|dffs\(3));

-- Location: LCCOMB_X15_Y26_N24
\U0|S6|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S5|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S7|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S5|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S7|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S5|U1|dffs\(3),
	combout => \U0|S6|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y26_N28
\U0|S6|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U1|dffs[3]~feeder_combout\ = \U0|S6|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S6|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S6|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y26_N29
\U0|S6|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S6|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S6|U1|dffs\(3));

-- Location: LCCOMB_X15_Y26_N10
\U0|S5|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S4|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S6|U1|dffs\(3)))))) # (!\mode~combout\(1) & (((\U0|S4|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S4|U1|dffs\(3),
	datad => \U0|S6|U1|dffs\(3),
	combout => \U0|S5|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y26_N6
\U0|S5|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U1|dffs[3]~feeder_combout\ = \U0|S5|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S5|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S5|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y26_N7
\U0|S5|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S5|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S5|U1|dffs\(3));

-- Location: LCCOMB_X18_Y26_N6
\U0|S4|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (\U0|S3|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S5|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S3|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S3|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S5|U1|dffs\(3),
	combout => \U0|S4|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y22_N20
\U0|S4|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U1|dffs[3]~feeder_combout\ = \U0|S4|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S4|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S4|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y22_N21
\U0|S4|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S4|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S4|U1|dffs\(3));

-- Location: LCCOMB_X15_Y26_N22
\U0|S3|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S2|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S4|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S2|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S4|U1|dffs\(3),
	datad => \U0|S2|U1|dffs\(3),
	combout => \U0|S3|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y26_N12
\U0|S3|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U1|dffs[3]~feeder_combout\ = \U0|S3|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S3|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S3|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y26_N13
\U0|S3|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S3|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S3|U1|dffs\(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: LCCOMB_X15_Y26_N4
\U0|S0|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\data~combout\(3))) # (!\mode~combout\(0) & ((\U0|S1|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\data~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \data~combout\(3),
	datac => \mode~combout\(0),
	datad => \U0|S1|U1|dffs\(3),
	combout => \U0|S0|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y24_N26
\U0|S0|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U1|dffs[3]~feeder_combout\ = \U0|S0|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S0|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S0|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y24_N27
\U0|S0|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S0|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S0|U1|dffs\(3));

-- Location: LCCOMB_X15_Y26_N14
\U0|S1|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S0|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S2|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S0|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S2|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S0|U1|dffs\(3),
	combout => \U0|S1|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y26_N4
\U0|S1|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U1|dffs[3]~feeder_combout\ = \U0|S1|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S1|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S1|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y26_N5
\U0|S1|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S1|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S1|U1|dffs\(3));

-- Location: LCCOMB_X15_Y26_N28
\U0|S2|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S1|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S3|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S1|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S3|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \U0|S1|U1|dffs\(3),
	combout => \U0|S2|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y26_N30
\U0|S2|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U1|dffs[3]~feeder_combout\ = \U0|S2|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S2|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S2|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y26_N31
\U0|S2|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S2|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S2|U1|dffs\(3));

-- Location: LCCOMB_X15_Y26_N30
\U0|M0|auto_generated|_~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~85_combout\ = (\addr~combout\(0) & ((\U0|S1|U1|dffs\(3)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S0|U1|dffs\(3) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S1|U1|dffs\(3),
	datab => \U0|S0|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~85_combout\);

-- Location: LCCOMB_X15_Y26_N12
\U0|M0|auto_generated|_~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~86_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~85_combout\ & ((\U0|S3|U1|dffs\(3)))) # (!\U0|M0|auto_generated|_~85_combout\ & (\U0|S2|U1|dffs\(3))))) # (!\addr~combout\(1) & (((\U0|M0|auto_generated|_~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S2|U1|dffs\(3),
	datac => \U0|S3|U1|dffs\(3),
	datad => \U0|M0|auto_generated|_~85_combout\,
	combout => \U0|M0|auto_generated|_~86_combout\);

-- Location: LCCOMB_X14_Y26_N22
\U0|M0|auto_generated|result_node[3]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~52_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\U0|M0|auto_generated|_~84_combout\)) # (!\addr~combout\(2) & ((\U0|M0|auto_generated|_~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~84_combout\,
	datab => \addr~combout\(3),
	datac => \U0|M0|auto_generated|_~86_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[3]~52_combout\);

-- Location: LCCOMB_X14_Y25_N2
\U0|M0|auto_generated|result_node[3]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~59_combout\ = (\U0|M0|auto_generated|result_node[0]~0_combout\ & ((\U0|M0|auto_generated|result_node[3]~52_combout\) # ((\U0|M0|auto_generated|result_node[3]~58_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[3]~58_combout\,
	datab => \U0|M0|auto_generated|result_node[3]~52_combout\,
	datac => \U0|M0|auto_generated|result_node[0]~0_combout\,
	datad => \addr~combout\(3),
	combout => \U0|M0|auto_generated|result_node[3]~59_combout\);

-- Location: LCCOMB_X15_Y19_N30
\U0|S46|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S45|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S47|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S45|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S47|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S45|U1|dffs\(3),
	combout => \U0|S46|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y25_N6
\U0|S46|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U1|dffs[3]~feeder_combout\ = \U0|S46|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S46|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S46|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y25_N7
\U0|S46|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S46|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S46|U1|dffs\(3));

-- Location: LCCOMB_X15_Y21_N12
\U0|S45|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S44|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S46|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S44|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S44|U1|dffs\(3),
	datad => \U0|S46|U1|dffs\(3),
	combout => \U0|S45|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y21_N28
\U0|S45|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U1|dffs[3]~feeder_combout\ = \U0|S45|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S45|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S45|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X15_Y21_N29
\U0|S45|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S45|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S45|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N8
\U0|S44|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S43|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S45|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S43|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S45|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \U0|S43|U1|dffs\(3),
	combout => \U0|S44|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y25_N0
\U0|S44|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U1|dffs[3]~feeder_combout\ = \U0|S44|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S44|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S44|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y25_N1
\U0|S44|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S44|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[44]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S44|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N20
\U0|S43|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S42|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S44|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S42|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S44|U1|dffs\(3),
	datad => \U0|S42|U1|dffs\(3),
	combout => \U0|S43|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y23_N26
\U0|S43|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U1|dffs[3]~feeder_combout\ = \U0|S43|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S43|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S43|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y23_N27
\U0|S43|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S43|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[43]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S43|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N22
\U0|S42|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S41|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S43|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S41|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S43|U1|dffs\(3),
	combout => \U0|S42|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y23_N0
\U0|S42|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U1|dffs[3]~feeder_combout\ = \U0|S42|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S42|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S42|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X19_Y23_N1
\U0|S42|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S42|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[42]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S42|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N18
\U0|M0|auto_generated|_~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~103_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S43|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S42|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S42|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|S43|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~103_combout\);

-- Location: LCCOMB_X18_Y23_N30
\U0|S35|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S34|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S36|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S34|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S34|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S36|U1|dffs\(3),
	combout => \U0|S35|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y23_N28
\U0|S35|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U1|dffs[3]~feeder_combout\ = \U0|S35|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S35|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S35|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y23_N29
\U0|S35|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S35|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S35|U1|dffs\(3));

-- Location: LCCOMB_X15_Y23_N16
\U0|S36|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S35|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S37|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S35|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S37|U1|dffs\(3),
	datad => \U0|S35|U1|dffs\(3),
	combout => \U0|S36|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y23_N26
\U0|S36|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U1|dffs[3]~feeder_combout\ = \U0|S36|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S36|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S36|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y23_N27
\U0|S36|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S36|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[36]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S36|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N24
\U0|S37|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S36|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S38|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S36|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S38|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \U0|S36|U1|dffs\(3),
	combout => \U0|S37|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y23_N4
\U0|S37|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U1|dffs[3]~feeder_combout\ = \U0|S37|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S37|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S37|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X15_Y23_N5
\U0|S37|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S37|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S37|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N14
\U0|S38|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S37|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S39|U1|dffs\(3))) # (!\mode~combout\(1) & ((\U0|S37|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S39|U1|dffs\(3),
	datad => \U0|S37|U1|dffs\(3),
	combout => \U0|S38|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y19_N30
\U0|S38|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U1|dffs[3]~feeder_combout\ = \U0|S38|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S38|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S38|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y19_N31
\U0|S38|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S38|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[38]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S38|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N2
\U0|S39|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S38|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S40|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S38|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S40|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S38|U1|dffs\(3),
	combout => \U0|S39|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X13_Y23_N20
\U0|S39|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U1|dffs[3]~feeder_combout\ = \U0|S39|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S39|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S39|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X13_Y23_N21
\U0|S39|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S39|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S39|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N28
\U0|S41|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S40|U1|dffs\(3))) # (!\mode~combout\(0) & ((\U0|S42|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\U0|S40|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S40|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S42|U1|dffs\(3),
	combout => \U0|S41|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y23_N14
\U0|S41|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U1|dffs[3]~feeder_combout\ = \U0|S41|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S41|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S41|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X14_Y23_N15
\U0|S41|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S41|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[41]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S41|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N10
\U0|S40|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(0) & (((\U0|S39|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S41|U1|dffs\(3)))) # (!\mode~combout\(1) & (\U0|S39|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S39|U1|dffs\(3),
	datad => \U0|S41|U1|dffs\(3),
	combout => \U0|S40|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y23_N4
\U0|S40|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S40|U1|dffs[3]~feeder_combout\ = \U0|S40|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S40|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S40|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y23_N5
\U0|S40|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S40|U1|dffs[3]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[40]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S40|U1|dffs\(3));

-- Location: LCCOMB_X15_Y19_N4
\U0|M0|auto_generated|_~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~102_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S41|U1|dffs\(3))) # (!\addr~combout\(0) & ((\U0|S40|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S41|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \U0|S40|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~102_combout\);

-- Location: LCCOMB_X15_Y19_N0
\U0|M0|auto_generated|_~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~104_combout\ = (\U0|M0|auto_generated|_~101_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|_~103_combout\) # (\U0|M0|auto_generated|_~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~101_combout\,
	datab => \U0|M0|auto_generated|_~103_combout\,
	datac => \U0|M0|auto_generated|_~102_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~104_combout\);

-- Location: LCCOMB_X14_Y20_N22
\U0|S34|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S33|U1|dffs\(3)))) # (!\mode~combout\(0) & (\U0|S35|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\U0|S33|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S33|U1|dffs\(3),
	combout => \U0|S34|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y23_N24
\U0|S34|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U1|dffs[3]~feeder_combout\ = \U0|S34|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S34|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \U0|S34|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X14_Y23_N25
\U0|S34|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S34|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[34]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S34|U1|dffs\(3));

-- Location: LCCOMB_X14_Y20_N6
\U0|M0|auto_generated|_~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~96_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S33|U1|dffs\(3)))) # (!\addr~combout\(0) & (\U0|S32|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \U0|S32|U1|dffs\(3),
	datad => \U0|S33|U1|dffs\(3),
	combout => \U0|M0|auto_generated|_~96_combout\);

-- Location: LCCOMB_X14_Y20_N12
\U0|M0|auto_generated|_~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~97_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~96_combout\ & (\U0|S35|U1|dffs\(3))) # (!\U0|M0|auto_generated|_~96_combout\ & ((\U0|S34|U1|dffs\(3)))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(3),
	datab => \U0|S34|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \U0|M0|auto_generated|_~96_combout\,
	combout => \U0|M0|auto_generated|_~97_combout\);

-- Location: LCCOMB_X13_Y20_N8
\U0|M0|auto_generated|_~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~98_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\U0|M0|auto_generated|_~97_combout\ & \U0|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \U0|M0|auto_generated|_~97_combout\,
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|_~16_combout\,
	combout => \U0|M0|auto_generated|_~98_combout\);

-- Location: LCCOMB_X13_Y20_N26
\U0|M0|auto_generated|_~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~105_combout\ = (\U0|M0|auto_generated|_~95_combout\) # ((\U0|M0|auto_generated|_~98_combout\) # ((\U0|M0|auto_generated|_~104_combout\ & \U0|M0|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~95_combout\,
	datab => \U0|M0|auto_generated|_~104_combout\,
	datac => \U0|M0|auto_generated|_~98_combout\,
	datad => \U0|M0|auto_generated|_~35_combout\,
	combout => \U0|M0|auto_generated|_~105_combout\);

-- Location: LCCOMB_X13_Y20_N4
\U0|M0|auto_generated|result_node[3]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[3]~68_combout\ = (\U0|M0|auto_generated|result_node[3]~59_combout\) # ((\U0|M0|auto_generated|_~105_combout\ & ((\U0|M0|auto_generated|_~155_combout\))) # (!\U0|M0|auto_generated|_~105_combout\ & 
-- (\U0|M0|auto_generated|result_node[3]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[3]~67_combout\,
	datab => \U0|M0|auto_generated|_~155_combout\,
	datac => \U0|M0|auto_generated|result_node[3]~59_combout\,
	datad => \U0|M0|auto_generated|_~105_combout\,
	combout => \U0|M0|auto_generated|result_node[3]~68_combout\);

-- Location: LCCOMB_X14_Y22_N24
\U0|S10|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S10|U1|dffs[4]~feeder_combout\ = \U0|S10|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S10|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S10|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X14_Y22_N25
\U0|S10|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S10|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S10|U1|dffs\(4));

-- Location: LCCOMB_X15_Y24_N30
\U0|M0|auto_generated|result_node[4]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~74_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S10|U1|dffs\(4)))) # (!\addr~combout\(1) & (\U0|S8|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S8|U1|dffs\(4),
	datab => \U0|S10|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[4]~74_combout\);

-- Location: LCCOMB_X16_Y22_N0
\U0|S12|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S12|U1|dffs[4]~feeder_combout\ = \U0|S12|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S12|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S12|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y22_N1
\U0|S12|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S12|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S12|U1|dffs\(4));

-- Location: LCCOMB_X15_Y24_N2
\U0|S11|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S10|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S12|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S10|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S10|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S12|U1|dffs\(4),
	combout => \U0|S11|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X16_Y21_N18
\U0|S11|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S11|U1|dffs[4]~feeder_combout\ = \U0|S11|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S11|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S11|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y21_N19
\U0|S11|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S11|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[11]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S11|U1|dffs\(4));

-- Location: LCCOMB_X15_Y24_N24
\U0|M0|auto_generated|result_node[4]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~73_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S11|U1|dffs\(4)))) # (!\addr~combout\(1) & (\U0|S9|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S9|U1|dffs\(4),
	datab => \U0|S11|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[4]~73_combout\);

-- Location: LCCOMB_X15_Y24_N20
\U0|M0|auto_generated|result_node[4]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~75_combout\ = (\U0|M0|auto_generated|result_node[4]~72_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[4]~74_combout\) # (\U0|M0|auto_generated|result_node[4]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[4]~72_combout\,
	datab => \U0|M0|auto_generated|result_node[4]~74_combout\,
	datac => \U0|M0|auto_generated|result_node[4]~73_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[4]~75_combout\);

-- Location: LCCOMB_X15_Y25_N10
\U0|S9|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S8|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S10|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S8|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S10|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S8|U1|dffs\(4),
	combout => \U0|S9|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y25_N0
\U0|S9|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S9|U1|dffs[4]~feeder_combout\ = \U0|S9|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S9|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S9|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y25_N1
\U0|S9|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S9|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[9]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S9|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N12
\U0|S8|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S7|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S9|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S7|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S9|U1|dffs\(4),
	datad => \U0|S7|U1|dffs\(4),
	combout => \U0|S8|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y26_N26
\U0|S8|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S8|U1|dffs[4]~feeder_combout\ = \U0|S8|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S8|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S8|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y26_N27
\U0|S8|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S8|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S8|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N14
\U0|S7|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S6|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S8|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S6|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S8|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S6|U1|dffs\(4),
	combout => \U0|S7|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y24_N8
\U0|S7|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S7|U1|dffs[4]~feeder_combout\ = \U0|S7|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S7|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S7|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y24_N9
\U0|S7|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S7|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S7|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N24
\U0|S6|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S5|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S7|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S5|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S5|U1|dffs\(4),
	datad => \U0|S7|U1|dffs\(4),
	combout => \U0|S6|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y26_N16
\U0|S6|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S6|U1|dffs[4]~feeder_combout\ = \U0|S6|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S6|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S6|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y26_N17
\U0|S6|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S6|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S6|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N30
\U0|S5|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S4|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S6|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S4|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S6|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S4|U1|dffs\(4),
	combout => \U0|S5|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y26_N30
\U0|S5|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S5|U1|dffs[4]~feeder_combout\ = \U0|S5|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S5|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S5|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y26_N31
\U0|S5|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S5|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S5|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N4
\U0|S4|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S3|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S5|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S3|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S5|U1|dffs\(4),
	datad => \U0|S3|U1|dffs\(4),
	combout => \U0|S4|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y22_N0
\U0|S4|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S4|U1|dffs[4]~feeder_combout\ = \U0|S4|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S4|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S4|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y22_N1
\U0|S4|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S4|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S4|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N2
\U0|S3|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S2|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S4|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S2|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S2|U1|dffs\(4),
	datad => \U0|S4|U1|dffs\(4),
	combout => \U0|S3|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y26_N4
\U0|S3|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U1|dffs[4]~feeder_combout\ = \U0|S3|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S3|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S3|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y26_N5
\U0|S3|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S3|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S3|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N8
\U0|S2|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (\U0|S1|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S3|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S1|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S1|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S3|U1|dffs\(4),
	combout => \U0|S2|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X16_Y26_N2
\U0|S2|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U1|dffs[4]~feeder_combout\ = \U0|S2|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S2|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S2|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y26_N3
\U0|S2|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S2|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S2|U1|dffs\(4));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: LCCOMB_X20_Y26_N16
\U0|S0|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\data~combout\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S1|U1|dffs\(4)))) # (!\mode~combout\(1) & (\data~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \data~combout\(4),
	datad => \U0|S1|U1|dffs\(4),
	combout => \U0|S0|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y24_N18
\U0|S0|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U1|dffs[4]~feeder_combout\ = \U0|S0|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S0|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S0|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y24_N19
\U0|S0|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S0|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S0|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N26
\U0|S1|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S0|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S2|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S0|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S2|U1|dffs\(4),
	datad => \U0|S0|U1|dffs\(4),
	combout => \U0|S1|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X16_Y26_N24
\U0|S1|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U1|dffs[4]~feeder_combout\ = \U0|S1|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S1|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S1|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y26_N25
\U0|S1|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S1|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S1|U1|dffs\(4));

-- Location: LCCOMB_X20_Y26_N0
\U0|M0|auto_generated|_~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~108_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S1|U1|dffs\(4))) # (!\addr~combout\(0) & ((\U0|S0|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S1|U1|dffs\(4),
	datac => \U0|S0|U1|dffs\(4),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~108_combout\);

-- Location: LCCOMB_X20_Y26_N22
\U0|M0|auto_generated|_~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~109_combout\ = (\U0|M0|auto_generated|_~108_combout\ & ((\U0|S3|U1|dffs\(4)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~108_combout\ & (((\U0|S2|U1|dffs\(4) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S3|U1|dffs\(4),
	datab => \U0|M0|auto_generated|_~108_combout\,
	datac => \U0|S2|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~109_combout\);

-- Location: LCCOMB_X20_Y26_N20
\U0|M0|auto_generated|_~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~106_combout\ = (\addr~combout\(0) & (((\U0|S5|U1|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S4|U1|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S4|U1|dffs\(4),
	datab => \addr~combout\(0),
	datac => \U0|S5|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~106_combout\);

-- Location: LCCOMB_X20_Y26_N10
\U0|M0|auto_generated|_~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~107_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~106_combout\ & ((\U0|S7|U1|dffs\(4)))) # (!\U0|M0|auto_generated|_~106_combout\ & (\U0|S6|U1|dffs\(4))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S6|U1|dffs\(4),
	datac => \U0|M0|auto_generated|_~106_combout\,
	datad => \U0|S7|U1|dffs\(4),
	combout => \U0|M0|auto_generated|_~107_combout\);

-- Location: LCCOMB_X20_Y26_N28
\U0|M0|auto_generated|result_node[4]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~69_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~107_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \U0|M0|auto_generated|_~109_combout\,
	datac => \addr~combout\(3),
	datad => \U0|M0|auto_generated|_~107_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~69_combout\);

-- Location: LCCOMB_X13_Y24_N16
\U0|M0|auto_generated|result_node[4]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~76_combout\ = (\U0|M0|auto_generated|result_node[0]~0_combout\ & ((\U0|M0|auto_generated|result_node[4]~69_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[4]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|result_node[4]~75_combout\,
	datac => \U0|M0|auto_generated|result_node[0]~0_combout\,
	datad => \U0|M0|auto_generated|result_node[4]~69_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~76_combout\);

-- Location: LCCOMB_X18_Y20_N6
\U0|S18|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S18|U1|dffs[4]~feeder_combout\ = \U0|S18|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S18|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S18|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y20_N7
\U0|S18|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S18|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S18|U1|dffs\(4));

-- Location: LCCOMB_X19_Y20_N20
\U0|S17|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S17|U1|dffs[4]~feeder_combout\ = \U0|S17|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S17|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S17|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y20_N21
\U0|S17|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S17|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S17|U1|dffs\(4));

-- Location: LCCOMB_X15_Y24_N10
\U0|M0|auto_generated|_~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~114_combout\ = (\addr~combout\(0) & (((\U0|S17|U1|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S16|U1|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S16|U1|dffs\(4),
	datab => \U0|S17|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~114_combout\);

-- Location: LCCOMB_X15_Y24_N12
\U0|M0|auto_generated|_~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~115_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~114_combout\ & (\U0|S19|U1|dffs\(4))) # (!\U0|M0|auto_generated|_~114_combout\ & ((\U0|S18|U1|dffs\(4)))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S19|U1|dffs\(4),
	datab => \addr~combout\(1),
	datac => \U0|S18|U1|dffs\(4),
	datad => \U0|M0|auto_generated|_~114_combout\,
	combout => \U0|M0|auto_generated|_~115_combout\);

-- Location: LCCOMB_X20_Y22_N16
\U0|S20|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U1|dffs[4]~feeder_combout\ = \U0|S20|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S20|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S20|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y22_N17
\U0|S20|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S20|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S20|U1|dffs\(4));

-- Location: LCCOMB_X16_Y20_N8
\U0|S28|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U1|dffs[4]~feeder_combout\ = \U0|S28|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S28|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S28|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y20_N9
\U0|S28|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S28|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S28|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N4
\U0|S27|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S26|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S28|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S26|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S26|U1|dffs\(4),
	datad => \U0|S28|U1|dffs\(4),
	combout => \U0|S27|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X20_Y20_N16
\U0|S27|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U1|dffs[4]~feeder_combout\ = \U0|S27|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S27|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S27|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y20_N17
\U0|S27|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S27|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S27|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N10
\U0|S26|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S25|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S27|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S25|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S25|U1|dffs\(4),
	datad => \U0|S27|U1|dffs\(4),
	combout => \U0|S26|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X22_Y22_N30
\U0|S26|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U1|dffs[4]~feeder_combout\ = \U0|S26|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S26|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S26|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y22_N31
\U0|S26|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S26|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S26|U1|dffs\(4));

-- Location: LCCOMB_X22_Y22_N22
\U0|S25|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S24|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S26|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S24|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S24|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S26|U1|dffs\(4),
	combout => \U0|S25|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X22_Y21_N28
\U0|S25|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U1|dffs[4]~feeder_combout\ = \U0|S25|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S25|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S25|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y21_N29
\U0|S25|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S25|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S25|U1|dffs\(4));

-- Location: LCCOMB_X22_Y21_N24
\U0|S24|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S23|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S25|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\U0|S23|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S23|U1|dffs\(4),
	datad => \U0|S25|U1|dffs\(4),
	combout => \U0|S24|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X22_Y22_N8
\U0|S24|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U1|dffs[4]~feeder_combout\ = \U0|S24|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S24|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S24|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y22_N9
\U0|S24|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S24|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S24|U1|dffs\(4));

-- Location: LCCOMB_X18_Y21_N22
\U0|S23|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S22|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S24|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S22|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S24|U1|dffs\(4),
	datad => \U0|S22|U1|dffs\(4),
	combout => \U0|S23|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y21_N2
\U0|S23|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U1|dffs[4]~feeder_combout\ = \U0|S23|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S23|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S23|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y21_N3
\U0|S23|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S23|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S23|U1|dffs\(4));

-- Location: LCCOMB_X18_Y21_N16
\U0|S22|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S21|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S23|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\U0|S21|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S21|U1|dffs\(4),
	datad => \U0|S23|U1|dffs\(4),
	combout => \U0|S22|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y20_N8
\U0|S22|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U1|dffs[4]~feeder_combout\ = \U0|S22|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S22|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S22|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y20_N9
\U0|S22|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S22|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S22|U1|dffs\(4));

-- Location: LCCOMB_X18_Y21_N30
\U0|S21|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S20|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S22|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\U0|S20|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S20|U1|dffs\(4),
	datad => \U0|S22|U1|dffs\(4),
	combout => \U0|S21|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y21_N8
\U0|S21|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U1|dffs[4]~feeder_combout\ = \U0|S21|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S21|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S21|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y21_N9
\U0|S21|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S21|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S21|U1|dffs\(4));

-- Location: LCCOMB_X18_Y21_N14
\U0|M0|auto_generated|_~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~112_combout\ = (\addr~combout\(0) & ((\U0|S21|U1|dffs\(4)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S20|U1|dffs\(4) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S21|U1|dffs\(4),
	datac => \U0|S20|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~112_combout\);

-- Location: LCCOMB_X18_Y21_N12
\U0|M0|auto_generated|_~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~113_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~112_combout\ & ((\U0|S23|U1|dffs\(4)))) # (!\U0|M0|auto_generated|_~112_combout\ & (\U0|S22|U1|dffs\(4))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S22|U1|dffs\(4),
	datab => \addr~combout\(1),
	datac => \U0|M0|auto_generated|_~112_combout\,
	datad => \U0|S23|U1|dffs\(4),
	combout => \U0|M0|auto_generated|_~113_combout\);

-- Location: LCCOMB_X14_Y24_N12
\U0|M0|auto_generated|result_node[4]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~77_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~113_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|_~115_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~113_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~77_combout\);

-- Location: LCCOMB_X21_Y20_N26
\U0|M0|auto_generated|result_node[4]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~82_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S27|U1|dffs\(4))) # (!\addr~combout\(0) & ((\U0|S26|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S27|U1|dffs\(4),
	datac => \U0|S26|U1|dffs\(4),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[4]~82_combout\);

-- Location: LCCOMB_X21_Y23_N30
\U0|S33|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S32|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S34|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S32|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S34|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S32|U1|dffs\(4),
	combout => \U0|S33|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X21_Y23_N26
\U0|S33|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S33|U1|dffs[4]~feeder_combout\ = \U0|S33|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S33|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S33|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y23_N27
\U0|S33|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S33|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[33]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S33|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N22
\U0|S32|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S31|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S33|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S31|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S31|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S33|U1|dffs\(4),
	combout => \U0|S32|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y23_N14
\U0|S32|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S32|U1|dffs[4]~feeder_combout\ = \U0|S32|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S32|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S32|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y23_N15
\U0|S32|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S32|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[32]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S32|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N28
\U0|S31|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S30|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S32|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S30|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S30|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S32|U1|dffs\(4),
	combout => \U0|S31|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y22_N28
\U0|S31|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U1|dffs[4]~feeder_combout\ = \U0|S31|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S31|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S31|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y22_N29
\U0|S31|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S31|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S31|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N2
\U0|S30|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S29|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S31|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S29|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S29|U1|dffs\(4),
	datad => \U0|S31|U1|dffs\(4),
	combout => \U0|S30|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X16_Y20_N10
\U0|S30|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U1|dffs[4]~feeder_combout\ = \U0|S30|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S30|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S30|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y20_N11
\U0|S30|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S30|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S30|U1|dffs\(4));

-- Location: LCCOMB_X16_Y20_N4
\U0|S29|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S28|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S30|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S28|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S28|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \U0|S30|U1|dffs\(4),
	combout => \U0|S29|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X19_Y22_N26
\U0|S29|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U1|dffs[4]~feeder_combout\ = \U0|S29|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S29|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S29|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y22_N27
\U0|S29|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S29|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S29|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N16
\U0|M0|auto_generated|result_node[4]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~78_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S29|U1|dffs\(4)))) # (!\addr~combout\(0) & (\U0|S28|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S28|U1|dffs\(4),
	datab => \U0|S29|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[4]~78_combout\);

-- Location: LCCOMB_X22_Y20_N30
\U0|M0|auto_generated|result_node[4]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~80_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[4]~79_combout\) # (\U0|M0|auto_generated|result_node[4]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[4]~79_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[4]~78_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~80_combout\);

-- Location: LCCOMB_X21_Y20_N0
\U0|M0|auto_generated|result_node[4]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~83_combout\ = (\U0|M0|auto_generated|result_node[4]~80_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[4]~81_combout\) # (\U0|M0|auto_generated|result_node[4]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[4]~81_combout\,
	datab => \U0|M0|auto_generated|result_node[4]~82_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[4]~80_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~83_combout\);

-- Location: LCCOMB_X13_Y24_N26
\U0|M0|auto_generated|result_node[4]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~84_combout\ = (\addr~combout\(4) & ((\U0|M0|auto_generated|result_node[4]~77_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[4]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|result_node[4]~77_combout\,
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|result_node[4]~83_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~84_combout\);

-- Location: LCCOMB_X21_Y20_N18
\U0|M0|auto_generated|_~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~119_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\U0|S33|U1|dffs\(4))))) # (!\addr~combout\(0) & (\U0|S32|U1|dffs\(4) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S32|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \U0|S33|U1|dffs\(4),
	combout => \U0|M0|auto_generated|_~119_combout\);

-- Location: LCCOMB_X15_Y23_N28
\U0|S37|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S36|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S38|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S36|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S38|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S36|U1|dffs\(4),
	combout => \U0|S37|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y23_N10
\U0|S37|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U1|dffs[4]~feeder_combout\ = \U0|S37|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S37|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S37|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X15_Y23_N11
\U0|S37|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S37|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S37|U1|dffs\(4));

-- Location: LCCOMB_X19_Y23_N28
\U0|S36|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S35|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S37|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S35|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S37|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S35|U1|dffs\(4),
	combout => \U0|S36|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X16_Y23_N22
\U0|S36|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S36|U1|dffs[4]~feeder_combout\ = \U0|S36|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S36|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S36|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y23_N23
\U0|S36|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S36|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[36]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S36|U1|dffs\(4));

-- Location: LCCOMB_X21_Y23_N4
\U0|S35|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S34|U1|dffs\(4))) # (!\mode~combout\(0) & ((\U0|S36|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\U0|S34|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S34|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \U0|S36|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \U0|S35|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X21_Y23_N16
\U0|S35|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S35|U1|dffs[4]~feeder_combout\ = \U0|S35|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S35|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S35|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y23_N17
\U0|S35|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S35|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[35]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S35|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N12
\U0|S34|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S33|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S35|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S33|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S35|U1|dffs\(4),
	datad => \U0|S33|U1|dffs\(4),
	combout => \U0|S34|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X14_Y23_N28
\U0|S34|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S34|U1|dffs[4]~feeder_combout\ = \U0|S34|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S34|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S34|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X14_Y23_N29
\U0|S34|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S34|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[34]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S34|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N20
\U0|M0|auto_generated|_~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~120_combout\ = (\U0|M0|auto_generated|_~119_combout\ & ((\U0|S35|U1|dffs\(4)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~119_combout\ & (((\addr~combout\(1) & \U0|S34|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S35|U1|dffs\(4),
	datab => \U0|M0|auto_generated|_~119_combout\,
	datac => \addr~combout\(1),
	datad => \U0|S34|U1|dffs\(4),
	combout => \U0|M0|auto_generated|_~120_combout\);

-- Location: LCCOMB_X13_Y20_N22
\U0|M0|auto_generated|_~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~121_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\U0|M0|auto_generated|_~120_combout\ & \U0|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|_~120_combout\,
	datad => \U0|M0|auto_generated|_~16_combout\,
	combout => \U0|M0|auto_generated|_~121_combout\);

-- Location: LCCOMB_X13_Y23_N4
\U0|M0|auto_generated|_~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~116_combout\ = (\addr~combout\(0) & (((\U0|S37|U1|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S36|U1|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S36|U1|dffs\(4),
	datac => \U0|S37|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~116_combout\);

-- Location: LCCOMB_X15_Y23_N6
\U0|S38|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S37|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S39|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S37|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S39|U1|dffs\(4),
	datad => \U0|S37|U1|dffs\(4),
	combout => \U0|S38|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X16_Y19_N4
\U0|S38|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U1|dffs[4]~feeder_combout\ = \U0|S38|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S38|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S38|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y19_N5
\U0|S38|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S38|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[38]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S38|U1|dffs\(4));

-- Location: LCCOMB_X15_Y23_N22
\U0|S39|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S38|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S40|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S38|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S40|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S38|U1|dffs\(4),
	combout => \U0|S39|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X13_Y23_N26
\U0|S39|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U1|dffs[4]~feeder_combout\ = \U0|S39|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S39|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S39|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X13_Y23_N27
\U0|S39|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S39|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S39|U1|dffs\(4));

-- Location: LCCOMB_X13_Y20_N18
\U0|M0|auto_generated|_~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~117_combout\ = (\U0|M0|auto_generated|_~116_combout\ & (((\U0|S39|U1|dffs\(4)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~116_combout\ & (\U0|S38|U1|dffs\(4) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S38|U1|dffs\(4),
	datab => \U0|M0|auto_generated|_~116_combout\,
	datac => \U0|S39|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~117_combout\);

-- Location: LCCOMB_X13_Y20_N20
\U0|M0|auto_generated|_~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~118_combout\ = (\addr~combout\(5) & (!\addr~combout\(3) & (\addr~combout\(2) & \U0|M0|auto_generated|_~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~117_combout\,
	combout => \U0|M0|auto_generated|_~118_combout\);

-- Location: LCCOMB_X13_Y20_N16
\U0|M0|auto_generated|_~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~128_combout\ = (\U0|M0|auto_generated|_~121_combout\) # ((\U0|M0|auto_generated|_~118_combout\) # ((\U0|M0|auto_generated|_~127_combout\ & \U0|M0|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~127_combout\,
	datab => \U0|M0|auto_generated|_~121_combout\,
	datac => \U0|M0|auto_generated|_~118_combout\,
	datad => \U0|M0|auto_generated|_~35_combout\,
	combout => \U0|M0|auto_generated|_~128_combout\);

-- Location: LCCOMB_X15_Y20_N28
\U0|S50|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S49|U1|dffs\(4)))) # (!\mode~combout\(0) & (\U0|S51|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\U0|S49|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S51|U1|dffs\(4),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S49|U1|dffs\(4),
	combout => \U0|S50|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X13_Y22_N20
\U0|S50|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U1|dffs[4]~feeder_combout\ = \U0|S50|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S50|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S50|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X13_Y22_N21
\U0|S50|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S50|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S50|U1|dffs\(4));

-- Location: LCCOMB_X15_Y20_N18
\U0|S49|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S48|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S50|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S48|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S50|U1|dffs\(4),
	datad => \U0|S48|U1|dffs\(4),
	combout => \U0|S49|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X12_Y22_N8
\U0|S49|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U1|dffs[4]~feeder_combout\ = \U0|S49|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S49|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S49|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X12_Y22_N9
\U0|S49|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S49|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S49|U1|dffs\(4));

-- Location: LCCOMB_X16_Y25_N14
\U0|S46|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U1|dffs[4]~feeder_combout\ = \U0|S46|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S46|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S46|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X16_Y25_N15
\U0|S46|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S46|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S46|U1|dffs\(4));

-- Location: LCCOMB_X15_Y20_N8
\U0|S47|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (\U0|S46|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S48|U1|dffs\(4)))) # (!\mode~combout\(1) & (\U0|S46|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S46|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \U0|S48|U1|dffs\(4),
	combout => \U0|S47|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X15_Y20_N0
\U0|S47|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U1|dffs[4]~feeder_combout\ = \U0|S47|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S47|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S47|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X15_Y20_N1
\U0|S47|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S47|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[47]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S47|U1|dffs\(4));

-- Location: LCCOMB_X15_Y20_N24
\U0|S48|U0|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U0|$00000|auto_generated|result_node[4]~4_combout\ = (\mode~combout\(0) & (((\U0|S47|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S49|U1|dffs\(4))) # (!\mode~combout\(1) & ((\U0|S47|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S49|U1|dffs\(4),
	datad => \U0|S47|U1|dffs\(4),
	combout => \U0|S48|U0|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X18_Y25_N22
\U0|S48|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U1|dffs[4]~feeder_combout\ = \U0|S48|U0|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S48|U0|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \U0|S48|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y25_N23
\U0|S48|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S48|U1|dffs[4]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S48|U1|dffs\(4));

-- Location: LCCOMB_X15_Y20_N26
\U0|M0|auto_generated|_~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~110_combout\ = (\addr~combout\(0) & (((\U0|S49|U1|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S48|U1|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S48|U1|dffs\(4),
	datac => \U0|S49|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~110_combout\);

-- Location: LCCOMB_X15_Y20_N16
\U0|M0|auto_generated|_~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~111_combout\ = (\U0|M0|auto_generated|_~110_combout\ & ((\U0|S51|U1|dffs\(4)) # ((!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~110_combout\ & (((\U0|S50|U1|dffs\(4) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S51|U1|dffs\(4),
	datab => \U0|M0|auto_generated|_~110_combout\,
	datac => \U0|S50|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~111_combout\);

-- Location: LCCOMB_X13_Y24_N10
\U0|M0|auto_generated|_~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~156_combout\ = ((!\addr~combout\(3) & (\U0|M0|auto_generated|_~111_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|_~111_combout\,
	datac => \addr~combout\(4),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~156_combout\);

-- Location: LCCOMB_X13_Y24_N20
\U0|M0|auto_generated|result_node[4]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[4]~85_combout\ = (\U0|M0|auto_generated|result_node[4]~76_combout\) # ((\U0|M0|auto_generated|_~128_combout\ & ((\U0|M0|auto_generated|_~156_combout\))) # (!\U0|M0|auto_generated|_~128_combout\ & 
-- (\U0|M0|auto_generated|result_node[4]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[4]~76_combout\,
	datab => \U0|M0|auto_generated|result_node[4]~84_combout\,
	datac => \U0|M0|auto_generated|_~128_combout\,
	datad => \U0|M0|auto_generated|_~156_combout\,
	combout => \U0|M0|auto_generated|result_node[4]~85_combout\);

-- Location: LCCOMB_X21_Y24_N2
\U0|M0|auto_generated|_~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~144_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\U0|M0|auto_generated|_~143_combout\ & \U0|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~143_combout\,
	datab => \addr~combout\(5),
	datac => \addr~combout\(4),
	datad => \U0|M0|auto_generated|_~16_combout\,
	combout => \U0|M0|auto_generated|_~144_combout\);

-- Location: LCCOMB_X13_Y21_N4
\U0|S37|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (\U0|S36|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S38|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S36|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S36|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S38|U1|dffs\(5),
	combout => \U0|S37|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y23_N24
\U0|S37|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S37|U1|dffs[5]~feeder_combout\ = \U0|S37|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S37|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S37|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X15_Y23_N25
\U0|S37|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S37|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S37|U1|dffs\(5));

-- Location: LCCOMB_X13_Y21_N26
\U0|S38|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S37|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S39|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S37|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S39|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \U0|S37|U1|dffs\(5),
	combout => \U0|S38|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y19_N10
\U0|S38|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S38|U1|dffs[5]~feeder_combout\ = \U0|S38|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S38|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S38|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y19_N11
\U0|S38|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S38|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[38]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S38|U1|dffs\(5));

-- Location: LCCOMB_X13_Y21_N2
\U0|S39|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S38|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S40|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S38|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S40|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \U0|S38|U1|dffs\(5),
	combout => \U0|S39|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y23_N12
\U0|S39|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S39|U1|dffs[5]~feeder_combout\ = \U0|S39|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S39|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S39|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X13_Y23_N13
\U0|S39|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S39|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S39|U1|dffs\(5));

-- Location: LCCOMB_X13_Y21_N12
\U0|M0|auto_generated|_~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~139_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\U0|S37|U1|dffs\(5)))) # (!\addr~combout\(0) & (\U0|S36|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S36|U1|dffs\(5),
	datab => \U0|S37|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|_~139_combout\);

-- Location: LCCOMB_X13_Y21_N18
\U0|M0|auto_generated|_~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~140_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~139_combout\ & ((\U0|S39|U1|dffs\(5)))) # (!\U0|M0|auto_generated|_~139_combout\ & (\U0|S38|U1|dffs\(5))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S38|U1|dffs\(5),
	datab => \U0|S39|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \U0|M0|auto_generated|_~139_combout\,
	combout => \U0|M0|auto_generated|_~140_combout\);

-- Location: LCCOMB_X13_Y21_N8
\U0|M0|auto_generated|_~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~141_combout\ = (!\addr~combout\(3) & (\U0|M0|auto_generated|_~140_combout\ & (\addr~combout\(5) & \addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \U0|M0|auto_generated|_~140_combout\,
	datac => \addr~combout\(5),
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~141_combout\);

-- Location: LCCOMB_X13_Y21_N0
\U0|M0|auto_generated|_~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~151_combout\ = (\U0|M0|auto_generated|_~144_combout\) # ((\U0|M0|auto_generated|_~141_combout\) # ((\U0|M0|auto_generated|_~150_combout\ & \U0|M0|auto_generated|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~150_combout\,
	datab => \U0|M0|auto_generated|_~144_combout\,
	datac => \U0|M0|auto_generated|_~141_combout\,
	datad => \U0|M0|auto_generated|_~35_combout\,
	combout => \U0|M0|auto_generated|_~151_combout\);

-- Location: LCCOMB_X13_Y22_N30
\U0|S51|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S51|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\U0|S50|U1|dffs\(5) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S50|U1|dffs\(5),
	datab => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S51|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCFF_X13_Y22_N31
\U0|S51|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S51|U0|$00000|auto_generated|result_node[5]~5_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S51|U1|dffs\(5));

-- Location: LCCOMB_X12_Y22_N14
\U0|S50|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S49|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S51|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S49|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S51|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \U0|S49|U1|dffs\(5),
	combout => \U0|S50|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y22_N24
\U0|S50|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S50|U1|dffs[5]~feeder_combout\ = \U0|S50|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S50|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S50|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X13_Y22_N25
\U0|S50|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S50|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S50|U1|dffs\(5));

-- Location: LCCOMB_X13_Y21_N30
\U0|S41|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (\U0|S40|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S42|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S40|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S40|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \U0|S42|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \U0|S41|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y23_N22
\U0|S41|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S41|U1|dffs[5]~feeder_combout\ = \U0|S41|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S41|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S41|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X14_Y23_N23
\U0|S41|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S41|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[41]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S41|U1|dffs\(5));

-- Location: LCCOMB_X14_Y23_N18
\U0|S42|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S41|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S43|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S41|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S43|U1|dffs\(5),
	datab => \U0|S41|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S42|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y23_N12
\U0|S42|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S42|U1|dffs[5]~feeder_combout\ = \U0|S42|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S42|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S42|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y23_N13
\U0|S42|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S42|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[42]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S42|U1|dffs\(5));

-- Location: LCCOMB_X13_Y21_N6
\U0|S43|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S42|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S44|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\U0|S42|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S42|U1|dffs\(5),
	datad => \U0|S44|U1|dffs\(5),
	combout => \U0|S43|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y23_N4
\U0|S43|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S43|U1|dffs[5]~feeder_combout\ = \U0|S43|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S43|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S43|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y23_N5
\U0|S43|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S43|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[43]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S43|U1|dffs\(5));

-- Location: LCCOMB_X13_Y21_N24
\U0|S44|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S43|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S45|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\U0|S43|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S43|U1|dffs\(5),
	datad => \U0|S45|U1|dffs\(5),
	combout => \U0|S44|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y25_N12
\U0|S44|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S44|U1|dffs[5]~feeder_combout\ = \U0|S44|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S44|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S44|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y25_N13
\U0|S44|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S44|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[44]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S44|U1|dffs\(5));

-- Location: LCCOMB_X12_Y21_N20
\U0|S45|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S44|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S46|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\U0|S44|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S44|U1|dffs\(5),
	datad => \U0|S46|U1|dffs\(5),
	combout => \U0|S45|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y21_N18
\U0|S45|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S45|U1|dffs[5]~feeder_combout\ = \U0|S45|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S45|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S45|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X15_Y21_N19
\U0|S45|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S45|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S45|U1|dffs\(5));

-- Location: LCCOMB_X12_Y21_N8
\U0|S46|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S45|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S47|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\U0|S45|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S45|U1|dffs\(5),
	datad => \U0|S47|U1|dffs\(5),
	combout => \U0|S46|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y25_N18
\U0|S46|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S46|U1|dffs[5]~feeder_combout\ = \U0|S46|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S46|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S46|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y25_N19
\U0|S46|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S46|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S46|U1|dffs\(5));

-- Location: LCCOMB_X12_Y21_N6
\U0|S47|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S46|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S48|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S46|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S48|U1|dffs\(5),
	datab => \U0|S46|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|S47|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X12_Y23_N26
\U0|S47|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S47|U1|dffs[5]~feeder_combout\ = \U0|S47|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S47|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S47|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X12_Y23_N27
\U0|S47|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S47|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[47]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S47|U1|dffs\(5));

-- Location: LCCOMB_X12_Y21_N22
\U0|S48|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S47|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S49|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S47|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S47|U1|dffs\(5),
	datac => \U0|S49|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \U0|S48|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y25_N0
\U0|S48|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S48|U1|dffs[5]~feeder_combout\ = \U0|S48|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S48|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S48|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y25_N1
\U0|S48|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S48|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S48|U1|dffs\(5));

-- Location: LCCOMB_X12_Y21_N12
\U0|S49|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S48|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S50|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S48|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S50|U1|dffs\(5),
	datad => \U0|S48|U1|dffs\(5),
	combout => \U0|S49|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X12_Y22_N18
\U0|S49|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S49|U1|dffs[5]~feeder_combout\ = \U0|S49|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S49|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S49|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X12_Y22_N19
\U0|S49|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S49|U1|dffs[5]~feeder_combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S49|U1|dffs\(5));

-- Location: LCCOMB_X12_Y21_N0
\U0|M0|auto_generated|_~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~133_combout\ = (\addr~combout\(0) & (((\U0|S49|U1|dffs\(5)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\U0|S48|U1|dffs\(5) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S48|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \U0|S49|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~133_combout\);

-- Location: LCCOMB_X12_Y22_N2
\U0|M0|auto_generated|_~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~134_combout\ = (\addr~combout\(1) & ((\U0|M0|auto_generated|_~133_combout\ & ((\U0|S51|U1|dffs\(5)))) # (!\U0|M0|auto_generated|_~133_combout\ & (\U0|S50|U1|dffs\(5))))) # (!\addr~combout\(1) & 
-- (((\U0|M0|auto_generated|_~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S50|U1|dffs\(5),
	datab => \U0|S51|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \U0|M0|auto_generated|_~133_combout\,
	combout => \U0|M0|auto_generated|_~134_combout\);

-- Location: LCCOMB_X13_Y24_N28
\U0|M0|auto_generated|_~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~157_combout\ = ((!\addr~combout\(3) & (\U0|M0|auto_generated|_~134_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|_~134_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|_~157_combout\);

-- Location: LCCOMB_X19_Y22_N4
\U0|S3|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S2|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S4|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S2|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S4|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S2|U1|dffs\(5),
	combout => \U0|S3|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y26_N8
\U0|S3|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S3|U1|dffs[5]~feeder_combout\ = \U0|S3|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S3|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S3|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y26_N9
\U0|S3|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S3|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S3|U1|dffs\(5));

-- Location: LCCOMB_X14_Y26_N0
\U0|S2|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S1|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S3|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S1|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S1|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \U0|S3|U1|dffs\(5),
	combout => \U0|S2|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y26_N12
\U0|S2|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S2|U1|dffs[5]~feeder_combout\ = \U0|S2|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S2|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S2|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y26_N13
\U0|S2|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S2|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S2|U1|dffs\(5));

-- Location: LCCOMB_X18_Y22_N2
\U0|S0|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\data~combout\(5))) # (!\mode~combout\(0) & ((\U0|S1|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\data~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~combout\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S1|U1|dffs\(5),
	combout => \U0|S0|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y24_N6
\U0|S0|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S0|U1|dffs[5]~feeder_combout\ = \U0|S0|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S0|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S0|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y24_N7
\U0|S0|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S0|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S0|U1|dffs\(5));

-- Location: LCCOMB_X20_Y26_N18
\U0|S1|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S0|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\U0|S2|U1|dffs\(5))) # (!\mode~combout\(1) & ((\U0|S0|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \U0|S2|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \U0|S0|U1|dffs\(5),
	combout => \U0|S1|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y26_N22
\U0|S1|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S1|U1|dffs[5]~feeder_combout\ = \U0|S1|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S1|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S1|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y26_N23
\U0|S1|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S1|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S1|U1|dffs\(5));

-- Location: LCCOMB_X20_Y26_N6
\U0|M0|auto_generated|_~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~131_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\U0|S2|U1|dffs\(5)))) # (!\addr~combout\(1) & (\U0|S0|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S0|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \U0|S2|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~131_combout\);

-- Location: LCCOMB_X14_Y26_N24
\U0|M0|auto_generated|_~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~132_combout\ = (\addr~combout\(0) & ((\U0|M0|auto_generated|_~131_combout\ & (\U0|S3|U1|dffs\(5))) # (!\U0|M0|auto_generated|_~131_combout\ & ((\U0|S1|U1|dffs\(5)))))) # (!\addr~combout\(0) & 
-- (((\U0|M0|auto_generated|_~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S3|U1|dffs\(5),
	datab => \U0|S1|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \U0|M0|auto_generated|_~131_combout\,
	combout => \U0|M0|auto_generated|_~132_combout\);

-- Location: LCCOMB_X14_Y26_N2
\U0|M0|auto_generated|result_node[5]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~86_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\U0|M0|auto_generated|_~130_combout\)) # (!\addr~combout\(2) & ((\U0|M0|auto_generated|_~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~130_combout\,
	datab => \addr~combout\(3),
	datac => \U0|M0|auto_generated|_~132_combout\,
	datad => \addr~combout\(2),
	combout => \U0|M0|auto_generated|result_node[5]~86_combout\);

-- Location: LCCOMB_X14_Y26_N4
\U0|M0|auto_generated|result_node[5]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~93_combout\ = (\U0|M0|auto_generated|result_node[0]~0_combout\ & ((\U0|M0|auto_generated|result_node[5]~86_combout\) # ((\U0|M0|auto_generated|result_node[5]~92_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[5]~92_combout\,
	datab => \U0|M0|auto_generated|result_node[5]~86_combout\,
	datac => \U0|M0|auto_generated|result_node[0]~0_combout\,
	datad => \addr~combout\(3),
	combout => \U0|M0|auto_generated|result_node[5]~93_combout\);

-- Location: LCCOMB_X19_Y21_N6
\U0|S31|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S30|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S32|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S30|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S32|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S30|U1|dffs\(5),
	combout => \U0|S31|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y22_N16
\U0|S31|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S31|U1|dffs[5]~feeder_combout\ = \U0|S31|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S31|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S31|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y22_N17
\U0|S31|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S31|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S31|U1|dffs\(5));

-- Location: LCCOMB_X22_Y20_N2
\U0|S30|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S29|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S31|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S29|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S31|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \U0|S29|U1|dffs\(5),
	combout => \U0|S30|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y20_N30
\U0|S30|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S30|U1|dffs[5]~feeder_combout\ = \U0|S30|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S30|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S30|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y20_N31
\U0|S30|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S30|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S30|U1|dffs\(5));

-- Location: LCCOMB_X22_Y20_N16
\U0|S27|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S27|U1|dffs[5]~feeder_combout\ = \U0|S27|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S27|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S27|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X22_Y20_N17
\U0|S27|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S27|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[27]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S27|U1|dffs\(5));

-- Location: LCCOMB_X22_Y20_N24
\U0|S28|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S27|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S29|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\U0|S27|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S27|U1|dffs\(5),
	datad => \U0|S29|U1|dffs\(5),
	combout => \U0|S28|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y20_N0
\U0|S28|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S28|U1|dffs[5]~feeder_combout\ = \U0|S28|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S28|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S28|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y20_N1
\U0|S28|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S28|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S28|U1|dffs\(5));

-- Location: LCCOMB_X16_Y20_N18
\U0|S29|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S28|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S30|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S28|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S30|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \U0|S28|U1|dffs\(5),
	combout => \U0|S29|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y22_N14
\U0|S29|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S29|U1|dffs[5]~feeder_combout\ = \U0|S29|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S29|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S29|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y22_N15
\U0|S29|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S29|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S29|U1|dffs\(5));

-- Location: LCCOMB_X22_Y20_N0
\U0|M0|auto_generated|result_node[5]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~95_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S29|U1|dffs\(5))) # (!\addr~combout\(0) & ((\U0|S28|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S29|U1|dffs\(5),
	datac => \U0|S28|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[5]~95_combout\);

-- Location: LCCOMB_X22_Y20_N6
\U0|M0|auto_generated|result_node[5]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~96_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S31|U1|dffs\(5))) # (!\addr~combout\(0) & ((\U0|S30|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \U0|S31|U1|dffs\(5),
	datac => \U0|S30|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \U0|M0|auto_generated|result_node[5]~96_combout\);

-- Location: LCCOMB_X22_Y20_N28
\U0|M0|auto_generated|result_node[5]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~97_combout\ = (\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[5]~95_combout\) # (\U0|M0|auto_generated|result_node[5]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|M0|auto_generated|result_node[5]~95_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[5]~96_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~97_combout\);

-- Location: LCCOMB_X21_Y22_N12
\U0|S23|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S22|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S24|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S22|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S22|U1|dffs\(5),
	datab => \U0|S24|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \U0|S23|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y21_N4
\U0|S23|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S23|U1|dffs[5]~feeder_combout\ = \U0|S23|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|S23|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S23|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y21_N5
\U0|S23|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S23|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S23|U1|dffs\(5));

-- Location: LCCOMB_X22_Y20_N18
\U0|S26|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S25|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S27|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S25|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S27|U1|dffs\(5),
	datad => \U0|S25|U1|dffs\(5),
	combout => \U0|S26|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X22_Y22_N6
\U0|S26|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S26|U1|dffs[5]~feeder_combout\ = \U0|S26|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S26|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S26|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X22_Y22_N7
\U0|S26|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S26|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[26]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S26|U1|dffs\(5));

-- Location: LCCOMB_X22_Y21_N26
\U0|S25|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (\U0|S24|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S26|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S24|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S24|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \U0|S26|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \U0|S25|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X22_Y21_N22
\U0|S25|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S25|U1|dffs[5]~feeder_combout\ = \U0|S25|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S25|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S25|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X22_Y21_N23
\U0|S25|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S25|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[25]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S25|U1|dffs\(5));

-- Location: LCCOMB_X22_Y23_N22
\U0|S24|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S23|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S25|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\U0|S23|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|S23|U1|dffs\(5),
	datad => \U0|S25|U1|dffs\(5),
	combout => \U0|S24|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X22_Y22_N24
\U0|S24|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S24|U1|dffs[5]~feeder_combout\ = \U0|S24|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S24|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S24|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X22_Y22_N25
\U0|S24|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S24|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[24]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S24|U1|dffs\(5));

-- Location: LCCOMB_X22_Y20_N22
\U0|M0|auto_generated|result_node[5]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~98_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\U0|S25|U1|dffs\(5))) # (!\addr~combout\(0) & ((\U0|S24|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S25|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \U0|S24|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|result_node[5]~98_combout\);

-- Location: LCCOMB_X22_Y20_N26
\U0|M0|auto_generated|result_node[5]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~100_combout\ = (\U0|M0|auto_generated|result_node[5]~97_combout\) # ((!\addr~combout\(2) & ((\U0|M0|auto_generated|result_node[5]~99_combout\) # (\U0|M0|auto_generated|result_node[5]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|result_node[5]~99_combout\,
	datab => \U0|M0|auto_generated|result_node[5]~97_combout\,
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|result_node[5]~98_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~100_combout\);

-- Location: LCCOMB_X21_Y22_N6
\U0|S22|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(0) & (((\U0|S21|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\U0|S23|U1|dffs\(5)))) # (!\mode~combout\(1) & (\U0|S21|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \U0|S21|U1|dffs\(5),
	datad => \U0|S23|U1|dffs\(5),
	combout => \U0|S22|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y20_N4
\U0|S22|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S22|U1|dffs[5]~feeder_combout\ = \U0|S22|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S22|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S22|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y20_N5
\U0|S22|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S22|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S22|U1|dffs\(5));

-- Location: LCCOMB_X19_Y22_N22
\U0|S20|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\U0|S19|U1|dffs\(5))) # (!\mode~combout\(0) & ((\U0|S21|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\U0|S19|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S19|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \U0|S21|U1|dffs\(5),
	combout => \U0|S20|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X20_Y22_N10
\U0|S20|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S20|U1|dffs[5]~feeder_combout\ = \U0|S20|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S20|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S20|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y22_N11
\U0|S20|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S20|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S20|U1|dffs\(5));

-- Location: LCCOMB_X20_Y22_N2
\U0|S21|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\U0|S20|U1|dffs\(5)))) # (!\mode~combout\(0) & (\U0|S22|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\U0|S20|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \U0|S22|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \U0|S20|U1|dffs\(5),
	combout => \U0|S21|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X21_Y22_N14
\U0|S21|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|S21|U1|dffs[5]~feeder_combout\ = \U0|S21|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|S21|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \U0|S21|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X21_Y22_N15
\U0|S21|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|S21|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|S21|U1|dffs\(5));

-- Location: LCCOMB_X20_Y24_N0
\U0|M0|auto_generated|_~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~135_combout\ = (\addr~combout\(0) & ((\U0|S21|U1|dffs\(5)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\U0|S20|U1|dffs\(5) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \U0|S21|U1|dffs\(5),
	datac => \U0|S20|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~135_combout\);

-- Location: LCCOMB_X20_Y24_N30
\U0|M0|auto_generated|_~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|_~136_combout\ = (\U0|M0|auto_generated|_~135_combout\ & (((\U0|S23|U1|dffs\(5)) # (!\addr~combout\(1))))) # (!\U0|M0|auto_generated|_~135_combout\ & (\U0|S22|U1|dffs\(5) & ((\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|S22|U1|dffs\(5),
	datab => \U0|M0|auto_generated|_~135_combout\,
	datac => \U0|S23|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \U0|M0|auto_generated|_~136_combout\);

-- Location: LCCOMB_X20_Y24_N24
\U0|M0|auto_generated|result_node[5]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~94_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\U0|M0|auto_generated|_~136_combout\))) # (!\addr~combout\(2) & (\U0|M0|auto_generated|_~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~138_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \U0|M0|auto_generated|_~136_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~94_combout\);

-- Location: LCCOMB_X21_Y24_N24
\U0|M0|auto_generated|result_node[5]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~101_combout\ = (\addr~combout\(4) & ((\U0|M0|auto_generated|result_node[5]~94_combout\) # ((\addr~combout\(3) & \U0|M0|auto_generated|result_node[5]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \U0|M0|auto_generated|result_node[5]~100_combout\,
	datad => \U0|M0|auto_generated|result_node[5]~94_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~101_combout\);

-- Location: LCCOMB_X13_Y24_N2
\U0|M0|auto_generated|result_node[5]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|M0|auto_generated|result_node[5]~102_combout\ = (\U0|M0|auto_generated|result_node[5]~93_combout\) # ((\U0|M0|auto_generated|_~151_combout\ & (\U0|M0|auto_generated|_~157_combout\)) # (!\U0|M0|auto_generated|_~151_combout\ & 
-- ((\U0|M0|auto_generated|result_node[5]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|M0|auto_generated|_~151_combout\,
	datab => \U0|M0|auto_generated|_~157_combout\,
	datac => \U0|M0|auto_generated|result_node[5]~93_combout\,
	datad => \U0|M0|auto_generated|result_node[5]~101_combout\,
	combout => \U0|M0|auto_generated|result_node[5]~102_combout\);

-- Location: LCCOMB_X21_Y26_N2
\U0|pop~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|pop~1_combout\ = (\mode~combout\(0) & \mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \U0|pop~1_combout\);

-- Location: LCCOMB_X21_Y26_N8
\U0|C0|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|counter_comb_bita0~combout\ = \U0|C0|auto_generated|safe_q\(0) $ (((VCC) # (!\U0|pop~1_combout\)))
-- \U0|C0|auto_generated|counter_comb_bita0~COUT\ = CARRY(\U0|C0|auto_generated|safe_q\(0) $ (!\U0|pop~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(0),
	datab => \U0|pop~1_combout\,
	datad => VCC,
	combout => \U0|C0|auto_generated|counter_comb_bita0~combout\,
	cout => \U0|C0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X21_Y26_N10
\U0|C0|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|counter_comb_bita1~combout\ = (\U0|C0|auto_generated|counter_comb_bita0~COUT\ & (\U0|C0|auto_generated|safe_q\(1) $ (((\U0|pop~1_combout\) # (VCC))))) # (!\U0|C0|auto_generated|counter_comb_bita0~COUT\ & 
-- ((\U0|C0|auto_generated|safe_q\(1)) # ((GND))))
-- \U0|C0|auto_generated|counter_comb_bita1~COUT\ = CARRY((\U0|C0|auto_generated|safe_q\(1) $ (\U0|pop~1_combout\)) # (!\U0|C0|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(1),
	datab => \U0|pop~1_combout\,
	datad => VCC,
	cin => \U0|C0|auto_generated|counter_comb_bita0~COUT\,
	combout => \U0|C0|auto_generated|counter_comb_bita1~combout\,
	cout => \U0|C0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X21_Y26_N12
\U0|C0|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|counter_comb_bita2~combout\ = (\U0|C0|auto_generated|counter_comb_bita1~COUT\ & (\U0|C0|auto_generated|safe_q\(2) & ((VCC)))) # (!\U0|C0|auto_generated|counter_comb_bita1~COUT\ & (\U0|C0|auto_generated|safe_q\(2) $ (((VCC) # 
-- (!\U0|pop~1_combout\)))))
-- \U0|C0|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\U0|C0|auto_generated|counter_comb_bita1~COUT\ & (\U0|C0|auto_generated|safe_q\(2) $ (!\U0|pop~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(2),
	datab => \U0|pop~1_combout\,
	datad => VCC,
	cin => \U0|C0|auto_generated|counter_comb_bita1~COUT\,
	combout => \U0|C0|auto_generated|counter_comb_bita2~combout\,
	cout => \U0|C0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X21_Y26_N14
\U0|C0|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|counter_comb_bita3~combout\ = (\U0|C0|auto_generated|counter_comb_bita2~COUT\ & (\U0|C0|auto_generated|safe_q\(3) $ (((\U0|pop~1_combout\) # (VCC))))) # (!\U0|C0|auto_generated|counter_comb_bita2~COUT\ & 
-- ((\U0|C0|auto_generated|safe_q\(3)) # ((GND))))
-- \U0|C0|auto_generated|counter_comb_bita3~COUT\ = CARRY((\U0|C0|auto_generated|safe_q\(3) $ (\U0|pop~1_combout\)) # (!\U0|C0|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(3),
	datab => \U0|pop~1_combout\,
	datad => VCC,
	cin => \U0|C0|auto_generated|counter_comb_bita2~COUT\,
	combout => \U0|C0|auto_generated|counter_comb_bita3~combout\,
	cout => \U0|C0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X21_Y26_N16
\U0|C0|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|counter_comb_bita4~combout\ = (\U0|C0|auto_generated|counter_comb_bita3~COUT\ & (\U0|C0|auto_generated|safe_q\(4) & ((VCC)))) # (!\U0|C0|auto_generated|counter_comb_bita3~COUT\ & (\U0|C0|auto_generated|safe_q\(4) $ (((VCC) # 
-- (!\U0|pop~1_combout\)))))
-- \U0|C0|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\U0|C0|auto_generated|counter_comb_bita3~COUT\ & (\U0|C0|auto_generated|safe_q\(4) $ (!\U0|pop~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(4),
	datab => \U0|pop~1_combout\,
	datad => VCC,
	cin => \U0|C0|auto_generated|counter_comb_bita3~COUT\,
	combout => \U0|C0|auto_generated|counter_comb_bita4~combout\,
	cout => \U0|C0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X21_Y26_N18
\U0|C0|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|counter_comb_bita5~combout\ = \U0|C0|auto_generated|counter_comb_bita4~COUT\ $ (\U0|C0|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|C0|auto_generated|safe_q\(5),
	cin => \U0|C0|auto_generated|counter_comb_bita4~COUT\,
	combout => \U0|C0|auto_generated|counter_comb_bita5~combout\);

-- Location: LCFF_X21_Y26_N19
\U0|C0|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|C0|auto_generated|counter_comb_bita5~combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|C0|auto_generated|safe_q\(5));

-- Location: LCFF_X21_Y26_N17
\U0|C0|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|C0|auto_generated|counter_comb_bita4~combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|C0|auto_generated|safe_q\(4));

-- Location: LCFF_X21_Y26_N15
\U0|C0|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|C0|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|C0|auto_generated|safe_q\(3));

-- Location: LCFF_X21_Y26_N9
\U0|C0|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|C0|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|C0|auto_generated|safe_q\(0));

-- Location: LCFF_X21_Y26_N11
\U0|C0|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|C0|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|C0|auto_generated|safe_q\(1));

-- Location: LCCOMB_X21_Y26_N28
\U0|full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|full~0_combout\ = (!\U0|C0|auto_generated|safe_q\(3) & (!\U0|C0|auto_generated|safe_q\(0) & !\U0|C0|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|C0|auto_generated|safe_q\(3),
	datac => \U0|C0|auto_generated|safe_q\(0),
	datad => \U0|C0|auto_generated|safe_q\(1),
	combout => \U0|full~0_combout\);

-- Location: LCCOMB_X21_Y26_N24
\U0|full\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|full~combout\ = (\U0|C0|auto_generated|safe_q\(2) & (\U0|C0|auto_generated|safe_q\(5) & (\U0|C0|auto_generated|safe_q\(4) & \U0|full~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(2),
	datab => \U0|C0|auto_generated|safe_q\(5),
	datac => \U0|C0|auto_generated|safe_q\(4),
	datad => \U0|full~0_combout\,
	combout => \U0|full~combout\);

-- Location: LCCOMB_X21_Y26_N0
\U0|C0|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|_~0_combout\ = (\mode~combout\(1) & (\enable~combout\ & ((\mode~combout\(0)) # (\U0|empty~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \enable~combout\,
	datac => \mode~combout\(0),
	datad => \U0|empty~combout\,
	combout => \U0|C0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X21_Y26_N26
\U0|C0|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|C0|auto_generated|_~1_combout\ = (\mode~combout\(0) & (((!\U0|full~combout\ & \U0|C0|auto_generated|_~0_combout\)) # (!\mode~combout\(1)))) # (!\mode~combout\(0) & (((\U0|C0|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \U0|full~combout\,
	datad => \U0|C0|auto_generated|_~0_combout\,
	combout => \U0|C0|auto_generated|_~1_combout\);

-- Location: LCFF_X21_Y26_N13
\U0|C0|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|C0|auto_generated|counter_comb_bita2~combout\,
	sdata => \U0|pop~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \U0|pop~0_combout\,
	ena => \U0|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|C0|auto_generated|safe_q\(2));

-- Location: LCCOMB_X21_Y26_N22
\U0|empty\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|empty~combout\ = (\U0|C0|auto_generated|safe_q\(2)) # ((\U0|C0|auto_generated|safe_q\(5)) # ((\U0|C0|auto_generated|safe_q\(4)) # (!\U0|full~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|C0|auto_generated|safe_q\(2),
	datab => \U0|C0|auto_generated|safe_q\(5),
	datac => \U0|C0|auto_generated|safe_q\(4),
	datad => \U0|full~0_combout\,
	combout => \U0|empty~combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|M0|auto_generated|result_node[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|M0|auto_generated|result_node[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(1));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|M0|auto_generated|result_node[2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|M0|auto_generated|result_node[3]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(3));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|M0|auto_generated|result_node[4]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(4));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\value[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|M0|auto_generated|result_node[5]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_value(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\empty~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|ALT_INV_empty~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_empty);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\full~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|full~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_full);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|C0|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(0));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|C0|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|C0|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|C0|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|C0|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|C0|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(5));
END structure;


