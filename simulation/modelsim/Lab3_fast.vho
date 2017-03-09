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

-- DATE "03/09/2017 11:38:09"

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

ENTITY 	g55_lab3_v2 IS
    PORT (
	mode : IN std_logic_vector(1 DOWNTO 0);
	addr : IN std_logic_vector(5 DOWNTO 0);
	en : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	segments_mod : OUT std_logic_vector(6 DOWNTO 0);
	segments_floor : OUT std_logic_vector(6 DOWNTO 0);
	empty : OUT std_logic;
	full : OUT std_logic;
	debounceState : OUT std_logic_vector(2 DOWNTO 0);
	num : OUT std_logic_vector(5 DOWNTO 0)
	);
END g55_lab3_v2;

-- Design Ports Information
-- segments_mod[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_mod[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_mod[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_mod[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_mod[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_mod[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_mod[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_floor[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- empty	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- full	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debounceState[0]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debounceState[1]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debounceState[2]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addr[4]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- en	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g55_lab3_v2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_segments_mod : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_floor : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_debounceState : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_num : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DEB|C0|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~14_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~15_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~2_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~5_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~6_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~7_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~19_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~20_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~21_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~22_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~9_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~23_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~24_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~25_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~26_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~27_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~10_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~36_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~37_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~40_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~41_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~19_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~46_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~47_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~48_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~49_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~21_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~22_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~23_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~24_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~25_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~26_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~27_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~28_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~50_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~57_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~58_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~63_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~64_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~65_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~66_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~30_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~69_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~70_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~71_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~72_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~73_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~74_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~75_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~76_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~77_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~78_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~79_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~80_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~81_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~82_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~85_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~86_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~39_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~40_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~41_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~42_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~43_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~44_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~87_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~88_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~89_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~90_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~91_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~92_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~46_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~96_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~98_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~99_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~100_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~101_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~49_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~53_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~106_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~110_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~114_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~116_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~117_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~59_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~60_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~61_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~62_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~63_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~64_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~118_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~119_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~123_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~124_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~125_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~126_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~127_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~67_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~68_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~69_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~70_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~71_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~72_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~138_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~139_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~140_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~141_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~142_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~143_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~144_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~145_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~146_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~147_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~148_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~149_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~150_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~151_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~153_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~79_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~80_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~81_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~84_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~155_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~156_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~93_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2~combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst4|Cout~0_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst7|S~combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst1|Cout~0_combout\ : std_logic;
SIGNAL \STACK|S11|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S9|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S10|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S15|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S13|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S14|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S12|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S50|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S22|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S21|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S20|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S23|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S18|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S17|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S16|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S19|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S29|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S28|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S30|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S25|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S24|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S27|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S26|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S6|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S5|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S4|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S7|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S15|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S13|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S14|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S12|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S11|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S9|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S10|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S8|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S49|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S48|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S22|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S21|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S20|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S23|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S17|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S18|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S16|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S19|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S24|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S37|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S36|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S33|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S35|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S4|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S2|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S1|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S0|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S3|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S50|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S49|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S47|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S45|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S46|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S44|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S43|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S41|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S42|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S40|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S34|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S33|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S32|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S35|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S38|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S37|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S36|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S39|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S18|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S17|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S16|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S31|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S29|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S30|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S28|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S27|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S25|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S26|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S50|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S49|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S48|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S51|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S22|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S21|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S20|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S23|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S18|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S17|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S19|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S24|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S6|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S5|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S4|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S7|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S2|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S1|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S0|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S3|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S9|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S8|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S45|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S47|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S46|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S2|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S1|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S10|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S33|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S32|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S41|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S29|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S28|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S31|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S30|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S25|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S24|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S27|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S26|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S23|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S18|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S48|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S47|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S45|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S46|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S44|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S43|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S41|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S42|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S40|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S34|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S33|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S32|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S35|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S38|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S37|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S36|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S39|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S12|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S19|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|cnt_enHold~0_combout\ : std_logic;
SIGNAL \DEB|state~2_combout\ : std_logic;
SIGNAL \DEB|process_0~3_combout\ : std_logic;
SIGNAL \DEB|state[1]~4_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~162_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst7|S~8_combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \STACK|S11|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S10|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S15|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S13|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S14|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S12|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S50|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S22|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S21|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S20|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S23|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S18|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S17|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S16|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S19|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S29|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S28|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S30|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S25|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S24|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S27|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S26|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S6|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S5|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S4|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S7|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S15|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S13|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S14|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S12|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S11|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S9|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S10|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S8|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S22|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S21|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S20|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S23|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S17|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S18|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S16|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S19|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S24|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S37|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S36|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S35|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S4|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S2|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S1|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S3|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S50|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S45|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S46|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S44|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S43|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S41|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S42|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S40|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S34|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S33|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S32|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S35|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S38|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S37|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S36|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S39|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S18|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S17|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S16|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S31|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S29|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S30|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S28|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S27|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S26|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|S50|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S49|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S48|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S22|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S21|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S20|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S23|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S18|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S17|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S19|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S24|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S6|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S5|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S4|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S7|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S2|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S1|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S3|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S9|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S8|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S45|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S47|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S46|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S2|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S1|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S10|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S33|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S32|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S41|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S29|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S28|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S31|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S30|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S25|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S24|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S27|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S26|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S48|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S47|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S45|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S46|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S44|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S43|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S41|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S42|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S40|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S34|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S33|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S35|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S38|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S37|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S36|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S39|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S25|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|pop~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \DEB|process_0~9_combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \DEB|process_0~1_combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \DEB|process_0~0_combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \DEB|process_0~2_combout\ : std_logic;
SIGNAL \DEB|process_0~4_combout\ : std_logic;
SIGNAL \DEB|process_0~8_combout\ : std_logic;
SIGNAL \DEB|enable~0_combout\ : std_logic;
SIGNAL \DEB|enable~regout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \DEB|process_0~6_combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \DEB|process_0~5_combout\ : std_logic;
SIGNAL \DEB|C0|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \DEB|process_0~7_combout\ : std_logic;
SIGNAL \DEB|state[1]~5_combout\ : std_logic;
SIGNAL \DEB|state[1]~6_combout\ : std_logic;
SIGNAL \DEB|state~3_combout\ : std_logic;
SIGNAL \DEB|state[2]~7_combout\ : std_logic;
SIGNAL \DEB|output~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \STACK|enableArray[25]~32_combout\ : std_logic;
SIGNAL \STACK|S24|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S24|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[24]~33_combout\ : std_logic;
SIGNAL \STACK|S23|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S23|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \STACK|enableArray[23]~23_combout\ : std_logic;
SIGNAL \STACK|S22|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S22|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[22]~20_combout\ : std_logic;
SIGNAL \STACK|S21|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S21|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[21]~21_combout\ : std_logic;
SIGNAL \STACK|S19|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S19|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[19]~27_combout\ : std_logic;
SIGNAL \STACK|S20|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S20|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[20]~22_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~83_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~84_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~38_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~45_combout\ : std_logic;
SIGNAL \STACK|S49|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[49]~17_combout\ : std_logic;
SIGNAL \STACK|S47|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[47]~40_combout\ : std_logic;
SIGNAL \STACK|S48|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S48|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[48]~18_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~67_combout\ : std_logic;
SIGNAL \STACK|S51|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|enableArray[51]~19_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~68_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~161_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S14|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S14|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[14]~14_combout\ : std_logic;
SIGNAL \STACK|S13|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S13|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[13]~13_combout\ : std_logic;
SIGNAL \STACK|S12|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S12|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[12]~15_combout\ : std_logic;
SIGNAL \STACK|S11|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S11|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[11]~8_combout\ : std_logic;
SIGNAL \STACK|S10|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S10|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[10]~10_combout\ : std_logic;
SIGNAL \STACK|S5|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S5|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[5]~1_combout\ : std_logic;
SIGNAL \STACK|S6|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S6|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[6]~0_combout\ : std_logic;
SIGNAL \STACK|S7|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S7|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[7]~3_combout\ : std_logic;
SIGNAL \STACK|S8|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S8|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[8]~11_combout\ : std_logic;
SIGNAL \STACK|S9|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S9|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[9]~9_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~32_combout\ : std_logic;
SIGNAL \STACK|S15|U0|$00000|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \STACK|S15|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[15]~12_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~31_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~33_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~34_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~36_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[3]~37_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst5|Cout~0_combout\ : std_logic;
SIGNAL \STACK|S25|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S25|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S29|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S29|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[29]~28_combout\ : std_logic;
SIGNAL \STACK|S28|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S28|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[28]~29_combout\ : std_logic;
SIGNAL \STACK|S27|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S27|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[27]~34_combout\ : std_logic;
SIGNAL \STACK|S26|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S26|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[26]~35_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~97_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~47_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~94_combout\ : std_logic;
SIGNAL \STACK|S30|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S30|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[30]~31_combout\ : std_logic;
SIGNAL \STACK|S32|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S32|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[32]~50_combout\ : std_logic;
SIGNAL \STACK|S31|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S31|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[31]~30_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~93_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~95_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~48_combout\ : std_logic;
SIGNAL \STACK|S14|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S14|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S13|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S13|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S12|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S12|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S11|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S11|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|S10|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S10|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~54_combout\ : std_logic;
SIGNAL \STACK|S16|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S16|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[16]~26_combout\ : std_logic;
SIGNAL \STACK|S15|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S15|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~51_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~50_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~52_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~55_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~56_combout\ : std_logic;
SIGNAL \STACK|S33|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S33|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[33]~49_combout\ : std_logic;
SIGNAL \STACK|S34|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S34|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[34]~48_combout\ : std_logic;
SIGNAL \STACK|S35|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S35|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[35]~51_combout\ : std_logic;
SIGNAL \STACK|S39|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S39|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[39]~47_combout\ : std_logic;
SIGNAL \STACK|S38|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S38|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[38]~44_combout\ : std_logic;
SIGNAL \STACK|S37|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S37|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[37]~45_combout\ : std_logic;
SIGNAL \STACK|S36|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S36|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[36]~46_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~108_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~109_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~111_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~112_combout\ : std_logic;
SIGNAL \STACK|S40|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S40|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[40]~39_combout\ : std_logic;
SIGNAL \STACK|S41|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S41|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[41]~38_combout\ : std_logic;
SIGNAL \STACK|S42|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S42|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[42]~37_combout\ : std_logic;
SIGNAL \STACK|S43|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S43|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[43]~36_combout\ : std_logic;
SIGNAL \STACK|S44|U0|$00000|auto_generated|result_node[5]~3_combout\ : std_logic;
SIGNAL \STACK|S44|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[44]~43_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~105_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~102_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~103_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~104_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~107_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~113_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[5]~57_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst5|Cout~1_combout\ : std_logic;
SIGNAL \STACK|S0|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|enableArray[0]~6_combout\ : std_logic;
SIGNAL \STACK|S1|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S1|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[1]~5_combout\ : std_logic;
SIGNAL \STACK|S2|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S2|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[2]~4_combout\ : std_logic;
SIGNAL \STACK|S3|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S3|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[3]~7_combout\ : std_logic;
SIGNAL \STACK|S4|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S4|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[4]~2_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~12_combout\ : std_logic;
SIGNAL \STACK|S5|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S5|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S9|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S8|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S8|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S7|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S7|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S6|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S6|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~13_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~8_combout\ : std_logic;
SIGNAL \STACK|S41|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S41|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S40|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S40|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S39|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S39|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S38|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S38|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S31|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S31|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S32|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S32|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S33|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S33|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S34|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S34|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S35|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S35|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S36|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S36|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S37|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S37|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~34_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~35_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~38_combout\ : std_logic;
SIGNAL \STACK|S49|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S49|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S48|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S48|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S46|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S46|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[46]~41_combout\ : std_logic;
SIGNAL \STACK|S47|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S47|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S43|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S43|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S44|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S44|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|S45|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S45|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[45]~42_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~31_combout\ : std_logic;
SIGNAL \STACK|S42|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|S42|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~28_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~29_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~30_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~32_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~33_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~39_combout\ : std_logic;
SIGNAL \STACK|S51|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~17_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~18_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~159_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[4]~12_combout\ : std_logic;
SIGNAL \MOD13|A1|b2v_inst6|S~combout\ : std_logic;
SIGNAL \STACK|S32|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S29|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S29|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S30|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S30|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S31|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S31|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~85_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~86_combout\ : std_logic;
SIGNAL \STACK|S28|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S28|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S27|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S27|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S19|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S20|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S20|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S21|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S21|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S22|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S22|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S23|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S23|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S24|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S24|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S25|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S25|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S26|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S26|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~87_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~88_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~89_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~90_combout\ : std_logic;
SIGNAL \STACK|S12|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S13|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S13|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S14|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S14|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S15|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S15|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S18|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S18|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[18]~24_combout\ : std_logic;
SIGNAL \STACK|S17|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S17|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[17]~25_combout\ : std_logic;
SIGNAL \STACK|S16|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S16|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~157_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~158_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~91_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~92_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~77_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~76_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~78_combout\ : std_logic;
SIGNAL \STACK|S0|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \STACK|S1|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S1|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S2|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S2|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S5|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S5|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S4|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S4|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S3|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S3|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~154_combout\ : std_logic;
SIGNAL \STACK|S11|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S11|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S10|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S10|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S9|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S9|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S8|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S8|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S6|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S6|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S7|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S7|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~152_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~75_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~82_combout\ : std_logic;
SIGNAL \STACK|S51|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S49|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S49|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|S50|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \STACK|S50|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \STACK|enableArray[50]~16_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~136_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~137_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~164_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[1]~83_combout\ : std_logic;
SIGNAL \STACK|S49|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S51|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S50|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S50|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S48|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~44_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~45_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~160_combout\ : std_logic;
SIGNAL \STACK|S0|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S1|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S1|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S2|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S2|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S3|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S3|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~42_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~43_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~20_combout\ : std_logic;
SIGNAL \STACK|S38|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S38|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S42|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S42|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S41|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S41|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S40|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S40|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S39|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S39|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~51_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~52_combout\ : std_logic;
SIGNAL \STACK|S47|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S47|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S46|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S46|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S45|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S45|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S44|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S44|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S43|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S43|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~60_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~59_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~61_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~16_combout\ : std_logic;
SIGNAL \STACK|S25|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S25|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S26|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S26|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S27|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S27|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S28|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S28|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S29|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S29|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S30|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S30|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S31|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S31|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S33|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S32|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S32|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|S34|U0|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \STACK|S34|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~53_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~54_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~55_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~62_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[0]~29_combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst1|S~combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ : std_logic;
SIGNAL \MOD13|A4|b2v_inst2|S~0_combout\ : std_logic;
SIGNAL \STACK|S40|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S40|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S39|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S39|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S38|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S38|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S34|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S34|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S35|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S35|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S36|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S36|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S37|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S37|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~120_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~121_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~122_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~56_combout\ : std_logic;
SIGNAL \STACK|S46|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S46|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S51|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S50|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S50|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S49|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S49|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S48|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S48|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S47|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S47|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~129_combout\ : std_logic;
SIGNAL \STACK|S42|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S42|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S43|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S43|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S44|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S44|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S45|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S45|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~128_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~130_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~131_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~163_combout\ : std_logic;
SIGNAL \STACK|S3|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S3|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S4|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S4|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S5|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S5|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S9|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S9|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S8|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S8|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S7|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S7|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S6|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S6|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~115_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~58_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~65_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~66_combout\ : std_logic;
SIGNAL \STACK|S23|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S18|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S19|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S19|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S22|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S22|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S21|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S21|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S20|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S20|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~132_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~133_combout\ : std_logic;
SIGNAL \STACK|S17|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S17|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S11|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S11|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S12|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S12|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S13|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S13|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S14|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S14|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S15|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S15|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|S16|U0|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \STACK|S16|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~134_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|_~135_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~73_combout\ : std_logic;
SIGNAL \STACK|M0|auto_generated|result_node[2]~74_combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst2|S~combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst2|Cout~0_combout\ : std_logic;
SIGNAL \MOD13|A5|b2v_inst3|S~combout\ : std_logic;
SIGNAL \SEG_MOD|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_MOD|Mux5~0_combout\ : std_logic;
SIGNAL \SEG_MOD|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_MOD|Mux3~0_combout\ : std_logic;
SIGNAL \SEG_MOD|Mux2~0_combout\ : std_logic;
SIGNAL \SEG_MOD|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_MOD|Mux0~0_combout\ : std_logic;
SIGNAL \SEG_FLOOR|Mux6~0_combout\ : std_logic;
SIGNAL \SEG_FLOOR|Mux4~0_combout\ : std_logic;
SIGNAL \SEG_FLOOR|Mux4~1_combout\ : std_logic;
SIGNAL \SEG_FLOOR|Mux1~0_combout\ : std_logic;
SIGNAL \SEG_FLOOR|Mux0~0_combout\ : std_logic;
SIGNAL \STACK|pop~1_combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \STACK|comb~0_combout\ : std_logic;
SIGNAL \STACK|empty~3_combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \STACK|empty~2_combout\ : std_logic;
SIGNAL \STACK|empty~combout\ : std_logic;
SIGNAL \STACK|full~0_combout\ : std_logic;
SIGNAL \STACK|full~combout\ : std_logic;
SIGNAL \STACK|C0|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \DEB|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DEB|C0|auto_generated|safe_q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \STACK|C0|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S0|U0|$00000|auto_generated|result_node\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S1|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S3|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S5|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S7|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S9|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S11|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S13|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S15|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S17|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S19|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S21|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S23|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S25|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S27|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S29|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S31|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S33|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S35|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S37|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S39|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S41|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S43|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S45|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S47|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S49|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S51|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \STACK|M0|auto_generated|result_node\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S0|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S2|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S4|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S6|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S8|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S10|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S12|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S14|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S16|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S18|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S20|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S22|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S24|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S26|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S28|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S30|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S32|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S34|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S36|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S38|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S40|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S42|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S44|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S46|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S48|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \STACK|S50|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \addr~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \STACK|ALT_INV_empty~combout\ : std_logic;
SIGNAL \DEB|ALT_INV_state\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SEG_FLOOR|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SEG_FLOOR|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \SEG_MOD|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \SEG_MOD|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \SEG_MOD|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_mode <= mode;
ww_addr <= addr;
ww_en <= en;
ww_rst <= rst;
ww_clk <= clk;
segments_mod <= ww_segments_mod;
segments_floor <= ww_segments_floor;
empty <= ww_empty;
full <= ww_full;
debounceState <= ww_debounceState;
num <= ww_num;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2) & \addr~combout\(1) & \addr~combout\(0));

\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(0) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(1) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(2) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(3) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(4) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(5) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(6) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(7) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(8) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(9) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(10) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(11) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(12) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(13) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(14) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(15) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(16) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(17) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(18) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(19) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(20) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(21) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(22) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(23) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(24) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(25) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(26) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(27) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(28) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(29) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(30) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(31) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(48) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(49) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(33);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(50) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(34);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(51) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(35);

\STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\addr~combout\(5) & \addr~combout\(4) & \addr~combout\(3) & \addr~combout\(2) & \addr~combout\(1) & \addr~combout\(0));

\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(32) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(33) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(1);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(34) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(2);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(35) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(3);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(36) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(4);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(37) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(5);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(38) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(6);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(39) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(7);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(40) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(8);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(41) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(9);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(42) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(10);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(43) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(11);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(44) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(12);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(45) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(13);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(46) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(14);
\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(47) <= \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(15);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\STACK|ALT_INV_empty~combout\ <= NOT \STACK|empty~combout\;
\DEB|ALT_INV_state\(0) <= NOT \DEB|state\(0);
\SEG_FLOOR|ALT_INV_Mux0~0_combout\ <= NOT \SEG_FLOOR|Mux0~0_combout\;
\SEG_FLOOR|ALT_INV_Mux4~1_combout\ <= NOT \SEG_FLOOR|Mux4~1_combout\;
\SEG_MOD|ALT_INV_Mux2~0_combout\ <= NOT \SEG_MOD|Mux2~0_combout\;
\SEG_MOD|ALT_INV_Mux3~0_combout\ <= NOT \SEG_MOD|Mux3~0_combout\;
\SEG_MOD|ALT_INV_Mux6~0_combout\ <= NOT \SEG_MOD|Mux6~0_combout\;

-- Location: LCFF_X37_Y9_N9
\STACK|S11|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S11|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S11|U1|dffs\(4));

-- Location: LCFF_X38_Y10_N27
\STACK|S10|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S10|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S10|U1|dffs\(4));

-- Location: LCFF_X42_Y12_N9
\STACK|S15|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S15|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S15|U1|dffs\(4));

-- Location: LCFF_X42_Y12_N7
\STACK|S13|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S13|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S13|U1|dffs\(4));

-- Location: LCFF_X39_Y9_N9
\STACK|S14|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S14|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S14|U1|dffs\(4));

-- Location: LCFF_X39_Y9_N23
\STACK|S12|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S12|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S12|U1|dffs\(4));

-- Location: LCFF_X42_Y11_N21
\STACK|S50|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S50|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S50|U1|dffs\(4));

-- Location: LCFF_X36_Y9_N1
\STACK|S22|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S22|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S22|U1|dffs\(4));

-- Location: LCFF_X40_Y6_N21
\STACK|S21|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S21|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S21|U1|dffs\(4));

-- Location: LCFF_X40_Y10_N9
\STACK|S20|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S20|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S20|U1|dffs\(4));

-- Location: LCFF_X47_Y9_N17
\STACK|S23|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S23|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S23|U1|dffs\(4));

-- Location: LCFF_X39_Y10_N21
\STACK|S18|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S18|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S18|U1|dffs\(4));

-- Location: LCFF_X36_Y9_N23
\STACK|S17|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S17|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S17|U1|dffs\(4));

-- Location: LCFF_X40_Y12_N13
\STACK|S16|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S16|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S16|U1|dffs\(4));

-- Location: LCFF_X35_Y9_N25
\STACK|S19|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S19|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S19|U1|dffs\(4));

-- Location: LCFF_X37_Y10_N25
\STACK|S29|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S29|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S29|U1|dffs\(4));

-- Location: LCFF_X42_Y6_N29
\STACK|S28|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S28|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S28|U1|dffs\(4));

-- Location: LCFF_X42_Y6_N23
\STACK|S30|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S30|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S30|U1|dffs\(4));

-- Location: LCFF_X40_Y9_N1
\STACK|S25|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S25|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S25|U1|dffs\(4));

-- Location: LCFF_X40_Y7_N25
\STACK|S24|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S24|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S24|U1|dffs\(4));

-- Location: LCFF_X40_Y9_N15
\STACK|S27|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S27|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S27|U1|dffs\(4));

-- Location: LCFF_X40_Y7_N23
\STACK|S26|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S26|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S26|U1|dffs\(4));

-- Location: LCFF_X44_Y9_N9
\STACK|S6|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S6|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S6|U1|dffs\(0));

-- Location: LCFF_X38_Y9_N25
\STACK|S5|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S5|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S5|U1|dffs\(0));

-- Location: LCFF_X47_Y9_N3
\STACK|S4|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S4|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S4|U1|dffs\(0));

-- Location: LCFF_X42_Y10_N17
\STACK|S7|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S7|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S7|U1|dffs\(0));

-- Location: LCFF_X42_Y12_N5
\STACK|S15|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S15|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S15|U1|dffs\(0));

-- Location: LCFF_X42_Y12_N31
\STACK|S13|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S13|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S13|U1|dffs\(0));

-- Location: LCFF_X39_Y9_N5
\STACK|S14|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S14|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S14|U1|dffs\(0));

-- Location: LCFF_X39_Y9_N27
\STACK|S12|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S12|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S12|U1|dffs\(0));

-- Location: LCFF_X37_Y9_N1
\STACK|S11|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S11|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S11|U1|dffs\(0));

-- Location: LCFF_X37_Y9_N7
\STACK|S9|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S9|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S9|U1|dffs\(0));

-- Location: LCFF_X38_Y10_N3
\STACK|S10|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S10|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S10|U1|dffs\(0));

-- Location: LCFF_X42_Y10_N7
\STACK|S8|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S8|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S8|U1|dffs\(0));

-- Location: LCFF_X36_Y9_N29
\STACK|S22|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S22|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S22|U1|dffs\(0));

-- Location: LCFF_X40_Y6_N17
\STACK|S21|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S21|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S21|U1|dffs\(0));

-- Location: LCFF_X39_Y10_N3
\STACK|S20|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S20|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S20|U1|dffs\(0));

-- Location: LCFF_X43_Y9_N29
\STACK|S23|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S23|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S23|U1|dffs\(0));

-- Location: LCFF_X36_Y9_N7
\STACK|S17|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S17|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S17|U1|dffs\(0));

-- Location: LCFF_X39_Y10_N17
\STACK|S18|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S18|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S18|U1|dffs\(0));

-- Location: LCFF_X40_Y12_N21
\STACK|S16|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S16|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S16|U1|dffs\(0));

-- Location: LCFF_X35_Y9_N3
\STACK|S19|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S19|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S19|U1|dffs\(0));

-- Location: LCFF_X40_Y7_N5
\STACK|S24|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S24|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S24|U1|dffs\(0));

-- Location: LCFF_X42_Y8_N27
\STACK|S37|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S37|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[37]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S37|U1|dffs\(0));

-- Location: LCFF_X40_Y8_N13
\STACK|S36|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S36|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[36]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S36|U1|dffs\(0));

-- Location: LCFF_X36_Y8_N13
\STACK|S35|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S35|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S35|U1|dffs\(0));

-- Location: LCFF_X44_Y9_N5
\STACK|S4|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S4|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S4|U1|dffs\(3));

-- Location: LCFF_X45_Y9_N21
\STACK|S2|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S2|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S2|U1|dffs\(3));

-- Location: LCFF_X46_Y9_N9
\STACK|S1|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S1|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S1|U1|dffs\(3));

-- Location: LCFF_X43_Y9_N19
\STACK|S0|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S0|U0|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S0|U1|dffs\(3));

-- Location: LCFF_X38_Y10_N1
\STACK|S3|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S3|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S3|U1|dffs\(3));

-- Location: LCFF_X42_Y11_N13
\STACK|S50|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S50|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S50|U1|dffs\(3));

-- Location: LCFF_X40_Y11_N3
\STACK|S45|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S45|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[45]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S45|U1|dffs\(3));

-- Location: LCFF_X42_Y9_N17
\STACK|S46|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S46|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[46]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S46|U1|dffs\(3));

-- Location: LCFF_X40_Y10_N27
\STACK|S44|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S44|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[44]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S44|U1|dffs\(3));

-- Location: LCFF_X42_Y7_N1
\STACK|S43|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S43|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[43]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S43|U1|dffs\(3));

-- Location: LCFF_X42_Y8_N17
\STACK|S41|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S41|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[41]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S41|U1|dffs\(3));

-- Location: LCFF_X44_Y8_N25
\STACK|S42|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S42|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[42]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S42|U1|dffs\(3));

-- Location: LCFF_X39_Y12_N25
\STACK|S40|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S40|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[40]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S40|U1|dffs\(3));

-- Location: LCFF_X39_Y8_N7
\STACK|S34|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S34|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[34]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S34|U1|dffs\(3));

-- Location: LCFF_X40_Y8_N21
\STACK|S33|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S33|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[33]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S33|U1|dffs\(3));

-- Location: LCFF_X37_Y8_N7
\STACK|S32|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S32|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[32]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S32|U1|dffs\(3));

-- Location: LCFF_X37_Y10_N9
\STACK|S35|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S35|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S35|U1|dffs\(3));

-- Location: LCFF_X38_Y8_N29
\STACK|S38|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S38|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[38]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S38|U1|dffs\(3));

-- Location: LCFF_X42_Y8_N19
\STACK|S37|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S37|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[37]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S37|U1|dffs\(3));

-- Location: LCFF_X40_Y8_N31
\STACK|S36|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S36|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[36]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S36|U1|dffs\(3));

-- Location: LCFF_X38_Y8_N3
\STACK|S39|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S39|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[39]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S39|U1|dffs\(3));

-- Location: LCFF_X39_Y10_N29
\STACK|S18|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S18|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S18|U1|dffs\(3));

-- Location: LCFF_X36_Y9_N17
\STACK|S17|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S17|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S17|U1|dffs\(3));

-- Location: LCFF_X40_Y12_N27
\STACK|S16|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S16|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S16|U1|dffs\(3));

-- Location: LCFF_X40_Y6_N27
\STACK|S31|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S31|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[31]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S31|U1|dffs\(3));

-- Location: LCFF_X37_Y10_N31
\STACK|S29|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S29|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S29|U1|dffs\(3));

-- Location: LCFF_X42_Y6_N21
\STACK|S30|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S30|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S30|U1|dffs\(3));

-- Location: LCFF_X42_Y6_N7
\STACK|S28|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S28|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S28|U1|dffs\(3));

-- Location: LCFF_X40_Y9_N13
\STACK|S27|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S27|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S27|U1|dffs\(3));

-- Location: LCFF_X40_Y7_N13
\STACK|S26|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S26|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S26|U1|dffs\(3));

-- Location: LCFF_X42_Y11_N29
\STACK|S50|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S50|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S50|U1|dffs\(5));

-- Location: LCFF_X39_Y11_N17
\STACK|S49|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S49|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S49|U1|dffs\(5));

-- Location: LCFF_X42_Y7_N3
\STACK|S48|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S48|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S48|U1|dffs\(5));

-- Location: LCFF_X42_Y11_N11
\STACK|S51|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S51|U0|$00000|auto_generated|result_node[5]~3_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S51|U1|dffs\(5));

-- Location: LCFF_X36_Y9_N27
\STACK|S22|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S22|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S22|U1|dffs\(5));

-- Location: LCFF_X40_Y6_N9
\STACK|S21|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S21|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S21|U1|dffs\(5));

-- Location: LCFF_X40_Y10_N17
\STACK|S20|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S20|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S20|U1|dffs\(5));

-- Location: LCFF_X42_Y9_N5
\STACK|S23|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S23|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S23|U1|dffs\(5));

-- Location: LCFF_X39_Y10_N15
\STACK|S18|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S18|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S18|U1|dffs\(5));

-- Location: LCFF_X36_Y9_N5
\STACK|S17|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S17|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S17|U1|dffs\(5));

-- Location: LCFF_X35_Y9_N21
\STACK|S19|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S19|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S19|U1|dffs\(5));

-- Location: LCFF_X40_Y7_N21
\STACK|S24|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S24|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S24|U1|dffs\(5));

-- Location: LCFF_X44_Y9_N3
\STACK|S6|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S6|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S6|U1|dffs\(5));

-- Location: LCFF_X38_Y9_N1
\STACK|S5|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S5|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S5|U1|dffs\(5));

-- Location: LCFF_X44_Y9_N29
\STACK|S4|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S4|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S4|U1|dffs\(5));

-- Location: LCFF_X42_Y10_N9
\STACK|S7|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S7|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S7|U1|dffs\(5));

-- Location: LCFF_X45_Y9_N15
\STACK|S2|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S2|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S2|U1|dffs\(5));

-- Location: LCFF_X46_Y9_N15
\STACK|S1|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S1|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S1|U1|dffs\(5));

-- Location: LCFF_X43_Y9_N13
\STACK|S0|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S0|U0|$00000|auto_generated|result_node[5]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S0|U1|dffs\(5));

-- Location: LCFF_X38_Y10_N9
\STACK|S3|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S3|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S3|U1|dffs\(5));

-- Location: LCFF_X37_Y9_N17
\STACK|S9|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S9|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S9|U1|dffs\(5));

-- Location: LCFF_X42_Y10_N3
\STACK|S8|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S8|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S8|U1|dffs\(5));

-- Location: LCFF_X40_Y11_N25
\STACK|S45|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S45|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[45]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S45|U1|dffs\(5));

-- Location: LCFF_X40_Y12_N3
\STACK|S47|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S47|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[47]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S47|U1|dffs\(5));

-- Location: LCFF_X42_Y9_N3
\STACK|S46|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S46|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[46]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S46|U1|dffs\(5));

-- Location: LCFF_X45_Y9_N31
\STACK|S2|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S2|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S2|U1|dffs\(2));

-- Location: LCFF_X46_Y9_N1
\STACK|S1|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S1|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S1|U1|dffs\(2));

-- Location: LCFF_X43_Y9_N3
\STACK|S0|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S0|U0|$00000|auto_generated|result_node\(2),
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S0|U1|dffs\(2));

-- Location: LCFF_X38_Y10_N7
\STACK|S10|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S10|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S10|U1|dffs\(2));

-- Location: LCFF_X40_Y8_N19
\STACK|S33|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S33|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[33]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S33|U1|dffs\(2));

-- Location: LCFF_X37_Y8_N5
\STACK|S32|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S32|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[32]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S32|U1|dffs\(2));

-- Location: LCFF_X43_Y12_N7
\STACK|S41|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S41|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[41]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S41|U1|dffs\(2));

-- Location: LCFF_X37_Y10_N19
\STACK|S29|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S29|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S29|U1|dffs\(2));

-- Location: LCFF_X42_Y6_N5
\STACK|S28|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S28|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S28|U1|dffs\(2));

-- Location: LCFF_X40_Y6_N29
\STACK|S31|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S31|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[31]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S31|U1|dffs\(2));

-- Location: LCFF_X42_Y6_N11
\STACK|S30|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S30|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S30|U1|dffs\(2));

-- Location: LCFF_X40_Y9_N29
\STACK|S25|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S25|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S25|U1|dffs\(2));

-- Location: LCFF_X40_Y7_N9
\STACK|S24|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S24|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S24|U1|dffs\(2));

-- Location: LCFF_X40_Y9_N3
\STACK|S27|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S27|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S27|U1|dffs\(2));

-- Location: LCFF_X40_Y7_N7
\STACK|S26|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S26|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S26|U1|dffs\(2));

-- Location: LCFF_X42_Y7_N15
\STACK|S48|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S48|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S48|U1|dffs\(1));

-- Location: LCFF_X40_Y12_N29
\STACK|S47|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S47|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[47]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S47|U1|dffs\(1));

-- Location: LCFF_X40_Y11_N21
\STACK|S45|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S45|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[45]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S45|U1|dffs\(1));

-- Location: LCFF_X42_Y9_N13
\STACK|S46|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S46|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[46]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S46|U1|dffs\(1));

-- Location: LCFF_X40_Y10_N21
\STACK|S44|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S44|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[44]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S44|U1|dffs\(1));

-- Location: LCFF_X42_Y7_N13
\STACK|S43|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S43|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[43]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S43|U1|dffs\(1));

-- Location: LCFF_X43_Y8_N25
\STACK|S41|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S41|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[41]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S41|U1|dffs\(1));

-- Location: LCFF_X44_Y8_N7
\STACK|S42|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S42|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[42]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S42|U1|dffs\(1));

-- Location: LCFF_X39_Y12_N3
\STACK|S40|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S40|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[40]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S40|U1|dffs\(1));

-- Location: LCFF_X39_Y8_N3
\STACK|S34|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S34|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[34]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S34|U1|dffs\(1));

-- Location: LCFF_X40_Y8_N9
\STACK|S33|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S33|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[33]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S33|U1|dffs\(1));

-- Location: LCFF_X36_Y8_N27
\STACK|S35|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S35|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S35|U1|dffs\(1));

-- Location: LCFF_X38_Y8_N5
\STACK|S38|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S38|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[38]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S38|U1|dffs\(1));

-- Location: LCFF_X42_Y8_N5
\STACK|S37|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S37|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[37]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S37|U1|dffs\(1));

-- Location: LCFF_X39_Y8_N25
\STACK|S36|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S36|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[36]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S36|U1|dffs\(1));

-- Location: LCFF_X38_Y8_N15
\STACK|S39|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S39|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[39]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S39|U1|dffs\(1));

-- Location: LCFF_X47_Y4_N21
\DEB|C0|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita21~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(21));

-- Location: LCFF_X47_Y4_N11
\DEB|C0|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita16~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(16));

-- Location: LCFF_X47_Y5_N17
\DEB|C0|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita3~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(3));

-- Location: LCFF_X47_Y5_N13
\DEB|C0|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita1~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(1));

-- Location: LCCOMB_X47_Y5_N12
\DEB|C0|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita1~combout\ = (\DEB|C0|auto_generated|safe_q\(1) & (!\DEB|C0|auto_generated|counter_comb_bita0~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(1) & ((\DEB|C0|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita0~COUT\) # (!\DEB|C0|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita0~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita1~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X47_Y5_N16
\DEB|C0|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita3~combout\ = (\DEB|C0|auto_generated|safe_q\(3) & (!\DEB|C0|auto_generated|counter_comb_bita2~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(3) & ((\DEB|C0|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita2~COUT\) # (!\DEB|C0|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita2~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita3~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X47_Y4_N10
\DEB|C0|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita16~combout\ = (\DEB|C0|auto_generated|safe_q\(16) & (\DEB|C0|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(16) & (!\DEB|C0|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita16~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(16) & !\DEB|C0|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita15~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita16~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X47_Y4_N20
\DEB|C0|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita21~combout\ = (\DEB|C0|auto_generated|safe_q\(21) & (!\DEB|C0|auto_generated|counter_comb_bita20~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(21) & ((\DEB|C0|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita20~COUT\) # (!\DEB|C0|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita20~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita21~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X46_Y9_N12
\STACK|M0|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~14_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S1|U1|dffs\(4)))) # (!\addr~combout\(0) & (\STACK|S0|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S0|U1|dffs\(4),
	datad => \STACK|S1|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~14_combout\);

-- Location: LCCOMB_X46_Y9_N26
\STACK|M0|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~15_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~14_combout\ & (\STACK|S3|U1|dffs\(4))) # (!\STACK|M0|auto_generated|_~14_combout\ & ((\STACK|S2|U1|dffs\(4)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S3|U1|dffs\(4),
	datab => \STACK|S2|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~14_combout\,
	combout => \STACK|M0|auto_generated|_~15_combout\);

-- Location: LCCOMB_X36_Y12_N28
\STACK|M0|auto_generated|result_node[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~2_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S11|U1|dffs\(4))) # (!\addr~combout\(1) & ((\STACK|S9|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S11|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \STACK|S9|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|result_node[4]~2_combout\);

-- Location: LCCOMB_X36_Y12_N26
\STACK|M0|auto_generated|result_node[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~3_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S10|U1|dffs\(4))) # (!\addr~combout\(1) & ((\STACK|S8|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S10|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \STACK|S8|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X36_Y12_N4
\STACK|M0|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~4_combout\ = (!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[4]~2_combout\) # (\STACK|M0|auto_generated|result_node[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|result_node[4]~2_combout\,
	datad => \STACK|M0|auto_generated|result_node[4]~3_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X36_Y12_N14
\STACK|M0|auto_generated|result_node[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~5_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S15|U1|dffs\(4))) # (!\addr~combout\(1) & ((\STACK|S13|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S15|U1|dffs\(4),
	datac => \STACK|S13|U1|dffs\(4),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[4]~5_combout\);

-- Location: LCCOMB_X36_Y12_N20
\STACK|M0|auto_generated|result_node[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~6_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S14|U1|dffs\(4))) # (!\addr~combout\(1) & ((\STACK|S12|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S14|U1|dffs\(4),
	datad => \STACK|S12|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|result_node[4]~6_combout\);

-- Location: LCCOMB_X36_Y12_N22
\STACK|M0|auto_generated|result_node[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~7_combout\ = (\STACK|M0|auto_generated|result_node[4]~4_combout\) # ((\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[4]~5_combout\) # (\STACK|M0|auto_generated|result_node[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|result_node[4]~5_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~6_combout\,
	datad => \STACK|M0|auto_generated|result_node[4]~4_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~7_combout\);

-- Location: LCCOMB_X36_Y10_N12
\STACK|M0|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~19_combout\ = (\addr~combout\(0) & ((\addr~combout\(1)) # ((\STACK|S21|U1|dffs\(4))))) # (!\addr~combout\(0) & (!\addr~combout\(1) & ((\STACK|S20|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S21|U1|dffs\(4),
	datad => \STACK|S20|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~19_combout\);

-- Location: LCCOMB_X36_Y10_N26
\STACK|M0|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~20_combout\ = (\STACK|M0|auto_generated|_~19_combout\ & (((\STACK|S23|U1|dffs\(4)) # (!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~19_combout\ & (\STACK|S22|U1|dffs\(4) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~19_combout\,
	datab => \STACK|S22|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \STACK|S23|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~20_combout\);

-- Location: LCCOMB_X36_Y12_N12
\STACK|M0|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~21_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S17|U1|dffs\(4)))) # (!\addr~combout\(0) & (\STACK|S16|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S16|U1|dffs\(4),
	datac => \STACK|S17|U1|dffs\(4),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~21_combout\);

-- Location: LCCOMB_X36_Y12_N10
\STACK|M0|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~22_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~21_combout\ & (\STACK|S19|U1|dffs\(4))) # (!\STACK|M0|auto_generated|_~21_combout\ & ((\STACK|S18|U1|dffs\(4)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S19|U1|dffs\(4),
	datac => \STACK|S18|U1|dffs\(4),
	datad => \STACK|M0|auto_generated|_~21_combout\,
	combout => \STACK|M0|auto_generated|_~22_combout\);

-- Location: LCCOMB_X35_Y10_N20
\STACK|M0|auto_generated|result_node[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~9_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\STACK|M0|auto_generated|_~20_combout\)) # (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~20_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~22_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~9_combout\);

-- Location: LCCOMB_X37_Y12_N10
\STACK|M0|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~23_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S29|U1|dffs\(4)))) # (!\addr~combout\(0) & (\STACK|S28|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S28|U1|dffs\(4),
	datab => \addr~combout\(1),
	datac => \STACK|S29|U1|dffs\(4),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~23_combout\);

-- Location: LCCOMB_X37_Y12_N0
\STACK|M0|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~24_combout\ = (\addr~combout\(0) & (\STACK|S31|U1|dffs\(4))) # (!\addr~combout\(0) & ((\STACK|S30|U1|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S31|U1|dffs\(4),
	datab => \addr~combout\(0),
	datad => \STACK|S30|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~24_combout\);

-- Location: LCCOMB_X37_Y12_N22
\STACK|M0|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~25_combout\ = (\STACK|M0|auto_generated|_~23_combout\) # (((\STACK|M0|auto_generated|_~24_combout\ & \addr~combout\(1))) # (!\addr~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~23_combout\,
	datab => \STACK|M0|auto_generated|_~24_combout\,
	datac => \addr~combout\(1),
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|_~25_combout\);

-- Location: LCCOMB_X36_Y10_N4
\STACK|M0|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~26_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S25|U1|dffs\(4)))) # (!\addr~combout\(0) & (\STACK|S24|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S24|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \STACK|S25|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~26_combout\);

-- Location: LCCOMB_X36_Y10_N6
\STACK|M0|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~27_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S27|U1|dffs\(4))) # (!\addr~combout\(0) & ((\STACK|S26|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S27|U1|dffs\(4),
	datab => \STACK|S26|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~27_combout\);

-- Location: LCCOMB_X36_Y10_N0
\STACK|M0|auto_generated|result_node[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~10_combout\ = (\addr~combout\(3) & ((\STACK|M0|auto_generated|_~27_combout\) # ((\STACK|M0|auto_generated|_~26_combout\) # (\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~27_combout\,
	datab => \STACK|M0|auto_generated|_~26_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[4]~10_combout\);

-- Location: LCCOMB_X36_Y10_N2
\STACK|M0|auto_generated|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~11_combout\ = (\addr~combout\(4) & ((\STACK|M0|auto_generated|result_node[4]~9_combout\) # ((\STACK|M0|auto_generated|result_node[4]~10_combout\ & \STACK|M0|auto_generated|_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \STACK|M0|auto_generated|result_node[4]~10_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~9_combout\,
	datad => \STACK|M0|auto_generated|_~25_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X37_Y7_N28
\STACK|M0|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~36_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\STACK|S33|U1|dffs\(4))))) # (!\addr~combout\(0) & (\STACK|S32|U1|dffs\(4) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S32|U1|dffs\(4),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \STACK|S33|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~36_combout\);

-- Location: LCCOMB_X37_Y7_N18
\STACK|M0|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~37_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~36_combout\ & (\STACK|S35|U1|dffs\(4))) # (!\STACK|M0|auto_generated|_~36_combout\ & ((\STACK|S34|U1|dffs\(4)))))) # (!\addr~combout\(1) & 
-- (\STACK|M0|auto_generated|_~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|_~36_combout\,
	datac => \STACK|S35|U1|dffs\(4),
	datad => \STACK|S34|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~37_combout\);

-- Location: LCCOMB_X44_Y7_N18
\STACK|M0|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~40_combout\ = (\addr~combout\(0) & (((\STACK|S5|U1|dffs\(0)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\STACK|S4|U1|dffs\(0) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S4|U1|dffs\(0),
	datab => \STACK|S5|U1|dffs\(0),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~40_combout\);

-- Location: LCCOMB_X44_Y7_N12
\STACK|M0|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~41_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~40_combout\ & (\STACK|S7|U1|dffs\(0))) # (!\STACK|M0|auto_generated|_~40_combout\ & ((\STACK|S6|U1|dffs\(0)))))) # (!\addr~combout\(1) & 
-- (\STACK|M0|auto_generated|_~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|_~40_combout\,
	datac => \STACK|S7|U1|dffs\(0),
	datad => \STACK|S6|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~41_combout\);

-- Location: LCCOMB_X42_Y12_N10
\STACK|M0|auto_generated|result_node[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~14_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S15|U1|dffs\(0))) # (!\addr~combout\(1) & ((\STACK|S13|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S15|U1|dffs\(0),
	datad => \STACK|S13|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X37_Y12_N20
\STACK|M0|auto_generated|result_node[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~15_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S14|U1|dffs\(0)))) # (!\addr~combout\(1) & (\STACK|S12|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S12|U1|dffs\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S14|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X37_Y12_N18
\STACK|M0|auto_generated|result_node[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~16_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[0]~15_combout\) # (\STACK|M0|auto_generated|result_node[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[0]~15_combout\,
	datac => \STACK|M0|auto_generated|result_node[0]~14_combout\,
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X37_Y12_N24
\STACK|M0|auto_generated|result_node[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~17_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S11|U1|dffs\(0)))) # (!\addr~combout\(1) & (\STACK|S9|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S9|U1|dffs\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S11|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X38_Y7_N12
\STACK|M0|auto_generated|result_node[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~18_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S10|U1|dffs\(0))) # (!\addr~combout\(1) & ((\STACK|S8|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S10|U1|dffs\(0),
	datac => \STACK|S8|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[0]~18_combout\);

-- Location: LCCOMB_X37_Y12_N14
\STACK|M0|auto_generated|result_node[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~19_combout\ = (\STACK|M0|auto_generated|result_node[0]~16_combout\) # ((!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[0]~17_combout\) # (\STACK|M0|auto_generated|result_node[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[0]~17_combout\,
	datab => \STACK|M0|auto_generated|result_node[0]~16_combout\,
	datac => \STACK|M0|auto_generated|result_node[0]~18_combout\,
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|result_node[0]~19_combout\);

-- Location: LCCOMB_X39_Y6_N12
\STACK|M0|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~46_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S21|U1|dffs\(0))) # (!\addr~combout\(0) & ((\STACK|S20|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S20|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~46_combout\);

-- Location: LCCOMB_X39_Y6_N18
\STACK|M0|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~47_combout\ = (\STACK|M0|auto_generated|_~46_combout\ & (((\STACK|S23|U1|dffs\(0))) # (!\addr~combout\(1)))) # (!\STACK|M0|auto_generated|_~46_combout\ & (\addr~combout\(1) & (\STACK|S22|U1|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~46_combout\,
	datab => \addr~combout\(1),
	datac => \STACK|S22|U1|dffs\(0),
	datad => \STACK|S23|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~47_combout\);

-- Location: LCCOMB_X35_Y9_N14
\STACK|M0|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~48_combout\ = (\addr~combout\(1) & ((\STACK|S18|U1|dffs\(0)) # ((\addr~combout\(0))))) # (!\addr~combout\(1) & (((\STACK|S16|U1|dffs\(0) & !\addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S18|U1|dffs\(0),
	datac => \STACK|S16|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~48_combout\);

-- Location: LCCOMB_X35_Y9_N12
\STACK|M0|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~49_combout\ = (\addr~combout\(0) & ((\STACK|M0|auto_generated|_~48_combout\ & (\STACK|S19|U1|dffs\(0))) # (!\STACK|M0|auto_generated|_~48_combout\ & ((\STACK|S17|U1|dffs\(0)))))) # (!\addr~combout\(0) & 
-- (((\STACK|M0|auto_generated|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S19|U1|dffs\(0),
	datac => \STACK|M0|auto_generated|_~48_combout\,
	datad => \STACK|S17|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~49_combout\);

-- Location: LCCOMB_X35_Y7_N6
\STACK|M0|auto_generated|result_node[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~21_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~47_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~49_combout\,
	datab => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|_~47_combout\,
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[0]~21_combout\);

-- Location: LCCOMB_X34_Y8_N24
\STACK|M0|auto_generated|result_node[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~22_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S29|U1|dffs\(0))) # (!\addr~combout\(0) & ((\STACK|S28|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S29|U1|dffs\(0),
	datac => \addr~combout\(1),
	datad => \STACK|S28|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|result_node[0]~22_combout\);

-- Location: LCCOMB_X36_Y8_N28
\STACK|M0|auto_generated|result_node[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~23_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S31|U1|dffs\(0))) # (!\addr~combout\(0) & ((\STACK|S30|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S31|U1|dffs\(0),
	datac => \STACK|S30|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[0]~23_combout\);

-- Location: LCCOMB_X35_Y8_N24
\STACK|M0|auto_generated|result_node[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~24_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[0]~22_combout\) # (\STACK|M0|auto_generated|result_node[0]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|M0|auto_generated|result_node[0]~22_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|result_node[0]~23_combout\,
	combout => \STACK|M0|auto_generated|result_node[0]~24_combout\);

-- Location: LCCOMB_X37_Y10_N6
\STACK|M0|auto_generated|result_node[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~25_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S25|U1|dffs\(0)))) # (!\addr~combout\(0) & (\STACK|S24|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S24|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \STACK|S25|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[0]~25_combout\);

-- Location: LCCOMB_X36_Y8_N30
\STACK|M0|auto_generated|result_node[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~26_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S27|U1|dffs\(0)))) # (!\addr~combout\(0) & (\STACK|S26|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S26|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \STACK|S27|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[0]~26_combout\);

-- Location: LCCOMB_X35_Y8_N18
\STACK|M0|auto_generated|result_node[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~27_combout\ = (\STACK|M0|auto_generated|result_node[0]~24_combout\) # ((!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[0]~26_combout\) # (\STACK|M0|auto_generated|result_node[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[0]~24_combout\,
	datab => \STACK|M0|auto_generated|result_node[0]~26_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|result_node[0]~25_combout\,
	combout => \STACK|M0|auto_generated|result_node[0]~27_combout\);

-- Location: LCCOMB_X35_Y7_N0
\STACK|M0|auto_generated|result_node[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~28_combout\ = (\addr~combout\(4) & ((\STACK|M0|auto_generated|result_node[0]~21_combout\) # ((\STACK|M0|auto_generated|result_node[0]~27_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[0]~21_combout\,
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|result_node[0]~27_combout\,
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[0]~28_combout\);

-- Location: LCCOMB_X38_Y7_N10
\STACK|M0|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~50_combout\ = (\addr~combout\(0) & ((\STACK|S37|U1|dffs\(0)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((\STACK|S36|U1|dffs\(0) & !\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(0),
	datab => \addr~combout\(0),
	datac => \STACK|S36|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~50_combout\);

-- Location: LCCOMB_X43_Y8_N18
\STACK|M0|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~57_combout\ = (\addr~combout\(0) & (((!\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S46|U1|dffs\(0)))) # (!\addr~combout\(1) & (\STACK|S44|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S44|U1|dffs\(0),
	datac => \STACK|S46|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~57_combout\);

-- Location: LCCOMB_X43_Y8_N12
\STACK|M0|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~58_combout\ = (\addr~combout\(0) & ((\STACK|M0|auto_generated|_~57_combout\ & (\STACK|S45|U1|dffs\(0))) # (!\STACK|M0|auto_generated|_~57_combout\ & ((\STACK|S47|U1|dffs\(0)))))) # (!\addr~combout\(0) & 
-- (((\STACK|M0|auto_generated|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S45|U1|dffs\(0),
	datac => \STACK|S47|U1|dffs\(0),
	datad => \STACK|M0|auto_generated|_~57_combout\,
	combout => \STACK|M0|auto_generated|_~58_combout\);

-- Location: LCCOMB_X38_Y9_N28
\STACK|M0|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~63_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S5|U1|dffs\(3)))) # (!\addr~combout\(0) & (\STACK|S4|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S4|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S5|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~63_combout\);

-- Location: LCCOMB_X38_Y11_N4
\STACK|M0|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~64_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~63_combout\ & (\STACK|S7|U1|dffs\(3))) # (!\STACK|M0|auto_generated|_~63_combout\ & ((\STACK|S6|U1|dffs\(3)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S7|U1|dffs\(3),
	datac => \STACK|M0|auto_generated|_~63_combout\,
	datad => \STACK|S6|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~64_combout\);

-- Location: LCCOMB_X46_Y9_N24
\STACK|M0|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~65_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S1|U1|dffs\(3))) # (!\addr~combout\(0) & ((\STACK|S0|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S1|U1|dffs\(3),
	datad => \STACK|S0|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~65_combout\);

-- Location: LCCOMB_X45_Y9_N2
\STACK|M0|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~66_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~65_combout\ & ((\STACK|S3|U1|dffs\(3)))) # (!\STACK|M0|auto_generated|_~65_combout\ & (\STACK|S2|U1|dffs\(3))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S2|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \STACK|S3|U1|dffs\(3),
	datad => \STACK|M0|auto_generated|_~65_combout\,
	combout => \STACK|M0|auto_generated|_~66_combout\);

-- Location: LCCOMB_X37_Y11_N12
\STACK|M0|auto_generated|result_node[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~30_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~64_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~66_combout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|_~64_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~30_combout\);

-- Location: LCCOMB_X38_Y12_N20
\STACK|M0|auto_generated|result_node[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~35_combout\ = (!\addr~combout\(2) & ((\addr~combout\(1) & (\STACK|S10|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S8|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S10|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(2),
	datad => \STACK|S8|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|result_node[3]~35_combout\);

-- Location: LCCOMB_X35_Y8_N16
\STACK|M0|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~69_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S47|U1|dffs\(3)))) # (!\addr~combout\(1) & (\STACK|S45|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S45|U1|dffs\(3),
	datac => \STACK|S47|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~69_combout\);

-- Location: LCCOMB_X35_Y9_N10
\STACK|M0|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~70_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S46|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S44|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S46|U1|dffs\(3),
	datac => \STACK|S44|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~70_combout\);

-- Location: LCCOMB_X35_Y7_N2
\STACK|M0|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~71_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|_~69_combout\) # (\STACK|M0|auto_generated|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|_~69_combout\,
	datad => \STACK|M0|auto_generated|_~70_combout\,
	combout => \STACK|M0|auto_generated|_~71_combout\);

-- Location: LCCOMB_X44_Y8_N12
\STACK|M0|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~72_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S43|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S41|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S43|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \STACK|S41|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~72_combout\);

-- Location: LCCOMB_X44_Y8_N22
\STACK|M0|auto_generated|_~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~73_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S42|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S40|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S42|U1|dffs\(3),
	datab => \STACK|S40|U1|dffs\(3),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~73_combout\);

-- Location: LCCOMB_X44_Y8_N16
\STACK|M0|auto_generated|_~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~74_combout\ = (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~73_combout\) # (\STACK|M0|auto_generated|_~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|_~73_combout\,
	datad => \STACK|M0|auto_generated|_~72_combout\,
	combout => \STACK|M0|auto_generated|_~74_combout\);

-- Location: LCCOMB_X35_Y7_N8
\STACK|M0|auto_generated|_~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~75_combout\ = (\addr~combout\(3) & (\addr~combout\(5) & ((\STACK|M0|auto_generated|_~74_combout\) # (\STACK|M0|auto_generated|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(5),
	datac => \STACK|M0|auto_generated|_~74_combout\,
	datad => \STACK|M0|auto_generated|_~71_combout\,
	combout => \STACK|M0|auto_generated|_~75_combout\);

-- Location: LCCOMB_X37_Y6_N0
\STACK|M0|auto_generated|_~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~76_combout\ = (\addr~combout\(0) & (((\STACK|S33|U1|dffs\(3)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\STACK|S32|U1|dffs\(3) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S32|U1|dffs\(3),
	datab => \addr~combout\(0),
	datac => \STACK|S33|U1|dffs\(3),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~76_combout\);

-- Location: LCCOMB_X37_Y6_N30
\STACK|M0|auto_generated|_~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~77_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~76_combout\ & ((\STACK|S35|U1|dffs\(3)))) # (!\STACK|M0|auto_generated|_~76_combout\ & (\STACK|S34|U1|dffs\(3))))) # (!\addr~combout\(1) & 
-- (\STACK|M0|auto_generated|_~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|_~76_combout\,
	datac => \STACK|S34|U1|dffs\(3),
	datad => \STACK|S35|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~77_combout\);

-- Location: LCCOMB_X36_Y7_N2
\STACK|M0|auto_generated|_~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~78_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\STACK|M0|auto_generated|_~77_combout\ & \STACK|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|_~77_combout\,
	datad => \STACK|M0|auto_generated|_~16_combout\,
	combout => \STACK|M0|auto_generated|_~78_combout\);

-- Location: LCCOMB_X37_Y6_N4
\STACK|M0|auto_generated|_~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~79_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S37|U1|dffs\(3))) # (!\addr~combout\(0) & ((\STACK|S36|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S37|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \STACK|S36|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~79_combout\);

-- Location: LCCOMB_X39_Y8_N10
\STACK|M0|auto_generated|_~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~80_combout\ = (\STACK|M0|auto_generated|_~79_combout\ & ((\STACK|S39|U1|dffs\(3)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~79_combout\ & (((\addr~combout\(1) & \STACK|S38|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S39|U1|dffs\(3),
	datab => \STACK|M0|auto_generated|_~79_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S38|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~80_combout\);

-- Location: LCCOMB_X35_Y7_N30
\STACK|M0|auto_generated|_~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~81_combout\ = (!\addr~combout\(3) & (\addr~combout\(5) & \addr~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(5),
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|_~81_combout\);

-- Location: LCCOMB_X35_Y7_N20
\STACK|M0|auto_generated|_~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~82_combout\ = (\STACK|M0|auto_generated|_~78_combout\) # ((\STACK|M0|auto_generated|_~75_combout\) # ((\STACK|M0|auto_generated|_~81_combout\ & \STACK|M0|auto_generated|_~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~78_combout\,
	datab => \STACK|M0|auto_generated|_~81_combout\,
	datac => \STACK|M0|auto_generated|_~75_combout\,
	datad => \STACK|M0|auto_generated|_~80_combout\,
	combout => \STACK|M0|auto_generated|_~82_combout\);

-- Location: LCCOMB_X39_Y10_N6
\STACK|M0|auto_generated|_~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~85_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S17|U1|dffs\(3)))) # (!\addr~combout\(0) & (\STACK|S16|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S16|U1|dffs\(3),
	datac => \STACK|S17|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~85_combout\);

-- Location: LCCOMB_X38_Y7_N14
\STACK|M0|auto_generated|_~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~86_combout\ = (\STACK|M0|auto_generated|_~85_combout\ & ((\STACK|S19|U1|dffs\(3)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~85_combout\ & (((\STACK|S18|U1|dffs\(3) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~85_combout\,
	datab => \STACK|S19|U1|dffs\(3),
	datac => \STACK|S18|U1|dffs\(3),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~86_combout\);

-- Location: LCCOMB_X37_Y6_N14
\STACK|M0|auto_generated|result_node[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~39_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S31|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S29|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S31|U1|dffs\(3),
	datab => \STACK|S29|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[3]~39_combout\);

-- Location: LCCOMB_X37_Y6_N20
\STACK|M0|auto_generated|result_node[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~40_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S30|U1|dffs\(3)))) # (!\addr~combout\(1) & (\STACK|S28|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S28|U1|dffs\(3),
	datab => \STACK|S30|U1|dffs\(3),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[3]~40_combout\);

-- Location: LCCOMB_X37_Y6_N26
\STACK|M0|auto_generated|result_node[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~41_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[3]~40_combout\) # (\STACK|M0|auto_generated|result_node[3]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[3]~40_combout\,
	datab => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|result_node[3]~39_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~41_combout\);

-- Location: LCCOMB_X37_Y6_N8
\STACK|M0|auto_generated|result_node[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~42_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S27|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S25|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S27|U1|dffs\(3),
	datab => \addr~combout\(0),
	datac => \STACK|S25|U1|dffs\(3),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[3]~42_combout\);

-- Location: LCCOMB_X39_Y11_N14
\STACK|M0|auto_generated|result_node[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~43_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S26|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S24|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S26|U1|dffs\(3),
	datac => \STACK|S24|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[3]~43_combout\);

-- Location: LCCOMB_X37_Y6_N22
\STACK|M0|auto_generated|result_node[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~44_combout\ = (\STACK|M0|auto_generated|result_node[3]~41_combout\) # ((!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[3]~43_combout\) # (\STACK|M0|auto_generated|result_node[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[3]~43_combout\,
	datab => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|result_node[3]~42_combout\,
	datad => \STACK|M0|auto_generated|result_node[3]~41_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~44_combout\);

-- Location: LCCOMB_X39_Y11_N8
\STACK|M0|auto_generated|_~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~87_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S49|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S48|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S48|U1|dffs\(5),
	datab => \addr~combout\(1),
	datac => \STACK|S49|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~87_combout\);

-- Location: LCCOMB_X40_Y11_N30
\STACK|M0|auto_generated|_~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~88_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~87_combout\ & (\STACK|S51|U1|dffs\(5))) # (!\STACK|M0|auto_generated|_~87_combout\ & ((\STACK|S50|U1|dffs\(5)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S51|U1|dffs\(5),
	datab => \addr~combout\(1),
	datac => \STACK|S50|U1|dffs\(5),
	datad => \STACK|M0|auto_generated|_~87_combout\,
	combout => \STACK|M0|auto_generated|_~88_combout\);

-- Location: LCCOMB_X36_Y11_N10
\STACK|M0|auto_generated|_~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~89_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S21|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S20|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S20|U1|dffs\(5),
	datad => \STACK|S21|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~89_combout\);

-- Location: LCCOMB_X36_Y11_N0
\STACK|M0|auto_generated|_~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~90_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~89_combout\ & (\STACK|S23|U1|dffs\(5))) # (!\STACK|M0|auto_generated|_~89_combout\ & ((\STACK|S22|U1|dffs\(5)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S23|U1|dffs\(5),
	datab => \STACK|S22|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~89_combout\,
	combout => \STACK|M0|auto_generated|_~90_combout\);

-- Location: LCCOMB_X36_Y11_N14
\STACK|M0|auto_generated|_~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~91_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S17|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S16|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S16|U1|dffs\(5),
	datad => \STACK|S17|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~91_combout\);

-- Location: LCCOMB_X36_Y11_N24
\STACK|M0|auto_generated|_~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~92_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~91_combout\ & (\STACK|S19|U1|dffs\(5))) # (!\STACK|M0|auto_generated|_~91_combout\ & ((\STACK|S18|U1|dffs\(5)))))) # (!\addr~combout\(1) & 
-- (\STACK|M0|auto_generated|_~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|_~91_combout\,
	datac => \STACK|S19|U1|dffs\(5),
	datad => \STACK|S18|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~92_combout\);

-- Location: LCCOMB_X36_Y11_N30
\STACK|M0|auto_generated|result_node[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~46_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~90_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~92_combout\,
	datab => \STACK|M0|auto_generated|_~90_combout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|result_node[5]~46_combout\);

-- Location: LCCOMB_X36_Y11_N20
\STACK|M0|auto_generated|_~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~96_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S25|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S24|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S24|U1|dffs\(5),
	datad => \STACK|S25|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~96_combout\);

-- Location: LCCOMB_X45_Y10_N0
\STACK|M0|auto_generated|_~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~98_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S5|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S4|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S4|U1|dffs\(5),
	datab => \addr~combout\(1),
	datac => \STACK|S5|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~98_combout\);

-- Location: LCCOMB_X45_Y10_N10
\STACK|M0|auto_generated|_~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~99_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~98_combout\ & ((\STACK|S7|U1|dffs\(5)))) # (!\STACK|M0|auto_generated|_~98_combout\ & (\STACK|S6|U1|dffs\(5))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S6|U1|dffs\(5),
	datab => \STACK|S7|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~98_combout\,
	combout => \STACK|M0|auto_generated|_~99_combout\);

-- Location: LCCOMB_X46_Y9_N22
\STACK|M0|auto_generated|_~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~100_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S1|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S0|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S1|U1|dffs\(5),
	datad => \STACK|S0|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~100_combout\);

-- Location: LCCOMB_X46_Y9_N16
\STACK|M0|auto_generated|_~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~101_combout\ = (\STACK|M0|auto_generated|_~100_combout\ & ((\STACK|S3|U1|dffs\(5)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~100_combout\ & (((\addr~combout\(1) & \STACK|S2|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S3|U1|dffs\(5),
	datab => \STACK|M0|auto_generated|_~100_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S2|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~101_combout\);

-- Location: LCCOMB_X37_Y11_N10
\STACK|M0|auto_generated|result_node[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~49_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\STACK|M0|auto_generated|_~99_combout\)) # (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~99_combout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|_~101_combout\,
	combout => \STACK|M0|auto_generated|result_node[5]~49_combout\);

-- Location: LCCOMB_X38_Y11_N12
\STACK|M0|auto_generated|result_node[5]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~53_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S9|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S8|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S8|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \STACK|S9|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|result_node[5]~53_combout\);

-- Location: LCCOMB_X44_Y7_N16
\STACK|M0|auto_generated|_~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~106_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S47|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S46|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S47|U1|dffs\(5),
	datab => \STACK|S46|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~106_combout\);

-- Location: LCCOMB_X39_Y8_N20
\STACK|M0|auto_generated|_~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~110_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\STACK|S33|U1|dffs\(5))))) # (!\addr~combout\(0) & (\STACK|S32|U1|dffs\(5) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S32|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \STACK|S33|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~110_combout\);

-- Location: LCCOMB_X44_Y10_N10
\STACK|M0|auto_generated|_~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~114_combout\ = (\addr~combout\(0) & ((\addr~combout\(1)) # ((\STACK|S5|U1|dffs\(2))))) # (!\addr~combout\(0) & (!\addr~combout\(1) & (\STACK|S4|U1|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S4|U1|dffs\(2),
	datad => \STACK|S5|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~114_combout\);

-- Location: LCCOMB_X44_Y10_N30
\STACK|M0|auto_generated|_~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~116_combout\ = (\addr~combout\(0) & ((\STACK|S1|U1|dffs\(2)) # ((\addr~combout\(1))))) # (!\addr~combout\(0) & (((!\addr~combout\(1) & \STACK|S0|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S1|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \addr~combout\(1),
	datad => \STACK|S0|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~116_combout\);

-- Location: LCCOMB_X44_Y10_N24
\STACK|M0|auto_generated|_~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~117_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~116_combout\ & (\STACK|S3|U1|dffs\(2))) # (!\STACK|M0|auto_generated|_~116_combout\ & ((\STACK|S2|U1|dffs\(2)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S3|U1|dffs\(2),
	datab => \addr~combout\(1),
	datac => \STACK|S2|U1|dffs\(2),
	datad => \STACK|M0|auto_generated|_~116_combout\,
	combout => \STACK|M0|auto_generated|_~117_combout\);

-- Location: LCCOMB_X39_Y12_N28
\STACK|M0|auto_generated|result_node[2]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~59_combout\ = (\addr~combout\(2) & ((\addr~combout\(0) & ((\STACK|S13|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S12|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S12|U1|dffs\(2),
	datac => \addr~combout\(2),
	datad => \STACK|S13|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|result_node[2]~59_combout\);

-- Location: LCCOMB_X39_Y11_N18
\STACK|M0|auto_generated|result_node[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~60_combout\ = (!\addr~combout\(2) & ((\addr~combout\(0) & ((\STACK|S9|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S8|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S8|U1|dffs\(2),
	datab => \addr~combout\(2),
	datac => \STACK|S9|U1|dffs\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[2]~60_combout\);

-- Location: LCCOMB_X39_Y12_N30
\STACK|M0|auto_generated|result_node[2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~61_combout\ = (!\addr~combout\(1) & ((\STACK|M0|auto_generated|result_node[2]~60_combout\) # (\STACK|M0|auto_generated|result_node[2]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|M0|auto_generated|result_node[2]~60_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|result_node[2]~59_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~61_combout\);

-- Location: LCCOMB_X39_Y12_N4
\STACK|M0|auto_generated|result_node[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~62_combout\ = (\addr~combout\(2) & ((\addr~combout\(0) & ((\STACK|S15|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S14|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(2),
	datac => \STACK|S14|U1|dffs\(2),
	datad => \STACK|S15|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|result_node[2]~62_combout\);

-- Location: LCCOMB_X37_Y11_N4
\STACK|M0|auto_generated|result_node[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~63_combout\ = (!\addr~combout\(2) & ((\addr~combout\(0) & (\STACK|S11|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S10|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S11|U1|dffs\(2),
	datab => \addr~combout\(2),
	datac => \addr~combout\(0),
	datad => \STACK|S10|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|result_node[2]~63_combout\);

-- Location: LCCOMB_X38_Y12_N0
\STACK|M0|auto_generated|result_node[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~64_combout\ = (\STACK|M0|auto_generated|result_node[2]~61_combout\) # ((\addr~combout\(1) & ((\STACK|M0|auto_generated|result_node[2]~62_combout\) # (\STACK|M0|auto_generated|result_node[2]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[2]~62_combout\,
	datab => \addr~combout\(1),
	datac => \STACK|M0|auto_generated|result_node[2]~63_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~61_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~64_combout\);

-- Location: LCCOMB_X43_Y12_N16
\STACK|M0|auto_generated|_~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~118_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S49|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S48|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S49|U1|dffs\(2),
	datac => \STACK|S48|U1|dffs\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~118_combout\);

-- Location: LCCOMB_X43_Y11_N14
\STACK|M0|auto_generated|_~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~119_combout\ = (\STACK|M0|auto_generated|_~118_combout\ & ((\STACK|S51|U1|dffs\(2)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~118_combout\ & (((\addr~combout\(1) & \STACK|S50|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S51|U1|dffs\(2),
	datab => \STACK|M0|auto_generated|_~118_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S50|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~119_combout\);

-- Location: LCCOMB_X37_Y7_N6
\STACK|M0|auto_generated|_~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~123_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S33|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S32|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S32|U1|dffs\(2),
	datab => \addr~combout\(1),
	datac => \STACK|S33|U1|dffs\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~123_combout\);

-- Location: LCCOMB_X37_Y7_N16
\STACK|M0|auto_generated|_~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~124_combout\ = (\STACK|M0|auto_generated|_~123_combout\ & ((\STACK|S35|U1|dffs\(2)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~123_combout\ & (((\addr~combout\(1) & \STACK|S34|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~123_combout\,
	datab => \STACK|S35|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \STACK|S34|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~124_combout\);

-- Location: LCCOMB_X36_Y7_N12
\STACK|M0|auto_generated|_~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~125_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\STACK|M0|auto_generated|_~124_combout\ & \STACK|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~124_combout\,
	datab => \addr~combout\(4),
	datac => \addr~combout\(5),
	datad => \STACK|M0|auto_generated|_~16_combout\,
	combout => \STACK|M0|auto_generated|_~125_combout\);

-- Location: LCCOMB_X43_Y12_N2
\STACK|M0|auto_generated|_~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~126_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\STACK|S41|U1|dffs\(2))))) # (!\addr~combout\(0) & (\STACK|S40|U1|dffs\(2) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S40|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \STACK|S41|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~126_combout\);

-- Location: LCCOMB_X43_Y12_N12
\STACK|M0|auto_generated|_~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~127_combout\ = (\STACK|M0|auto_generated|_~126_combout\ & (((\STACK|S43|U1|dffs\(2)) # (!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~126_combout\ & (\STACK|S42|U1|dffs\(2) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S42|U1|dffs\(2),
	datab => \STACK|M0|auto_generated|_~126_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S43|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~127_combout\);

-- Location: LCCOMB_X38_Y6_N16
\STACK|M0|auto_generated|result_node[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~67_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S29|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S28|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S28|U1|dffs\(2),
	datad => \STACK|S29|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|result_node[2]~67_combout\);

-- Location: LCCOMB_X38_Y6_N6
\STACK|M0|auto_generated|result_node[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~68_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S31|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S30|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S31|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \STACK|S30|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[2]~68_combout\);

-- Location: LCCOMB_X38_Y6_N12
\STACK|M0|auto_generated|result_node[2]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~69_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S25|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S24|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S25|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \STACK|S24|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[2]~69_combout\);

-- Location: LCCOMB_X38_Y6_N18
\STACK|M0|auto_generated|result_node[2]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~70_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S27|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S26|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S26|U1|dffs\(2),
	datab => \addr~combout\(0),
	datac => \STACK|S27|U1|dffs\(2),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[2]~70_combout\);

-- Location: LCCOMB_X38_Y6_N4
\STACK|M0|auto_generated|result_node[2]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~71_combout\ = (\addr~combout\(3) & ((\STACK|M0|auto_generated|result_node[2]~69_combout\) # ((\STACK|M0|auto_generated|result_node[2]~70_combout\) # (\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[2]~69_combout\,
	datab => \STACK|M0|auto_generated|result_node[2]~70_combout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|result_node[2]~71_combout\);

-- Location: LCCOMB_X38_Y6_N30
\STACK|M0|auto_generated|result_node[2]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~72_combout\ = (\STACK|M0|auto_generated|result_node[2]~71_combout\ & (((\STACK|M0|auto_generated|result_node[2]~67_combout\) # (\STACK|M0|auto_generated|result_node[2]~68_combout\)) # (!\addr~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|result_node[2]~71_combout\,
	datac => \STACK|M0|auto_generated|result_node[2]~67_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~68_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~72_combout\);

-- Location: LCCOMB_X34_Y8_N10
\STACK|M0|auto_generated|_~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~138_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S47|U1|dffs\(1)))) # (!\addr~combout\(1) & (\STACK|S45|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S45|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S47|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~138_combout\);

-- Location: LCCOMB_X43_Y7_N18
\STACK|M0|auto_generated|_~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~139_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S46|U1|dffs\(1))) # (!\addr~combout\(1) & ((\STACK|S44|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S46|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S44|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~139_combout\);

-- Location: LCCOMB_X35_Y7_N22
\STACK|M0|auto_generated|_~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~140_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|_~139_combout\) # (\STACK|M0|auto_generated|_~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|_~139_combout\,
	datad => \STACK|M0|auto_generated|_~138_combout\,
	combout => \STACK|M0|auto_generated|_~140_combout\);

-- Location: LCCOMB_X36_Y8_N6
\STACK|M0|auto_generated|_~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~141_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S43|U1|dffs\(1))) # (!\addr~combout\(1) & ((\STACK|S41|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S43|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S41|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~141_combout\);

-- Location: LCCOMB_X43_Y7_N0
\STACK|M0|auto_generated|_~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~142_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S42|U1|dffs\(1)))) # (!\addr~combout\(1) & (\STACK|S40|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S40|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S42|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~142_combout\);

-- Location: LCCOMB_X35_Y8_N10
\STACK|M0|auto_generated|_~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~143_combout\ = (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~141_combout\) # (\STACK|M0|auto_generated|_~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~141_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~142_combout\,
	combout => \STACK|M0|auto_generated|_~143_combout\);

-- Location: LCCOMB_X35_Y7_N24
\STACK|M0|auto_generated|_~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~144_combout\ = (\addr~combout\(3) & (\addr~combout\(5) & ((\STACK|M0|auto_generated|_~143_combout\) # (\STACK|M0|auto_generated|_~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(5),
	datac => \STACK|M0|auto_generated|_~143_combout\,
	datad => \STACK|M0|auto_generated|_~140_combout\,
	combout => \STACK|M0|auto_generated|_~144_combout\);

-- Location: LCCOMB_X35_Y8_N0
\STACK|M0|auto_generated|_~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~145_combout\ = (\addr~combout\(1) & (\addr~combout\(0))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S33|U1|dffs\(1)))) # (!\addr~combout\(0) & (\STACK|S32|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S32|U1|dffs\(1),
	datad => \STACK|S33|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~145_combout\);

-- Location: LCCOMB_X35_Y8_N6
\STACK|M0|auto_generated|_~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~146_combout\ = (\STACK|M0|auto_generated|_~145_combout\ & ((\STACK|S35|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~145_combout\ & (((\STACK|S34|U1|dffs\(1) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S35|U1|dffs\(1),
	datab => \STACK|M0|auto_generated|_~145_combout\,
	datac => \STACK|S34|U1|dffs\(1),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~146_combout\);

-- Location: LCCOMB_X35_Y7_N26
\STACK|M0|auto_generated|_~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~147_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\STACK|M0|auto_generated|_~146_combout\ & \STACK|M0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~146_combout\,
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|_~16_combout\,
	datad => \addr~combout\(5),
	combout => \STACK|M0|auto_generated|_~147_combout\);

-- Location: LCCOMB_X35_Y8_N4
\STACK|M0|auto_generated|_~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~148_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\STACK|S37|U1|dffs\(1))))) # (!\addr~combout\(0) & (\STACK|S36|U1|dffs\(1) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S36|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S37|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~148_combout\);

-- Location: LCCOMB_X35_Y8_N30
\STACK|M0|auto_generated|_~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~149_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~148_combout\ & (\STACK|S39|U1|dffs\(1))) # (!\STACK|M0|auto_generated|_~148_combout\ & ((\STACK|S38|U1|dffs\(1)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S39|U1|dffs\(1),
	datac => \STACK|S38|U1|dffs\(1),
	datad => \STACK|M0|auto_generated|_~148_combout\,
	combout => \STACK|M0|auto_generated|_~149_combout\);

-- Location: LCCOMB_X34_Y7_N8
\STACK|M0|auto_generated|_~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~150_combout\ = (\STACK|M0|auto_generated|_~144_combout\) # ((\STACK|M0|auto_generated|_~147_combout\) # ((\STACK|M0|auto_generated|_~149_combout\ & \STACK|M0|auto_generated|_~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~149_combout\,
	datab => \STACK|M0|auto_generated|_~144_combout\,
	datac => \STACK|M0|auto_generated|_~147_combout\,
	datad => \STACK|M0|auto_generated|_~81_combout\,
	combout => \STACK|M0|auto_generated|_~150_combout\);

-- Location: LCCOMB_X47_Y9_N20
\STACK|M0|auto_generated|_~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~151_combout\ = (\addr~combout\(0) & ((\addr~combout\(1)) # ((\STACK|S5|U1|dffs\(1))))) # (!\addr~combout\(0) & (!\addr~combout\(1) & (\STACK|S4|U1|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S4|U1|dffs\(1),
	datad => \STACK|S5|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~151_combout\);

-- Location: LCCOMB_X47_Y9_N24
\STACK|M0|auto_generated|_~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~153_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\STACK|S1|U1|dffs\(1))))) # (!\addr~combout\(0) & (\STACK|S0|U1|dffs\(1) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S0|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S1|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~153_combout\);

-- Location: LCCOMB_X47_Y9_N4
\STACK|M0|auto_generated|result_node[1]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~79_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S10|U1|dffs\(1)))) # (!\addr~combout\(1) & (\STACK|S8|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S8|U1|dffs\(1),
	datad => \STACK|S10|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|result_node[1]~79_combout\);

-- Location: LCCOMB_X39_Y7_N30
\STACK|M0|auto_generated|result_node[1]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~80_combout\ = (\addr~combout\(1) & ((\STACK|S11|U1|dffs\(1)))) # (!\addr~combout\(1) & (\STACK|S9|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S9|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S11|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|result_node[1]~80_combout\);

-- Location: LCCOMB_X39_Y7_N12
\STACK|M0|auto_generated|result_node[1]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~81_combout\ = (!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[1]~79_combout\) # ((\STACK|M0|auto_generated|result_node[1]~80_combout\ & \addr~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[1]~79_combout\,
	datab => \STACK|M0|auto_generated|result_node[1]~80_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[1]~81_combout\);

-- Location: LCCOMB_X39_Y11_N24
\STACK|M0|auto_generated|result_node[1]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~84_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S29|U1|dffs\(1))) # (!\addr~combout\(0) & ((\STACK|S28|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S29|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S28|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|result_node[1]~84_combout\);

-- Location: LCCOMB_X35_Y10_N8
\STACK|M0|auto_generated|_~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~155_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S21|U1|dffs\(1)))) # (!\addr~combout\(0) & (\STACK|S20|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S20|U1|dffs\(1),
	datac => \STACK|S21|U1|dffs\(1),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~155_combout\);

-- Location: LCCOMB_X35_Y10_N6
\STACK|M0|auto_generated|_~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~156_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~155_combout\ & ((\STACK|S23|U1|dffs\(1)))) # (!\STACK|M0|auto_generated|_~155_combout\ & (\STACK|S22|U1|dffs\(1))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S22|U1|dffs\(1),
	datac => \STACK|M0|auto_generated|_~155_combout\,
	datad => \STACK|S23|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~156_combout\);

-- Location: LCCOMB_X35_Y7_N14
\STACK|M0|auto_generated|result_node[2]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~93_combout\ = (\STACK|M0|auto_generated|_~131_combout\ & (((\STACK|M0|auto_generated|_~16_combout\ & \STACK|M0|auto_generated|_~119_combout\)) # (!\addr~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~131_combout\,
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|_~16_combout\,
	datad => \STACK|M0|auto_generated|_~119_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~93_combout\);

-- Location: LCCOMB_X36_Y7_N4
\MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2~combout\ = (\STACK|M0|auto_generated|result_node[0]~29_combout\ & ((\STACK|M0|auto_generated|result_node[2]~93_combout\) # ((\STACK|M0|auto_generated|result_node[2]~74_combout\) # 
-- (\STACK|M0|auto_generated|result_node[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[2]~93_combout\,
	datab => \STACK|M0|auto_generated|result_node[2]~74_combout\,
	datac => \STACK|M0|auto_generated|result_node[0]~29_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~65_combout\,
	combout => \MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2~combout\);

-- Location: LCCOMB_X35_Y11_N20
\MOD13|A1|b2v_inst3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst3|Cout~0_combout\ = (\MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2~combout\ & ((\STACK|M0|auto_generated|result_node[1]~92_combout\) # ((\STACK|M0|auto_generated|result_node\(3)) # (\STACK|M0|auto_generated|result_node[1]~83_combout\)))) # 
-- (!\MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2~combout\ & (\STACK|M0|auto_generated|result_node\(3) & ((\STACK|M0|auto_generated|result_node[1]~92_combout\) # (\STACK|M0|auto_generated|result_node[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A1|b2v_inst2|SYNTHESIZED_WIRE_2~combout\,
	datab => \STACK|M0|auto_generated|result_node[1]~92_combout\,
	datac => \STACK|M0|auto_generated|result_node\(3),
	datad => \STACK|M0|auto_generated|result_node[1]~83_combout\,
	combout => \MOD13|A1|b2v_inst3|Cout~0_combout\);

-- Location: LCCOMB_X27_Y19_N24
\MOD13|A1|b2v_inst4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst4|Cout~0_combout\ = (\MOD13|A1|b2v_inst3|Cout~0_combout\ & ((\STACK|M0|auto_generated|result_node[2]~66_combout\) # ((\STACK|M0|auto_generated|result_node[4]~12_combout\) # (\STACK|M0|auto_generated|result_node[2]~74_combout\)))) # 
-- (!\MOD13|A1|b2v_inst3|Cout~0_combout\ & (\STACK|M0|auto_generated|result_node[4]~12_combout\ & ((\STACK|M0|auto_generated|result_node[2]~66_combout\) # (\STACK|M0|auto_generated|result_node[2]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[2]~66_combout\,
	datab => \MOD13|A1|b2v_inst3|Cout~0_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~74_combout\,
	combout => \MOD13|A1|b2v_inst4|Cout~0_combout\);

-- Location: LCCOMB_X26_Y19_N30
\MOD13|A1|b2v_inst7|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst7|S~combout\ = (\STACK|M0|auto_generated|result_node[4]~12_combout\ & ((\MOD13|A1|b2v_inst4|Cout~0_combout\ & (\MOD13|A1|b2v_inst7|S~8_combout\ & !\STACK|M0|auto_generated|result_node[5]~57_combout\)) # 
-- (!\MOD13|A1|b2v_inst4|Cout~0_combout\ & (!\MOD13|A1|b2v_inst7|S~8_combout\ & \STACK|M0|auto_generated|result_node[5]~57_combout\)))) # (!\STACK|M0|auto_generated|result_node[4]~12_combout\ & (((\STACK|M0|auto_generated|result_node[5]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datab => \MOD13|A1|b2v_inst4|Cout~0_combout\,
	datac => \MOD13|A1|b2v_inst7|S~8_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \MOD13|A1|b2v_inst7|S~combout\);

-- Location: LCCOMB_X27_Y19_N16
\MOD13|A5|b2v_inst1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst1|Cout~0_combout\ = (\MOD13|A1|b2v_inst7|S~combout\ & (\STACK|M0|auto_generated|result_node\(1) & ((\STACK|M0|auto_generated|result_node[0]~29_combout\) # (!\MOD13|A1|b2v_inst6|S~combout\)))) # (!\MOD13|A1|b2v_inst7|S~combout\ & 
-- (\MOD13|A1|b2v_inst6|S~combout\ & ((\STACK|M0|auto_generated|result_node\(1)) # (\STACK|M0|auto_generated|result_node[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A1|b2v_inst7|S~combout\,
	datab => \MOD13|A1|b2v_inst6|S~combout\,
	datac => \STACK|M0|auto_generated|result_node\(1),
	datad => \STACK|M0|auto_generated|result_node[0]~29_combout\,
	combout => \MOD13|A5|b2v_inst1|Cout~0_combout\);

-- Location: LCCOMB_X36_Y12_N16
\STACK|S11|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S10|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S12|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\STACK|S10|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S10|U1|dffs\(4),
	datad => \STACK|S12|U1|dffs\(4),
	combout => \STACK|S11|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y9_N16
\STACK|S9|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S8|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S10|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S8|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S10|U1|dffs\(4),
	datab => \STACK|S8|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S9|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X37_Y9_N28
\STACK|S10|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S9|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S11|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S9|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S9|U1|dffs\(4),
	datac => \STACK|S11|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S10|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N2
\STACK|S15|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S14|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S16|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S14|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S16|U1|dffs\(4),
	datac => \STACK|S14|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S15|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N24
\STACK|S13|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S12|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S14|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S12|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S14|U1|dffs\(4),
	datad => \STACK|S12|U1|dffs\(4),
	combout => \STACK|S13|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N18
\STACK|S14|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S13|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S15|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S13|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S15|U1|dffs\(4),
	datac => \STACK|S13|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S14|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N0
\STACK|S12|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S11|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S13|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S11|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S11|U1|dffs\(4),
	datac => \STACK|S13|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S12|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X43_Y11_N24
\STACK|S50|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S49|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S51|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S49|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S51|U1|dffs\(4),
	datac => \STACK|S49|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S50|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N20
\STACK|S22|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S21|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S23|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S21|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S23|U1|dffs\(4),
	combout => \STACK|S22|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N18
\STACK|S21|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S20|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S22|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S20|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S22|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \STACK|S20|U1|dffs\(4),
	combout => \STACK|S21|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N24
\STACK|S20|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S19|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S21|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S19|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(4),
	datab => \STACK|S19|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S20|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N10
\STACK|S23|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S22|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S24|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S22|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S22|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \STACK|S24|U1|dffs\(4),
	combout => \STACK|S23|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N30
\STACK|S18|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S17|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S19|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\STACK|S17|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S17|U1|dffs\(4),
	datad => \STACK|S19|U1|dffs\(4),
	combout => \STACK|S18|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N8
\STACK|S17|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S16|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S18|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S16|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S16|U1|dffs\(4),
	datac => \STACK|S18|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S17|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y12_N6
\STACK|S16|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S15|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S17|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S15|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U1|dffs\(4),
	datab => \STACK|S15|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S16|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N8
\STACK|S19|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S18|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S20|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S18|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S18|U1|dffs\(4),
	datad => \STACK|S20|U1|dffs\(4),
	combout => \STACK|S19|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X37_Y12_N28
\STACK|S29|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S28|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S30|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S28|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S28|U1|dffs\(4),
	datad => \STACK|S30|U1|dffs\(4),
	combout => \STACK|S29|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X39_Y6_N4
\STACK|S28|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S27|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S29|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\STACK|S27|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S27|U1|dffs\(4),
	datad => \STACK|S29|U1|dffs\(4),
	combout => \STACK|S28|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y6_N24
\STACK|S30|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S29|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S31|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S29|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S29|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \STACK|S31|U1|dffs\(4),
	combout => \STACK|S30|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X43_Y9_N6
\STACK|S25|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S24|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S26|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\STACK|S24|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S24|U1|dffs\(4),
	datad => \STACK|S26|U1|dffs\(4),
	combout => \STACK|S25|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N14
\STACK|S24|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S23|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S25|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S23|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S25|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \STACK|S23|U1|dffs\(4),
	combout => \STACK|S24|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N16
\STACK|S27|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S26|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S28|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S26|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S26|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \STACK|S28|U1|dffs\(4),
	combout => \STACK|S27|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X36_Y10_N30
\STACK|S26|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S25|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S27|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S25|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S27|U1|dffs\(4),
	datad => \STACK|S25|U1|dffs\(4),
	combout => \STACK|S26|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X47_Y9_N10
\STACK|S6|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S5|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S7|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S5|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S5|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S7|U1|dffs\(0),
	combout => \STACK|S6|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X48_Y9_N16
\STACK|S5|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S4|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S6|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S4|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S4|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \STACK|S6|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S5|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X47_Y9_N12
\STACK|S4|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S3|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S5|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S3|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S3|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \STACK|S5|U1|dffs\(0),
	combout => \STACK|S4|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y10_N14
\STACK|S7|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S6|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S8|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S6|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S8|U1|dffs\(0),
	datab => \STACK|S6|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S7|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y12_N14
\STACK|S15|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S14|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S16|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S14|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S16|U1|dffs\(0),
	datab => \STACK|S14|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S15|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y12_N4
\STACK|S13|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S12|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S14|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S12|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S14|U1|dffs\(0),
	datac => \STACK|S12|U1|dffs\(0),
	datad => \mode~combout\(0),
	combout => \STACK|S13|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X43_Y10_N22
\STACK|S14|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S13|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S15|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S13|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S15|U1|dffs\(0),
	datac => \STACK|S13|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S14|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X43_Y10_N16
\STACK|S12|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S11|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S13|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S11|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S13|U1|dffs\(0),
	datac => \STACK|S11|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S12|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y7_N6
\STACK|S11|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S10|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S12|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S10|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S10|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \STACK|S12|U1|dffs\(0),
	combout => \STACK|S11|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y7_N4
\STACK|S9|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S8|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S10|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S8|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S10|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \STACK|S8|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S9|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X37_Y12_N16
\STACK|S10|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S9|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S11|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S9|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S9|U1|dffs\(0),
	datab => \STACK|S11|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S10|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y8_N2
\STACK|S8|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S7|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S9|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S7|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S7|U1|dffs\(0),
	datab => \STACK|S9|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S8|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X43_Y11_N22
\STACK|S49|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S48|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S50|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S48|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S50|U1|dffs\(0),
	datac => \STACK|S48|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S49|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X43_Y11_N16
\STACK|S48|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S47|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S49|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S47|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S49|U1|dffs\(0),
	datac => \STACK|S47|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S48|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y6_N20
\STACK|S22|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S21|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S23|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\STACK|S21|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S21|U1|dffs\(0),
	datad => \STACK|S23|U1|dffs\(0),
	combout => \STACK|S22|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y6_N26
\STACK|S21|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S20|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S22|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S20|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S20|U1|dffs\(0),
	datac => \STACK|S22|U1|dffs\(0),
	datad => \mode~combout\(0),
	combout => \STACK|S21|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y10_N12
\STACK|S20|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S19|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S21|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S19|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(0),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S19|U1|dffs\(0),
	combout => \STACK|S20|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X37_Y10_N10
\STACK|S23|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S22|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S24|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S22|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S24|U1|dffs\(0),
	datad => \STACK|S22|U1|dffs\(0),
	combout => \STACK|S23|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X35_Y9_N16
\STACK|S17|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S16|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S18|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S16|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S16|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S18|U1|dffs\(0),
	combout => \STACK|S17|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y10_N26
\STACK|S18|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S17|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S19|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S17|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S17|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S19|U1|dffs\(0),
	combout => \STACK|S18|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y12_N20
\STACK|S16|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S15|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S17|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S15|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U1|dffs\(0),
	datab => \STACK|S15|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S16|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X35_Y9_N26
\STACK|S19|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S18|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S20|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S18|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S18|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \STACK|S20|U1|dffs\(0),
	combout => \STACK|S19|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y6_N0
\STACK|S24|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S23|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S25|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S23|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S25|U1|dffs\(0),
	datad => \STACK|S23|U1|dffs\(0),
	combout => \STACK|S24|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y7_N18
\STACK|S37|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S36|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S38|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S36|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S38|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \STACK|S36|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S37|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y8_N16
\STACK|S36|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S35|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S37|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S35|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S35|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S37|U1|dffs\(0),
	combout => \STACK|S36|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X36_Y8_N18
\STACK|S33|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S32|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S34|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\STACK|S32|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S32|U1|dffs\(0),
	datad => \STACK|S34|U1|dffs\(0),
	combout => \STACK|S33|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X36_Y8_N10
\STACK|S35|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S34|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S36|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S34|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S36|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S34|U1|dffs\(0),
	combout => \STACK|S35|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X45_Y9_N28
\STACK|S4|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S3|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S5|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S3|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S3|U1|dffs\(3),
	datac => \STACK|S5|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S4|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y9_N16
\STACK|S2|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S1|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S3|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S1|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S3|U1|dffs\(3),
	datad => \STACK|S1|U1|dffs\(3),
	combout => \STACK|S2|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X45_Y9_N22
\STACK|S1|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S0|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S2|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S0|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S2|U1|dffs\(3),
	datac => \STACK|S0|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S1|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y9_N18
\STACK|S0|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S0|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & (!\mode~combout\(0) & \STACK|S1|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \STACK|S1|U1|dffs\(3),
	combout => \STACK|S0|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X45_Y9_N0
\STACK|S3|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S2|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S4|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S2|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S4|U1|dffs\(3),
	datac => \STACK|S2|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S3|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y11_N30
\STACK|S50|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S49|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S51|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S49|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S51|U1|dffs\(3),
	datac => \STACK|S49|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S50|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y11_N20
\STACK|S49|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S48|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S50|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S48|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S48|U1|dffs\(3),
	datad => \STACK|S50|U1|dffs\(3),
	combout => \STACK|S49|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y9_N28
\STACK|S47|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S46|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S48|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S46|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S46|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \STACK|S48|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S47|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y10_N8
\STACK|S45|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S44|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S46|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S44|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S44|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S46|U1|dffs\(3),
	combout => \STACK|S45|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y9_N30
\STACK|S46|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S45|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S47|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S45|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S47|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \STACK|S45|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S46|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y9_N0
\STACK|S44|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S43|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S45|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S43|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S43|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \STACK|S45|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S44|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y8_N26
\STACK|S43|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S42|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S44|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S42|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S42|U1|dffs\(3),
	datac => \STACK|S44|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S43|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X44_Y8_N8
\STACK|S41|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S40|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S42|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S40|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S42|U1|dffs\(3),
	datab => \STACK|S40|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S41|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X44_Y8_N26
\STACK|S42|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S41|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S43|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S41|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S41|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \STACK|S43|U1|dffs\(3),
	combout => \STACK|S42|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X43_Y8_N20
\STACK|S40|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S39|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S41|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S39|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S41|U1|dffs\(3),
	datac => \STACK|S39|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S40|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N16
\STACK|S34|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S33|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S35|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S33|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S35|U1|dffs\(3),
	datab => \STACK|S33|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S34|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y8_N14
\STACK|S33|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S32|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S34|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S32|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S32|U1|dffs\(3),
	datad => \STACK|S34|U1|dffs\(3),
	combout => \STACK|S33|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N2
\STACK|S32|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S31|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S33|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S31|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S33|U1|dffs\(3),
	datac => \STACK|S31|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S32|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N12
\STACK|S35|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S34|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S36|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S34|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S36|U1|dffs\(3),
	datac => \STACK|S34|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S35|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y8_N8
\STACK|S38|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S37|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S39|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S37|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S39|U1|dffs\(3),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S37|U1|dffs\(3),
	combout => \STACK|S38|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y8_N28
\STACK|S37|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S36|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S38|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S36|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S38|U1|dffs\(3),
	datab => \STACK|S36|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S37|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N6
\STACK|S36|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S35|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S37|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S35|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S35|U1|dffs\(3),
	datab => \STACK|S37|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S36|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y8_N2
\STACK|S39|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S38|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S40|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S38|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S38|U1|dffs\(3),
	datac => \STACK|S40|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S39|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X35_Y10_N14
\STACK|S18|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S17|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S19|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S17|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S19|U1|dffs\(3),
	datad => \STACK|S17|U1|dffs\(3),
	combout => \STACK|S18|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y10_N22
\STACK|S17|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S16|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S18|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S16|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S18|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \STACK|S16|U1|dffs\(3),
	combout => \STACK|S17|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X38_Y12_N28
\STACK|S16|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S15|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S17|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S15|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S15|U1|dffs\(3),
	datab => \STACK|S17|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S16|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y6_N30
\STACK|S31|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S30|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S32|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S30|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S30|U1|dffs\(3),
	datac => \STACK|S32|U1|dffs\(3),
	datad => \mode~combout\(0),
	combout => \STACK|S31|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N24
\STACK|S29|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S28|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S30|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S28|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S30|U1|dffs\(3),
	datac => \STACK|S28|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S29|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N10
\STACK|S30|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S29|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S31|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S29|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S29|U1|dffs\(3),
	datac => \STACK|S31|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S30|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N28
\STACK|S28|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S27|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S29|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S27|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S29|U1|dffs\(3),
	datac => \STACK|S27|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S28|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y10_N24
\STACK|S27|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S26|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S28|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S26|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S26|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \STACK|S28|U1|dffs\(3),
	combout => \STACK|S27|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y11_N0
\STACK|S25|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S24|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S26|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S24|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S24|U1|dffs\(3),
	datac => \STACK|S26|U1|dffs\(3),
	datad => \mode~combout\(0),
	combout => \STACK|S25|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y6_N18
\STACK|S26|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S25|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S27|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S25|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S27|U1|dffs\(3),
	datac => \STACK|S25|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S26|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y11_N12
\STACK|S50|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S49|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S51|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S49|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S49|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S51|U1|dffs\(5),
	combout => \STACK|S50|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y11_N18
\STACK|S49|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S48|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S50|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S48|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S50|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S48|U1|dffs\(5),
	combout => \STACK|S49|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y7_N4
\STACK|S48|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S47|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S49|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S47|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S49|U1|dffs\(5),
	datad => \STACK|S47|U1|dffs\(5),
	combout => \STACK|S48|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y11_N10
\STACK|S51|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S51|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\STACK|S50|U1|dffs\(5) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \STACK|S50|U1|dffs\(5),
	combout => \STACK|S51|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y9_N12
\STACK|S22|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S21|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S23|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\STACK|S21|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(5),
	datab => \STACK|S23|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S22|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y9_N2
\STACK|S21|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S20|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S22|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S20|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S20|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S22|U1|dffs\(5),
	combout => \STACK|S21|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y11_N22
\STACK|S20|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S19|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S21|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S19|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S19|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S21|U1|dffs\(5),
	combout => \STACK|S20|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y11_N28
\STACK|S23|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S22|U1|dffs\(5)))) # (!\mode~combout\(0) & (\STACK|S24|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\STACK|S22|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S24|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \STACK|S22|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \STACK|S23|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y10_N28
\STACK|S18|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S17|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S19|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S17|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S19|U1|dffs\(5),
	combout => \STACK|S18|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y11_N18
\STACK|S17|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S16|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S18|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S16|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S16|U1|dffs\(5),
	datad => \STACK|S18|U1|dffs\(5),
	combout => \STACK|S17|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X35_Y9_N4
\STACK|S19|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S18|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S20|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S18|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S20|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S18|U1|dffs\(5),
	combout => \STACK|S19|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y11_N26
\STACK|S24|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S23|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S25|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S23|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S25|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S23|U1|dffs\(5),
	combout => \STACK|S24|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X45_Y10_N20
\STACK|S6|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S5|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S7|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S5|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S7|U1|dffs\(5),
	datac => \STACK|S5|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S6|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X45_Y10_N6
\STACK|S5|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S4|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S6|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S4|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S4|U1|dffs\(5),
	datac => \STACK|S6|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S5|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X45_Y10_N16
\STACK|S4|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S3|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S5|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S3|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S3|U1|dffs\(5),
	datac => \STACK|S5|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S4|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X43_Y10_N4
\STACK|S7|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S6|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S8|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S6|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S8|U1|dffs\(5),
	datac => \STACK|S6|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S7|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X46_Y9_N2
\STACK|S2|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S1|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S3|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\STACK|S1|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S1|U1|dffs\(5),
	datac => \STACK|S3|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \STACK|S2|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X46_Y9_N4
\STACK|S1|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S0|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S2|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S0|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S2|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S0|U1|dffs\(5),
	combout => \STACK|S1|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X43_Y9_N12
\STACK|S0|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S0|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & (\STACK|S1|U1|dffs\(5) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S1|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \STACK|S0|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X45_Y9_N26
\STACK|S3|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S2|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S4|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S2|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S4|U1|dffs\(5),
	datac => \STACK|S2|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S3|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X38_Y11_N14
\STACK|S9|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S8|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S10|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\STACK|S8|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S8|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \STACK|S10|U1|dffs\(5),
	combout => \STACK|S9|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X43_Y10_N2
\STACK|S8|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S7|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S9|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S7|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S7|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S9|U1|dffs\(5),
	combout => \STACK|S8|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X44_Y7_N2
\STACK|S45|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S44|U1|dffs\(5)))) # (!\mode~combout\(0) & (\STACK|S46|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\STACK|S44|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S46|U1|dffs\(5),
	datac => \STACK|S44|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \STACK|S45|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X39_Y11_N2
\STACK|S47|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S46|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S48|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S46|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S46|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S48|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S47|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X44_Y7_N14
\STACK|S46|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S45|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S47|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S45|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S45|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S47|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S46|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X44_Y10_N14
\STACK|S2|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S1|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S3|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S1|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S3|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \STACK|S1|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S2|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X44_Y10_N16
\STACK|S1|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S0|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S2|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S0|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S0|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \STACK|S2|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S1|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X43_Y9_N2
\STACK|S0|U0|$00000|auto_generated|result_node[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S0|U0|$00000|auto_generated|result_node\(2) = (\STACK|S1|U1|dffs\(2)) # ((\mode~combout\(0)) # (!\mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S1|U1|dffs\(2),
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S0|U0|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X38_Y10_N28
\STACK|S10|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S9|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S11|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S9|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S11|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \STACK|S9|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S10|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y7_N0
\STACK|S33|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S32|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S34|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S32|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S34|U1|dffs\(2),
	datac => \STACK|S32|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S33|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y8_N30
\STACK|S32|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S31|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S33|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S31|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S33|U1|dffs\(2),
	datac => \STACK|S31|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S32|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X43_Y12_N0
\STACK|S41|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S40|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S42|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S40|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S40|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S42|U1|dffs\(2),
	combout => \STACK|S41|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y6_N0
\STACK|S29|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S28|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S30|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S28|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S28|U1|dffs\(2),
	datac => \STACK|S30|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S29|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y6_N2
\STACK|S28|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S27|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S29|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S27|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S29|U1|dffs\(2),
	datac => \STACK|S27|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S28|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y6_N20
\STACK|S31|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S30|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S32|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S30|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S32|U1|dffs\(2),
	datac => \STACK|S30|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S31|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y6_N14
\STACK|S30|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S29|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S31|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S29|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S29|U1|dffs\(2),
	datac => \STACK|S31|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S30|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X39_Y9_N14
\STACK|S25|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S24|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S26|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S24|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S26|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \STACK|S24|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S25|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y7_N0
\STACK|S24|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S23|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S25|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S23|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S23|U1|dffs\(2),
	datab => \STACK|S25|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S24|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y6_N8
\STACK|S27|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S26|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S28|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S26|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S28|U1|dffs\(2),
	datac => \STACK|S26|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S27|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y7_N18
\STACK|S26|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S25|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S27|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S25|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S27|U1|dffs\(2),
	datab => \STACK|S25|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S26|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y6_N28
\STACK|S23|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S22|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S24|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S22|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S24|U1|dffs\(2),
	datac => \STACK|S22|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S23|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y10_N26
\STACK|S18|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S17|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S19|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S17|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S17|U1|dffs\(2),
	datad => \STACK|S19|U1|dffs\(2),
	combout => \STACK|S18|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y8_N10
\STACK|S48|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S47|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S49|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S47|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S47|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S49|U1|dffs\(1),
	combout => \STACK|S48|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y7_N10
\STACK|S47|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S46|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S48|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S46|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S48|U1|dffs\(1),
	datad => \STACK|S46|U1|dffs\(1),
	combout => \STACK|S47|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X43_Y7_N24
\STACK|S45|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S44|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S46|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S44|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S44|U1|dffs\(1),
	datac => \STACK|S46|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S45|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X39_Y6_N8
\STACK|S46|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S45|U1|dffs\(1)))) # (!\mode~combout\(0) & (\STACK|S47|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\STACK|S45|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S47|U1|dffs\(1),
	datad => \STACK|S45|U1|dffs\(1),
	combout => \STACK|S46|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X39_Y6_N10
\STACK|S44|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S43|U1|dffs\(1)))) # (!\mode~combout\(0) & (\STACK|S45|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\STACK|S43|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S45|U1|dffs\(1),
	datac => \STACK|S43|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S44|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X43_Y7_N30
\STACK|S43|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S42|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S44|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S42|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S42|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S44|U1|dffs\(1),
	combout => \STACK|S43|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X43_Y7_N12
\STACK|S41|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S40|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S42|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S40|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S40|U1|dffs\(1),
	datab => \STACK|S42|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S41|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X44_Y8_N2
\STACK|S42|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S41|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S43|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S41|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S43|U1|dffs\(1),
	datab => \STACK|S41|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S42|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X36_Y8_N22
\STACK|S40|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S39|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S41|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S39|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S39|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S41|U1|dffs\(1),
	combout => \STACK|S40|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y8_N2
\STACK|S34|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S33|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S35|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S33|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S35|U1|dffs\(1),
	datad => \STACK|S33|U1|dffs\(1),
	combout => \STACK|S34|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X37_Y8_N12
\STACK|S33|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S32|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S34|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S32|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S32|U1|dffs\(1),
	datac => \STACK|S34|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S33|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y8_N8
\STACK|S32|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S31|U1|dffs\(1)))) # (!\mode~combout\(0) & (\STACK|S33|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\STACK|S31|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S33|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \STACK|S31|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S32|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y8_N14
\STACK|S35|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S34|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S36|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S34|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S34|U1|dffs\(1),
	datad => \STACK|S36|U1|dffs\(1),
	combout => \STACK|S35|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y8_N20
\STACK|S38|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S37|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S39|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S37|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \STACK|S39|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S38|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y8_N22
\STACK|S37|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S36|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S38|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S36|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S38|U1|dffs\(1),
	datad => \STACK|S36|U1|dffs\(1),
	combout => \STACK|S37|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y8_N12
\STACK|S36|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S35|U1|dffs\(1)))) # (!\mode~combout\(0) & (\STACK|S37|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\STACK|S35|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \STACK|S35|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S36|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X37_Y8_N22
\STACK|S39|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S38|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S40|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S38|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S40|U1|dffs\(1),
	datac => \STACK|S38|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S39|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X39_Y9_N24
\STACK|S12|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S11|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S13|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S11|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S13|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S11|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S12|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X35_Y10_N18
\STACK|S19|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S18|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S20|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S18|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S20|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S18|U1|dffs\(1),
	combout => \STACK|S19|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X49_Y7_N4
\STACK|cnt_enHold~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|cnt_enHold~0_combout\ = (\STACK|full~0_combout\ & (\STACK|C0|auto_generated|safe_q\(4) & (\STACK|pop~1_combout\ & \STACK|C0|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|full~0_combout\,
	datab => \STACK|C0|auto_generated|safe_q\(4),
	datac => \STACK|pop~1_combout\,
	datad => \STACK|C0|auto_generated|safe_q\(2),
	combout => \STACK|cnt_enHold~0_combout\);

-- Location: LCCOMB_X48_Y5_N26
\DEB|state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|state~2_combout\ = (\DEB|state\(2) & (((!\DEB|state\(0))))) # (!\DEB|state\(2) & ((\DEB|state\(0) & ((!\DEB|state\(1)))) # (!\DEB|state\(0) & ((\en~combout\) # (\DEB|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \DEB|state\(2),
	datac => \DEB|state\(0),
	datad => \DEB|state\(1),
	combout => \DEB|state~2_combout\);

-- Location: LCCOMB_X47_Y4_N24
\DEB|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~3_combout\ = (\DEB|C0|auto_generated|safe_q\(13) & (\DEB|C0|auto_generated|safe_q\(12) & (\DEB|C0|auto_generated|safe_q\(10) & \DEB|C0|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(13),
	datab => \DEB|C0|auto_generated|safe_q\(12),
	datac => \DEB|C0|auto_generated|safe_q\(10),
	datad => \DEB|C0|auto_generated|safe_q\(11),
	combout => \DEB|process_0~3_combout\);

-- Location: LCCOMB_X48_Y5_N20
\DEB|state[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|state[1]~4_combout\ = (\DEB|state\(2) & (\DEB|state\(0))) # (!\DEB|state\(2) & (!\DEB|state\(0) & \en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEB|state\(2),
	datac => \DEB|state\(0),
	datad => \en~combout\,
	combout => \DEB|state[1]~4_combout\);

-- Location: LCCOMB_X37_Y11_N16
\STACK|M0|auto_generated|_~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~162_combout\ = ((!\addr~combout\(3) & (!\addr~combout\(2) & \STACK|M0|auto_generated|_~88_combout\))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~88_combout\,
	combout => \STACK|M0|auto_generated|_~162_combout\);

-- Location: LCCOMB_X35_Y7_N12
\MOD13|A1|b2v_inst7|S~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst7|S~8_combout\ = (\STACK|M0|auto_generated|result_node[3]~37_combout\) # ((\STACK|M0|auto_generated|_~82_combout\ & ((\STACK|M0|auto_generated|_~161_combout\))) # (!\STACK|M0|auto_generated|_~82_combout\ & 
-- (\STACK|M0|auto_generated|result_node[3]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~82_combout\,
	datab => \STACK|M0|auto_generated|result_node[3]~45_combout\,
	datac => \STACK|M0|auto_generated|_~161_combout\,
	datad => \STACK|M0|auto_generated|result_node[3]~37_combout\,
	combout => \MOD13|A1|b2v_inst7|S~8_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : cycloneii_io
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
	padio => ww_en,
	combout => \en~combout\);

-- Location: LCCOMB_X37_Y9_N8
\STACK|S11|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U1|dffs[4]~feeder_combout\ = \STACK|S11|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S11|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S11|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N26
\STACK|S10|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U1|dffs[4]~feeder_combout\ = \STACK|S10|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S10|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S10|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N8
\STACK|S15|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U1|dffs[4]~feeder_combout\ = \STACK|S15|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S15|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S15|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N6
\STACK|S13|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U1|dffs[4]~feeder_combout\ = \STACK|S13|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S13|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S13|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X39_Y9_N8
\STACK|S14|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U1|dffs[4]~feeder_combout\ = \STACK|S14|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S14|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S14|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X39_Y9_N22
\STACK|S12|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U1|dffs[4]~feeder_combout\ = \STACK|S12|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S12|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S12|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y11_N20
\STACK|S50|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U1|dffs[4]~feeder_combout\ = \STACK|S50|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S50|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S50|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N0
\STACK|S22|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U1|dffs[4]~feeder_combout\ = \STACK|S22|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S22|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S22|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N20
\STACK|S21|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U1|dffs[4]~feeder_combout\ = \STACK|S21|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S21|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S21|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N8
\STACK|S20|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U1|dffs[4]~feeder_combout\ = \STACK|S20|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S20|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S20|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X47_Y9_N16
\STACK|S23|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U1|dffs[4]~feeder_combout\ = \STACK|S23|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S23|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S23|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X39_Y10_N20
\STACK|S18|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U1|dffs[4]~feeder_combout\ = \STACK|S18|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S18|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S18|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N22
\STACK|S17|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U1|dffs[4]~feeder_combout\ = \STACK|S17|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S17|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S17|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N12
\STACK|S16|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U1|dffs[4]~feeder_combout\ = \STACK|S16|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S16|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S16|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X35_Y9_N24
\STACK|S19|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U1|dffs[4]~feeder_combout\ = \STACK|S19|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S19|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S19|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X37_Y10_N24
\STACK|S29|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U1|dffs[4]~feeder_combout\ = \STACK|S29|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S29|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S29|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N28
\STACK|S28|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U1|dffs[4]~feeder_combout\ = \STACK|S28|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S28|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S28|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N22
\STACK|S30|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U1|dffs[4]~feeder_combout\ = \STACK|S30|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S30|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S30|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N0
\STACK|S25|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U1|dffs[4]~feeder_combout\ = \STACK|S25|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S25|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S25|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N24
\STACK|S24|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U1|dffs[4]~feeder_combout\ = \STACK|S24|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S24|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S24|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N14
\STACK|S27|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U1|dffs[4]~feeder_combout\ = \STACK|S27|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S27|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S27|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N22
\STACK|S26|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U1|dffs[4]~feeder_combout\ = \STACK|S26|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S26|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S26|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N8
\STACK|S6|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U1|dffs[0]~feeder_combout\ = \STACK|S6|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S6|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S6|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y9_N24
\STACK|S5|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U1|dffs[0]~feeder_combout\ = \STACK|S5|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S5|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S5|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X47_Y9_N2
\STACK|S4|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U1|dffs[0]~feeder_combout\ = \STACK|S4|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S4|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S4|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N16
\STACK|S7|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U1|dffs[0]~feeder_combout\ = \STACK|S7|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S7|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S7|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N4
\STACK|S15|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U1|dffs[0]~feeder_combout\ = \STACK|S15|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S15|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S15|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N30
\STACK|S13|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U1|dffs[0]~feeder_combout\ = \STACK|S13|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S13|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S13|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y9_N4
\STACK|S14|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U1|dffs[0]~feeder_combout\ = \STACK|S14|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S14|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S14|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y9_N26
\STACK|S12|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U1|dffs[0]~feeder_combout\ = \STACK|S12|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S12|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S12|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y9_N0
\STACK|S11|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U1|dffs[0]~feeder_combout\ = \STACK|S11|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S11|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S11|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y9_N6
\STACK|S9|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U1|dffs[0]~feeder_combout\ = \STACK|S9|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S9|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S9|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N2
\STACK|S10|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U1|dffs[0]~feeder_combout\ = \STACK|S10|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S10|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S10|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N6
\STACK|S8|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U1|dffs[0]~feeder_combout\ = \STACK|S8|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S8|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S8|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N28
\STACK|S22|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U1|dffs[0]~feeder_combout\ = \STACK|S22|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S22|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S22|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N16
\STACK|S21|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U1|dffs[0]~feeder_combout\ = \STACK|S21|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S21|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S21|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y10_N2
\STACK|S20|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U1|dffs[0]~feeder_combout\ = \STACK|S20|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S20|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S20|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y9_N28
\STACK|S23|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U1|dffs[0]~feeder_combout\ = \STACK|S23|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S23|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S23|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N6
\STACK|S17|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U1|dffs[0]~feeder_combout\ = \STACK|S17|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S17|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y10_N16
\STACK|S18|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U1|dffs[0]~feeder_combout\ = \STACK|S18|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S18|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S18|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N20
\STACK|S16|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U1|dffs[0]~feeder_combout\ = \STACK|S16|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S16|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S16|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y9_N2
\STACK|S19|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U1|dffs[0]~feeder_combout\ = \STACK|S19|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S19|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S19|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N4
\STACK|S24|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U1|dffs[0]~feeder_combout\ = \STACK|S24|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S24|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S24|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y8_N26
\STACK|S37|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U1|dffs[0]~feeder_combout\ = \STACK|S37|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S37|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S37|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N12
\STACK|S36|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U1|dffs[0]~feeder_combout\ = \STACK|S36|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S36|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S36|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N12
\STACK|S35|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U1|dffs[0]~feeder_combout\ = \STACK|S35|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S35|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S35|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N4
\STACK|S4|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U1|dffs[3]~feeder_combout\ = \STACK|S4|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S4|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S4|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X45_Y9_N20
\STACK|S2|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U1|dffs[3]~feeder_combout\ = \STACK|S2|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S2|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S2|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N8
\STACK|S1|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U1|dffs[3]~feeder_combout\ = \STACK|S1|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S1|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S1|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N0
\STACK|S3|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U1|dffs[3]~feeder_combout\ = \STACK|S3|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S3|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S3|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y11_N12
\STACK|S50|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U1|dffs[3]~feeder_combout\ = \STACK|S50|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S50|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S50|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y11_N2
\STACK|S45|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U1|dffs[3]~feeder_combout\ = \STACK|S45|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S45|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S45|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y9_N16
\STACK|S46|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U1|dffs[3]~feeder_combout\ = \STACK|S46|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S46|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S46|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N26
\STACK|S44|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U1|dffs[3]~feeder_combout\ = \STACK|S44|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S44|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S44|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y7_N0
\STACK|S43|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U1|dffs[3]~feeder_combout\ = \STACK|S43|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S43|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S43|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y8_N16
\STACK|S41|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U1|dffs[3]~feeder_combout\ = \STACK|S41|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S41|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S41|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y8_N24
\STACK|S42|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U1|dffs[3]~feeder_combout\ = \STACK|S42|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S42|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S42|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X39_Y12_N24
\STACK|S40|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U1|dffs[3]~feeder_combout\ = \STACK|S40|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S40|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S40|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X39_Y8_N6
\STACK|S34|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U1|dffs[3]~feeder_combout\ = \STACK|S34|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S34|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S34|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N20
\STACK|S33|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U1|dffs[3]~feeder_combout\ = \STACK|S33|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S33|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S33|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N6
\STACK|S32|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U1|dffs[3]~feeder_combout\ = \STACK|S32|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S32|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S32|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y10_N8
\STACK|S35|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U1|dffs[3]~feeder_combout\ = \STACK|S35|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S35|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S35|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N28
\STACK|S38|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U1|dffs[3]~feeder_combout\ = \STACK|S38|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S38|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S38|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y8_N18
\STACK|S37|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U1|dffs[3]~feeder_combout\ = \STACK|S37|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S37|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N30
\STACK|S36|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U1|dffs[3]~feeder_combout\ = \STACK|S36|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S36|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S36|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N2
\STACK|S39|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U1|dffs[3]~feeder_combout\ = \STACK|S39|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S39|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S39|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X39_Y10_N28
\STACK|S18|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U1|dffs[3]~feeder_combout\ = \STACK|S18|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S18|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S18|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N16
\STACK|S17|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U1|dffs[3]~feeder_combout\ = \STACK|S17|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S17|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S17|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N26
\STACK|S16|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U1|dffs[3]~feeder_combout\ = \STACK|S16|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S16|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S16|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N26
\STACK|S31|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U1|dffs[3]~feeder_combout\ = \STACK|S31|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S31|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S31|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y10_N30
\STACK|S29|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U1|dffs[3]~feeder_combout\ = \STACK|S29|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S29|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S29|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N20
\STACK|S30|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U1|dffs[3]~feeder_combout\ = \STACK|S30|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S30|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S30|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N6
\STACK|S28|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U1|dffs[3]~feeder_combout\ = \STACK|S28|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S28|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S28|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N12
\STACK|S27|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U1|dffs[3]~feeder_combout\ = \STACK|S27|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S27|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S27|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N12
\STACK|S26|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U1|dffs[3]~feeder_combout\ = \STACK|S26|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S26|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S26|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y11_N28
\STACK|S50|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U1|dffs[5]~feeder_combout\ = \STACK|S50|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S50|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S50|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X39_Y11_N16
\STACK|S49|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U1|dffs[5]~feeder_combout\ = \STACK|S49|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S49|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S49|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y7_N2
\STACK|S48|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U1|dffs[5]~feeder_combout\ = \STACK|S48|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S48|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S48|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N26
\STACK|S22|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U1|dffs[5]~feeder_combout\ = \STACK|S22|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S22|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S22|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N8
\STACK|S21|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U1|dffs[5]~feeder_combout\ = \STACK|S21|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S21|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S21|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N16
\STACK|S20|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U1|dffs[5]~feeder_combout\ = \STACK|S20|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S20|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S20|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y9_N4
\STACK|S23|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U1|dffs[5]~feeder_combout\ = \STACK|S23|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S23|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S23|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X39_Y10_N14
\STACK|S18|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U1|dffs[5]~feeder_combout\ = \STACK|S18|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S18|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S18|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N4
\STACK|S17|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U1|dffs[5]~feeder_combout\ = \STACK|S17|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S17|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S17|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X35_Y9_N20
\STACK|S19|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U1|dffs[5]~feeder_combout\ = \STACK|S19|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S19|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S19|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N20
\STACK|S24|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U1|dffs[5]~feeder_combout\ = \STACK|S24|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S24|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S24|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N2
\STACK|S6|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U1|dffs[5]~feeder_combout\ = \STACK|S6|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S6|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S6|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X38_Y9_N0
\STACK|S5|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U1|dffs[5]~feeder_combout\ = \STACK|S5|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S5|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S5|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N28
\STACK|S4|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U1|dffs[5]~feeder_combout\ = \STACK|S4|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S4|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S4|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N8
\STACK|S7|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U1|dffs[5]~feeder_combout\ = \STACK|S7|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S7|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S7|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X45_Y9_N14
\STACK|S2|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U1|dffs[5]~feeder_combout\ = \STACK|S2|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S2|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S2|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N14
\STACK|S1|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U1|dffs[5]~feeder_combout\ = \STACK|S1|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S1|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S1|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N8
\STACK|S3|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U1|dffs[5]~feeder_combout\ = \STACK|S3|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S3|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S3|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y9_N16
\STACK|S9|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U1|dffs[5]~feeder_combout\ = \STACK|S9|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S9|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S9|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N2
\STACK|S8|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U1|dffs[5]~feeder_combout\ = \STACK|S8|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S8|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S8|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y11_N24
\STACK|S45|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U1|dffs[5]~feeder_combout\ = \STACK|S45|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S45|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S45|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N2
\STACK|S47|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U1|dffs[5]~feeder_combout\ = \STACK|S47|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S47|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S47|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y9_N2
\STACK|S46|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U1|dffs[5]~feeder_combout\ = \STACK|S46|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S46|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S46|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X45_Y9_N30
\STACK|S2|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U1|dffs[2]~feeder_combout\ = \STACK|S2|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S2|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S2|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N0
\STACK|S1|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U1|dffs[2]~feeder_combout\ = \STACK|S1|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S1|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S1|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N6
\STACK|S10|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U1|dffs[2]~feeder_combout\ = \STACK|S10|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S10|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S10|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N18
\STACK|S33|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U1|dffs[2]~feeder_combout\ = \STACK|S33|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S33|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S33|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N4
\STACK|S32|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U1|dffs[2]~feeder_combout\ = \STACK|S32|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S32|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S32|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X43_Y12_N6
\STACK|S41|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U1|dffs[2]~feeder_combout\ = \STACK|S41|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S41|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S41|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X37_Y10_N18
\STACK|S29|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U1|dffs[2]~feeder_combout\ = \STACK|S29|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S29|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S29|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N4
\STACK|S28|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U1|dffs[2]~feeder_combout\ = \STACK|S28|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S28|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S28|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N28
\STACK|S31|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U1|dffs[2]~feeder_combout\ = \STACK|S31|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S31|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S31|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N10
\STACK|S30|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U1|dffs[2]~feeder_combout\ = \STACK|S30|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S30|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S30|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N28
\STACK|S25|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U1|dffs[2]~feeder_combout\ = \STACK|S25|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S25|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S25|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N8
\STACK|S24|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U1|dffs[2]~feeder_combout\ = \STACK|S24|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S24|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S24|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N2
\STACK|S27|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U1|dffs[2]~feeder_combout\ = \STACK|S27|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S27|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S27|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N6
\STACK|S26|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U1|dffs[2]~feeder_combout\ = \STACK|S26|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S26|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S26|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X42_Y7_N14
\STACK|S48|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U1|dffs[1]~feeder_combout\ = \STACK|S48|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S48|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S48|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N28
\STACK|S47|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U1|dffs[1]~feeder_combout\ = \STACK|S47|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S47|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S47|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y11_N20
\STACK|S45|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U1|dffs[1]~feeder_combout\ = \STACK|S45|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S45|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S45|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X42_Y9_N12
\STACK|S46|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U1|dffs[1]~feeder_combout\ = \STACK|S46|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S46|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S46|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N20
\STACK|S44|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U1|dffs[1]~feeder_combout\ = \STACK|S44|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S44|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S44|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X42_Y7_N12
\STACK|S43|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U1|dffs[1]~feeder_combout\ = \STACK|S43|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S43|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S43|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X43_Y8_N24
\STACK|S41|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U1|dffs[1]~feeder_combout\ = \STACK|S41|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S41|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S41|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X44_Y8_N6
\STACK|S42|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U1|dffs[1]~feeder_combout\ = \STACK|S42|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S42|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S42|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X39_Y12_N2
\STACK|S40|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U1|dffs[1]~feeder_combout\ = \STACK|S40|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S40|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S40|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X39_Y8_N2
\STACK|S34|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U1|dffs[1]~feeder_combout\ = \STACK|S34|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S34|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S34|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N8
\STACK|S33|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U1|dffs[1]~feeder_combout\ = \STACK|S33|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S33|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S33|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X36_Y8_N26
\STACK|S35|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U1|dffs[1]~feeder_combout\ = \STACK|S35|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S35|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S35|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N4
\STACK|S38|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U1|dffs[1]~feeder_combout\ = \STACK|S38|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S38|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S38|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X42_Y8_N4
\STACK|S37|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U1|dffs[1]~feeder_combout\ = \STACK|S37|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S37|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S37|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X39_Y8_N24
\STACK|S36|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U1|dffs[1]~feeder_combout\ = \STACK|S36|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S36|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S36|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N14
\STACK|S39|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U1|dffs[1]~feeder_combout\ = \STACK|S39|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S39|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S39|U1|dffs[1]~feeder_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y9_N10
\STACK|S25|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U1|dffs[3]~feeder_combout\ = \STACK|S25|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S25|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S25|U1|dffs[3]~feeder_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y8_N22
\STACK|pop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|pop~0_combout\ = (\mode~combout\(0) & !\mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	combout => \STACK|pop~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X48_Y5_N18
\DEB|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~9_combout\ = (!\en~combout\ & (!\DEB|state\(2) & (!\DEB|state\(0) & !\DEB|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \DEB|state\(2),
	datac => \DEB|state\(0),
	datad => \DEB|state\(1),
	combout => \DEB|process_0~9_combout\);

-- Location: LCCOMB_X47_Y5_N10
\DEB|C0|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita0~combout\ = \DEB|C0|auto_generated|safe_q\(0) $ (VCC)
-- \DEB|C0|auto_generated|counter_comb_bita0~COUT\ = CARRY(\DEB|C0|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \DEB|C0|auto_generated|counter_comb_bita0~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X47_Y5_N14
\DEB|C0|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita2~combout\ = (\DEB|C0|auto_generated|safe_q\(2) & (\DEB|C0|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(2) & (!\DEB|C0|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita2~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(2) & !\DEB|C0|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita1~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita2~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X47_Y5_N18
\DEB|C0|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita4~combout\ = (\DEB|C0|auto_generated|safe_q\(4) & (\DEB|C0|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(4) & (!\DEB|C0|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita4~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(4) & !\DEB|C0|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita3~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita4~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X47_Y5_N19
\DEB|C0|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita4~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(4));

-- Location: LCCOMB_X47_Y5_N20
\DEB|C0|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita5~combout\ = (\DEB|C0|auto_generated|safe_q\(5) & (!\DEB|C0|auto_generated|counter_comb_bita4~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(5) & ((\DEB|C0|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita4~COUT\) # (!\DEB|C0|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita4~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita5~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X47_Y5_N22
\DEB|C0|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita6~combout\ = (\DEB|C0|auto_generated|safe_q\(6) & (\DEB|C0|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(6) & (!\DEB|C0|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita6~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(6) & !\DEB|C0|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita5~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita6~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X47_Y5_N23
\DEB|C0|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita6~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(6));

-- Location: LCCOMB_X47_Y5_N24
\DEB|C0|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita7~combout\ = (\DEB|C0|auto_generated|safe_q\(7) & (!\DEB|C0|auto_generated|counter_comb_bita6~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(7) & ((\DEB|C0|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita6~COUT\) # (!\DEB|C0|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita6~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita7~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X47_Y5_N26
\DEB|C0|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita8~combout\ = (\DEB|C0|auto_generated|safe_q\(8) & (\DEB|C0|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(8) & (!\DEB|C0|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita8~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(8) & !\DEB|C0|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita7~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita8~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X47_Y5_N27
\DEB|C0|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita8~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(8));

-- Location: LCCOMB_X47_Y5_N28
\DEB|C0|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita9~combout\ = (\DEB|C0|auto_generated|safe_q\(9) & (!\DEB|C0|auto_generated|counter_comb_bita8~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(9) & ((\DEB|C0|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita8~COUT\) # (!\DEB|C0|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita8~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita9~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X47_Y5_N29
\DEB|C0|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita9~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(9));

-- Location: LCCOMB_X47_Y5_N30
\DEB|C0|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita10~combout\ = (\DEB|C0|auto_generated|safe_q\(10) & (\DEB|C0|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(10) & (!\DEB|C0|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita10~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(10) & !\DEB|C0|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita9~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita10~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCFF_X47_Y5_N31
\DEB|C0|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita10~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(10));

-- Location: LCCOMB_X47_Y4_N0
\DEB|C0|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita11~combout\ = (\DEB|C0|auto_generated|safe_q\(11) & (!\DEB|C0|auto_generated|counter_comb_bita10~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(11) & ((\DEB|C0|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita10~COUT\) # (!\DEB|C0|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita10~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita11~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCFF_X47_Y4_N1
\DEB|C0|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita11~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(11));

-- Location: LCCOMB_X47_Y4_N2
\DEB|C0|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita12~combout\ = (\DEB|C0|auto_generated|safe_q\(12) & (\DEB|C0|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(12) & (!\DEB|C0|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita12~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(12) & !\DEB|C0|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita11~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita12~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCFF_X47_Y4_N3
\DEB|C0|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita12~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(12));

-- Location: LCCOMB_X47_Y4_N4
\DEB|C0|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita13~combout\ = (\DEB|C0|auto_generated|safe_q\(13) & (!\DEB|C0|auto_generated|counter_comb_bita12~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(13) & ((\DEB|C0|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita12~COUT\) # (!\DEB|C0|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita12~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita13~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCFF_X47_Y4_N5
\DEB|C0|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita13~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(13));

-- Location: LCCOMB_X47_Y4_N6
\DEB|C0|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita14~combout\ = (\DEB|C0|auto_generated|safe_q\(14) & (\DEB|C0|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(14) & (!\DEB|C0|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita14~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(14) & !\DEB|C0|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita13~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita14~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X47_Y4_N8
\DEB|C0|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita15~combout\ = (\DEB|C0|auto_generated|safe_q\(15) & (!\DEB|C0|auto_generated|counter_comb_bita14~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(15) & ((\DEB|C0|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita14~COUT\) # (!\DEB|C0|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita14~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita15~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCFF_X47_Y4_N9
\DEB|C0|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita15~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(15));

-- Location: LCCOMB_X47_Y4_N12
\DEB|C0|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita17~combout\ = (\DEB|C0|auto_generated|safe_q\(17) & (!\DEB|C0|auto_generated|counter_comb_bita16~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(17) & ((\DEB|C0|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita16~COUT\) # (!\DEB|C0|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita16~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita17~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X47_Y4_N14
\DEB|C0|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita18~combout\ = (\DEB|C0|auto_generated|safe_q\(18) & (\DEB|C0|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(18) & (!\DEB|C0|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita18~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(18) & !\DEB|C0|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita17~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita18~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCFF_X47_Y4_N15
\DEB|C0|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita18~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(18));

-- Location: LCCOMB_X47_Y4_N16
\DEB|C0|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita19~combout\ = (\DEB|C0|auto_generated|safe_q\(19) & (!\DEB|C0|auto_generated|counter_comb_bita18~COUT\)) # (!\DEB|C0|auto_generated|safe_q\(19) & ((\DEB|C0|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \DEB|C0|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\DEB|C0|auto_generated|counter_comb_bita18~COUT\) # (!\DEB|C0|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita18~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita19~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCFF_X47_Y4_N17
\DEB|C0|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita19~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(19));

-- Location: LCCOMB_X47_Y4_N18
\DEB|C0|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita20~combout\ = (\DEB|C0|auto_generated|safe_q\(20) & (\DEB|C0|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\DEB|C0|auto_generated|safe_q\(20) & (!\DEB|C0|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \DEB|C0|auto_generated|counter_comb_bita20~COUT\ = CARRY((\DEB|C0|auto_generated|safe_q\(20) & !\DEB|C0|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEB|C0|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \DEB|C0|auto_generated|counter_comb_bita19~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita20~combout\,
	cout => \DEB|C0|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCFF_X47_Y4_N19
\DEB|C0|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita20~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(20));

-- Location: LCCOMB_X47_Y4_N28
\DEB|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~1_combout\ = (\DEB|C0|auto_generated|safe_q\(21) & (\DEB|C0|auto_generated|safe_q\(18) & (\DEB|C0|auto_generated|safe_q\(19) & \DEB|C0|auto_generated|safe_q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(21),
	datab => \DEB|C0|auto_generated|safe_q\(18),
	datac => \DEB|C0|auto_generated|safe_q\(19),
	datad => \DEB|C0|auto_generated|safe_q\(20),
	combout => \DEB|process_0~1_combout\);

-- Location: LCCOMB_X47_Y4_N22
\DEB|C0|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|C0|auto_generated|counter_comb_bita22~combout\ = \DEB|C0|auto_generated|counter_comb_bita21~COUT\ $ (!\DEB|C0|auto_generated|safe_q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEB|C0|auto_generated|safe_q\(22),
	cin => \DEB|C0|auto_generated|counter_comb_bita21~COUT\,
	combout => \DEB|C0|auto_generated|counter_comb_bita22~combout\);

-- Location: LCFF_X47_Y4_N23
\DEB|C0|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita22~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(22));

-- Location: LCCOMB_X47_Y5_N6
\DEB|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~0_combout\ = (\DEB|state\(0) & (!\DEB|state\(1) & (\DEB|C0|auto_generated|safe_q\(22) & \DEB|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|state\(0),
	datab => \DEB|state\(1),
	datac => \DEB|C0|auto_generated|safe_q\(22),
	datad => \DEB|state\(2),
	combout => \DEB|process_0~0_combout\);

-- Location: LCFF_X47_Y4_N13
\DEB|C0|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita17~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(17));

-- Location: LCFF_X47_Y4_N7
\DEB|C0|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita14~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(14));

-- Location: LCCOMB_X47_Y4_N30
\DEB|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~2_combout\ = (\DEB|C0|auto_generated|safe_q\(16) & (\DEB|C0|auto_generated|safe_q\(17) & (\DEB|C0|auto_generated|safe_q\(15) & \DEB|C0|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(16),
	datab => \DEB|C0|auto_generated|safe_q\(17),
	datac => \DEB|C0|auto_generated|safe_q\(15),
	datad => \DEB|C0|auto_generated|safe_q\(14),
	combout => \DEB|process_0~2_combout\);

-- Location: LCCOMB_X47_Y4_N26
\DEB|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~4_combout\ = (\DEB|process_0~3_combout\ & (\DEB|process_0~1_combout\ & (\DEB|process_0~0_combout\ & \DEB|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|process_0~3_combout\,
	datab => \DEB|process_0~1_combout\,
	datac => \DEB|process_0~0_combout\,
	datad => \DEB|process_0~2_combout\,
	combout => \DEB|process_0~4_combout\);

-- Location: LCCOMB_X48_Y5_N12
\DEB|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~8_combout\ = (\DEB|process_0~7_combout\ & \DEB|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEB|process_0~7_combout\,
	datad => \DEB|process_0~4_combout\,
	combout => \DEB|process_0~8_combout\);

-- Location: LCCOMB_X48_Y5_N16
\DEB|enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|enable~0_combout\ = (!\DEB|process_0~9_combout\ & ((\DEB|output~combout\) # ((\DEB|enable~regout\ & !\DEB|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \DEB|process_0~9_combout\,
	datac => \DEB|enable~regout\,
	datad => \DEB|process_0~8_combout\,
	combout => \DEB|enable~0_combout\);

-- Location: LCFF_X48_Y5_N17
\DEB|enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|enable~regout\);

-- Location: LCFF_X47_Y5_N15
\DEB|C0|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita2~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(2));

-- Location: LCFF_X47_Y5_N21
\DEB|C0|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita5~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(5));

-- Location: LCCOMB_X47_Y5_N2
\DEB|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~6_combout\ = (\DEB|C0|auto_generated|safe_q\(3) & (\DEB|C0|auto_generated|safe_q\(2) & (\DEB|C0|auto_generated|safe_q\(5) & \DEB|C0|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(3),
	datab => \DEB|C0|auto_generated|safe_q\(2),
	datac => \DEB|C0|auto_generated|safe_q\(5),
	datad => \DEB|C0|auto_generated|safe_q\(4),
	combout => \DEB|process_0~6_combout\);

-- Location: LCFF_X47_Y5_N25
\DEB|C0|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita7~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(7));

-- Location: LCCOMB_X47_Y5_N8
\DEB|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~5_combout\ = (\DEB|C0|auto_generated|safe_q\(8) & (\DEB|C0|auto_generated|safe_q\(6) & (\DEB|C0|auto_generated|safe_q\(7) & \DEB|C0|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(8),
	datab => \DEB|C0|auto_generated|safe_q\(6),
	datac => \DEB|C0|auto_generated|safe_q\(7),
	datad => \DEB|C0|auto_generated|safe_q\(9),
	combout => \DEB|process_0~5_combout\);

-- Location: LCFF_X47_Y5_N11
\DEB|C0|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|C0|auto_generated|counter_comb_bita0~combout\,
	aclr => \DEB|ALT_INV_state\(0),
	ena => \DEB|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|C0|auto_generated|safe_q\(0));

-- Location: LCCOMB_X47_Y5_N0
\DEB|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|process_0~7_combout\ = (\DEB|C0|auto_generated|safe_q\(1) & (\DEB|process_0~6_combout\ & (\DEB|process_0~5_combout\ & \DEB|C0|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|C0|auto_generated|safe_q\(1),
	datab => \DEB|process_0~6_combout\,
	datac => \DEB|process_0~5_combout\,
	datad => \DEB|C0|auto_generated|safe_q\(0),
	combout => \DEB|process_0~7_combout\);

-- Location: LCCOMB_X48_Y5_N6
\DEB|state[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|state[1]~5_combout\ = (\DEB|state[1]~4_combout\ & (!\DEB|state\(1) & ((!\DEB|process_0~4_combout\) # (!\DEB|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|state[1]~4_combout\,
	datab => \DEB|state\(1),
	datac => \DEB|process_0~7_combout\,
	datad => \DEB|process_0~4_combout\,
	combout => \DEB|state[1]~5_combout\);

-- Location: LCCOMB_X48_Y5_N0
\DEB|state[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|state[1]~6_combout\ = (\DEB|process_0~9_combout\ & !\DEB|state[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEB|process_0~9_combout\,
	datad => \DEB|state[1]~5_combout\,
	combout => \DEB|state[1]~6_combout\);

-- Location: LCFF_X48_Y5_N1
\DEB|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|state[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|state\(1));

-- Location: LCCOMB_X47_Y5_N4
\DEB|state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|state~3_combout\ = (!\DEB|state~2_combout\ & (((!\DEB|state\(1) & !\DEB|process_0~8_combout\)) # (!\DEB|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|state~2_combout\,
	datab => \DEB|state\(1),
	datac => \DEB|process_0~8_combout\,
	datad => \DEB|state\(2),
	combout => \DEB|state~3_combout\);

-- Location: LCFF_X47_Y5_N5
\DEB|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|state\(0));

-- Location: LCCOMB_X48_Y5_N22
\DEB|state[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|state[2]~7_combout\ = (\DEB|state\(2) & (\DEB|state[1]~5_combout\)) # (!\DEB|state\(2) & (((\DEB|state\(0) & \DEB|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|state[1]~5_combout\,
	datab => \DEB|state\(0),
	datac => \DEB|state\(2),
	datad => \DEB|state\(1),
	combout => \DEB|state[2]~7_combout\);

-- Location: LCFF_X48_Y5_N23
\DEB|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DEB|state[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DEB|state\(2));

-- Location: LCCOMB_X48_Y5_N4
\DEB|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEB|output~combout\ = (!\DEB|state\(2) & (\DEB|state\(0) & \DEB|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEB|state\(2),
	datac => \DEB|state\(0),
	datad => \DEB|state\(1),
	combout => \DEB|output~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: M4K_X41_Y9
\STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000100000000300000000700000000F00000001F00000003F00000007F0000000FF0000001FF0000003FF0000007FF000000FFF000001FFF000003FFF000007FFF00000FFFF00001FFFF00003FFFF00007FFFF0000FFFFF0001FFFFF0003FFFFF0007FFFFF000FFFFFF001FFFFFF003FFFFFF007FFFFFF00FFFFFFF01FFFFFFF03FFFFFFF07FFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF0FFFFFFFF1FFFFFFFF3FFFFFFFF7FFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:STACK|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
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
	portaaddr => \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y9_N30
\STACK|enableArray[25]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[25]~32_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(25),
	combout => \STACK|enableArray[25]~32_combout\);

-- Location: LCFF_X40_Y9_N11
\STACK|S25|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S25|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S25|U1|dffs\(3));

-- Location: LCCOMB_X39_Y7_N14
\STACK|S24|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S23|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S25|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S23|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S25|U1|dffs\(3),
	datac => \STACK|S23|U1|dffs\(3),
	datad => \mode~combout\(1),
	combout => \STACK|S24|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y7_N10
\STACK|S24|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U1|dffs[3]~feeder_combout\ = \STACK|S24|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S24|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S24|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N16
\STACK|enableArray[24]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[24]~33_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(24),
	combout => \STACK|enableArray[24]~33_combout\);

-- Location: LCFF_X40_Y7_N11
\STACK|S24|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S24|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S24|U1|dffs\(3));

-- Location: LCCOMB_X39_Y11_N6
\STACK|S23|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S22|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S24|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S22|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S24|U1|dffs\(3),
	datad => \STACK|S22|U1|dffs\(3),
	combout => \STACK|S23|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y9_N6
\STACK|S23|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U1|dffs[3]~feeder_combout\ = \STACK|S23|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S23|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S23|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X35_Y9_N8
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

-- Location: LCCOMB_X42_Y9_N8
\STACK|enableArray[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[23]~23_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(23),
	combout => \STACK|enableArray[23]~23_combout\);

-- Location: LCFF_X42_Y9_N7
\STACK|S23|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S23|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S23|U1|dffs\(3));

-- Location: LCCOMB_X38_Y6_N24
\STACK|S22|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S21|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S23|U1|dffs\(3)))))) # (!\mode~combout\(1) & (((\STACK|S21|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S21|U1|dffs\(3),
	datad => \STACK|S23|U1|dffs\(3),
	combout => \STACK|S22|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X35_Y9_N28
\STACK|S22|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U1|dffs[3]~feeder_combout\ = \STACK|S22|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S22|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S22|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N30
\STACK|enableArray[22]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[22]~20_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(22),
	combout => \STACK|enableArray[22]~20_combout\);

-- Location: LCFF_X35_Y9_N29
\STACK|S22|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S22|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S22|U1|dffs\(3));

-- Location: LCCOMB_X38_Y7_N20
\STACK|S21|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S20|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S22|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S20|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S20|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \STACK|S22|U1|dffs\(3),
	combout => \STACK|S21|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X40_Y6_N12
\STACK|S21|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U1|dffs[3]~feeder_combout\ = \STACK|S21|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S21|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S21|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N0
\STACK|enableArray[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[21]~21_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(21),
	combout => \STACK|enableArray[21]~21_combout\);

-- Location: LCFF_X40_Y6_N13
\STACK|S21|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S21|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S21|U1|dffs\(3));

-- Location: LCCOMB_X38_Y7_N2
\STACK|S19|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S18|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S20|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S18|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S18|U1|dffs\(3),
	datab => \STACK|S20|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S19|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X35_Y9_N22
\STACK|S19|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U1|dffs[3]~feeder_combout\ = \STACK|S19|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S19|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S19|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N14
\STACK|enableArray[19]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[19]~27_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(19),
	combout => \STACK|enableArray[19]~27_combout\);

-- Location: LCFF_X35_Y9_N23
\STACK|S19|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S19|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S19|U1|dffs\(3));

-- Location: LCCOMB_X38_Y6_N26
\STACK|S20|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S19|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S21|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S19|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S21|U1|dffs\(3),
	datac => \STACK|S19|U1|dffs\(3),
	datad => \mode~combout\(0),
	combout => \STACK|S20|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y10_N18
\STACK|S20|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U1|dffs[3]~feeder_combout\ = \STACK|S20|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S20|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S20|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N2
\STACK|enableArray[20]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[20]~22_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(20),
	combout => \STACK|enableArray[20]~22_combout\);

-- Location: LCFF_X39_Y10_N19
\STACK|S20|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S20|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S20|U1|dffs\(3));

-- Location: LCCOMB_X38_Y7_N30
\STACK|M0|auto_generated|_~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~83_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S21|U1|dffs\(3))) # (!\addr~combout\(0) & ((\STACK|S20|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S20|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~83_combout\);

-- Location: LCCOMB_X38_Y7_N16
\STACK|M0|auto_generated|_~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~84_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~83_combout\ & (\STACK|S23|U1|dffs\(3))) # (!\STACK|M0|auto_generated|_~83_combout\ & ((\STACK|S22|U1|dffs\(3)))))) # (!\addr~combout\(1) & 
-- (\STACK|M0|auto_generated|_~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|_~83_combout\,
	datac => \STACK|S23|U1|dffs\(3),
	datad => \STACK|S22|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~84_combout\);

-- Location: LCCOMB_X39_Y7_N20
\STACK|M0|auto_generated|result_node[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~38_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~84_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~86_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~84_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~38_combout\);

-- Location: LCCOMB_X36_Y7_N0
\STACK|M0|auto_generated|result_node[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~45_combout\ = (\addr~combout\(4) & ((\STACK|M0|auto_generated|result_node[3]~38_combout\) # ((\STACK|M0|auto_generated|result_node[3]~44_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[3]~44_combout\,
	datab => \addr~combout\(4),
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|result_node[3]~38_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~45_combout\);

-- Location: LCCOMB_X40_Y11_N28
\STACK|S49|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U1|dffs[3]~feeder_combout\ = \STACK|S49|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S49|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S49|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y11_N8
\STACK|enableArray[49]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[49]~17_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(49),
	combout => \STACK|enableArray[49]~17_combout\);

-- Location: LCFF_X40_Y11_N29
\STACK|S49|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S49|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S49|U1|dffs\(3));

-- Location: LCCOMB_X40_Y12_N16
\STACK|S47|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U1|dffs[3]~feeder_combout\ = \STACK|S47|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S47|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S47|U1|dffs[3]~feeder_combout\);

-- Location: M4K_X41_Y8
\STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100030007000F001F003F007F00FF01FF03FF07FF0FFF1FFF3FFF7FFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:STACK|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
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
	portaaddr => \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \STACK|E0|crc_table|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y12_N0
\STACK|enableArray[47]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[47]~40_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(47),
	combout => \STACK|enableArray[47]~40_combout\);

-- Location: LCFF_X40_Y12_N17
\STACK|S47|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S47|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[47]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S47|U1|dffs\(3));

-- Location: LCCOMB_X43_Y11_N26
\STACK|S48|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S47|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S49|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S47|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S49|U1|dffs\(3),
	datad => \STACK|S47|U1|dffs\(3),
	combout => \STACK|S48|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y7_N26
\STACK|S48|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U1|dffs[3]~feeder_combout\ = \STACK|S48|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S48|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S48|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y7_N8
\STACK|enableArray[48]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[48]~18_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(48),
	combout => \STACK|enableArray[48]~18_combout\);

-- Location: LCFF_X42_Y7_N27
\STACK|S48|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S48|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S48|U1|dffs\(3));

-- Location: LCCOMB_X43_Y11_N2
\STACK|M0|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~67_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S49|U1|dffs\(3))) # (!\addr~combout\(0) & ((\STACK|S48|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S49|U1|dffs\(3),
	datab => \addr~combout\(1),
	datac => \STACK|S48|U1|dffs\(3),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~67_combout\);

-- Location: LCCOMB_X42_Y11_N18
\STACK|S51|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S51|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\STACK|S50|U1|dffs\(3) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(3),
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S51|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y11_N2
\STACK|enableArray[51]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[51]~19_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(51),
	combout => \STACK|enableArray[51]~19_combout\);

-- Location: LCFF_X42_Y11_N19
\STACK|S51|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S51|U0|$00000|auto_generated|result_node[3]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S51|U1|dffs\(3));

-- Location: LCCOMB_X43_Y11_N0
\STACK|M0|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~68_combout\ = (\STACK|M0|auto_generated|_~67_combout\ & (((\STACK|S51|U1|dffs\(3)) # (!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~67_combout\ & (\STACK|S50|U1|dffs\(3) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(3),
	datab => \STACK|M0|auto_generated|_~67_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S51|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|_~68_combout\);

-- Location: LCCOMB_X35_Y7_N4
\STACK|M0|auto_generated|_~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~161_combout\ = ((!\addr~combout\(3) & (\STACK|M0|auto_generated|_~68_combout\ & !\addr~combout\(2)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|_~68_combout\,
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|_~161_combout\);

-- Location: LCCOMB_X37_Y11_N8
\STACK|M0|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~0_combout\ = (!\addr~combout\(4) & !\addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr~combout\(4),
	datad => \addr~combout\(5),
	combout => \STACK|M0|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y12_N10
\STACK|S14|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S13|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S15|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S13|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S15|U1|dffs\(3),
	datab => \STACK|S13|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S14|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y9_N12
\STACK|S14|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U1|dffs[3]~feeder_combout\ = \STACK|S14|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S14|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S14|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N24
\STACK|enableArray[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[14]~14_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(14),
	combout => \STACK|enableArray[14]~14_combout\);

-- Location: LCFF_X39_Y9_N13
\STACK|S14|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S14|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S14|U1|dffs\(3));

-- Location: LCCOMB_X38_Y12_N22
\STACK|S13|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S12|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S14|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S14|U1|dffs\(3),
	datac => \STACK|S12|U1|dffs\(3),
	datad => \mode~combout\(0),
	combout => \STACK|S13|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y12_N2
\STACK|S13|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U1|dffs[3]~feeder_combout\ = \STACK|S13|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S13|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S13|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N14
\STACK|enableArray[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[13]~13_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(13),
	combout => \STACK|enableArray[13]~13_combout\);

-- Location: LCFF_X42_Y12_N3
\STACK|S13|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S13|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S13|U1|dffs\(3));

-- Location: LCCOMB_X38_Y12_N16
\STACK|S12|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S11|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S13|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S11|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S13|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \STACK|S11|U1|dffs\(3),
	combout => \STACK|S12|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X39_Y9_N10
\STACK|S12|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U1|dffs[3]~feeder_combout\ = \STACK|S12|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S12|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S12|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X39_Y9_N28
\STACK|enableArray[12]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[12]~15_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(12),
	combout => \STACK|enableArray[12]~15_combout\);

-- Location: LCFF_X39_Y9_N11
\STACK|S12|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S12|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S12|U1|dffs\(3));

-- Location: LCCOMB_X38_Y12_N24
\STACK|S11|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S10|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S12|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S10|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S12|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \STACK|S10|U1|dffs\(3),
	combout => \STACK|S11|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y9_N4
\STACK|S11|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U1|dffs[3]~feeder_combout\ = \STACK|S11|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S11|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S11|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y9_N12
\STACK|enableArray[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[11]~8_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(11),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[11]~8_combout\);

-- Location: LCFF_X37_Y9_N5
\STACK|S11|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S11|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S11|U1|dffs\(3));

-- Location: LCCOMB_X38_Y12_N2
\STACK|S10|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (\STACK|S9|U1|dffs\(3))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S11|U1|dffs\(3)))) # (!\mode~combout\(1) & (\STACK|S9|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S9|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \STACK|S11|U1|dffs\(3),
	combout => \STACK|S10|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X38_Y10_N30
\STACK|S10|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U1|dffs[3]~feeder_combout\ = \STACK|S10|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S10|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S10|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N14
\STACK|enableArray[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[10]~10_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(10),
	combout => \STACK|enableArray[10]~10_combout\);

-- Location: LCFF_X38_Y10_N31
\STACK|S10|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S10|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S10|U1|dffs\(3));

-- Location: LCCOMB_X38_Y9_N18
\STACK|S5|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S4|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S6|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S4|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S4|U1|dffs\(3),
	datab => \STACK|S6|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S5|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X38_Y9_N2
\STACK|S5|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U1|dffs[3]~feeder_combout\ = \STACK|S5|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S5|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S5|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y9_N30
\STACK|enableArray[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[5]~1_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(5),
	combout => \STACK|enableArray[5]~1_combout\);

-- Location: LCFF_X38_Y9_N3
\STACK|S5|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S5|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S5|U1|dffs\(3));

-- Location: LCCOMB_X38_Y9_N12
\STACK|S6|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S5|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S7|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S5|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S7|U1|dffs\(3),
	datab => \STACK|S5|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S6|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X44_Y9_N6
\STACK|S6|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U1|dffs[3]~feeder_combout\ = \STACK|S6|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S6|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S6|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N30
\STACK|enableArray[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[6]~0_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(6),
	combout => \STACK|enableArray[6]~0_combout\);

-- Location: LCFF_X44_Y9_N7
\STACK|S6|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S6|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S6|U1|dffs\(3));

-- Location: LCCOMB_X43_Y10_N30
\STACK|S7|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S6|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S8|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S6|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S8|U1|dffs\(3),
	datac => \mode~combout\(1),
	datad => \STACK|S6|U1|dffs\(3),
	combout => \STACK|S7|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y10_N20
\STACK|S7|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U1|dffs[3]~feeder_combout\ = \STACK|S7|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S7|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S7|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N12
\STACK|enableArray[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[7]~3_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(7),
	combout => \STACK|enableArray[7]~3_combout\);

-- Location: LCFF_X42_Y10_N21
\STACK|S7|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S7|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S7|U1|dffs\(3));

-- Location: LCCOMB_X38_Y11_N8
\STACK|S8|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S7|U1|dffs\(3))) # (!\mode~combout\(0) & ((\STACK|S9|U1|dffs\(3)))))) # (!\mode~combout\(1) & (\STACK|S7|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S7|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \STACK|S9|U1|dffs\(3),
	combout => \STACK|S8|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y10_N26
\STACK|S8|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U1|dffs[3]~feeder_combout\ = \STACK|S8|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S8|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S8|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y10_N0
\STACK|enableArray[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[8]~11_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(8),
	combout => \STACK|enableArray[8]~11_combout\);

-- Location: LCFF_X42_Y10_N27
\STACK|S8|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S8|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S8|U1|dffs\(3));

-- Location: LCCOMB_X38_Y11_N18
\STACK|S9|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S8|U1|dffs\(3)))) # (!\mode~combout\(0) & (\STACK|S10|U1|dffs\(3))))) # (!\mode~combout\(1) & (((\STACK|S8|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S10|U1|dffs\(3),
	datac => \mode~combout\(0),
	datad => \STACK|S8|U1|dffs\(3),
	combout => \STACK|S9|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X37_Y9_N22
\STACK|S9|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U1|dffs[3]~feeder_combout\ = \STACK|S9|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S9|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S9|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y9_N26
\STACK|enableArray[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[9]~9_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(9),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[9]~9_combout\);

-- Location: LCFF_X37_Y9_N23
\STACK|S9|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S9|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S9|U1|dffs\(3));

-- Location: LCCOMB_X38_Y12_N18
\STACK|M0|auto_generated|result_node[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~32_combout\ = (!\addr~combout\(2) & ((\addr~combout\(1) & (\STACK|S11|U1|dffs\(3))) # (!\addr~combout\(1) & ((\STACK|S9|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S11|U1|dffs\(3),
	datab => \STACK|S9|U1|dffs\(3),
	datac => \addr~combout\(2),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[3]~32_combout\);

-- Location: LCCOMB_X39_Y12_N22
\STACK|S15|U0|$00000|auto_generated|result_node[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U0|$00000|auto_generated|result_node[3]~2_combout\ = (\mode~combout\(0) & (((\STACK|S14|U1|dffs\(3))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S16|U1|dffs\(3))) # (!\mode~combout\(1) & ((\STACK|S14|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S16|U1|dffs\(3),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S14|U1|dffs\(3),
	combout => \STACK|S15|U0|$00000|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X42_Y12_N12
\STACK|S15|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U1|dffs[3]~feeder_combout\ = \STACK|S15|U0|$00000|auto_generated|result_node[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S15|U0|$00000|auto_generated|result_node[3]~2_combout\,
	combout => \STACK|S15|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X42_Y12_N0
\STACK|enableArray[15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[15]~12_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(15),
	combout => \STACK|enableArray[15]~12_combout\);

-- Location: LCFF_X42_Y12_N13
\STACK|S15|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S15|U1|dffs[3]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S15|U1|dffs\(3));

-- Location: LCCOMB_X38_Y12_N12
\STACK|M0|auto_generated|result_node[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~31_combout\ = (\addr~combout\(2) & ((\addr~combout\(1) & ((\STACK|S15|U1|dffs\(3)))) # (!\addr~combout\(1) & (\STACK|S13|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(1),
	datac => \STACK|S13|U1|dffs\(3),
	datad => \STACK|S15|U1|dffs\(3),
	combout => \STACK|M0|auto_generated|result_node[3]~31_combout\);

-- Location: LCCOMB_X38_Y12_N8
\STACK|M0|auto_generated|result_node[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~33_combout\ = (\addr~combout\(0) & ((\STACK|M0|auto_generated|result_node[3]~32_combout\) # (\STACK|M0|auto_generated|result_node[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|M0|auto_generated|result_node[3]~32_combout\,
	datac => \addr~combout\(0),
	datad => \STACK|M0|auto_generated|result_node[3]~31_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~33_combout\);

-- Location: LCCOMB_X38_Y12_N30
\STACK|M0|auto_generated|result_node[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~34_combout\ = (\addr~combout\(2) & ((\addr~combout\(1) & ((\STACK|S14|U1|dffs\(3)))) # (!\addr~combout\(1) & (\STACK|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|S12|U1|dffs\(3),
	datac => \STACK|S14|U1|dffs\(3),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|result_node[3]~34_combout\);

-- Location: LCCOMB_X38_Y12_N6
\STACK|M0|auto_generated|result_node[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~36_combout\ = (\STACK|M0|auto_generated|result_node[3]~33_combout\) # ((!\addr~combout\(0) & ((\STACK|M0|auto_generated|result_node[3]~35_combout\) # (\STACK|M0|auto_generated|result_node[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[3]~35_combout\,
	datab => \STACK|M0|auto_generated|result_node[3]~33_combout\,
	datac => \addr~combout\(0),
	datad => \STACK|M0|auto_generated|result_node[3]~34_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~36_combout\);

-- Location: LCCOMB_X37_Y11_N22
\STACK|M0|auto_generated|result_node[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[3]~37_combout\ = (\STACK|M0|auto_generated|result_node[4]~0_combout\ & ((\STACK|M0|auto_generated|result_node[3]~30_combout\) # ((\addr~combout\(3) & \STACK|M0|auto_generated|result_node[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[3]~30_combout\,
	datab => \STACK|M0|auto_generated|result_node[4]~0_combout\,
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|result_node[3]~36_combout\,
	combout => \STACK|M0|auto_generated|result_node[3]~37_combout\);

-- Location: LCCOMB_X35_Y7_N10
\MOD13|A1|b2v_inst5|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst5|Cout~0_combout\ = (\STACK|M0|auto_generated|result_node[3]~37_combout\) # ((\STACK|M0|auto_generated|_~82_combout\ & ((\STACK|M0|auto_generated|_~161_combout\))) # (!\STACK|M0|auto_generated|_~82_combout\ & 
-- (\STACK|M0|auto_generated|result_node[3]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~82_combout\,
	datab => \STACK|M0|auto_generated|result_node[3]~45_combout\,
	datac => \STACK|M0|auto_generated|_~161_combout\,
	datad => \STACK|M0|auto_generated|result_node[3]~37_combout\,
	combout => \MOD13|A1|b2v_inst5|Cout~0_combout\);

-- Location: LCCOMB_X36_Y11_N8
\STACK|S25|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S24|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S26|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\STACK|S24|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S24|U1|dffs\(5),
	datab => \mode~combout\(1),
	datac => \STACK|S26|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \STACK|S25|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y9_N4
\STACK|S25|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U1|dffs[5]~feeder_combout\ = \STACK|S25|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S25|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S25|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X40_Y9_N5
\STACK|S25|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S25|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S25|U1|dffs\(5));

-- Location: LCCOMB_X43_Y9_N26
\STACK|S29|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S28|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S30|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S28|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S30|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S28|U1|dffs\(5),
	combout => \STACK|S29|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X37_Y10_N20
\STACK|S29|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U1|dffs[5]~feeder_combout\ = \STACK|S29|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S29|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S29|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y10_N12
\STACK|enableArray[29]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[29]~28_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(29),
	combout => \STACK|enableArray[29]~28_combout\);

-- Location: LCFF_X37_Y10_N21
\STACK|S29|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S29|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S29|U1|dffs\(5));

-- Location: LCCOMB_X37_Y10_N28
\STACK|S28|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S27|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S29|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S27|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S27|U1|dffs\(5),
	datac => \STACK|S29|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S28|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y6_N2
\STACK|S28|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U1|dffs[5]~feeder_combout\ = \STACK|S28|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S28|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S28|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N8
\STACK|enableArray[28]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[28]~29_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(28),
	combout => \STACK|enableArray[28]~29_combout\);

-- Location: LCFF_X42_Y6_N3
\STACK|S28|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S28|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S28|U1|dffs\(5));

-- Location: LCCOMB_X40_Y9_N26
\STACK|S27|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S26|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S28|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\STACK|S26|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S26|U1|dffs\(5),
	datad => \STACK|S28|U1|dffs\(5),
	combout => \STACK|S27|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y9_N22
\STACK|S27|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U1|dffs[5]~feeder_combout\ = \STACK|S27|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S27|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S27|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y9_N8
\STACK|enableArray[27]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[27]~34_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(27),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[27]~34_combout\);

-- Location: LCFF_X40_Y9_N23
\STACK|S27|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S27|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S27|U1|dffs\(5));

-- Location: LCCOMB_X39_Y7_N16
\STACK|S26|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S25|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S27|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S25|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S25|U1|dffs\(5),
	datac => \STACK|S27|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S26|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y7_N2
\STACK|S26|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U1|dffs[5]~feeder_combout\ = \STACK|S26|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S26|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S26|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N30
\STACK|enableArray[26]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[26]~35_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(26),
	combout => \STACK|enableArray[26]~35_combout\);

-- Location: LCFF_X40_Y7_N3
\STACK|S26|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S26|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S26|U1|dffs\(5));

-- Location: LCCOMB_X36_Y11_N2
\STACK|M0|auto_generated|_~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~97_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S27|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S26|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S26|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \STACK|S27|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~97_combout\);

-- Location: LCCOMB_X36_Y11_N16
\STACK|M0|auto_generated|result_node[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~47_combout\ = (\addr~combout\(3) & ((\STACK|M0|auto_generated|_~96_combout\) # ((\STACK|M0|auto_generated|_~97_combout\) # (\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~96_combout\,
	datab => \STACK|M0|auto_generated|_~97_combout\,
	datac => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|result_node[5]~47_combout\);

-- Location: LCCOMB_X39_Y6_N28
\STACK|M0|auto_generated|_~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~94_combout\ = (\addr~combout\(0) & (\STACK|S29|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S28|U1|dffs\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S29|U1|dffs\(5),
	datac => \STACK|S28|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~94_combout\);

-- Location: LCCOMB_X42_Y6_N30
\STACK|S30|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S29|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S31|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S29|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S31|U1|dffs\(5),
	datac => \STACK|S29|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S30|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y6_N12
\STACK|S30|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U1|dffs[5]~feeder_combout\ = \STACK|S30|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S30|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S30|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y6_N18
\STACK|enableArray[30]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[30]~31_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(30),
	combout => \STACK|enableArray[30]~31_combout\);

-- Location: LCFF_X42_Y6_N13
\STACK|S30|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S30|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S30|U1|dffs\(5));

-- Location: LCCOMB_X37_Y8_N0
\STACK|S32|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S31|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S33|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S31|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S33|U1|dffs\(5),
	datab => \STACK|S31|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S32|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X37_Y8_N28
\STACK|S32|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U1|dffs[5]~feeder_combout\ = \STACK|S32|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S32|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S32|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N24
\STACK|enableArray[32]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[32]~50_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(32),
	combout => \STACK|enableArray[32]~50_combout\);

-- Location: LCFF_X37_Y8_N29
\STACK|S32|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S32|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[32]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S32|U1|dffs\(5));

-- Location: LCCOMB_X42_Y6_N16
\STACK|S31|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S30|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S32|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S30|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S30|U1|dffs\(5),
	datac => \STACK|S32|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S31|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y6_N6
\STACK|S31|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U1|dffs[5]~feeder_combout\ = \STACK|S31|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S31|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S31|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N10
\STACK|enableArray[31]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[31]~30_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(31),
	combout => \STACK|enableArray[31]~30_combout\);

-- Location: LCFF_X40_Y6_N7
\STACK|S31|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S31|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[31]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S31|U1|dffs\(5));

-- Location: LCCOMB_X43_Y9_N4
\STACK|M0|auto_generated|_~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~93_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S31|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S30|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S31|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \STACK|S30|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~93_combout\);

-- Location: LCCOMB_X39_Y6_N22
\STACK|M0|auto_generated|_~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~95_combout\ = ((\STACK|M0|auto_generated|_~93_combout\) # ((\STACK|M0|auto_generated|_~94_combout\ & !\addr~combout\(1)))) # (!\addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|_~94_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~93_combout\,
	combout => \STACK|M0|auto_generated|_~95_combout\);

-- Location: LCCOMB_X37_Y11_N28
\STACK|M0|auto_generated|result_node[5]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~48_combout\ = (\addr~combout\(4) & ((\STACK|M0|auto_generated|result_node[5]~46_combout\) # ((\STACK|M0|auto_generated|result_node[5]~47_combout\ & \STACK|M0|auto_generated|_~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[5]~46_combout\,
	datab => \STACK|M0|auto_generated|result_node[5]~47_combout\,
	datac => \addr~combout\(4),
	datad => \STACK|M0|auto_generated|_~95_combout\,
	combout => \STACK|M0|auto_generated|result_node[5]~48_combout\);

-- Location: LCCOMB_X38_Y11_N16
\STACK|S14|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S13|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S15|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S13|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S15|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S13|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S14|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X39_Y9_N2
\STACK|S14|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U1|dffs[5]~feeder_combout\ = \STACK|S14|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S14|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S14|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X39_Y9_N3
\STACK|S14|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S14|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S14|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N6
\STACK|S13|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S12|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S14|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\STACK|S12|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S12|U1|dffs\(5),
	datad => \STACK|S14|U1|dffs\(5),
	combout => \STACK|S13|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y12_N16
\STACK|S13|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U1|dffs[5]~feeder_combout\ = \STACK|S13|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S13|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S13|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X42_Y12_N17
\STACK|S13|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S13|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S13|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N20
\STACK|S12|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S11|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S13|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S11|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S11|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S13|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S12|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X39_Y9_N16
\STACK|S12|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U1|dffs[5]~feeder_combout\ = \STACK|S12|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S12|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S12|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X39_Y9_N17
\STACK|S12|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S12|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S12|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N28
\STACK|S11|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S10|U1|dffs\(5)))) # (!\mode~combout\(0) & (\STACK|S12|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\STACK|S10|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S12|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \STACK|S10|U1|dffs\(5),
	combout => \STACK|S11|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X37_Y9_N14
\STACK|S11|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U1|dffs[5]~feeder_combout\ = \STACK|S11|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S11|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S11|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X37_Y9_N15
\STACK|S11|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S11|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S11|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N10
\STACK|S10|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S9|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S11|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S9|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S9|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S11|U1|dffs\(5),
	combout => \STACK|S10|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X38_Y10_N22
\STACK|S10|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U1|dffs[5]~feeder_combout\ = \STACK|S10|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S10|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S10|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X38_Y10_N23
\STACK|S10|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S10|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S10|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N2
\STACK|M0|auto_generated|result_node[5]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~54_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S11|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S10|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S10|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \STACK|S11|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|result_node[5]~54_combout\);

-- Location: LCCOMB_X37_Y12_N6
\STACK|S16|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S15|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S17|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S15|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U1|dffs\(5),
	datab => \STACK|S15|U1|dffs\(5),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S16|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y12_N24
\STACK|S16|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U1|dffs[5]~feeder_combout\ = \STACK|S16|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S16|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S16|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N8
\STACK|enableArray[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[16]~26_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(16),
	combout => \STACK|enableArray[16]~26_combout\);

-- Location: LCFF_X40_Y12_N25
\STACK|S16|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S16|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S16|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N30
\STACK|S15|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S14|U1|dffs\(5)))) # (!\mode~combout\(0) & (\STACK|S16|U1|dffs\(5))))) # (!\mode~combout\(1) & (((\STACK|S14|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S16|U1|dffs\(5),
	datad => \STACK|S14|U1|dffs\(5),
	combout => \STACK|S15|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y12_N26
\STACK|S15|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U1|dffs[5]~feeder_combout\ = \STACK|S15|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S15|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S15|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X42_Y12_N27
\STACK|S15|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S15|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S15|U1|dffs\(5));

-- Location: LCCOMB_X38_Y11_N0
\STACK|M0|auto_generated|result_node[5]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~51_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S15|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S14|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S14|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \STACK|S15|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|result_node[5]~51_combout\);

-- Location: LCCOMB_X38_Y11_N26
\STACK|M0|auto_generated|result_node[5]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~50_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S13|U1|dffs\(5)))) # (!\addr~combout\(0) & (\STACK|S12|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S12|U1|dffs\(5),
	datac => \STACK|S13|U1|dffs\(5),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[5]~50_combout\);

-- Location: LCCOMB_X38_Y11_N22
\STACK|M0|auto_generated|result_node[5]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~52_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[5]~51_combout\) # (\STACK|M0|auto_generated|result_node[5]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|M0|auto_generated|result_node[5]~51_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|result_node[5]~50_combout\,
	combout => \STACK|M0|auto_generated|result_node[5]~52_combout\);

-- Location: LCCOMB_X38_Y11_N24
\STACK|M0|auto_generated|result_node[5]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~55_combout\ = (\STACK|M0|auto_generated|result_node[5]~52_combout\) # ((!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[5]~53_combout\) # (\STACK|M0|auto_generated|result_node[5]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[5]~53_combout\,
	datab => \STACK|M0|auto_generated|result_node[5]~54_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|result_node[5]~52_combout\,
	combout => \STACK|M0|auto_generated|result_node[5]~55_combout\);

-- Location: LCCOMB_X37_Y11_N24
\STACK|M0|auto_generated|result_node[5]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~56_combout\ = (\STACK|M0|auto_generated|result_node[4]~0_combout\ & ((\STACK|M0|auto_generated|result_node[5]~49_combout\) # ((\addr~combout\(3) & \STACK|M0|auto_generated|result_node[5]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[5]~49_combout\,
	datab => \addr~combout\(3),
	datac => \STACK|M0|auto_generated|result_node[4]~0_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~55_combout\,
	combout => \STACK|M0|auto_generated|result_node[5]~56_combout\);

-- Location: LCCOMB_X39_Y6_N24
\STACK|S33|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S32|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S34|U1|dffs\(5)))))) # (!\mode~combout\(1) & (((\STACK|S32|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S32|U1|dffs\(5),
	datad => \STACK|S34|U1|dffs\(5),
	combout => \STACK|S33|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y8_N6
\STACK|S33|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U1|dffs[5]~feeder_combout\ = \STACK|S33|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S33|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S33|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N22
\STACK|enableArray[33]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[33]~49_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(33),
	combout => \STACK|enableArray[33]~49_combout\);

-- Location: LCFF_X40_Y8_N7
\STACK|S33|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S33|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[33]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S33|U1|dffs\(5));

-- Location: LCCOMB_X39_Y8_N28
\STACK|S34|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S33|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S35|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S33|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S35|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S33|U1|dffs\(5),
	combout => \STACK|S34|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X39_Y8_N0
\STACK|S34|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U1|dffs[5]~feeder_combout\ = \STACK|S34|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S34|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S34|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N0
\STACK|enableArray[34]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[34]~48_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(1),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(34),
	datad => \mode~combout\(0),
	combout => \STACK|enableArray[34]~48_combout\);

-- Location: LCFF_X39_Y8_N1
\STACK|S34|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S34|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[34]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S34|U1|dffs\(5));

-- Location: LCCOMB_X39_Y8_N26
\STACK|S35|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S34|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S36|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S34|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S34|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S36|U1|dffs\(5),
	combout => \STACK|S35|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X36_Y8_N14
\STACK|S35|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U1|dffs[5]~feeder_combout\ = \STACK|S35|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S35|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S35|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y8_N10
\STACK|enableArray[35]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[35]~51_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(35),
	combout => \STACK|enableArray[35]~51_combout\);

-- Location: LCFF_X36_Y8_N15
\STACK|S35|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S35|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S35|U1|dffs\(5));

-- Location: LCCOMB_X42_Y8_N6
\STACK|S39|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S38|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S40|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S38|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S40|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S38|U1|dffs\(5),
	combout => \STACK|S39|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X38_Y8_N18
\STACK|S39|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U1|dffs[5]~feeder_combout\ = \STACK|S39|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S39|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S39|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N10
\STACK|enableArray[39]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[39]~47_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(39),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[39]~47_combout\);

-- Location: LCFF_X38_Y8_N19
\STACK|S39|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S39|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[39]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S39|U1|dffs\(5));

-- Location: LCCOMB_X38_Y8_N6
\STACK|S38|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S37|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S39|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S37|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S39|U1|dffs\(5),
	datac => \STACK|S37|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S38|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X38_Y8_N20
\STACK|S38|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U1|dffs[5]~feeder_combout\ = \STACK|S38|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S38|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S38|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X38_Y8_N24
\STACK|enableArray[38]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[38]~44_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(38),
	combout => \STACK|enableArray[38]~44_combout\);

-- Location: LCFF_X38_Y8_N21
\STACK|S38|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S38|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[38]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S38|U1|dffs\(5));

-- Location: LCCOMB_X42_Y8_N12
\STACK|S37|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S36|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S38|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\STACK|S36|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S36|U1|dffs\(5),
	datab => \STACK|S38|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S37|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y8_N8
\STACK|S37|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U1|dffs[5]~feeder_combout\ = \STACK|S37|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S37|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S37|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y8_N20
\STACK|enableArray[37]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[37]~45_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(1),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(37),
	datad => \mode~combout\(0),
	combout => \STACK|enableArray[37]~45_combout\);

-- Location: LCFF_X42_Y8_N9
\STACK|S37|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S37|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[37]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S37|U1|dffs\(5));

-- Location: LCCOMB_X39_Y8_N22
\STACK|S36|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (\STACK|S35|U1|dffs\(5))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S37|U1|dffs\(5)))) # (!\mode~combout\(1) & (\STACK|S35|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S35|U1|dffs\(5),
	datac => \mode~combout\(1),
	datad => \STACK|S37|U1|dffs\(5),
	combout => \STACK|S36|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y8_N24
\STACK|S36|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U1|dffs[5]~feeder_combout\ = \STACK|S36|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S36|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S36|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y8_N14
\STACK|enableArray[36]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[36]~46_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(36),
	combout => \STACK|enableArray[36]~46_combout\);

-- Location: LCFF_X40_Y8_N25
\STACK|S36|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S36|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[36]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S36|U1|dffs\(5));

-- Location: LCCOMB_X39_Y8_N4
\STACK|M0|auto_generated|_~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~108_combout\ = (\addr~combout\(0) & (((\addr~combout\(1)) # (\STACK|S37|U1|dffs\(5))))) # (!\addr~combout\(0) & (\STACK|S36|U1|dffs\(5) & (!\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S36|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \STACK|S37|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~108_combout\);

-- Location: LCCOMB_X39_Y8_N18
\STACK|M0|auto_generated|_~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~109_combout\ = (\STACK|M0|auto_generated|_~108_combout\ & ((\STACK|S39|U1|dffs\(5)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~108_combout\ & (((\addr~combout\(1) & \STACK|S38|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S39|U1|dffs\(5),
	datab => \STACK|M0|auto_generated|_~108_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S38|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~109_combout\);

-- Location: LCCOMB_X39_Y8_N30
\STACK|M0|auto_generated|_~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~111_combout\ = (\STACK|M0|auto_generated|_~110_combout\ & ((\STACK|S35|U1|dffs\(5)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~110_combout\ & (((\addr~combout\(1) & \STACK|S34|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~110_combout\,
	datab => \STACK|S35|U1|dffs\(5),
	datac => \addr~combout\(1),
	datad => \STACK|S34|U1|dffs\(5),
	combout => \STACK|M0|auto_generated|_~111_combout\);

-- Location: LCCOMB_X36_Y7_N14
\STACK|M0|auto_generated|_~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~112_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\STACK|M0|auto_generated|_~109_combout\)) # (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|_~109_combout\,
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|_~111_combout\,
	combout => \STACK|M0|auto_generated|_~112_combout\);

-- Location: LCCOMB_X44_Y8_N10
\STACK|S40|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S39|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S41|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S39|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S41|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S39|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S40|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X39_Y12_N10
\STACK|S40|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U1|dffs[5]~feeder_combout\ = \STACK|S40|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S40|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S40|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y12_N30
\STACK|enableArray[40]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[40]~39_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(40),
	combout => \STACK|enableArray[40]~39_combout\);

-- Location: LCFF_X39_Y12_N11
\STACK|S40|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S40|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[40]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S40|U1|dffs\(5));

-- Location: LCCOMB_X44_Y8_N20
\STACK|S41|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S40|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S42|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S40|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S42|U1|dffs\(5),
	datac => \STACK|S40|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S41|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X43_Y8_N14
\STACK|S41|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U1|dffs[5]~feeder_combout\ = \STACK|S41|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S41|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S41|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y8_N30
\STACK|enableArray[41]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[41]~38_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEB|output~combout\,
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(41),
	combout => \STACK|enableArray[41]~38_combout\);

-- Location: LCFF_X43_Y8_N15
\STACK|S41|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S41|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[41]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S41|U1|dffs\(5));

-- Location: LCCOMB_X44_Y7_N0
\STACK|S42|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S41|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S43|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S41|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S43|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S41|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S42|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X44_Y8_N18
\STACK|S42|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U1|dffs[5]~feeder_combout\ = \STACK|S42|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S42|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S42|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X44_Y8_N14
\STACK|enableArray[42]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[42]~37_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(42) & \mode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \DEB|output~combout\,
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(42),
	datad => \mode~combout\(1),
	combout => \STACK|enableArray[42]~37_combout\);

-- Location: LCFF_X44_Y8_N19
\STACK|S42|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S42|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[42]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S42|U1|dffs\(5));

-- Location: LCCOMB_X44_Y7_N26
\STACK|S43|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S42|U1|dffs\(5))) # (!\mode~combout\(0) & ((\STACK|S44|U1|dffs\(5)))))) # (!\mode~combout\(1) & (\STACK|S42|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S42|U1|dffs\(5),
	datac => \STACK|S44|U1|dffs\(5),
	datad => \mode~combout\(0),
	combout => \STACK|S43|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X42_Y7_N16
\STACK|S43|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U1|dffs[5]~feeder_combout\ = \STACK|S43|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S43|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S43|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X42_Y7_N30
\STACK|enableArray[43]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[43]~36_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(43),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[43]~36_combout\);

-- Location: LCFF_X42_Y7_N17
\STACK|S43|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S43|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[43]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S43|U1|dffs\(5));

-- Location: LCCOMB_X44_Y7_N20
\STACK|S44|U0|$00000|auto_generated|result_node[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U0|$00000|auto_generated|result_node[5]~3_combout\ = (\mode~combout\(0) & (((\STACK|S43|U1|dffs\(5))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S45|U1|dffs\(5))) # (!\mode~combout\(1) & ((\STACK|S43|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S45|U1|dffs\(5),
	datab => \mode~combout\(0),
	datac => \STACK|S43|U1|dffs\(5),
	datad => \mode~combout\(1),
	combout => \STACK|S44|U0|$00000|auto_generated|result_node[5]~3_combout\);

-- Location: LCCOMB_X40_Y10_N14
\STACK|S44|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U1|dffs[5]~feeder_combout\ = \STACK|S44|U0|$00000|auto_generated|result_node[5]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S44|U0|$00000|auto_generated|result_node[5]~3_combout\,
	combout => \STACK|S44|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N18
\STACK|enableArray[44]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[44]~43_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(44),
	combout => \STACK|enableArray[44]~43_combout\);

-- Location: LCFF_X40_Y10_N15
\STACK|S44|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S44|U1|dffs[5]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[44]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S44|U1|dffs\(5));

-- Location: LCCOMB_X44_Y7_N30
\STACK|M0|auto_generated|_~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~105_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S45|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S44|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S45|U1|dffs\(5),
	datab => \STACK|S44|U1|dffs\(5),
	datac => \addr~combout\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~105_combout\);

-- Location: LCCOMB_X44_Y7_N8
\STACK|M0|auto_generated|_~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~102_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S41|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S40|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S41|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \STACK|S40|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~102_combout\);

-- Location: LCCOMB_X44_Y7_N10
\STACK|M0|auto_generated|_~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~103_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S43|U1|dffs\(5))) # (!\addr~combout\(0) & ((\STACK|S42|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S43|U1|dffs\(5),
	datab => \addr~combout\(0),
	datac => \STACK|S42|U1|dffs\(5),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~103_combout\);

-- Location: LCCOMB_X44_Y7_N28
\STACK|M0|auto_generated|_~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~104_combout\ = (\addr~combout\(3) & ((\addr~combout\(2)) # ((\STACK|M0|auto_generated|_~102_combout\) # (\STACK|M0|auto_generated|_~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(3),
	datac => \STACK|M0|auto_generated|_~102_combout\,
	datad => \STACK|M0|auto_generated|_~103_combout\,
	combout => \STACK|M0|auto_generated|_~104_combout\);

-- Location: LCCOMB_X44_Y7_N6
\STACK|M0|auto_generated|_~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~107_combout\ = (\STACK|M0|auto_generated|_~104_combout\ & ((\STACK|M0|auto_generated|_~106_combout\) # ((\STACK|M0|auto_generated|_~105_combout\) # (!\addr~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~106_combout\,
	datab => \STACK|M0|auto_generated|_~105_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~104_combout\,
	combout => \STACK|M0|auto_generated|_~107_combout\);

-- Location: LCCOMB_X36_Y7_N28
\STACK|M0|auto_generated|_~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~113_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\STACK|M0|auto_generated|_~112_combout\) # (\STACK|M0|auto_generated|_~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|_~112_combout\,
	datad => \STACK|M0|auto_generated|_~107_combout\,
	combout => \STACK|M0|auto_generated|_~113_combout\);

-- Location: LCCOMB_X37_Y11_N18
\STACK|M0|auto_generated|result_node[5]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[5]~57_combout\ = (\STACK|M0|auto_generated|_~113_combout\ & (\STACK|M0|auto_generated|_~162_combout\)) # (!\STACK|M0|auto_generated|_~113_combout\ & ((\STACK|M0|auto_generated|result_node[5]~48_combout\) # 
-- ((\STACK|M0|auto_generated|_~162_combout\ & \STACK|M0|auto_generated|result_node[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~162_combout\,
	datab => \STACK|M0|auto_generated|result_node[5]~48_combout\,
	datac => \STACK|M0|auto_generated|result_node[5]~56_combout\,
	datad => \STACK|M0|auto_generated|_~113_combout\,
	combout => \STACK|M0|auto_generated|result_node[5]~57_combout\);

-- Location: LCCOMB_X27_Y19_N30
\MOD13|A1|b2v_inst5|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst5|Cout~1_combout\ = (\MOD13|A1|b2v_inst4|Cout~0_combout\ & ((\MOD13|A1|b2v_inst5|Cout~0_combout\) # (\STACK|M0|auto_generated|result_node[5]~57_combout\))) # (!\MOD13|A1|b2v_inst4|Cout~0_combout\ & (\MOD13|A1|b2v_inst5|Cout~0_combout\ & 
-- \STACK|M0|auto_generated|result_node[5]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A1|b2v_inst4|Cout~0_combout\,
	datab => \MOD13|A1|b2v_inst5|Cout~0_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \MOD13|A1|b2v_inst5|Cout~1_combout\);

-- Location: LCCOMB_X43_Y9_N8
\STACK|S0|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S0|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & (\STACK|S1|U1|dffs\(4) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S1|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S0|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X42_Y9_N30
\STACK|enableArray[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[0]~6_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(0),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[0]~6_combout\);

-- Location: LCFF_X43_Y9_N9
\STACK|S0|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S0|U0|$00000|auto_generated|result_node[4]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S0|U1|dffs\(4));

-- Location: LCCOMB_X46_Y9_N10
\STACK|S1|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S0|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S2|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S0|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S2|U1|dffs\(4),
	datac => \STACK|S0|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S1|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X46_Y9_N28
\STACK|S1|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U1|dffs[4]~feeder_combout\ = \STACK|S1|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S1|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S1|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N20
\STACK|enableArray[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[1]~5_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(1),
	combout => \STACK|enableArray[1]~5_combout\);

-- Location: LCFF_X46_Y9_N29
\STACK|S1|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S1|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S1|U1|dffs\(4));

-- Location: LCCOMB_X45_Y9_N10
\STACK|S2|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S1|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S3|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S1|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S1|U1|dffs\(4),
	datac => \STACK|S3|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S2|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X45_Y9_N4
\STACK|S2|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U1|dffs[4]~feeder_combout\ = \STACK|S2|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S2|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S2|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X45_Y9_N16
\STACK|enableArray[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[2]~4_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(0),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(2),
	combout => \STACK|enableArray[2]~4_combout\);

-- Location: LCFF_X45_Y9_N5
\STACK|S2|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S2|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S2|U1|dffs\(4));

-- Location: LCCOMB_X44_Y9_N26
\STACK|S3|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S2|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S4|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S2|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S4|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \STACK|S2|U1|dffs\(4),
	combout => \STACK|S3|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y10_N12
\STACK|S3|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U1|dffs[4]~feeder_combout\ = \STACK|S3|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S3|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S3|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X38_Y10_N20
\STACK|enableArray[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[3]~7_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(3),
	combout => \STACK|enableArray[3]~7_combout\);

-- Location: LCFF_X38_Y10_N13
\STACK|S3|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S3|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S3|U1|dffs\(4));

-- Location: LCCOMB_X45_Y9_N24
\STACK|S4|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S3|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S5|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S3|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S5|U1|dffs\(4),
	datab => \STACK|S3|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S4|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X44_Y9_N22
\STACK|S4|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U1|dffs[4]~feeder_combout\ = \STACK|S4|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S4|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S4|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X44_Y9_N12
\STACK|enableArray[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[4]~2_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(4),
	combout => \STACK|enableArray[4]~2_combout\);

-- Location: LCFF_X44_Y9_N23
\STACK|S4|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S4|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S4|U1|dffs\(4));

-- Location: LCCOMB_X38_Y9_N14
\STACK|M0|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~12_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S5|U1|dffs\(4))) # (!\addr~combout\(0) & ((\STACK|S4|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S5|U1|dffs\(4),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S4|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~12_combout\);

-- Location: LCCOMB_X39_Y9_N30
\STACK|S5|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S4|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S6|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S4|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S4|U1|dffs\(4),
	datac => \STACK|S6|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S5|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y9_N20
\STACK|S5|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U1|dffs[4]~feeder_combout\ = \STACK|S5|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S5|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S5|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X38_Y9_N21
\STACK|S5|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S5|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S5|U1|dffs\(4));

-- Location: LCCOMB_X37_Y9_N2
\STACK|S9|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U1|dffs[4]~feeder_combout\ = \STACK|S9|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S9|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S9|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X37_Y9_N3
\STACK|S9|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S9|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S9|U1|dffs\(4));

-- Location: LCCOMB_X42_Y10_N18
\STACK|S8|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S7|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S9|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S7|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S7|U1|dffs\(4),
	datac => \STACK|S9|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S8|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X42_Y10_N22
\STACK|S8|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U1|dffs[4]~feeder_combout\ = \STACK|S8|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S8|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S8|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X42_Y10_N23
\STACK|S8|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S8|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S8|U1|dffs\(4));

-- Location: LCCOMB_X43_Y10_N24
\STACK|S7|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S6|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S8|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S6|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S8|U1|dffs\(4),
	datac => \STACK|S6|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S7|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X42_Y10_N28
\STACK|S7|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U1|dffs[4]~feeder_combout\ = \STACK|S7|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S7|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S7|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X42_Y10_N29
\STACK|S7|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S7|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S7|U1|dffs\(4));

-- Location: LCCOMB_X44_Y10_N12
\STACK|S6|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S5|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S7|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S5|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S5|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \STACK|S7|U1|dffs\(4),
	combout => \STACK|S6|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X44_Y9_N24
\STACK|S6|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U1|dffs[4]~feeder_combout\ = \STACK|S6|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S6|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S6|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X44_Y9_N25
\STACK|S6|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S6|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S6|U1|dffs\(4));

-- Location: LCCOMB_X44_Y9_N0
\STACK|M0|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~13_combout\ = (\STACK|M0|auto_generated|_~12_combout\ & ((\STACK|S7|U1|dffs\(4)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~12_combout\ & (((\STACK|S6|U1|dffs\(4) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S7|U1|dffs\(4),
	datab => \STACK|M0|auto_generated|_~12_combout\,
	datac => \STACK|S6|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~13_combout\);

-- Location: LCCOMB_X44_Y10_N0
\STACK|M0|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~1_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~13_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~15_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~13_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X36_Y11_N4
\STACK|M0|auto_generated|result_node[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~8_combout\ = (\STACK|M0|auto_generated|result_node[4]~0_combout\ & ((\STACK|M0|auto_generated|result_node[4]~1_combout\) # ((\STACK|M0|auto_generated|result_node[4]~7_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[4]~7_combout\,
	datab => \addr~combout\(3),
	datac => \STACK|M0|auto_generated|result_node[4]~0_combout\,
	datad => \STACK|M0|auto_generated|result_node[4]~1_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~8_combout\);

-- Location: LCCOMB_X43_Y7_N6
\STACK|S41|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S40|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S42|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S40|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S42|U1|dffs\(4),
	datab => \STACK|S40|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S41|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X43_Y8_N16
\STACK|S41|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U1|dffs[4]~feeder_combout\ = \STACK|S41|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S41|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S41|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X43_Y8_N17
\STACK|S41|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S41|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[41]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S41|U1|dffs\(4));

-- Location: LCCOMB_X39_Y11_N10
\STACK|S40|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S39|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S41|U1|dffs\(4)))))) # (!\mode~combout\(1) & (((\STACK|S39|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S39|U1|dffs\(4),
	datad => \STACK|S41|U1|dffs\(4),
	combout => \STACK|S40|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X39_Y12_N12
\STACK|S40|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U1|dffs[4]~feeder_combout\ = \STACK|S40|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S40|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S40|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X39_Y12_N13
\STACK|S40|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S40|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[40]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S40|U1|dffs\(4));

-- Location: LCCOMB_X39_Y11_N20
\STACK|S39|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S38|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S40|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S38|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S38|U1|dffs\(4),
	datac => \STACK|S40|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S39|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y8_N22
\STACK|S39|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U1|dffs[4]~feeder_combout\ = \STACK|S39|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S39|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S39|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X38_Y8_N23
\STACK|S39|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S39|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[39]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S39|U1|dffs\(4));

-- Location: LCCOMB_X42_Y8_N10
\STACK|S38|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S37|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S39|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S37|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S39|U1|dffs\(4),
	combout => \STACK|S38|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y8_N12
\STACK|S38|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U1|dffs[4]~feeder_combout\ = \STACK|S38|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S38|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S38|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X38_Y8_N13
\STACK|S38|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S38|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[38]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S38|U1|dffs\(4));

-- Location: LCCOMB_X39_Y6_N14
\STACK|S31|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S30|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S32|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S30|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S30|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \STACK|S32|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S31|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y6_N22
\STACK|S31|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U1|dffs[4]~feeder_combout\ = \STACK|S31|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S31|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S31|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X40_Y6_N23
\STACK|S31|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S31|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[31]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S31|U1|dffs\(4));

-- Location: LCCOMB_X37_Y12_N26
\STACK|S32|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S31|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S33|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S31|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S33|U1|dffs\(4),
	datad => \STACK|S31|U1|dffs\(4),
	combout => \STACK|S32|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X37_Y8_N20
\STACK|S32|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U1|dffs[4]~feeder_combout\ = \STACK|S32|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S32|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S32|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X37_Y8_N21
\STACK|S32|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S32|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[32]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S32|U1|dffs\(4));

-- Location: LCCOMB_X36_Y8_N8
\STACK|S33|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S32|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S34|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S32|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S32|U1|dffs\(4),
	datac => \STACK|S34|U1|dffs\(4),
	datad => \mode~combout\(0),
	combout => \STACK|S33|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y8_N2
\STACK|S33|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U1|dffs[4]~feeder_combout\ = \STACK|S33|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S33|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S33|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X40_Y8_N3
\STACK|S33|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S33|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[33]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S33|U1|dffs\(4));

-- Location: LCCOMB_X37_Y7_N14
\STACK|S34|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S33|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S35|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S33|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S33|U1|dffs\(4),
	datac => \STACK|S35|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S34|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X39_Y8_N12
\STACK|S34|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U1|dffs[4]~feeder_combout\ = \STACK|S34|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S34|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S34|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X39_Y8_N13
\STACK|S34|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S34|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[34]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S34|U1|dffs\(4));

-- Location: LCCOMB_X38_Y7_N24
\STACK|S35|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S34|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S36|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S34|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S34|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \STACK|S36|U1|dffs\(4),
	combout => \STACK|S35|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X38_Y9_N22
\STACK|S35|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U1|dffs[4]~feeder_combout\ = \STACK|S35|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S35|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S35|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X38_Y9_N23
\STACK|S35|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S35|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S35|U1|dffs\(4));

-- Location: LCCOMB_X39_Y11_N30
\STACK|S36|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S35|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S37|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S35|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(4),
	datab => \mode~combout\(0),
	datac => \STACK|S35|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S36|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y8_N4
\STACK|S36|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U1|dffs[4]~feeder_combout\ = \STACK|S36|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S36|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S36|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X40_Y8_N5
\STACK|S36|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S36|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[36]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S36|U1|dffs\(4));

-- Location: LCCOMB_X39_Y11_N4
\STACK|S37|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S36|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S38|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S36|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S38|U1|dffs\(4),
	datad => \STACK|S36|U1|dffs\(4),
	combout => \STACK|S37|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X42_Y8_N24
\STACK|S37|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U1|dffs[4]~feeder_combout\ = \STACK|S37|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S37|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S37|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X42_Y8_N25
\STACK|S37|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S37|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[37]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S37|U1|dffs\(4));

-- Location: LCCOMB_X39_Y11_N22
\STACK|M0|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~34_combout\ = (\addr~combout\(0) & ((\addr~combout\(1)) # ((\STACK|S37|U1|dffs\(4))))) # (!\addr~combout\(0) & (!\addr~combout\(1) & ((\STACK|S36|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S37|U1|dffs\(4),
	datad => \STACK|S36|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~34_combout\);

-- Location: LCCOMB_X39_Y11_N12
\STACK|M0|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~35_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~34_combout\ & (\STACK|S39|U1|dffs\(4))) # (!\STACK|M0|auto_generated|_~34_combout\ & ((\STACK|S38|U1|dffs\(4)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S39|U1|dffs\(4),
	datab => \STACK|S38|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~34_combout\,
	combout => \STACK|M0|auto_generated|_~35_combout\);

-- Location: LCCOMB_X37_Y11_N20
\STACK|M0|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~38_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~35_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~37_combout\,
	datab => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|_~35_combout\,
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|_~38_combout\);

-- Location: LCCOMB_X42_Y8_N28
\STACK|S49|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S48|U1|dffs\(4)))) # (!\mode~combout\(0) & (\STACK|S50|U1|dffs\(4))))) # (!\mode~combout\(1) & (((\STACK|S48|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(4),
	datab => \STACK|S48|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S49|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y11_N4
\STACK|S49|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U1|dffs[4]~feeder_combout\ = \STACK|S49|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S49|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S49|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X40_Y11_N5
\STACK|S49|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S49|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S49|U1|dffs\(4));

-- Location: LCCOMB_X42_Y7_N22
\STACK|S48|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S47|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S49|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S47|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S47|U1|dffs\(4),
	datad => \STACK|S49|U1|dffs\(4),
	combout => \STACK|S48|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X42_Y7_N28
\STACK|S48|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U1|dffs[4]~feeder_combout\ = \STACK|S48|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S48|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S48|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X42_Y7_N29
\STACK|S48|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S48|U1|dffs[4]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S48|U1|dffs\(4));

-- Location: LCCOMB_X42_Y8_N0
\STACK|S46|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S45|U1|dffs\(4))) # (!\mode~combout\(0) & ((\STACK|S47|U1|dffs\(4)))))) # (!\mode~combout\(1) & (\STACK|S45|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S45|U1|dffs\(4),
	datab => \STACK|S47|U1|dffs\(4),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S46|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X42_Y9_N20
\STACK|S46|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U1|dffs[4]~feeder_combout\ = \STACK|S46|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S46|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S46|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X42_Y9_N22
\STACK|enableArray[46]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[46]~41_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(46),
	datad => \DEB|output~combout\,
	combout => \STACK|enableArray[46]~41_combout\);

-- Location: LCFF_X42_Y9_N21
\STACK|S46|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S46|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[46]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S46|U1|dffs\(4));

-- Location: LCCOMB_X43_Y11_N10
\STACK|S47|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S46|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S48|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S46|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S48|U1|dffs\(4),
	datac => \STACK|S46|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S47|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y12_N22
\STACK|S47|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U1|dffs[4]~feeder_combout\ = \STACK|S47|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S47|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S47|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X40_Y12_N23
\STACK|S47|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S47|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[47]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S47|U1|dffs\(4));

-- Location: LCCOMB_X43_Y7_N26
\STACK|S43|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S42|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S44|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S42|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S42|U1|dffs\(4),
	datab => \STACK|S44|U1|dffs\(4),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S43|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X43_Y7_N28
\STACK|S43|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U1|dffs[4]~feeder_combout\ = \STACK|S43|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S43|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S43|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X43_Y7_N29
\STACK|S43|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S43|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[43]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S43|U1|dffs\(4));

-- Location: LCCOMB_X40_Y10_N0
\STACK|S44|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S43|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S45|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S43|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S43|U1|dffs\(4),
	datac => \STACK|S45|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S44|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y10_N22
\STACK|S44|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U1|dffs[4]~feeder_combout\ = \STACK|S44|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S44|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S44|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X40_Y10_N23
\STACK|S44|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S44|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[44]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S44|U1|dffs\(4));

-- Location: LCCOMB_X40_Y10_N30
\STACK|S45|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (\STACK|S44|U1|dffs\(4))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S46|U1|dffs\(4)))) # (!\mode~combout\(1) & (\STACK|S44|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S44|U1|dffs\(4),
	datac => \STACK|S46|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S45|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X40_Y11_N6
\STACK|S45|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U1|dffs[4]~feeder_combout\ = \STACK|S45|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S45|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S45|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X40_Y11_N10
\STACK|enableArray[45]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[45]~42_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(45),
	combout => \STACK|enableArray[45]~42_combout\);

-- Location: LCFF_X40_Y11_N7
\STACK|S45|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S45|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[45]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S45|U1|dffs\(4));

-- Location: LCCOMB_X42_Y9_N14
\STACK|M0|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~31_combout\ = (\addr~combout\(0) & (((\STACK|S45|U1|dffs\(4)) # (\addr~combout\(1))))) # (!\addr~combout\(0) & (\STACK|S44|U1|dffs\(4) & ((!\addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S44|U1|dffs\(4),
	datab => \addr~combout\(0),
	datac => \STACK|S45|U1|dffs\(4),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~31_combout\);

-- Location: LCCOMB_X43_Y7_N16
\STACK|S42|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\mode~combout\(0) & (((\STACK|S41|U1|dffs\(4))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S43|U1|dffs\(4))) # (!\mode~combout\(1) & ((\STACK|S41|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S43|U1|dffs\(4),
	datac => \STACK|S41|U1|dffs\(4),
	datad => \mode~combout\(1),
	combout => \STACK|S42|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X44_Y8_N28
\STACK|S42|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U1|dffs[4]~feeder_combout\ = \STACK|S42|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S42|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \STACK|S42|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X44_Y8_N29
\STACK|S42|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S42|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[42]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S42|U1|dffs\(4));

-- Location: LCCOMB_X43_Y7_N4
\STACK|M0|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~28_combout\ = (\addr~combout\(0) & (\STACK|S43|U1|dffs\(4))) # (!\addr~combout\(0) & ((\STACK|S42|U1|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S43|U1|dffs\(4),
	datac => \addr~combout\(0),
	datad => \STACK|S42|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~28_combout\);

-- Location: LCCOMB_X43_Y7_N14
\STACK|M0|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~29_combout\ = (\addr~combout\(0) & (\STACK|S41|U1|dffs\(4))) # (!\addr~combout\(0) & ((\STACK|S40|U1|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(0),
	datac => \STACK|S41|U1|dffs\(4),
	datad => \STACK|S40|U1|dffs\(4),
	combout => \STACK|M0|auto_generated|_~29_combout\);

-- Location: LCCOMB_X44_Y7_N4
\STACK|M0|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~30_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~28_combout\) # ((\addr~combout\(2))))) # (!\addr~combout\(1) & (((!\addr~combout\(2) & \STACK|M0|auto_generated|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|_~28_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~29_combout\,
	combout => \STACK|M0|auto_generated|_~30_combout\);

-- Location: LCCOMB_X42_Y9_N0
\STACK|M0|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~32_combout\ = (\STACK|M0|auto_generated|_~31_combout\ & (((\STACK|S47|U1|dffs\(4)) # (!\STACK|M0|auto_generated|_~30_combout\)))) # (!\STACK|M0|auto_generated|_~31_combout\ & (\STACK|S46|U1|dffs\(4) & 
-- ((\STACK|M0|auto_generated|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S46|U1|dffs\(4),
	datab => \STACK|S47|U1|dffs\(4),
	datac => \STACK|M0|auto_generated|_~31_combout\,
	datad => \STACK|M0|auto_generated|_~30_combout\,
	combout => \STACK|M0|auto_generated|_~32_combout\);

-- Location: LCCOMB_X37_Y11_N6
\STACK|M0|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~33_combout\ = (\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~32_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~30_combout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|_~32_combout\,
	combout => \STACK|M0|auto_generated|_~33_combout\);

-- Location: LCCOMB_X37_Y11_N14
\STACK|M0|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~39_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\STACK|M0|auto_generated|_~38_combout\) # (\STACK|M0|auto_generated|_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(5),
	datac => \STACK|M0|auto_generated|_~38_combout\,
	datad => \STACK|M0|auto_generated|_~33_combout\,
	combout => \STACK|M0|auto_generated|_~39_combout\);

-- Location: LCCOMB_X42_Y11_N14
\STACK|S51|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S51|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\STACK|S50|U1|dffs\(4) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(4),
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S51|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X42_Y11_N15
\STACK|S51|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S51|U0|$00000|auto_generated|result_node[4]~0_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S51|U1|dffs\(4));

-- Location: LCCOMB_X43_Y11_N4
\STACK|M0|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~17_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S49|U1|dffs\(4))) # (!\addr~combout\(0) & ((\STACK|S48|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S49|U1|dffs\(4),
	datab => \STACK|S48|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~17_combout\);

-- Location: LCCOMB_X42_Y11_N0
\STACK|M0|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~18_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~17_combout\ & ((\STACK|S51|U1|dffs\(4)))) # (!\STACK|M0|auto_generated|_~17_combout\ & (\STACK|S50|U1|dffs\(4))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(4),
	datab => \STACK|S51|U1|dffs\(4),
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~17_combout\,
	combout => \STACK|M0|auto_generated|_~18_combout\);

-- Location: LCCOMB_X37_Y11_N30
\STACK|M0|auto_generated|_~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~159_combout\ = ((!\addr~combout\(3) & (!\addr~combout\(2) & \STACK|M0|auto_generated|_~18_combout\))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~18_combout\,
	combout => \STACK|M0|auto_generated|_~159_combout\);

-- Location: LCCOMB_X36_Y11_N6
\STACK|M0|auto_generated|result_node[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[4]~12_combout\ = (\STACK|M0|auto_generated|result_node[4]~8_combout\) # ((\STACK|M0|auto_generated|_~39_combout\ & ((\STACK|M0|auto_generated|_~159_combout\))) # (!\STACK|M0|auto_generated|_~39_combout\ & 
-- (\STACK|M0|auto_generated|result_node[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[4]~11_combout\,
	datab => \STACK|M0|auto_generated|result_node[4]~8_combout\,
	datac => \STACK|M0|auto_generated|_~39_combout\,
	datad => \STACK|M0|auto_generated|_~159_combout\,
	combout => \STACK|M0|auto_generated|result_node[4]~12_combout\);

-- Location: LCCOMB_X26_Y19_N24
\MOD13|A1|b2v_inst6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A1|b2v_inst6|S~combout\ = \MOD13|A1|b2v_inst5|Cout~1_combout\ $ (\STACK|M0|auto_generated|result_node[4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	combout => \MOD13|A1|b2v_inst6|S~combout\);

-- Location: LCCOMB_X37_Y8_N26
\STACK|S32|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U1|dffs[1]~feeder_combout\ = \STACK|S32|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S32|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S32|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X37_Y8_N27
\STACK|S32|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S32|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[32]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S32|U1|dffs\(1));

-- Location: LCCOMB_X37_Y10_N4
\STACK|S29|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S28|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S30|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S28|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S28|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S30|U1|dffs\(1),
	combout => \STACK|S29|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X37_Y10_N0
\STACK|S29|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U1|dffs[1]~feeder_combout\ = \STACK|S29|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S29|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S29|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X37_Y10_N1
\STACK|S29|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S29|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S29|U1|dffs\(1));

-- Location: LCCOMB_X37_Y10_N2
\STACK|S30|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S29|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S31|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S29|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S29|U1|dffs\(1),
	datac => \STACK|S31|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S30|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y6_N26
\STACK|S30|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U1|dffs[1]~feeder_combout\ = \STACK|S30|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S30|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S30|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X42_Y6_N27
\STACK|S30|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S30|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S30|U1|dffs\(1));

-- Location: LCCOMB_X35_Y8_N26
\STACK|S31|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S30|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S32|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S30|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S32|U1|dffs\(1),
	datad => \STACK|S30|U1|dffs\(1),
	combout => \STACK|S31|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y6_N4
\STACK|S31|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U1|dffs[1]~feeder_combout\ = \STACK|S31|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S31|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S31|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y6_N5
\STACK|S31|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S31|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[31]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S31|U1|dffs\(1));

-- Location: LCCOMB_X35_Y8_N28
\STACK|M0|auto_generated|result_node[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~85_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S31|U1|dffs\(1))) # (!\addr~combout\(0) & ((\STACK|S30|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S31|U1|dffs\(1),
	datad => \STACK|S30|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|result_node[1]~85_combout\);

-- Location: LCCOMB_X39_Y11_N26
\STACK|M0|auto_generated|result_node[1]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~86_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[1]~84_combout\) # (\STACK|M0|auto_generated|result_node[1]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[1]~84_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|result_node[1]~85_combout\,
	combout => \STACK|M0|auto_generated|result_node[1]~86_combout\);

-- Location: LCCOMB_X39_Y6_N16
\STACK|S28|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S27|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S29|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S27|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S27|U1|dffs\(1),
	datac => \STACK|S29|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S28|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y6_N0
\STACK|S28|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U1|dffs[1]~feeder_combout\ = \STACK|S28|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S28|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S28|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X42_Y6_N1
\STACK|S28|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S28|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S28|U1|dffs\(1));

-- Location: LCCOMB_X43_Y7_N2
\STACK|S27|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S26|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S28|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S26|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S28|U1|dffs\(1),
	datac => \STACK|S26|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S27|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y9_N16
\STACK|S27|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U1|dffs[1]~feeder_combout\ = \STACK|S27|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S27|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S27|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y9_N17
\STACK|S27|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S27|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S27|U1|dffs\(1));

-- Location: LCCOMB_X35_Y9_N0
\STACK|S19|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U1|dffs[1]~feeder_combout\ = \STACK|S19|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S19|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S19|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X35_Y9_N1
\STACK|S19|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S19|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S19|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N28
\STACK|S20|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S19|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S21|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S19|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S21|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S19|U1|dffs\(1),
	combout => \STACK|S20|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X39_Y10_N10
\STACK|S20|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U1|dffs[1]~feeder_combout\ = \STACK|S20|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S20|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S20|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X39_Y10_N11
\STACK|S20|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S20|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S20|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N30
\STACK|S21|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S20|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S22|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S20|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S20|U1|dffs\(1),
	datac => \STACK|S22|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S21|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y6_N2
\STACK|S21|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U1|dffs[1]~feeder_combout\ = \STACK|S21|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S21|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S21|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y6_N3
\STACK|S21|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S21|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S21|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N24
\STACK|S22|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S21|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S23|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S21|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S21|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S23|U1|dffs\(1),
	combout => \STACK|S22|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X36_Y9_N10
\STACK|S22|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U1|dffs[1]~feeder_combout\ = \STACK|S22|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S22|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S22|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X36_Y9_N11
\STACK|S22|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S22|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S22|U1|dffs\(1));

-- Location: LCCOMB_X39_Y7_N22
\STACK|S23|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S22|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S24|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S22|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S22|U1|dffs\(1),
	datac => \STACK|S24|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S23|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X43_Y9_N22
\STACK|S23|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U1|dffs[1]~feeder_combout\ = \STACK|S23|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S23|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S23|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X43_Y9_N23
\STACK|S23|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S23|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S23|U1|dffs\(1));

-- Location: LCCOMB_X39_Y7_N24
\STACK|S24|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S23|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S25|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S23|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S23|U1|dffs\(1),
	datac => \STACK|S25|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S24|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y7_N26
\STACK|S24|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S24|U1|dffs[1]~feeder_combout\ = \STACK|S24|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S24|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S24|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y7_N27
\STACK|S24|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S24|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S24|U1|dffs\(1));

-- Location: LCCOMB_X39_Y7_N26
\STACK|S25|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S24|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S26|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S24|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S26|U1|dffs\(1),
	datac => \STACK|S24|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S25|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y9_N18
\STACK|S25|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U1|dffs[1]~feeder_combout\ = \STACK|S25|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S25|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S25|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y9_N19
\STACK|S25|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S25|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S25|U1|dffs\(1));

-- Location: LCCOMB_X39_Y7_N4
\STACK|S26|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S25|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S27|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S25|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S27|U1|dffs\(1),
	datac => \STACK|S25|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S26|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y7_N28
\STACK|S26|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U1|dffs[1]~feeder_combout\ = \STACK|S26|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S26|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S26|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y7_N29
\STACK|S26|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S26|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S26|U1|dffs\(1));

-- Location: LCCOMB_X39_Y7_N28
\STACK|M0|auto_generated|result_node[1]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~87_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S27|U1|dffs\(1)))) # (!\addr~combout\(0) & (\STACK|S26|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S26|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S27|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|result_node[1]~87_combout\);

-- Location: LCCOMB_X39_Y7_N2
\STACK|M0|auto_generated|result_node[1]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~88_combout\ = (\addr~combout\(0) & (\STACK|S25|U1|dffs\(1))) # (!\addr~combout\(0) & ((\STACK|S24|U1|dffs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S25|U1|dffs\(1),
	datac => \STACK|S24|U1|dffs\(1),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[1]~88_combout\);

-- Location: LCCOMB_X39_Y7_N8
\STACK|M0|auto_generated|result_node[1]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~89_combout\ = (!\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[1]~87_combout\) # ((!\addr~combout\(1) & \STACK|M0|auto_generated|result_node[1]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|M0|auto_generated|result_node[1]~87_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|result_node[1]~88_combout\,
	combout => \STACK|M0|auto_generated|result_node[1]~89_combout\);

-- Location: LCCOMB_X39_Y11_N28
\STACK|M0|auto_generated|result_node[1]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~90_combout\ = (\addr~combout\(3) & ((\STACK|M0|auto_generated|result_node[1]~86_combout\) # (\STACK|M0|auto_generated|result_node[1]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datab => \STACK|M0|auto_generated|result_node[1]~86_combout\,
	datad => \STACK|M0|auto_generated|result_node[1]~89_combout\,
	combout => \STACK|M0|auto_generated|result_node[1]~90_combout\);

-- Location: LCCOMB_X39_Y9_N0
\STACK|S12|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U1|dffs[1]~feeder_combout\ = \STACK|S12|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S12|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S12|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X39_Y9_N1
\STACK|S12|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S12|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S12|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N10
\STACK|S13|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S12|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S14|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S12|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S12|U1|dffs\(1),
	datad => \STACK|S14|U1|dffs\(1),
	combout => \STACK|S13|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y12_N28
\STACK|S13|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U1|dffs[1]~feeder_combout\ = \STACK|S13|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S13|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S13|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X42_Y12_N29
\STACK|S13|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S13|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S13|U1|dffs\(1));

-- Location: LCCOMB_X39_Y7_N18
\STACK|S14|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S13|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S15|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S13|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S13|U1|dffs\(1),
	datac => \STACK|S15|U1|dffs\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S14|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X39_Y9_N6
\STACK|S14|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U1|dffs[1]~feeder_combout\ = \STACK|S14|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S14|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S14|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X39_Y9_N7
\STACK|S14|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S14|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S14|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N16
\STACK|S15|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S14|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S16|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S14|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S14|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S16|U1|dffs\(1),
	combout => \STACK|S15|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y12_N18
\STACK|S15|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U1|dffs[1]~feeder_combout\ = \STACK|S15|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S15|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S15|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X42_Y12_N19
\STACK|S15|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S15|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S15|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N2
\STACK|S18|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S17|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S19|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S17|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U1|dffs\(1),
	datab => \STACK|S19|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S18|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X39_Y10_N4
\STACK|S18|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U1|dffs[1]~feeder_combout\ = \STACK|S18|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S18|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S18|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N24
\STACK|enableArray[18]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[18]~24_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(18),
	combout => \STACK|enableArray[18]~24_combout\);

-- Location: LCFF_X39_Y10_N5
\STACK|S18|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S18|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S18|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N12
\STACK|S17|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S16|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S18|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S16|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S16|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S18|U1|dffs\(1),
	combout => \STACK|S17|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X36_Y9_N8
\STACK|S17|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U1|dffs[1]~feeder_combout\ = \STACK|S17|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S17|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S17|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X36_Y9_N24
\STACK|enableArray[17]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[17]~25_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \DEB|output~combout\,
	datac => \mode~combout\(1),
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(17),
	combout => \STACK|enableArray[17]~25_combout\);

-- Location: LCFF_X36_Y9_N9
\STACK|S17|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S17|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S17|U1|dffs\(1));

-- Location: LCCOMB_X39_Y12_N14
\STACK|S16|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S15|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S17|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S15|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S15|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S17|U1|dffs\(1),
	combout => \STACK|S16|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y12_N10
\STACK|S16|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U1|dffs[1]~feeder_combout\ = \STACK|S16|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S16|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S16|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y12_N11
\STACK|S16|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S16|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S16|U1|dffs\(1));

-- Location: LCCOMB_X35_Y10_N4
\STACK|M0|auto_generated|_~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~157_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S17|U1|dffs\(1)))) # (!\addr~combout\(0) & (\STACK|S16|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S16|U1|dffs\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S17|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~157_combout\);

-- Location: LCCOMB_X35_Y10_N22
\STACK|M0|auto_generated|_~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~158_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~157_combout\ & (\STACK|S19|U1|dffs\(1))) # (!\STACK|M0|auto_generated|_~157_combout\ & ((\STACK|S18|U1|dffs\(1)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S19|U1|dffs\(1),
	datac => \STACK|M0|auto_generated|_~157_combout\,
	datad => \STACK|S18|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~158_combout\);

-- Location: LCCOMB_X35_Y10_N0
\STACK|M0|auto_generated|result_node[1]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~91_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\STACK|M0|auto_generated|_~156_combout\)) # (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~156_combout\,
	datab => \STACK|M0|auto_generated|_~158_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[1]~91_combout\);

-- Location: LCCOMB_X35_Y11_N2
\STACK|M0|auto_generated|result_node[1]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~92_combout\ = (!\STACK|M0|auto_generated|_~150_combout\ & (\addr~combout\(4) & ((\STACK|M0|auto_generated|result_node[1]~90_combout\) # (\STACK|M0|auto_generated|result_node[1]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~150_combout\,
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|result_node[1]~90_combout\,
	datad => \STACK|M0|auto_generated|result_node[1]~91_combout\,
	combout => \STACK|M0|auto_generated|result_node[1]~92_combout\);

-- Location: LCCOMB_X35_Y10_N26
\STACK|M0|auto_generated|result_node[1]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~77_combout\ = (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S14|U1|dffs\(1)))) # (!\addr~combout\(1) & (\STACK|S12|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \addr~combout\(0),
	datac => \STACK|S12|U1|dffs\(1),
	datad => \STACK|S14|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|result_node[1]~77_combout\);

-- Location: LCCOMB_X39_Y7_N10
\STACK|M0|auto_generated|result_node[1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~76_combout\ = (\addr~combout\(0) & ((\addr~combout\(1) & (\STACK|S15|U1|dffs\(1))) # (!\addr~combout\(1) & ((\STACK|S13|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S15|U1|dffs\(1),
	datab => \STACK|S13|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|result_node[1]~76_combout\);

-- Location: LCCOMB_X39_Y7_N0
\STACK|M0|auto_generated|result_node[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~78_combout\ = (\addr~combout\(2) & ((\STACK|M0|auto_generated|result_node[1]~77_combout\) # (\STACK|M0|auto_generated|result_node[1]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datac => \STACK|M0|auto_generated|result_node[1]~77_combout\,
	datad => \STACK|M0|auto_generated|result_node[1]~76_combout\,
	combout => \STACK|M0|auto_generated|result_node[1]~78_combout\);

-- Location: LCCOMB_X43_Y9_N24
\STACK|S0|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S0|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\STACK|S1|U1|dffs\(1) & (!\mode~combout\(0) & \mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S1|U1|dffs\(1),
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S0|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCFF_X43_Y9_N25
\STACK|S0|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S0|U0|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S0|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N6
\STACK|S1|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S0|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S2|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S0|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S2|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S0|U1|dffs\(1),
	combout => \STACK|S1|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X46_Y9_N18
\STACK|S1|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U1|dffs[1]~feeder_combout\ = \STACK|S1|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S1|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S1|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X46_Y9_N19
\STACK|S1|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S1|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S1|U1|dffs\(1));

-- Location: LCCOMB_X44_Y9_N14
\STACK|S2|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S1|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S3|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S1|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S1|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S3|U1|dffs\(1),
	combout => \STACK|S2|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X45_Y9_N8
\STACK|S2|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U1|dffs[1]~feeder_combout\ = \STACK|S2|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S2|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S2|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X45_Y9_N9
\STACK|S2|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S2|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S2|U1|dffs\(1));

-- Location: LCCOMB_X44_Y9_N16
\STACK|S5|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S4|U1|dffs\(1)))) # (!\mode~combout\(0) & (\STACK|S6|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\STACK|S4|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S6|U1|dffs\(1),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S4|U1|dffs\(1),
	combout => \STACK|S5|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X38_Y9_N8
\STACK|S5|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U1|dffs[1]~feeder_combout\ = \STACK|S5|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S5|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S5|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X38_Y9_N9
\STACK|S5|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S5|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S5|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N18
\STACK|S4|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S3|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S5|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S3|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S3|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S5|U1|dffs\(1),
	combout => \STACK|S4|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X44_Y9_N10
\STACK|S4|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U1|dffs[1]~feeder_combout\ = \STACK|S4|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S4|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S4|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X44_Y9_N11
\STACK|S4|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S4|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S4|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N0
\STACK|S3|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S2|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S4|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S2|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S2|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S4|U1|dffs\(1),
	combout => \STACK|S3|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X38_Y10_N24
\STACK|S3|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U1|dffs[1]~feeder_combout\ = \STACK|S3|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S3|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S3|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X38_Y10_N25
\STACK|S3|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S3|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S3|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N22
\STACK|M0|auto_generated|_~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~154_combout\ = (\STACK|M0|auto_generated|_~153_combout\ & ((\STACK|S3|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~153_combout\ & (((\STACK|S2|U1|dffs\(1) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~153_combout\,
	datab => \STACK|S3|U1|dffs\(1),
	datac => \STACK|S2|U1|dffs\(1),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~154_combout\);

-- Location: LCCOMB_X37_Y9_N18
\STACK|S11|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S10|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S12|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S10|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S12|U1|dffs\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S10|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S11|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X37_Y9_N20
\STACK|S11|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U1|dffs[1]~feeder_combout\ = \STACK|S11|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S11|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S11|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X37_Y9_N21
\STACK|S11|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S11|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S11|U1|dffs\(1));

-- Location: LCCOMB_X39_Y10_N30
\STACK|S10|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S9|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S11|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S9|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \mode~combout\(1),
	datac => \STACK|S11|U1|dffs\(1),
	datad => \STACK|S9|U1|dffs\(1),
	combout => \STACK|S10|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X38_Y10_N18
\STACK|S10|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S10|U1|dffs[1]~feeder_combout\ = \STACK|S10|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S10|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S10|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X38_Y10_N19
\STACK|S10|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S10|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S10|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N14
\STACK|S9|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S8|U1|dffs\(1))) # (!\mode~combout\(0) & ((\STACK|S10|U1|dffs\(1)))))) # (!\mode~combout\(1) & (\STACK|S8|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S8|U1|dffs\(1),
	datab => \STACK|S10|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S9|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X37_Y9_N30
\STACK|S9|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U1|dffs[1]~feeder_combout\ = \STACK|S9|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S9|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S9|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X37_Y9_N31
\STACK|S9|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S9|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S9|U1|dffs\(1));

-- Location: LCCOMB_X43_Y10_N6
\STACK|S8|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S7|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S9|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S7|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S7|U1|dffs\(1),
	datac => \STACK|S9|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S8|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y10_N10
\STACK|S8|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U1|dffs[1]~feeder_combout\ = \STACK|S8|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S8|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S8|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X42_Y10_N11
\STACK|S8|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S8|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S8|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N8
\STACK|S6|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (((\STACK|S5|U1|dffs\(1))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S7|U1|dffs\(1))) # (!\mode~combout\(1) & ((\STACK|S5|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S7|U1|dffs\(1),
	datac => \mode~combout\(1),
	datad => \STACK|S5|U1|dffs\(1),
	combout => \STACK|S6|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X44_Y9_N20
\STACK|S6|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U1|dffs[1]~feeder_combout\ = \STACK|S6|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S6|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S6|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X44_Y9_N21
\STACK|S6|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S6|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S6|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N28
\STACK|S7|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S6|U1|dffs\(1)))) # (!\mode~combout\(0) & (\STACK|S8|U1|dffs\(1))))) # (!\mode~combout\(1) & (((\STACK|S6|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S8|U1|dffs\(1),
	datad => \STACK|S6|U1|dffs\(1),
	combout => \STACK|S7|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y10_N4
\STACK|S7|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U1|dffs[1]~feeder_combout\ = \STACK|S7|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S7|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S7|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X42_Y10_N5
\STACK|S7|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S7|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S7|U1|dffs\(1));

-- Location: LCCOMB_X47_Y9_N26
\STACK|M0|auto_generated|_~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~152_combout\ = (\STACK|M0|auto_generated|_~151_combout\ & ((\STACK|S7|U1|dffs\(1)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~151_combout\ & (((\addr~combout\(1) & \STACK|S6|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~151_combout\,
	datab => \STACK|S7|U1|dffs\(1),
	datac => \addr~combout\(1),
	datad => \STACK|S6|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~152_combout\);

-- Location: LCCOMB_X44_Y7_N24
\STACK|M0|auto_generated|result_node[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~75_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~152_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|_~154_combout\,
	datac => \STACK|M0|auto_generated|_~152_combout\,
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[1]~75_combout\);

-- Location: LCCOMB_X39_Y7_N6
\STACK|M0|auto_generated|result_node[1]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~82_combout\ = (\STACK|M0|auto_generated|result_node[1]~75_combout\) # ((\addr~combout\(3) & ((\STACK|M0|auto_generated|result_node[1]~81_combout\) # (\STACK|M0|auto_generated|result_node[1]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[1]~81_combout\,
	datab => \STACK|M0|auto_generated|result_node[1]~78_combout\,
	datac => \STACK|M0|auto_generated|result_node[1]~75_combout\,
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[1]~82_combout\);

-- Location: LCCOMB_X42_Y11_N22
\STACK|S51|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S51|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\STACK|S50|U1|dffs\(1) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(1),
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S51|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCFF_X42_Y11_N23
\STACK|S51|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S51|U0|$00000|auto_generated|result_node[1]~5_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S51|U1|dffs\(1));

-- Location: LCCOMB_X43_Y7_N22
\STACK|S49|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S48|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S50|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S48|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S48|U1|dffs\(1),
	datab => \STACK|S50|U1|dffs\(1),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S49|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X40_Y11_N14
\STACK|S49|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U1|dffs[1]~feeder_combout\ = \STACK|S49|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S49|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S49|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X40_Y11_N15
\STACK|S49|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S49|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S49|U1|dffs\(1));

-- Location: LCCOMB_X43_Y11_N18
\STACK|S50|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\mode~combout\(0) & (\STACK|S49|U1|dffs\(1))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S51|U1|dffs\(1)))) # (!\mode~combout\(1) & (\STACK|S49|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S49|U1|dffs\(1),
	datac => \STACK|S51|U1|dffs\(1),
	datad => \mode~combout\(1),
	combout => \STACK|S50|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X42_Y11_N4
\STACK|S50|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U1|dffs[1]~feeder_combout\ = \STACK|S50|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S50|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \STACK|S50|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X42_Y11_N24
\STACK|enableArray[50]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|enableArray[50]~16_combout\ = (\DEB|output~combout\ & ((\mode~combout\(0)) # ((\mode~combout\(1) & \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \STACK|E0|crc_table|altsyncram_component|auto_generated|q_a\(50),
	combout => \STACK|enableArray[50]~16_combout\);

-- Location: LCFF_X42_Y11_N5
\STACK|S50|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S50|U1|dffs[1]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S50|U1|dffs\(1));

-- Location: LCCOMB_X43_Y7_N8
\STACK|M0|auto_generated|_~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~136_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S49|U1|dffs\(1)))) # (!\addr~combout\(0) & (\STACK|S48|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S48|U1|dffs\(1),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S49|U1|dffs\(1),
	combout => \STACK|M0|auto_generated|_~136_combout\);

-- Location: LCCOMB_X42_Y11_N26
\STACK|M0|auto_generated|_~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~137_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~136_combout\ & (\STACK|S51|U1|dffs\(1))) # (!\STACK|M0|auto_generated|_~136_combout\ & ((\STACK|S50|U1|dffs\(1)))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S51|U1|dffs\(1),
	datac => \STACK|S50|U1|dffs\(1),
	datad => \STACK|M0|auto_generated|_~136_combout\,
	combout => \STACK|M0|auto_generated|_~137_combout\);

-- Location: LCCOMB_X37_Y11_N2
\STACK|M0|auto_generated|_~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~164_combout\ = ((!\addr~combout\(3) & (!\addr~combout\(2) & \STACK|M0|auto_generated|_~137_combout\))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(4),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~137_combout\,
	combout => \STACK|M0|auto_generated|_~164_combout\);

-- Location: LCCOMB_X35_Y11_N0
\STACK|M0|auto_generated|result_node[1]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[1]~83_combout\ = (\STACK|M0|auto_generated|_~150_combout\ & ((\STACK|M0|auto_generated|_~164_combout\) # ((\STACK|M0|auto_generated|result_node[4]~0_combout\ & \STACK|M0|auto_generated|result_node[1]~82_combout\)))) # 
-- (!\STACK|M0|auto_generated|_~150_combout\ & (\STACK|M0|auto_generated|result_node[4]~0_combout\ & (\STACK|M0|auto_generated|result_node[1]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~150_combout\,
	datab => \STACK|M0|auto_generated|result_node[4]~0_combout\,
	datac => \STACK|M0|auto_generated|result_node[1]~82_combout\,
	datad => \STACK|M0|auto_generated|_~164_combout\,
	combout => \STACK|M0|auto_generated|result_node[1]~83_combout\);

-- Location: LCCOMB_X35_Y11_N22
\STACK|M0|auto_generated|result_node[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node\(1) = (\STACK|M0|auto_generated|result_node[1]~92_combout\) # (\STACK|M0|auto_generated|result_node[1]~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|M0|auto_generated|result_node[1]~92_combout\,
	datad => \STACK|M0|auto_generated|result_node[1]~83_combout\,
	combout => \STACK|M0|auto_generated|result_node\(1));

-- Location: LCCOMB_X40_Y11_N16
\STACK|S49|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U1|dffs[0]~feeder_combout\ = \STACK|S49|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S49|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S49|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y11_N17
\STACK|S49|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S49|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S49|U1|dffs\(0));

-- Location: LCCOMB_X42_Y11_N6
\STACK|S51|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S51|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\STACK|S50|U1|dffs\(0) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S50|U1|dffs\(0),
	datab => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S51|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X42_Y11_N7
\STACK|S51|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S51|U0|$00000|auto_generated|result_node[0]~1_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S51|U1|dffs\(0));

-- Location: LCCOMB_X43_Y11_N12
\STACK|S50|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S49|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S51|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S49|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S49|U1|dffs\(0),
	datac => \STACK|S51|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S50|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y11_N16
\STACK|S50|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U1|dffs[0]~feeder_combout\ = \STACK|S50|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S50|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S50|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X42_Y11_N17
\STACK|S50|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S50|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S50|U1|dffs\(0));

-- Location: LCCOMB_X42_Y7_N6
\STACK|S48|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U1|dffs[0]~feeder_combout\ = \STACK|S48|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S48|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S48|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X42_Y7_N7
\STACK|S48|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S48|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S48|U1|dffs\(0));

-- Location: LCCOMB_X43_Y11_N6
\STACK|M0|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~44_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S49|U1|dffs\(0))) # (!\addr~combout\(0) & ((\STACK|S48|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S49|U1|dffs\(0),
	datac => \STACK|S48|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~44_combout\);

-- Location: LCCOMB_X43_Y11_N28
\STACK|M0|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~45_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~44_combout\ & ((\STACK|S51|U1|dffs\(0)))) # (!\STACK|M0|auto_generated|_~44_combout\ & (\STACK|S50|U1|dffs\(0))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S50|U1|dffs\(0),
	datac => \STACK|S51|U1|dffs\(0),
	datad => \STACK|M0|auto_generated|_~44_combout\,
	combout => \STACK|M0|auto_generated|_~45_combout\);

-- Location: LCCOMB_X36_Y7_N18
\STACK|M0|auto_generated|_~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~160_combout\ = ((!\addr~combout\(2) & (!\addr~combout\(3) & \STACK|M0|auto_generated|_~45_combout\))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \addr~combout\(4),
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|_~45_combout\,
	combout => \STACK|M0|auto_generated|_~160_combout\);

-- Location: LCCOMB_X43_Y9_N14
\STACK|S0|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S0|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & (\STACK|S1|U1|dffs\(0) & !\mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S1|U1|dffs\(0),
	datad => \mode~combout\(0),
	combout => \STACK|S0|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCFF_X43_Y9_N15
\STACK|S0|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S0|U0|$00000|auto_generated|result_node[0]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S0|U1|dffs\(0));

-- Location: LCCOMB_X47_Y9_N30
\STACK|S1|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S0|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S2|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S0|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S0|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S2|U1|dffs\(0),
	combout => \STACK|S1|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X46_Y9_N30
\STACK|S1|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S1|U1|dffs[0]~feeder_combout\ = \STACK|S1|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S1|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S1|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X46_Y9_N31
\STACK|S1|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S1|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S1|U1|dffs\(0));

-- Location: LCCOMB_X45_Y9_N6
\STACK|S2|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S1|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S3|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S1|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S1|U1|dffs\(0),
	datac => \STACK|S3|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S2|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X45_Y9_N18
\STACK|S2|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S2|U1|dffs[0]~feeder_combout\ = \STACK|S2|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S2|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S2|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X45_Y9_N19
\STACK|S2|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S2|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S2|U1|dffs\(0));

-- Location: LCCOMB_X48_Y9_N10
\STACK|S3|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S2|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S4|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S2|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S4|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \STACK|S2|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S3|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y10_N16
\STACK|S3|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U1|dffs[0]~feeder_combout\ = \STACK|S3|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S3|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S3|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X38_Y10_N17
\STACK|S3|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S3|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S3|U1|dffs\(0));

-- Location: LCCOMB_X43_Y9_N20
\STACK|M0|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~42_combout\ = (\addr~combout\(0) & (((\addr~combout\(1))))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S2|U1|dffs\(0)))) # (!\addr~combout\(1) & (\STACK|S0|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S0|U1|dffs\(0),
	datac => \addr~combout\(1),
	datad => \STACK|S2|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~42_combout\);

-- Location: LCCOMB_X43_Y9_N10
\STACK|M0|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~43_combout\ = (\addr~combout\(0) & ((\STACK|M0|auto_generated|_~42_combout\ & (\STACK|S3|U1|dffs\(0))) # (!\STACK|M0|auto_generated|_~42_combout\ & ((\STACK|S1|U1|dffs\(0)))))) # (!\addr~combout\(0) & 
-- (((\STACK|M0|auto_generated|_~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S3|U1|dffs\(0),
	datac => \STACK|M0|auto_generated|_~42_combout\,
	datad => \STACK|S1|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~43_combout\);

-- Location: LCCOMB_X44_Y7_N22
\STACK|M0|auto_generated|result_node[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~13_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\STACK|M0|auto_generated|_~41_combout\)) # (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~41_combout\,
	datab => \STACK|M0|auto_generated|_~43_combout\,
	datac => \addr~combout\(2),
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X36_Y11_N12
\STACK|M0|auto_generated|result_node[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~20_combout\ = (\STACK|M0|auto_generated|result_node[4]~0_combout\ & ((\STACK|M0|auto_generated|result_node[0]~13_combout\) # ((\STACK|M0|auto_generated|result_node[0]~19_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[0]~19_combout\,
	datab => \STACK|M0|auto_generated|result_node[4]~0_combout\,
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|result_node[0]~13_combout\,
	combout => \STACK|M0|auto_generated|result_node[0]~20_combout\);

-- Location: LCCOMB_X38_Y7_N0
\STACK|S38|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S37|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S39|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S37|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \STACK|S39|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S38|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y8_N16
\STACK|S38|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U1|dffs[0]~feeder_combout\ = \STACK|S38|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S38|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S38|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X38_Y8_N17
\STACK|S38|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S38|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[38]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S38|U1|dffs\(0));

-- Location: LCCOMB_X43_Y7_N20
\STACK|S42|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S41|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S43|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S41|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S43|U1|dffs\(0),
	datab => \STACK|S41|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S42|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X44_Y8_N30
\STACK|S42|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U1|dffs[0]~feeder_combout\ = \STACK|S42|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S42|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S42|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X44_Y8_N31
\STACK|S42|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S42|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[42]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S42|U1|dffs\(0));

-- Location: LCCOMB_X43_Y8_N10
\STACK|S41|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S40|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S42|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S40|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S42|U1|dffs\(0),
	datac => \STACK|S40|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S41|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X43_Y7_N10
\STACK|S41|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S41|U1|dffs[0]~feeder_combout\ = \STACK|S41|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S41|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S41|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X43_Y7_N11
\STACK|S41|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S41|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[41]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S41|U1|dffs\(0));

-- Location: LCCOMB_X37_Y11_N0
\STACK|S40|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S39|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S41|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S39|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S39|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S41|U1|dffs\(0),
	combout => \STACK|S40|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X39_Y12_N26
\STACK|S40|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U1|dffs[0]~feeder_combout\ = \STACK|S40|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S40|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S40|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X39_Y12_N27
\STACK|S40|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S40|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[40]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S40|U1|dffs\(0));

-- Location: LCCOMB_X38_Y8_N0
\STACK|S39|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S38|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S40|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\STACK|S38|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S38|U1|dffs\(0),
	datad => \STACK|S40|U1|dffs\(0),
	combout => \STACK|S39|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X38_Y8_N30
\STACK|S39|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U1|dffs[0]~feeder_combout\ = \STACK|S39|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S39|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S39|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X38_Y8_N31
\STACK|S39|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S39|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[39]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S39|U1|dffs\(0));

-- Location: LCCOMB_X38_Y7_N28
\STACK|M0|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~51_combout\ = (\STACK|M0|auto_generated|_~50_combout\ & ((\STACK|S39|U1|dffs\(0)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~50_combout\ & (((\STACK|S38|U1|dffs\(0) & \addr~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~50_combout\,
	datab => \STACK|S39|U1|dffs\(0),
	datac => \STACK|S38|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~51_combout\);

-- Location: LCCOMB_X36_Y7_N8
\STACK|M0|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~52_combout\ = (\addr~combout\(5) & (!\addr~combout\(3) & (\addr~combout\(2) & \STACK|M0|auto_generated|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~51_combout\,
	combout => \STACK|M0|auto_generated|_~52_combout\);

-- Location: LCCOMB_X43_Y12_N24
\STACK|S47|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S46|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S48|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S46|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S46|U1|dffs\(0),
	datac => \STACK|S48|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S47|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y12_N18
\STACK|S47|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U1|dffs[0]~feeder_combout\ = \STACK|S47|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S47|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S47|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y12_N19
\STACK|S47|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S47|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[47]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S47|U1|dffs\(0));

-- Location: LCCOMB_X43_Y8_N0
\STACK|S46|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S45|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S47|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S45|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S45|U1|dffs\(0),
	datac => \STACK|S47|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S46|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y9_N18
\STACK|S46|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U1|dffs[0]~feeder_combout\ = \STACK|S46|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S46|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S46|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X42_Y9_N19
\STACK|S46|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S46|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[46]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S46|U1|dffs\(0));

-- Location: LCCOMB_X43_Y8_N28
\STACK|S45|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S44|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S46|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S44|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S44|U1|dffs\(0),
	datac => \STACK|S46|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S45|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y11_N26
\STACK|S45|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U1|dffs[0]~feeder_combout\ = \STACK|S45|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S45|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S45|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y11_N27
\STACK|S45|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S45|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[45]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S45|U1|dffs\(0));

-- Location: LCCOMB_X43_Y8_N2
\STACK|S44|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S43|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S45|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S43|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S45|U1|dffs\(0),
	datac => \STACK|S43|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S44|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y10_N12
\STACK|S44|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U1|dffs[0]~feeder_combout\ = \STACK|S44|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S44|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S44|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y10_N13
\STACK|S44|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S44|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[44]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S44|U1|dffs\(0));

-- Location: LCCOMB_X43_Y8_N8
\STACK|S43|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S42|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S44|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S42|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S42|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \STACK|S44|U1|dffs\(0),
	combout => \STACK|S43|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y7_N20
\STACK|S43|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U1|dffs[0]~feeder_combout\ = \STACK|S43|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S43|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S43|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X42_Y7_N21
\STACK|S43|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S43|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[43]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S43|U1|dffs\(0));

-- Location: LCCOMB_X43_Y8_N4
\STACK|M0|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~60_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S43|U1|dffs\(0)))) # (!\addr~combout\(0) & (\STACK|S42|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S42|U1|dffs\(0),
	datac => \STACK|S43|U1|dffs\(0),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~60_combout\);

-- Location: LCCOMB_X43_Y8_N30
\STACK|M0|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~59_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S41|U1|dffs\(0))) # (!\addr~combout\(0) & ((\STACK|S40|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S41|U1|dffs\(0),
	datac => \STACK|S40|U1|dffs\(0),
	datad => \addr~combout\(1),
	combout => \STACK|M0|auto_generated|_~59_combout\);

-- Location: LCCOMB_X43_Y8_N22
\STACK|M0|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~61_combout\ = (\addr~combout\(2) & (\STACK|M0|auto_generated|_~58_combout\)) # (!\addr~combout\(2) & (((\STACK|M0|auto_generated|_~60_combout\) # (\STACK|M0|auto_generated|_~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~58_combout\,
	datab => \STACK|M0|auto_generated|_~60_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~59_combout\,
	combout => \STACK|M0|auto_generated|_~61_combout\);

-- Location: LCCOMB_X35_Y7_N16
\STACK|M0|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~16_combout\ = (!\addr~combout\(3) & !\addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(3),
	datad => \addr~combout\(2),
	combout => \STACK|M0|auto_generated|_~16_combout\);

-- Location: LCCOMB_X38_Y9_N26
\STACK|S25|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S24|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S26|U1|dffs\(0)))))) # (!\mode~combout\(1) & (\STACK|S24|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S24|U1|dffs\(0),
	datab => \STACK|S26|U1|dffs\(0),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S25|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y9_N20
\STACK|S25|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S25|U1|dffs[0]~feeder_combout\ = \STACK|S25|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S25|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S25|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y9_N21
\STACK|S25|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S25|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[25]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S25|U1|dffs\(0));

-- Location: LCCOMB_X38_Y7_N26
\STACK|S26|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S25|U1|dffs\(0)))) # (!\mode~combout\(0) & (\STACK|S27|U1|dffs\(0))))) # (!\mode~combout\(1) & (((\STACK|S25|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S27|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \STACK|S25|U1|dffs\(0),
	combout => \STACK|S26|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y7_N14
\STACK|S26|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S26|U1|dffs[0]~feeder_combout\ = \STACK|S26|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S26|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S26|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y7_N15
\STACK|S26|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S26|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[26]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S26|U1|dffs\(0));

-- Location: LCCOMB_X36_Y8_N0
\STACK|S27|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S26|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S28|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S26|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S28|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S26|U1|dffs\(0),
	combout => \STACK|S27|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y9_N6
\STACK|S27|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S27|U1|dffs[0]~feeder_combout\ = \STACK|S27|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S27|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S27|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y9_N7
\STACK|S27|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S27|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S27|U1|dffs\(0));

-- Location: LCCOMB_X38_Y7_N22
\STACK|S28|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S27|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S29|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S27|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S29|U1|dffs\(0),
	datab => \STACK|S27|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S28|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y6_N24
\STACK|S28|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S28|U1|dffs[0]~feeder_combout\ = \STACK|S28|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S28|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S28|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X42_Y6_N25
\STACK|S28|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S28|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[28]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S28|U1|dffs\(0));

-- Location: LCCOMB_X36_Y8_N2
\STACK|S29|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S28|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S30|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\STACK|S28|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S28|U1|dffs\(0),
	datad => \STACK|S30|U1|dffs\(0),
	combout => \STACK|S29|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X37_Y10_N22
\STACK|S29|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S29|U1|dffs[0]~feeder_combout\ = \STACK|S29|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S29|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S29|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X37_Y10_N23
\STACK|S29|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S29|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[29]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S29|U1|dffs\(0));

-- Location: LCCOMB_X38_Y7_N8
\STACK|S30|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S29|U1|dffs\(0))) # (!\mode~combout\(0) & ((\STACK|S31|U1|dffs\(0)))))) # (!\mode~combout\(1) & (((\STACK|S29|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S29|U1|dffs\(0),
	datad => \STACK|S31|U1|dffs\(0),
	combout => \STACK|S30|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X42_Y6_N14
\STACK|S30|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S30|U1|dffs[0]~feeder_combout\ = \STACK|S30|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S30|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S30|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X42_Y6_N15
\STACK|S30|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S30|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[30]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S30|U1|dffs\(0));

-- Location: LCCOMB_X40_Y6_N30
\STACK|S31|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S30|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S32|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S30|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S32|U1|dffs\(0),
	datab => \STACK|S30|U1|dffs\(0),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S31|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X40_Y6_N14
\STACK|S31|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S31|U1|dffs[0]~feeder_combout\ = \STACK|S31|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S31|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S31|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y6_N15
\STACK|S31|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S31|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[31]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S31|U1|dffs\(0));

-- Location: LCCOMB_X40_Y8_N26
\STACK|S33|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S33|U1|dffs[0]~feeder_combout\ = \STACK|S33|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S33|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S33|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X40_Y8_N27
\STACK|S33|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S33|U1|dffs[0]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[33]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S33|U1|dffs\(0));

-- Location: LCCOMB_X37_Y8_N8
\STACK|S32|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (\STACK|S31|U1|dffs\(0))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S33|U1|dffs\(0)))) # (!\mode~combout\(1) & (\STACK|S31|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S31|U1|dffs\(0),
	datac => \STACK|S33|U1|dffs\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S32|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X37_Y8_N16
\STACK|S32|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S32|U1|dffs[0]~feeder_combout\ = \STACK|S32|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S32|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S32|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X37_Y8_N17
\STACK|S32|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S32|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[32]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S32|U1|dffs\(0));

-- Location: LCCOMB_X36_Y8_N4
\STACK|S34|U0|$00000|auto_generated|result_node[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U0|$00000|auto_generated|result_node[0]~1_combout\ = (\mode~combout\(0) & (((\STACK|S33|U1|dffs\(0))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S35|U1|dffs\(0))) # (!\mode~combout\(1) & ((\STACK|S33|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S35|U1|dffs\(0),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S33|U1|dffs\(0),
	combout => \STACK|S34|U0|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X37_Y8_N18
\STACK|S34|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U1|dffs[0]~feeder_combout\ = \STACK|S34|U0|$00000|auto_generated|result_node[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S34|U0|$00000|auto_generated|result_node[0]~1_combout\,
	combout => \STACK|S34|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X37_Y8_N19
\STACK|S34|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S34|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[34]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S34|U1|dffs\(0));

-- Location: LCCOMB_X36_Y8_N20
\STACK|M0|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~53_combout\ = (\addr~combout\(0) & (\addr~combout\(1))) # (!\addr~combout\(0) & ((\addr~combout\(1) & ((\STACK|S34|U1|dffs\(0)))) # (!\addr~combout\(1) & (\STACK|S32|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \addr~combout\(1),
	datac => \STACK|S32|U1|dffs\(0),
	datad => \STACK|S34|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~53_combout\);

-- Location: LCCOMB_X37_Y7_N12
\STACK|M0|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~54_combout\ = (\STACK|M0|auto_generated|_~53_combout\ & ((\STACK|S35|U1|dffs\(0)) # ((!\addr~combout\(0))))) # (!\STACK|M0|auto_generated|_~53_combout\ & (((\addr~combout\(0) & \STACK|S33|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S35|U1|dffs\(0),
	datab => \STACK|M0|auto_generated|_~53_combout\,
	datac => \addr~combout\(0),
	datad => \STACK|S33|U1|dffs\(0),
	combout => \STACK|M0|auto_generated|_~54_combout\);

-- Location: LCCOMB_X36_Y7_N10
\STACK|M0|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~55_combout\ = (\addr~combout\(5) & ((\addr~combout\(4)) # ((\STACK|M0|auto_generated|_~16_combout\ & \STACK|M0|auto_generated|_~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \STACK|M0|auto_generated|_~16_combout\,
	datac => \STACK|M0|auto_generated|_~54_combout\,
	datad => \addr~combout\(4),
	combout => \STACK|M0|auto_generated|_~55_combout\);

-- Location: LCCOMB_X36_Y7_N6
\STACK|M0|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~62_combout\ = (\STACK|M0|auto_generated|_~52_combout\) # ((\STACK|M0|auto_generated|_~55_combout\) # ((\STACK|M0|auto_generated|_~56_combout\ & \STACK|M0|auto_generated|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~56_combout\,
	datab => \STACK|M0|auto_generated|_~52_combout\,
	datac => \STACK|M0|auto_generated|_~61_combout\,
	datad => \STACK|M0|auto_generated|_~55_combout\,
	combout => \STACK|M0|auto_generated|_~62_combout\);

-- Location: LCCOMB_X36_Y7_N24
\STACK|M0|auto_generated|result_node[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[0]~29_combout\ = (\STACK|M0|auto_generated|result_node[0]~20_combout\) # ((\STACK|M0|auto_generated|_~62_combout\ & ((\STACK|M0|auto_generated|_~160_combout\))) # (!\STACK|M0|auto_generated|_~62_combout\ & 
-- (\STACK|M0|auto_generated|result_node[0]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[0]~28_combout\,
	datab => \STACK|M0|auto_generated|_~160_combout\,
	datac => \STACK|M0|auto_generated|result_node[0]~20_combout\,
	datad => \STACK|M0|auto_generated|_~62_combout\,
	combout => \STACK|M0|auto_generated|result_node[0]~29_combout\);

-- Location: LCCOMB_X27_Y19_N20
\MOD13|A5|b2v_inst1|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst1|S~combout\ = \MOD13|A1|b2v_inst7|S~combout\ $ (\STACK|M0|auto_generated|result_node\(1) $ (((\MOD13|A1|b2v_inst6|S~combout\ & !\STACK|M0|auto_generated|result_node[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A1|b2v_inst7|S~combout\,
	datab => \MOD13|A1|b2v_inst6|S~combout\,
	datac => \STACK|M0|auto_generated|result_node\(1),
	datad => \STACK|M0|auto_generated|result_node[0]~29_combout\,
	combout => \MOD13|A5|b2v_inst1|S~combout\);

-- Location: LCCOMB_X27_Y19_N26
\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ = \MOD13|A1|b2v_inst5|Cout~1_combout\ $ (\STACK|M0|auto_generated|result_node[4]~12_combout\ $ (\STACK|M0|auto_generated|result_node[0]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[0]~29_combout\,
	combout => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\);

-- Location: LCCOMB_X27_Y19_N18
\MOD13|A4|b2v_inst2|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A4|b2v_inst2|S~0_combout\ = (\MOD13|A1|b2v_inst5|Cout~1_combout\ & (!\STACK|M0|auto_generated|result_node[4]~12_combout\)) # (!\MOD13|A1|b2v_inst5|Cout~1_combout\ & ((\STACK|M0|auto_generated|result_node[4]~12_combout\) # 
-- (!\STACK|M0|auto_generated|result_node[5]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \MOD13|A4|b2v_inst2|S~0_combout\);

-- Location: LCCOMB_X39_Y12_N6
\STACK|S40|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S39|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S41|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S39|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S41|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S39|U1|dffs\(2),
	combout => \STACK|S40|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X39_Y12_N0
\STACK|S40|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S40|U1|dffs[2]~feeder_combout\ = \STACK|S40|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S40|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S40|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X39_Y12_N1
\STACK|S40|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S40|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[40]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S40|U1|dffs\(2));

-- Location: LCCOMB_X38_Y12_N26
\STACK|S39|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S38|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S40|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S38|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S38|U1|dffs\(2),
	datab => \STACK|S40|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S39|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y8_N26
\STACK|S39|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S39|U1|dffs[2]~feeder_combout\ = \STACK|S39|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S39|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S39|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X38_Y8_N27
\STACK|S39|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S39|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[39]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S39|U1|dffs\(2));

-- Location: LCCOMB_X37_Y7_N20
\STACK|S38|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S37|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S39|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S37|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S37|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S39|U1|dffs\(2),
	combout => \STACK|S38|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y8_N8
\STACK|S38|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S38|U1|dffs[2]~feeder_combout\ = \STACK|S38|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S38|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S38|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X38_Y8_N9
\STACK|S38|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S38|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[38]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S38|U1|dffs\(2));

-- Location: LCCOMB_X36_Y8_N24
\STACK|S34|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S33|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S35|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S33|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S33|U1|dffs\(2),
	datab => \mode~combout\(0),
	datac => \mode~combout\(1),
	datad => \STACK|S35|U1|dffs\(2),
	combout => \STACK|S34|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y8_N14
\STACK|S34|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S34|U1|dffs[2]~feeder_combout\ = \STACK|S34|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S34|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S34|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X37_Y8_N15
\STACK|S34|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S34|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[34]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S34|U1|dffs\(2));

-- Location: LCCOMB_X37_Y7_N10
\STACK|S35|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S34|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S36|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S34|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S34|U1|dffs\(2),
	datac => \STACK|S36|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S35|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X36_Y8_N16
\STACK|S35|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S35|U1|dffs[2]~feeder_combout\ = \STACK|S35|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S35|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S35|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X36_Y8_N17
\STACK|S35|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S35|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[35]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S35|U1|dffs\(2));

-- Location: LCCOMB_X39_Y6_N2
\STACK|S36|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S35|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S37|U1|dffs\(2)))))) # (!\mode~combout\(1) & (((\STACK|S35|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datac => \STACK|S35|U1|dffs\(2),
	datad => \STACK|S37|U1|dffs\(2),
	combout => \STACK|S36|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y8_N16
\STACK|S36|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S36|U1|dffs[2]~feeder_combout\ = \STACK|S36|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S36|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S36|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y8_N17
\STACK|S36|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S36|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[36]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S36|U1|dffs\(2));

-- Location: LCCOMB_X37_Y7_N2
\STACK|S37|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S36|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S38|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S36|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S38|U1|dffs\(2),
	datac => \STACK|S36|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S37|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y8_N14
\STACK|S37|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S37|U1|dffs[2]~feeder_combout\ = \STACK|S37|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S37|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S37|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y8_N15
\STACK|S37|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S37|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[37]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S37|U1|dffs\(2));

-- Location: LCCOMB_X37_Y7_N26
\STACK|M0|auto_generated|_~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~120_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & ((\STACK|S37|U1|dffs\(2)))) # (!\addr~combout\(0) & (\STACK|S36|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S36|U1|dffs\(2),
	datab => \addr~combout\(1),
	datac => \STACK|S37|U1|dffs\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~120_combout\);

-- Location: LCCOMB_X37_Y7_N24
\STACK|M0|auto_generated|_~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~121_combout\ = (\STACK|M0|auto_generated|_~120_combout\ & ((\STACK|S39|U1|dffs\(2)) # ((!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~120_combout\ & (((\addr~combout\(1) & \STACK|S38|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S39|U1|dffs\(2),
	datab => \STACK|M0|auto_generated|_~120_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S38|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~121_combout\);

-- Location: LCCOMB_X36_Y7_N22
\STACK|M0|auto_generated|_~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~122_combout\ = (\addr~combout\(5) & (!\addr~combout\(3) & (\addr~combout\(2) & \STACK|M0|auto_generated|_~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(5),
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~121_combout\,
	combout => \STACK|M0|auto_generated|_~122_combout\);

-- Location: LCCOMB_X36_Y7_N20
\STACK|M0|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~56_combout\ = (\addr~combout\(3) & \addr~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr~combout\(3),
	datac => \addr~combout\(5),
	combout => \STACK|M0|auto_generated|_~56_combout\);

-- Location: LCCOMB_X42_Y12_N22
\STACK|S46|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S45|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S47|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S45|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S45|U1|dffs\(2),
	datab => \STACK|S47|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S46|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y9_N24
\STACK|S46|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S46|U1|dffs[2]~feeder_combout\ = \STACK|S46|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S46|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S46|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y9_N25
\STACK|S46|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S46|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[46]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S46|U1|dffs\(2));

-- Location: LCCOMB_X42_Y11_N30
\STACK|S51|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S51|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\STACK|S50|U1|dffs\(2) & ((\mode~combout\(0)) # (!\mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \mode~combout\(0),
	datad => \STACK|S50|U1|dffs\(2),
	combout => \STACK|S51|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCFF_X42_Y11_N31
\STACK|S51|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S51|U0|$00000|auto_generated|result_node[2]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[51]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S51|U1|dffs\(2));

-- Location: LCCOMB_X43_Y11_N8
\STACK|S50|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S49|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S51|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S49|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S49|U1|dffs\(2),
	datac => \STACK|S51|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S50|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y11_N8
\STACK|S50|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S50|U1|dffs[2]~feeder_combout\ = \STACK|S50|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S50|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S50|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y11_N9
\STACK|S50|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S50|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[50]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S50|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N30
\STACK|S49|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S48|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S50|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S48|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S50|U1|dffs\(2),
	datac => \STACK|S48|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S49|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y11_N22
\STACK|S49|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S49|U1|dffs[2]~feeder_combout\ = \STACK|S49|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S49|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S49|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y11_N23
\STACK|S49|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S49|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[49]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S49|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N20
\STACK|S48|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S47|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S49|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S47|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S47|U1|dffs\(2),
	datac => \STACK|S49|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S48|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y7_N18
\STACK|S48|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S48|U1|dffs[2]~feeder_combout\ = \STACK|S48|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S48|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S48|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y7_N19
\STACK|S48|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S48|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[48]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S48|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N10
\STACK|S47|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S46|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S48|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S46|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S46|U1|dffs\(2),
	datac => \STACK|S48|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S47|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y12_N4
\STACK|S47|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S47|U1|dffs[2]~feeder_combout\ = \STACK|S47|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S47|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S47|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y12_N5
\STACK|S47|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S47|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[47]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S47|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N4
\STACK|M0|auto_generated|_~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~129_combout\ = (\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S47|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S46|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(0),
	datab => \STACK|S47|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \STACK|S46|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~129_combout\);

-- Location: LCCOMB_X43_Y12_N14
\STACK|S42|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S41|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S43|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S41|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S41|U1|dffs\(2),
	datab => \STACK|S43|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S42|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X44_Y8_N4
\STACK|S42|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S42|U1|dffs[2]~feeder_combout\ = \STACK|S42|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S42|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S42|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X44_Y8_N5
\STACK|S42|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S42|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[42]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S42|U1|dffs\(2));

-- Location: LCCOMB_X44_Y8_N0
\STACK|S43|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S42|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S44|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S42|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S44|U1|dffs\(2),
	datac => \STACK|S42|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S43|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y7_N24
\STACK|S43|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S43|U1|dffs[2]~feeder_combout\ = \STACK|S43|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S43|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S43|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y7_N25
\STACK|S43|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S43|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[43]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S43|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N28
\STACK|S44|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S43|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S45|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S43|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S43|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S45|U1|dffs\(2),
	combout => \STACK|S44|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y10_N4
\STACK|S44|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S44|U1|dffs[2]~feeder_combout\ = \STACK|S44|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S44|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S44|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y10_N5
\STACK|S44|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S44|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[44]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S44|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N26
\STACK|S45|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S44|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S46|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S44|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S46|U1|dffs\(2),
	datac => \STACK|S44|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S45|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y11_N0
\STACK|S45|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S45|U1|dffs[2]~feeder_combout\ = \STACK|S45|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S45|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S45|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y11_N1
\STACK|S45|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S45|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[45]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S45|U1|dffs\(2));

-- Location: LCCOMB_X43_Y12_N18
\STACK|M0|auto_generated|_~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~128_combout\ = (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S45|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S44|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(1),
	datab => \STACK|S45|U1|dffs\(2),
	datac => \STACK|S44|U1|dffs\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~128_combout\);

-- Location: LCCOMB_X43_Y12_N22
\STACK|M0|auto_generated|_~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~130_combout\ = (\addr~combout\(2) & (((\STACK|M0|auto_generated|_~129_combout\) # (\STACK|M0|auto_generated|_~128_combout\)))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~127_combout\,
	datab => \STACK|M0|auto_generated|_~129_combout\,
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~128_combout\,
	combout => \STACK|M0|auto_generated|_~130_combout\);

-- Location: LCCOMB_X36_Y7_N30
\STACK|M0|auto_generated|_~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~131_combout\ = (\STACK|M0|auto_generated|_~125_combout\) # ((\STACK|M0|auto_generated|_~122_combout\) # ((\STACK|M0|auto_generated|_~56_combout\ & \STACK|M0|auto_generated|_~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~125_combout\,
	datab => \STACK|M0|auto_generated|_~122_combout\,
	datac => \STACK|M0|auto_generated|_~56_combout\,
	datad => \STACK|M0|auto_generated|_~130_combout\,
	combout => \STACK|M0|auto_generated|_~131_combout\);

-- Location: LCCOMB_X35_Y7_N18
\STACK|M0|auto_generated|_~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~163_combout\ = ((\STACK|M0|auto_generated|_~119_combout\ & (!\addr~combout\(2) & !\addr~combout\(3)))) # (!\addr~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~119_combout\,
	datab => \addr~combout\(2),
	datac => \addr~combout\(4),
	datad => \addr~combout\(3),
	combout => \STACK|M0|auto_generated|_~163_combout\);

-- Location: LCCOMB_X44_Y10_N2
\STACK|S3|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S2|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S4|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S2|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S2|U1|dffs\(2),
	datab => \STACK|S4|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S3|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y10_N4
\STACK|S3|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S3|U1|dffs[2]~feeder_combout\ = \STACK|S3|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S3|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S3|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X38_Y10_N5
\STACK|S3|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S3|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S3|U1|dffs\(2));

-- Location: LCCOMB_X44_Y10_N22
\STACK|S4|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S3|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S5|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S3|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S5|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S3|U1|dffs\(2),
	combout => \STACK|S4|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X44_Y9_N18
\STACK|S4|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S4|U1|dffs[2]~feeder_combout\ = \STACK|S4|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S4|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S4|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X44_Y9_N19
\STACK|S4|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S4|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S4|U1|dffs\(2));

-- Location: LCCOMB_X44_Y10_N20
\STACK|S5|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S4|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S6|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S4|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S4|U1|dffs\(2),
	datac => \STACK|S6|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S5|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X38_Y9_N6
\STACK|S5|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S5|U1|dffs[2]~feeder_combout\ = \STACK|S5|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S5|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S5|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X38_Y9_N7
\STACK|S5|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S5|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S5|U1|dffs\(2));

-- Location: LCCOMB_X38_Y9_N4
\STACK|S9|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S8|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S10|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S8|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S10|U1|dffs\(2),
	datab => \STACK|S8|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S9|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y9_N24
\STACK|S9|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S9|U1|dffs[2]~feeder_combout\ = \STACK|S9|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S9|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S9|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X37_Y9_N25
\STACK|S9|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S9|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S9|U1|dffs\(2));

-- Location: LCCOMB_X43_Y10_N12
\STACK|S8|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (\STACK|S7|U1|dffs\(2))) # (!\mode~combout\(0) & ((\mode~combout\(1) & ((\STACK|S9|U1|dffs\(2)))) # (!\mode~combout\(1) & (\STACK|S7|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S7|U1|dffs\(2),
	datac => \STACK|S9|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S8|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y10_N30
\STACK|S8|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S8|U1|dffs[2]~feeder_combout\ = \STACK|S8|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S8|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S8|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y10_N31
\STACK|S8|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S8|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S8|U1|dffs\(2));

-- Location: LCCOMB_X44_Y10_N8
\STACK|S7|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S6|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S8|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S6|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datab => \STACK|S8|U1|dffs\(2),
	datac => \STACK|S6|U1|dffs\(2),
	datad => \mode~combout\(1),
	combout => \STACK|S7|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y10_N24
\STACK|S7|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S7|U1|dffs[2]~feeder_combout\ = \STACK|S7|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S7|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S7|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y10_N25
\STACK|S7|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S7|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S7|U1|dffs\(2));

-- Location: LCCOMB_X44_Y10_N18
\STACK|S6|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S5|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S7|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S5|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S5|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S7|U1|dffs\(2),
	combout => \STACK|S6|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X45_Y9_N12
\STACK|S6|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S6|U1|dffs[2]~feeder_combout\ = \STACK|S6|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S6|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S6|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X45_Y9_N13
\STACK|S6|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S6|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S6|U1|dffs\(2));

-- Location: LCCOMB_X44_Y10_N28
\STACK|M0|auto_generated|_~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~115_combout\ = (\STACK|M0|auto_generated|_~114_combout\ & (((\STACK|S7|U1|dffs\(2))) # (!\addr~combout\(1)))) # (!\STACK|M0|auto_generated|_~114_combout\ & (\addr~combout\(1) & (\STACK|S6|U1|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~114_combout\,
	datab => \addr~combout\(1),
	datac => \STACK|S6|U1|dffs\(2),
	datad => \STACK|S7|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~115_combout\);

-- Location: LCCOMB_X44_Y10_N26
\STACK|M0|auto_generated|result_node[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~58_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & ((\STACK|M0|auto_generated|_~115_combout\))) # (!\addr~combout\(2) & (\STACK|M0|auto_generated|_~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~117_combout\,
	datab => \addr~combout\(3),
	datac => \addr~combout\(2),
	datad => \STACK|M0|auto_generated|_~115_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~58_combout\);

-- Location: LCCOMB_X37_Y11_N26
\STACK|M0|auto_generated|result_node[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~65_combout\ = (\STACK|M0|auto_generated|result_node[4]~0_combout\ & ((\STACK|M0|auto_generated|result_node[2]~58_combout\) # ((\STACK|M0|auto_generated|result_node[2]~64_combout\ & \addr~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[2]~64_combout\,
	datab => \STACK|M0|auto_generated|result_node[4]~0_combout\,
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|result_node[2]~58_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~65_combout\);

-- Location: LCCOMB_X23_Y7_N28
\STACK|M0|auto_generated|result_node[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~66_combout\ = (\STACK|M0|auto_generated|result_node[2]~65_combout\) # ((\STACK|M0|auto_generated|_~131_combout\ & \STACK|M0|auto_generated|_~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|M0|auto_generated|_~131_combout\,
	datac => \STACK|M0|auto_generated|_~163_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~65_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~66_combout\);

-- Location: LCCOMB_X42_Y9_N26
\STACK|S23|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S23|U1|dffs[2]~feeder_combout\ = \STACK|S23|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S23|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S23|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y9_N27
\STACK|S23|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S23|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S23|U1|dffs\(2));

-- Location: LCCOMB_X39_Y10_N0
\STACK|S18|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S18|U1|dffs[2]~feeder_combout\ = \STACK|S18|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S18|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S18|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X39_Y10_N1
\STACK|S18|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S18|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[18]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S18|U1|dffs\(2));

-- Location: LCCOMB_X38_Y6_N10
\STACK|S19|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S18|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S20|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S18|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S20|U1|dffs\(2),
	datac => \STACK|S18|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S19|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X35_Y9_N30
\STACK|S19|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S19|U1|dffs[2]~feeder_combout\ = \STACK|S19|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S19|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S19|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X35_Y9_N31
\STACK|S19|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S19|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[19]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S19|U1|dffs\(2));

-- Location: LCCOMB_X35_Y9_N18
\STACK|S22|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S21|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S23|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S21|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S23|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S21|U1|dffs\(2),
	combout => \STACK|S22|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X36_Y9_N18
\STACK|S22|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S22|U1|dffs[2]~feeder_combout\ = \STACK|S22|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S22|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S22|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X36_Y9_N19
\STACK|S22|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S22|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S22|U1|dffs\(2));

-- Location: LCCOMB_X38_Y6_N22
\STACK|S21|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S20|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S22|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S20|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S20|U1|dffs\(2),
	datac => \STACK|S22|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S21|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y6_N18
\STACK|S21|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S21|U1|dffs[2]~feeder_combout\ = \STACK|S21|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S21|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S21|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y6_N19
\STACK|S21|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S21|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S21|U1|dffs\(2));

-- Location: LCCOMB_X38_Y10_N10
\STACK|S20|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S19|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S21|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S19|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S19|U1|dffs\(2),
	datac => \STACK|S21|U1|dffs\(2),
	datad => \mode~combout\(0),
	combout => \STACK|S20|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y10_N6
\STACK|S20|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S20|U1|dffs[2]~feeder_combout\ = \STACK|S20|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S20|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S20|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y10_N7
\STACK|S20|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S20|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[20]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S20|U1|dffs\(2));

-- Location: LCCOMB_X40_Y10_N10
\STACK|M0|auto_generated|_~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~132_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S21|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S20|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S21|U1|dffs\(2),
	datab => \addr~combout\(1),
	datac => \addr~combout\(0),
	datad => \STACK|S20|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~132_combout\);

-- Location: LCCOMB_X40_Y10_N28
\STACK|M0|auto_generated|_~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~133_combout\ = (\addr~combout\(1) & ((\STACK|M0|auto_generated|_~132_combout\ & ((\STACK|S23|U1|dffs\(2)))) # (!\STACK|M0|auto_generated|_~132_combout\ & (\STACK|S22|U1|dffs\(2))))) # (!\addr~combout\(1) & 
-- (((\STACK|M0|auto_generated|_~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S22|U1|dffs\(2),
	datab => \STACK|S23|U1|dffs\(2),
	datac => \addr~combout\(1),
	datad => \STACK|M0|auto_generated|_~132_combout\,
	combout => \STACK|M0|auto_generated|_~133_combout\);

-- Location: LCCOMB_X37_Y7_N8
\STACK|S17|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S16|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S18|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S16|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S16|U1|dffs\(2),
	datab => \mode~combout\(1),
	datac => \mode~combout\(0),
	datad => \STACK|S18|U1|dffs\(2),
	combout => \STACK|S17|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X36_Y9_N20
\STACK|S17|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S17|U1|dffs[2]~feeder_combout\ = \STACK|S17|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S17|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S17|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X36_Y9_N21
\STACK|S17|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S17|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[17]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S17|U1|dffs\(2));

-- Location: LCCOMB_X38_Y9_N10
\STACK|S11|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S10|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S12|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S10|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S10|U1|dffs\(2),
	datab => \STACK|S12|U1|dffs\(2),
	datac => \mode~combout\(1),
	datad => \mode~combout\(0),
	combout => \STACK|S11|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y9_N10
\STACK|S11|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S11|U1|dffs[2]~feeder_combout\ = \STACK|S11|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|S11|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S11|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X37_Y9_N11
\STACK|S11|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S11|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S11|U1|dffs\(2));

-- Location: LCCOMB_X39_Y12_N18
\STACK|S12|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & (\STACK|S11|U1|dffs\(2))) # (!\mode~combout\(0) & ((\STACK|S13|U1|dffs\(2)))))) # (!\mode~combout\(1) & (\STACK|S11|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S11|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S13|U1|dffs\(2),
	combout => \STACK|S12|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X39_Y9_N20
\STACK|S12|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S12|U1|dffs[2]~feeder_combout\ = \STACK|S12|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S12|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S12|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X39_Y9_N21
\STACK|S12|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S12|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S12|U1|dffs\(2));

-- Location: LCCOMB_X39_Y12_N8
\STACK|S13|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S12|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S14|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S12|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S14|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S12|U1|dffs\(2),
	combout => \STACK|S13|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X43_Y12_N8
\STACK|S13|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S13|U1|dffs[2]~feeder_combout\ = \STACK|S13|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S13|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S13|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X43_Y12_N9
\STACK|S13|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S13|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S13|U1|dffs\(2));

-- Location: LCCOMB_X39_Y12_N20
\STACK|S14|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S13|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S15|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S13|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S15|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S13|U1|dffs\(2),
	combout => \STACK|S14|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X37_Y12_N12
\STACK|S14|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S14|U1|dffs[2]~feeder_combout\ = \STACK|S14|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S14|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S14|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X37_Y12_N13
\STACK|S14|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S14|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S14|U1|dffs\(2));

-- Location: LCCOMB_X40_Y12_N14
\STACK|S15|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(0) & (((\STACK|S14|U1|dffs\(2))))) # (!\mode~combout\(0) & ((\mode~combout\(1) & (\STACK|S16|U1|dffs\(2))) # (!\mode~combout\(1) & ((\STACK|S14|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S16|U1|dffs\(2),
	datab => \STACK|S14|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|S15|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X42_Y12_N24
\STACK|S15|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S15|U1|dffs[2]~feeder_combout\ = \STACK|S15|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S15|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S15|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X42_Y12_N25
\STACK|S15|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S15|U1|dffs[2]~feeder_combout\,
	sdata => \STACK|pop~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[15]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S15|U1|dffs\(2));

-- Location: LCCOMB_X39_Y12_N16
\STACK|S16|U0|$00000|auto_generated|result_node[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U0|$00000|auto_generated|result_node[2]~4_combout\ = (\mode~combout\(1) & ((\mode~combout\(0) & ((\STACK|S15|U1|dffs\(2)))) # (!\mode~combout\(0) & (\STACK|S17|U1|dffs\(2))))) # (!\mode~combout\(1) & (((\STACK|S15|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|S17|U1|dffs\(2),
	datac => \mode~combout\(0),
	datad => \STACK|S15|U1|dffs\(2),
	combout => \STACK|S16|U0|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: LCCOMB_X40_Y12_N6
\STACK|S16|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|S16|U1|dffs[2]~feeder_combout\ = \STACK|S16|U0|$00000|auto_generated|result_node[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STACK|S16|U0|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \STACK|S16|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X40_Y12_N7
\STACK|S16|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|S16|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|pop~0_combout\,
	ena => \STACK|enableArray[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|S16|U1|dffs\(2));

-- Location: LCCOMB_X37_Y7_N22
\STACK|M0|auto_generated|_~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~134_combout\ = (\addr~combout\(1) & (((\addr~combout\(0))))) # (!\addr~combout\(1) & ((\addr~combout\(0) & (\STACK|S17|U1|dffs\(2))) # (!\addr~combout\(0) & ((\STACK|S16|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S17|U1|dffs\(2),
	datab => \addr~combout\(1),
	datac => \STACK|S16|U1|dffs\(2),
	datad => \addr~combout\(0),
	combout => \STACK|M0|auto_generated|_~134_combout\);

-- Location: LCCOMB_X37_Y7_N4
\STACK|M0|auto_generated|_~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|_~135_combout\ = (\STACK|M0|auto_generated|_~134_combout\ & (((\STACK|S19|U1|dffs\(2)) # (!\addr~combout\(1))))) # (!\STACK|M0|auto_generated|_~134_combout\ & (\STACK|S18|U1|dffs\(2) & (\addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|S18|U1|dffs\(2),
	datab => \STACK|M0|auto_generated|_~134_combout\,
	datac => \addr~combout\(1),
	datad => \STACK|S19|U1|dffs\(2),
	combout => \STACK|M0|auto_generated|_~135_combout\);

-- Location: LCCOMB_X36_Y7_N16
\STACK|M0|auto_generated|result_node[2]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~73_combout\ = (!\addr~combout\(3) & ((\addr~combout\(2) & (\STACK|M0|auto_generated|_~133_combout\)) # (!\addr~combout\(2) & ((\STACK|M0|auto_generated|_~135_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr~combout\(2),
	datab => \STACK|M0|auto_generated|_~133_combout\,
	datac => \addr~combout\(3),
	datad => \STACK|M0|auto_generated|_~135_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~73_combout\);

-- Location: LCCOMB_X36_Y7_N26
\STACK|M0|auto_generated|result_node[2]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node[2]~74_combout\ = (\addr~combout\(4) & (!\STACK|M0|auto_generated|_~131_combout\ & ((\STACK|M0|auto_generated|result_node[2]~72_combout\) # (\STACK|M0|auto_generated|result_node[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|result_node[2]~72_combout\,
	datab => \addr~combout\(4),
	datac => \STACK|M0|auto_generated|result_node[2]~73_combout\,
	datad => \STACK|M0|auto_generated|_~131_combout\,
	combout => \STACK|M0|auto_generated|result_node[2]~74_combout\);

-- Location: LCCOMB_X27_Y19_N14
\MOD13|A5|b2v_inst2|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst2|S~combout\ = \MOD13|A5|b2v_inst1|Cout~0_combout\ $ (\MOD13|A4|b2v_inst2|S~0_combout\ $ (((\STACK|M0|auto_generated|result_node[2]~66_combout\) # (\STACK|M0|auto_generated|result_node[2]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|Cout~0_combout\,
	datab => \MOD13|A4|b2v_inst2|S~0_combout\,
	datac => \STACK|M0|auto_generated|result_node[2]~66_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~74_combout\,
	combout => \MOD13|A5|b2v_inst2|S~combout\);

-- Location: LCCOMB_X27_Y19_N22
\MOD13|A5|b2v_inst3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst3|S~0_combout\ = (\STACK|M0|auto_generated|result_node[5]~57_combout\ & ((\MOD13|A1|b2v_inst5|Cout~1_combout\) # (\STACK|M0|auto_generated|result_node[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \MOD13|A5|b2v_inst3|S~0_combout\);

-- Location: LCCOMB_X27_Y19_N12
\MOD13|A5|b2v_inst2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst2|Cout~0_combout\ = (\MOD13|A5|b2v_inst1|Cout~0_combout\ & (((\STACK|M0|auto_generated|result_node[2]~66_combout\) # (\STACK|M0|auto_generated|result_node[2]~74_combout\)) # (!\MOD13|A4|b2v_inst2|S~0_combout\))) # 
-- (!\MOD13|A5|b2v_inst1|Cout~0_combout\ & (!\MOD13|A4|b2v_inst2|S~0_combout\ & ((\STACK|M0|auto_generated|result_node[2]~66_combout\) # (\STACK|M0|auto_generated|result_node[2]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|Cout~0_combout\,
	datab => \MOD13|A4|b2v_inst2|S~0_combout\,
	datac => \STACK|M0|auto_generated|result_node[2]~66_combout\,
	datad => \STACK|M0|auto_generated|result_node[2]~74_combout\,
	combout => \MOD13|A5|b2v_inst2|Cout~0_combout\);

-- Location: LCCOMB_X35_Y7_N28
\STACK|M0|auto_generated|result_node[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|M0|auto_generated|result_node\(3) = (\STACK|M0|auto_generated|result_node[3]~37_combout\) # ((\STACK|M0|auto_generated|_~82_combout\ & ((\STACK|M0|auto_generated|_~161_combout\))) # (!\STACK|M0|auto_generated|_~82_combout\ & 
-- (\STACK|M0|auto_generated|result_node[3]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|M0|auto_generated|_~82_combout\,
	datab => \STACK|M0|auto_generated|result_node[3]~45_combout\,
	datac => \STACK|M0|auto_generated|_~161_combout\,
	datad => \STACK|M0|auto_generated|result_node[3]~37_combout\,
	combout => \STACK|M0|auto_generated|result_node\(3));

-- Location: LCCOMB_X31_Y19_N8
\MOD13|A5|b2v_inst3|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \MOD13|A5|b2v_inst3|S~combout\ = \MOD13|A5|b2v_inst3|S~0_combout\ $ (\MOD13|A5|b2v_inst2|Cout~0_combout\ $ (\STACK|M0|auto_generated|result_node\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A5|b2v_inst3|S~0_combout\,
	datac => \MOD13|A5|b2v_inst2|Cout~0_combout\,
	datad => \STACK|M0|auto_generated|result_node\(3),
	combout => \MOD13|A5|b2v_inst3|S~combout\);

-- Location: LCCOMB_X27_Y19_N0
\SEG_MOD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux6~0_combout\ = (\MOD13|A5|b2v_inst2|S~combout\ & ((\MOD13|A5|b2v_inst1|S~combout\ $ (\MOD13|A5|b2v_inst3|S~combout\)) # (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\))) # (!\MOD13|A5|b2v_inst2|S~combout\ & ((\MOD13|A5|b2v_inst1|S~combout\) 
-- # (\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ $ (\MOD13|A5|b2v_inst3|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y19_N10
\SEG_MOD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux5~0_combout\ = (\MOD13|A5|b2v_inst1|S~combout\ & ((\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & ((\MOD13|A5|b2v_inst3|S~combout\))) # (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (!\MOD13|A5|b2v_inst2|S~combout\)))) # 
-- (!\MOD13|A5|b2v_inst1|S~combout\ & (!\MOD13|A5|b2v_inst2|S~combout\ & (\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ $ (\MOD13|A5|b2v_inst3|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y19_N4
\SEG_MOD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux4~0_combout\ = (\MOD13|A5|b2v_inst2|S~combout\ & (\MOD13|A5|b2v_inst1|S~combout\ & (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & !\MOD13|A5|b2v_inst3|S~combout\))) # (!\MOD13|A5|b2v_inst2|S~combout\ & (\MOD13|A5|b2v_inst3|S~combout\ & 
-- ((\MOD13|A5|b2v_inst1|S~combout\) # (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y19_N6
\SEG_MOD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux3~0_combout\ = (\MOD13|A5|b2v_inst1|S~combout\ & ((\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (\MOD13|A5|b2v_inst2|S~combout\)) # (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & ((!\MOD13|A5|b2v_inst3|S~combout\) # 
-- (!\MOD13|A5|b2v_inst2|S~combout\))))) # (!\MOD13|A5|b2v_inst1|S~combout\ & ((\MOD13|A5|b2v_inst3|S~combout\) # (\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ $ (\MOD13|A5|b2v_inst2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y19_N8
\SEG_MOD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux2~0_combout\ = (\MOD13|A5|b2v_inst1|S~combout\ & (((\MOD13|A5|b2v_inst3|S~combout\)) # (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\))) # (!\MOD13|A5|b2v_inst1|S~combout\ & ((\MOD13|A5|b2v_inst2|S~combout\ & 
-- (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\)) # (!\MOD13|A5|b2v_inst2|S~combout\ & ((\MOD13|A5|b2v_inst3|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y19_N2
\SEG_MOD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux1~0_combout\ = (\MOD13|A5|b2v_inst1|S~combout\ & (!\MOD13|A5|b2v_inst3|S~combout\ & ((\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\) # (\MOD13|A5|b2v_inst2|S~combout\)))) # (!\MOD13|A5|b2v_inst1|S~combout\ & 
-- (\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (\MOD13|A5|b2v_inst2|S~combout\ $ (\MOD13|A5|b2v_inst3|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y19_N28
\SEG_MOD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_MOD|Mux0~0_combout\ = (\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (!\MOD13|A5|b2v_inst3|S~combout\ & (\MOD13|A5|b2v_inst1|S~combout\ $ (\MOD13|A5|b2v_inst2|S~combout\)))) # (!\MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & 
-- (!\MOD13|A5|b2v_inst1|S~combout\ & (\MOD13|A5|b2v_inst2|S~combout\ $ (\MOD13|A5|b2v_inst3|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOD13|A5|b2v_inst1|S~combout\,
	datab => \MOD13|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datac => \MOD13|A5|b2v_inst2|S~combout\,
	datad => \MOD13|A5|b2v_inst3|S~combout\,
	combout => \SEG_MOD|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y19_N16
\SEG_FLOOR|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_FLOOR|Mux6~0_combout\ = (\MOD13|A1|b2v_inst5|Cout~1_combout\ & (\STACK|M0|auto_generated|result_node[4]~12_combout\ $ (!\STACK|M0|auto_generated|result_node[5]~57_combout\))) # (!\MOD13|A1|b2v_inst5|Cout~1_combout\ & 
-- (\STACK|M0|auto_generated|result_node[4]~12_combout\ & !\STACK|M0|auto_generated|result_node[5]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \SEG_FLOOR|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y19_N14
\SEG_FLOOR|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_FLOOR|Mux4~0_combout\ = (\MOD13|A1|b2v_inst5|Cout~1_combout\ & (\STACK|M0|auto_generated|result_node[4]~12_combout\ & !\STACK|M0|auto_generated|result_node[5]~57_combout\)) # (!\MOD13|A1|b2v_inst5|Cout~1_combout\ & 
-- (!\STACK|M0|auto_generated|result_node[4]~12_combout\ & \STACK|M0|auto_generated|result_node[5]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \SEG_FLOOR|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\SEG_FLOOR|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_FLOOR|Mux4~1_combout\ = (\MOD13|A1|b2v_inst5|Cout~1_combout\ & (\STACK|M0|auto_generated|result_node[4]~12_combout\ & !\STACK|M0|auto_generated|result_node[5]~57_combout\)) # (!\MOD13|A1|b2v_inst5|Cout~1_combout\ & 
-- (!\STACK|M0|auto_generated|result_node[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \SEG_FLOOR|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y19_N10
\SEG_FLOOR|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_FLOOR|Mux1~0_combout\ = (\MOD13|A1|b2v_inst5|Cout~1_combout\ & ((!\STACK|M0|auto_generated|result_node[5]~57_combout\) # (!\STACK|M0|auto_generated|result_node[4]~12_combout\))) # (!\MOD13|A1|b2v_inst5|Cout~1_combout\ & 
-- ((\STACK|M0|auto_generated|result_node[4]~12_combout\) # (\STACK|M0|auto_generated|result_node[5]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \SEG_FLOOR|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\SEG_FLOOR|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SEG_FLOOR|Mux0~0_combout\ = (\STACK|M0|auto_generated|result_node[5]~57_combout\) # ((\MOD13|A1|b2v_inst5|Cout~1_combout\ & \STACK|M0|auto_generated|result_node[4]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOD13|A1|b2v_inst5|Cout~1_combout\,
	datac => \STACK|M0|auto_generated|result_node[4]~12_combout\,
	datad => \STACK|M0|auto_generated|result_node[5]~57_combout\,
	combout => \SEG_FLOOR|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y7_N8
\STACK|pop~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|pop~1_combout\ = (\mode~combout\(0) & \mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\(0),
	datad => \mode~combout\(1),
	combout => \STACK|pop~1_combout\);

-- Location: LCCOMB_X49_Y7_N18
\STACK|C0|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|counter_comb_bita0~combout\ = \STACK|C0|auto_generated|safe_q\(0) $ (((VCC) # (!\STACK|pop~1_combout\)))
-- \STACK|C0|auto_generated|counter_comb_bita0~COUT\ = CARRY(\STACK|pop~1_combout\ $ (!\STACK|C0|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|pop~1_combout\,
	datab => \STACK|C0|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \STACK|C0|auto_generated|counter_comb_bita0~combout\,
	cout => \STACK|C0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X48_Y7_N0
\STACK|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|comb~0_combout\ = (\mode~combout\(0) & (\DEB|output~combout\ & !\mode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(0),
	datac => \DEB|output~combout\,
	datad => \mode~combout\(1),
	combout => \STACK|comb~0_combout\);

-- Location: LCCOMB_X49_Y7_N2
\STACK|empty~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|empty~3_combout\ = (\STACK|C0|auto_generated|safe_q\(4)) # (\STACK|C0|auto_generated|safe_q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|C0|auto_generated|safe_q\(4),
	datad => \STACK|C0|auto_generated|safe_q\(2),
	combout => \STACK|empty~3_combout\);

-- Location: LCCOMB_X49_Y7_N30
\STACK|C0|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|_~0_combout\ = (\mode~combout\(0)) # ((\mode~combout\(1) & ((\STACK|empty~3_combout\) # (\STACK|empty~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\(1),
	datab => \STACK|empty~3_combout\,
	datac => \mode~combout\(0),
	datad => \STACK|empty~2_combout\,
	combout => \STACK|C0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X48_Y7_N14
\STACK|C0|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|_~1_combout\ = (\DEB|output~combout\ & ((\STACK|pop~0_combout\) # ((!\STACK|cnt_enHold~0_combout\ & \STACK|C0|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|cnt_enHold~0_combout\,
	datab => \STACK|pop~0_combout\,
	datac => \DEB|output~combout\,
	datad => \STACK|C0|auto_generated|_~0_combout\,
	combout => \STACK|C0|auto_generated|_~1_combout\);

-- Location: LCFF_X49_Y7_N19
\STACK|C0|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|C0|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|comb~0_combout\,
	ena => \STACK|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|C0|auto_generated|safe_q\(0));

-- Location: LCCOMB_X49_Y7_N20
\STACK|C0|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|counter_comb_bita1~combout\ = (\STACK|C0|auto_generated|counter_comb_bita0~COUT\ & (\STACK|C0|auto_generated|safe_q\(1) $ (((\STACK|pop~1_combout\) # (VCC))))) # (!\STACK|C0|auto_generated|counter_comb_bita0~COUT\ & 
-- ((\STACK|C0|auto_generated|safe_q\(1)) # ((GND))))
-- \STACK|C0|auto_generated|counter_comb_bita1~COUT\ = CARRY((\STACK|C0|auto_generated|safe_q\(1) $ (\STACK|pop~1_combout\)) # (!\STACK|C0|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|C0|auto_generated|safe_q\(1),
	datab => \STACK|pop~1_combout\,
	datad => VCC,
	cin => \STACK|C0|auto_generated|counter_comb_bita0~COUT\,
	combout => \STACK|C0|auto_generated|counter_comb_bita1~combout\,
	cout => \STACK|C0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X49_Y7_N22
\STACK|C0|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|counter_comb_bita2~combout\ = (\STACK|C0|auto_generated|counter_comb_bita1~COUT\ & (((\STACK|C0|auto_generated|safe_q\(2) & VCC)))) # (!\STACK|C0|auto_generated|counter_comb_bita1~COUT\ & (\STACK|C0|auto_generated|safe_q\(2) $ 
-- (((VCC) # (!\STACK|pop~1_combout\)))))
-- \STACK|C0|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\STACK|C0|auto_generated|counter_comb_bita1~COUT\ & (\STACK|pop~1_combout\ $ (!\STACK|C0|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|pop~1_combout\,
	datab => \STACK|C0|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \STACK|C0|auto_generated|counter_comb_bita1~COUT\,
	combout => \STACK|C0|auto_generated|counter_comb_bita2~combout\,
	cout => \STACK|C0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X49_Y7_N23
\STACK|C0|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|C0|auto_generated|counter_comb_bita2~combout\,
	sdata => \STACK|comb~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|comb~0_combout\,
	ena => \STACK|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|C0|auto_generated|safe_q\(2));

-- Location: LCCOMB_X49_Y7_N24
\STACK|C0|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|counter_comb_bita3~combout\ = (\STACK|C0|auto_generated|counter_comb_bita2~COUT\ & (\STACK|C0|auto_generated|safe_q\(3) $ (((\STACK|pop~1_combout\) # (VCC))))) # (!\STACK|C0|auto_generated|counter_comb_bita2~COUT\ & 
-- ((\STACK|C0|auto_generated|safe_q\(3)) # ((GND))))
-- \STACK|C0|auto_generated|counter_comb_bita3~COUT\ = CARRY((\STACK|C0|auto_generated|safe_q\(3) $ (\STACK|pop~1_combout\)) # (!\STACK|C0|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|C0|auto_generated|safe_q\(3),
	datab => \STACK|pop~1_combout\,
	datad => VCC,
	cin => \STACK|C0|auto_generated|counter_comb_bita2~COUT\,
	combout => \STACK|C0|auto_generated|counter_comb_bita3~combout\,
	cout => \STACK|C0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X49_Y7_N26
\STACK|C0|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|counter_comb_bita4~combout\ = (\STACK|C0|auto_generated|counter_comb_bita3~COUT\ & (((\STACK|C0|auto_generated|safe_q\(4) & VCC)))) # (!\STACK|C0|auto_generated|counter_comb_bita3~COUT\ & (\STACK|C0|auto_generated|safe_q\(4) $ 
-- (((VCC) # (!\STACK|pop~1_combout\)))))
-- \STACK|C0|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\STACK|C0|auto_generated|counter_comb_bita3~COUT\ & (\STACK|pop~1_combout\ $ (!\STACK|C0|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|pop~1_combout\,
	datab => \STACK|C0|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \STACK|C0|auto_generated|counter_comb_bita3~COUT\,
	combout => \STACK|C0|auto_generated|counter_comb_bita4~combout\,
	cout => \STACK|C0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X49_Y7_N27
\STACK|C0|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|C0|auto_generated|counter_comb_bita4~combout\,
	sdata => \STACK|comb~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|comb~0_combout\,
	ena => \STACK|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|C0|auto_generated|safe_q\(4));

-- Location: LCCOMB_X49_Y7_N28
\STACK|C0|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|C0|auto_generated|counter_comb_bita5~combout\ = \STACK|C0|auto_generated|counter_comb_bita4~COUT\ $ (\STACK|C0|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \STACK|C0|auto_generated|safe_q\(5),
	cin => \STACK|C0|auto_generated|counter_comb_bita4~COUT\,
	combout => \STACK|C0|auto_generated|counter_comb_bita5~combout\);

-- Location: LCFF_X49_Y7_N29
\STACK|C0|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|C0|auto_generated|counter_comb_bita5~combout\,
	sdata => \STACK|comb~0_combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|comb~0_combout\,
	ena => \STACK|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|C0|auto_generated|safe_q\(5));

-- Location: LCFF_X49_Y7_N21
\STACK|C0|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|C0|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|comb~0_combout\,
	ena => \STACK|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|C0|auto_generated|safe_q\(1));

-- Location: LCCOMB_X49_Y7_N12
\STACK|empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|empty~2_combout\ = (\STACK|C0|auto_generated|safe_q\(3)) # ((\STACK|C0|auto_generated|safe_q\(5)) # ((\STACK|C0|auto_generated|safe_q\(1)) # (\STACK|C0|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|C0|auto_generated|safe_q\(3),
	datab => \STACK|C0|auto_generated|safe_q\(5),
	datac => \STACK|C0|auto_generated|safe_q\(1),
	datad => \STACK|C0|auto_generated|safe_q\(0),
	combout => \STACK|empty~2_combout\);

-- Location: LCCOMB_X49_Y7_N14
\STACK|empty\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|empty~combout\ = (\STACK|empty~2_combout\) # ((\STACK|C0|auto_generated|safe_q\(4)) # (\STACK|C0|auto_generated|safe_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|empty~2_combout\,
	datab => \STACK|C0|auto_generated|safe_q\(4),
	datad => \STACK|C0|auto_generated|safe_q\(2),
	combout => \STACK|empty~combout\);

-- Location: LCCOMB_X49_Y7_N16
\STACK|full~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|full~0_combout\ = (!\STACK|C0|auto_generated|safe_q\(3) & (\STACK|C0|auto_generated|safe_q\(5) & (!\STACK|C0|auto_generated|safe_q\(1) & !\STACK|C0|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STACK|C0|auto_generated|safe_q\(3),
	datab => \STACK|C0|auto_generated|safe_q\(5),
	datac => \STACK|C0|auto_generated|safe_q\(1),
	datad => \STACK|C0|auto_generated|safe_q\(0),
	combout => \STACK|full~0_combout\);

-- Location: LCCOMB_X49_Y7_N10
\STACK|full\ : cycloneii_lcell_comb
-- Equation(s):
-- \STACK|full~combout\ = (\STACK|C0|auto_generated|safe_q\(4) & (\STACK|full~0_combout\ & \STACK|C0|auto_generated|safe_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STACK|C0|auto_generated|safe_q\(4),
	datac => \STACK|full~0_combout\,
	datad => \STACK|C0|auto_generated|safe_q\(2),
	combout => \STACK|full~combout\);

-- Location: LCFF_X49_Y7_N25
\STACK|C0|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \STACK|C0|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \STACK|comb~0_combout\,
	ena => \STACK|C0|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \STACK|C0|auto_generated|safe_q\(3));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[0]~I\ : cycloneii_io
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
	datain => \SEG_MOD|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[1]~I\ : cycloneii_io
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
	datain => \SEG_MOD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[2]~I\ : cycloneii_io
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
	datain => \SEG_MOD|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[3]~I\ : cycloneii_io
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
	datain => \SEG_MOD|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[4]~I\ : cycloneii_io
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
	datain => \SEG_MOD|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[5]~I\ : cycloneii_io
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
	datain => \SEG_MOD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_mod[6]~I\ : cycloneii_io
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
	datain => \SEG_MOD|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_mod(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[0]~I\ : cycloneii_io
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
	datain => \SEG_FLOOR|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[2]~I\ : cycloneii_io
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
	datain => \SEG_FLOOR|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[3]~I\ : cycloneii_io
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
	datain => \SEG_FLOOR|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[4]~I\ : cycloneii_io
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
	datain => \SEG_FLOOR|ALT_INV_Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[5]~I\ : cycloneii_io
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
	datain => \SEG_FLOOR|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_floor[6]~I\ : cycloneii_io
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
	datain => \SEG_FLOOR|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_floor(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|ALT_INV_empty~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_empty);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|full~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_full);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debounceState[0]~I\ : cycloneii_io
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
	datain => \DEB|ALT_INV_state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debounceState(0));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debounceState[1]~I\ : cycloneii_io
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
	datain => \DEB|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debounceState(1));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debounceState[2]~I\ : cycloneii_io
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
	datain => \DEB|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debounceState(2));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|C0|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|C0|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|C0|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|C0|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|C0|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \STACK|C0|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num(5));
END structure;


