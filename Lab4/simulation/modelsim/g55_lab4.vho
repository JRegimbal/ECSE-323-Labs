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

-- DATE "03/22/2017 08:52:06"

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

ENTITY 	g55_dealer_testbench IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	raw_deal : IN std_logic;
	stack_mode : IN std_logic_vector(1 DOWNTO 0);
	segments_out_num : OUT std_logic_vector(6 DOWNTO 0);
	segments_out_suit : OUT std_logic_vector(6 DOWNTO 0)
	);
END g55_dealer_testbench;

-- Design Ports Information
-- segments_out_num[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_num[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_num[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_num[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_num[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_num[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_num[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segments_out_suit[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stack_mode[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- stack_mode[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- raw_deal	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g55_dealer_testbench IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_raw_deal : std_logic;
SIGNAL ww_stack_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_segments_out_num : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments_out_suit : std_logic_vector(6 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dealer|Mux4~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dealer|rand_enable~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~2_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~6_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~12_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~16_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~20_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~24_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~26_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~0_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~2_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~4_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~8_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~10_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~14_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \deal_debounce|C0|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~9_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~14_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~15_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~18_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~20_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~21_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~22_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~33_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~45_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~48_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~49_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~50_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~51_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~52_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~62_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~63_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~66_combout\ : std_logic;
SIGNAL \modulo|A1|b2v_inst5|Cout~1_combout\ : std_logic;
SIGNAL \modulo|A1|b2v_inst6|S~combout\ : std_logic;
SIGNAL \modulo|A5|b2v_inst1|Cout~0_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \dealer|Mux4~3_combout\ : std_logic;
SIGNAL \deal_debounce|output~combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~0_combout\ : std_logic;
SIGNAL \deal_debounce|state[1]~2_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~1_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~2_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~3_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~4_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~5_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~6_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~7_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~8_combout\ : std_logic;
SIGNAL \deal_debounce|state[1]~3_combout\ : std_logic;
SIGNAL \deal_debounce|state[1]~4_combout\ : std_logic;
SIGNAL \deal_debounce|state~5_combout\ : std_logic;
SIGNAL \deal_debounce|process_0~9_combout\ : std_logic;
SIGNAL \deal_debounce|state~6_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \deal_debounce|enable~regout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \deal_debounce|enable~0_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[19]~19_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[20]~20_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[21]~21_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[22]~22_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[23]~23_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[24]~24_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[25]~25_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[26]~26_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[27]~27_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[28]~28_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[29]~29_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[30]~30_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[31]~31_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[32]~32_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[33]~33_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[34]~34_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[35]~35_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[36]~36_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[37]~37_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[38]~38_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[39]~39_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[40]~40_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[41]~41_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[42]~42_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[43]~43_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[44]~44_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[45]~45_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[46]~46_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[47]~47_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[48]~48_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[49]~49_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[50]~50_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|enableArray[51]~51_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \deal_debounce|state[2]~7_combout\ : std_logic;
SIGNAL \raw_deal~combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[1]~56_combout\ : std_logic;
SIGNAL \stack|pop~1_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \dealer|Mux4~0_combout\ : std_logic;
SIGNAL \dealer|stack_enable~combout\ : std_logic;
SIGNAL \stack|comb~0_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~28_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[16]~26_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~6_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~12_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~16_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~20_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~18_combout\ : std_logic;
SIGNAL \dealer|Mux4~1_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~22_combout\ : std_logic;
SIGNAL \dealer|Mux4~2_combout\ : std_logic;
SIGNAL \dealer|Mux4~4_combout\ : std_logic;
SIGNAL \dealer|Mux4~5_combout\ : std_logic;
SIGNAL \dealer|Mux4~5clkctrl_outclk\ : std_logic;
SIGNAL \dealer|Mux0~0_combout\ : std_logic;
SIGNAL \dealer|rand_enable~combout\ : std_logic;
SIGNAL \dealer|rand_enable~clkctrl_outclk\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~0_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~4_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~8_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~10_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~14_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~18_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~22_combout\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~53\ : std_logic;
SIGNAL \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[29]~54_combout\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~23\ : std_logic;
SIGNAL \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[29]~24_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|pop~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \stack|enableArray[2]~4_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[3]~7_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[4]~2_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[5]~1_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[6]~0_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[7]~3_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[8]~15_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[9]~13_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[10]~14_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[11]~12_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~8_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~10_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[18]~18_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[17]~17_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[16]~16_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[15]~8_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[14]~10_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[13]~9_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[12]~11_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~11_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~53_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~54_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~55_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~57_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~56_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~58_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~59_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~65_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~67_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~68_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~64_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~69_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|enableArray[0]~6_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[1]~5_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~60_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~61_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~70_combout\ : std_logic;
SIGNAL \modulo|A1|b2v_inst5|Cout~0_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~32_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~34_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~26_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~27_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~24_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~25_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~28_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~30_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~29_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~31_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~35_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~41_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~42_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~43_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~44_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~46_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~36_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~37_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~38_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~39_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~40_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~47_combout\ : std_logic;
SIGNAL \modulo|A1|b2v_inst5|Cout~2_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~17_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~19_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~12_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~13_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~16_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~23_combout\ : std_logic;
SIGNAL \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ : std_logic;
SIGNAL \modulo|A1|b2v_inst7|S~combout\ : std_logic;
SIGNAL \modulo|A5|b2v_inst1|S~combout\ : std_logic;
SIGNAL \modulo|A4|b2v_inst2|S~0_combout\ : std_logic;
SIGNAL \modulo|A5|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \modulo|A5|b2v_inst3|S~combout\ : std_logic;
SIGNAL \modulo|A5|b2v_inst2|S~combout\ : std_logic;
SIGNAL \segnum|Mux6~0_combout\ : std_logic;
SIGNAL \segnum|Mux5~0_combout\ : std_logic;
SIGNAL \segnum|Mux4~0_combout\ : std_logic;
SIGNAL \segnum|Mux3~0_combout\ : std_logic;
SIGNAL \segnum|Mux2~0_combout\ : std_logic;
SIGNAL \segnum|Mux1~0_combout\ : std_logic;
SIGNAL \segnum|Mux0~0_combout\ : std_logic;
SIGNAL \segsuit|Mux6~0_combout\ : std_logic;
SIGNAL \segsuit|Mux4~0_combout\ : std_logic;
SIGNAL \segsuit|Mux4~1_combout\ : std_logic;
SIGNAL \segsuit|Mux1~0_combout\ : std_logic;
SIGNAL \segsuit|Mux0~0_combout\ : std_logic;
SIGNAL \reg|register_store\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \stack|S1|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S3|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S5|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S7|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S9|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S11|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S13|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S15|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S17|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S19|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S21|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S23|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S25|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S27|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S29|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S31|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S33|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S35|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S37|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S39|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S41|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S43|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S45|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S47|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S49|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S51|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \deal_debounce|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \deal_debounce|C0|auto_generated|safe_q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \dealer|state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \stack|C0|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S0|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S2|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S4|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S6|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S8|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S10|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S12|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S14|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S16|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S18|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S20|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S22|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S24|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S26|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S28|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S30|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S32|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S34|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S36|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S38|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S40|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S42|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S44|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S46|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S48|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|S50|U1|dffs\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack_mode~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \deal_debounce|ALT_INV_state\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \segsuit|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \segsuit|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \segnum|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \segnum|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \segnum|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_raw_deal <= raw_deal;
ww_stack_mode <= stack_mode;
segments_out_num <= ww_segments_out_num;
segments_out_suit <= ww_segments_out_suit;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\reg|register_store\(29) & \reg|register_store\(28) & \reg|register_store\(27) & \reg|register_store\(26));

\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(0) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(1) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(2) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(3) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(4) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(5) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(6) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(7) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(8) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(9) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(10) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(11) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(12) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(13) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(14) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(15) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(16) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(17) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(18) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(19) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(20) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(21) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(22) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(23) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(24) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(25) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(26) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(27) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(28) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(29) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(30) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(31) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(32) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(32);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(33) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(33);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(34) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(34);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(35) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(35);

\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\reg|register_store\(29) & \reg|register_store\(28) & \reg|register_store\(27) & \reg|register_store\(26));

\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(36) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(37) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(1);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(38) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(2);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(39) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(3);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(40) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(4);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(41) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(5);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(42) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(6);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(43) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(7);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(44) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(8);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(45) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(9);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(46) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(10);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(47) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(11);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(48) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(12);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(49) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(13);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(50) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(14);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(51) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(15);

\dealer|Mux4~5clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dealer|Mux4~5_combout\);

\dealer|rand_enable~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dealer|rand_enable~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\deal_debounce|ALT_INV_state\(0) <= NOT \deal_debounce|state\(0);
\segsuit|ALT_INV_Mux0~0_combout\ <= NOT \segsuit|Mux0~0_combout\;
\segsuit|ALT_INV_Mux4~1_combout\ <= NOT \segsuit|Mux4~1_combout\;
\segnum|ALT_INV_Mux2~0_combout\ <= NOT \segnum|Mux2~0_combout\;
\segnum|ALT_INV_Mux3~0_combout\ <= NOT \segnum|Mux3~0_combout\;
\segnum|ALT_INV_Mux6~0_combout\ <= NOT \segnum|Mux6~0_combout\;

-- Location: LCFF_X16_Y15_N25
\stack|S1|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(0));

-- Location: LCFF_X18_Y14_N11
\stack|S0|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U0|$00000|auto_generated|result_node[0]~0_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(0));

-- Location: LCFF_X13_Y14_N3
\stack|S7|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(4));

-- Location: LCFF_X18_Y17_N31
\stack|S2|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(4));

-- Location: LCFF_X16_Y15_N21
\stack|S1|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(4));

-- Location: LCFF_X18_Y14_N27
\stack|S0|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U0|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(4));

-- Location: LCFF_X16_Y15_N11
\stack|S3|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(4));

-- Location: LCFF_X12_Y14_N5
\stack|S12|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(4));

-- Location: LCFF_X15_Y14_N1
\stack|S11|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(4));

-- Location: LCFF_X13_Y13_N15
\stack|S10|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(4));

-- Location: LCFF_X15_Y14_N19
\stack|S9|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(4));

-- Location: LCFF_X13_Y13_N1
\stack|S8|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(4));

-- Location: LCFF_X12_Y14_N13
\stack|S12|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(3));

-- Location: LCFF_X18_Y14_N19
\stack|S6|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(1));

-- Location: LCFF_X18_Y13_N1
\stack|S5|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(1));

-- Location: LCFF_X18_Y16_N29
\stack|S4|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(1));

-- Location: LCFF_X16_Y15_N9
\stack|S1|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(1));

-- Location: LCFF_X18_Y17_N7
\stack|S2|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(1));

-- Location: LCFF_X18_Y14_N25
\stack|S0|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U0|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(1));

-- Location: LCFF_X16_Y15_N3
\stack|S3|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(1));

-- Location: LCFF_X14_Y14_N11
\stack|S15|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(5));

-- Location: LCFF_X12_Y14_N7
\stack|S14|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(5));

-- Location: LCCOMB_X22_Y13_N6
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~2_combout\ = (\reg|register_store\(3) & ((\reg|register_store\(2) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\ & VCC)) # (!\reg|register_store\(2) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\)))) # (!\reg|register_store\(3) & ((\reg|register_store\(2) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\)) # (!\reg|register_store\(2) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\ = CARRY((\reg|register_store\(3) & (!\reg|register_store\(2) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\)) # (!\reg|register_store\(3) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\) # (!\reg|register_store\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(3),
	datab => \reg|register_store\(2),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~2_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\);

-- Location: LCCOMB_X22_Y13_N10
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~6_combout\ = (\reg|register_store\(5) & ((\reg|register_store\(4) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\ & VCC)) # (!\reg|register_store\(4) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\)))) # (!\reg|register_store\(5) & ((\reg|register_store\(4) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\)) # (!\reg|register_store\(4) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\ = CARRY((\reg|register_store\(5) & (!\reg|register_store\(4) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\)) # (!\reg|register_store\(5) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\) # (!\reg|register_store\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(5),
	datab => \reg|register_store\(4),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~6_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\);

-- Location: LCCOMB_X22_Y13_N16
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~12_combout\ = ((\reg|register_store\(8) $ (\reg|register_store\(7) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\ = CARRY((\reg|register_store\(8) & ((\reg|register_store\(7)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\))) # (!\reg|register_store\(8) & (\reg|register_store\(7) & 
-- !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(8),
	datab => \reg|register_store\(7),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~12_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\);

-- Location: LCCOMB_X22_Y13_N20
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~16_combout\ = ((\reg|register_store\(10) $ (\reg|register_store\(9) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\ = CARRY((\reg|register_store\(10) & ((\reg|register_store\(9)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\))) # (!\reg|register_store\(10) & 
-- (\reg|register_store\(9) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(10),
	datab => \reg|register_store\(9),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~16_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\);

-- Location: LCCOMB_X22_Y13_N24
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~20_combout\ = ((\reg|register_store\(12) $ (\reg|register_store\(11) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\ = CARRY((\reg|register_store\(12) & ((\reg|register_store\(11)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\))) # (!\reg|register_store\(12) & 
-- (\reg|register_store\(11) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(12),
	datab => \reg|register_store\(11),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~20_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\);

-- Location: LCCOMB_X22_Y13_N28
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~24_combout\ = ((\reg|register_store\(14) $ (\reg|register_store\(13) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\ = CARRY((\reg|register_store\(14) & ((\reg|register_store\(13)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\))) # (!\reg|register_store\(14) & 
-- (\reg|register_store\(13) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(14),
	datab => \reg|register_store\(13),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~24_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\);

-- Location: LCCOMB_X22_Y13_N30
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~26_combout\ = (\reg|register_store\(14) & ((\reg|register_store\(15) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\ & VCC)) # (!\reg|register_store\(15) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\)))) # (!\reg|register_store\(14) & ((\reg|register_store\(15) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\)) # (!\reg|register_store\(15) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\ = CARRY((\reg|register_store\(14) & (!\reg|register_store\(15) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\)) # (!\reg|register_store\(14) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\) # (!\reg|register_store\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(14),
	datab => \reg|register_store\(15),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~25\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~26_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\);

-- Location: LCCOMB_X22_Y12_N2
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\ = (\reg|register_store\(17) & ((\reg|register_store\(16) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\ & VCC)) # (!\reg|register_store\(16) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\)))) # (!\reg|register_store\(17) & ((\reg|register_store\(16) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\)) # (!\reg|register_store\(16) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\ = CARRY((\reg|register_store\(17) & (!\reg|register_store\(16) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\)) # (!\reg|register_store\(17) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\) # (!\reg|register_store\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(17),
	datab => \reg|register_store\(16),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\);

-- Location: LCCOMB_X22_Y12_N4
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\ = ((\reg|register_store\(17) $ (\reg|register_store\(18) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\ = CARRY((\reg|register_store\(17) & ((\reg|register_store\(18)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\))) # (!\reg|register_store\(17) & 
-- (\reg|register_store\(18) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(17),
	datab => \reg|register_store\(18),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~31\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\);

-- Location: LCCOMB_X22_Y12_N6
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\ = (\reg|register_store\(19) & ((\reg|register_store\(18) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\ & VCC)) # (!\reg|register_store\(18) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\)))) # (!\reg|register_store\(19) & ((\reg|register_store\(18) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\)) # (!\reg|register_store\(18) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\ = CARRY((\reg|register_store\(19) & (!\reg|register_store\(18) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\)) # (!\reg|register_store\(19) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\) # (!\reg|register_store\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(19),
	datab => \reg|register_store\(18),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~33\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\);

-- Location: LCCOMB_X22_Y12_N16
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\ = ((\reg|register_store\(24) $ (\reg|register_store\(23) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\ = CARRY((\reg|register_store\(24) & ((\reg|register_store\(23)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\))) # (!\reg|register_store\(24) & 
-- (\reg|register_store\(23) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(24),
	datab => \reg|register_store\(23),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\);

-- Location: LCCOMB_X21_Y12_N0
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~0_combout\ = (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\ & (\reg|register_store\(1) $ (VCC))) # 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\ & (\reg|register_store\(1) & VCC))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\ = CARRY((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\ & \reg|register_store\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[17]~30_combout\,
	datab => \reg|register_store\(1),
	datad => VCC,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~0_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\);

-- Location: LCCOMB_X21_Y12_N2
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~2_combout\ = (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\ & ((\reg|register_store\(2) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\ & VCC)) # 
-- (!\reg|register_store\(2) & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\)))) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\ & ((\reg|register_store\(2) & 
-- (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\)) # (!\reg|register_store\(2) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\) # (GND)))))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\ = CARRY((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\ & (!\reg|register_store\(2) & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\)) # 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\ & ((!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\) # (!\reg|register_store\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[18]~32_combout\,
	datab => \reg|register_store\(2),
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~1\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~2_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\);

-- Location: LCCOMB_X21_Y12_N4
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~4_combout\ = ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\ $ (\reg|register_store\(3) $ (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\)))) # 
-- (GND)
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\ = CARRY((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\ & ((\reg|register_store\(3)) # (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\))) # 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\ & (\reg|register_store\(3) & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~34_combout\,
	datab => \reg|register_store\(3),
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~3\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~4_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\);

-- Location: LCCOMB_X21_Y12_N8
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~8_combout\ = ((\reg|register_store\(5) $ (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\ $ (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\)))) # 
-- (GND)
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\ = CARRY((\reg|register_store\(5) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\) # (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\))) # 
-- (!\reg|register_store\(5) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(5),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~8_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\);

-- Location: LCCOMB_X21_Y12_N10
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~10_combout\ = (\reg|register_store\(6) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\ & VCC)) 
-- # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\)))) # (!\reg|register_store\(6) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ & 
-- ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\) # (GND)))))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\ = CARRY((\reg|register_store\(6) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\)) # 
-- (!\reg|register_store\(6) & ((!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(6),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~9\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~10_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\);

-- Location: LCCOMB_X21_Y12_N14
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~14_combout\ = (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\ & ((\reg|register_store\(8) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\ & VCC)) 
-- # (!\reg|register_store\(8) & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\)))) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\ & ((\reg|register_store\(8) & 
-- (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\)) # (!\reg|register_store\(8) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\) # (GND)))))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\ = CARRY((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\ & (!\reg|register_store\(8) & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\)) # 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\ & ((!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\) # (!\reg|register_store\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~44_combout\,
	datab => \reg|register_store\(8),
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~14_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\);

-- Location: M4K_X17_Y14
\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:stack|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 36,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X11_Y14_N23
\stack|S16|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(4));

-- Location: LCFF_X11_Y14_N21
\stack|S16|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(2));

-- Location: LCFF_X11_Y14_N15
\stack|S16|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(3));

-- Location: LCFF_X11_Y14_N7
\stack|S16|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(5));

-- Location: LCFF_X19_Y12_N25
\stack|C0|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \stack|C0|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|comb~0_combout\,
	ena => \stack|C0|auto_generated|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(3));

-- Location: LCFF_X20_Y14_N31
\stack|S17|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(4));

-- Location: LCFF_X20_Y14_N1
\stack|S17|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(2));

-- Location: LCFF_X20_Y14_N19
\stack|S17|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(3));

-- Location: LCFF_X22_Y14_N17
\stack|S17|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(1));

-- Location: LCFF_X20_Y14_N9
\stack|S17|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(5));

-- Location: LCCOMB_X19_Y12_N24
\stack|C0|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita3~combout\ = (\stack|C0|auto_generated|counter_comb_bita2~COUT\ & (\stack|C0|auto_generated|safe_q\(3) $ (((\stack|pop~1_combout\) # (VCC))))) # (!\stack|C0|auto_generated|counter_comb_bita2~COUT\ & 
-- ((\stack|C0|auto_generated|safe_q\(3)) # ((GND))))
-- \stack|C0|auto_generated|counter_comb_bita3~COUT\ = CARRY((\stack|C0|auto_generated|safe_q\(3) $ (\stack|pop~1_combout\)) # (!\stack|C0|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(3),
	datab => \stack|pop~1_combout\,
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita2~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita3~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X9_Y15_N23
\deal_debounce|C0|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita22~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(22));

-- Location: LCFF_X9_Y15_N21
\deal_debounce|C0|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita21~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(21));

-- Location: LCFF_X9_Y15_N19
\deal_debounce|C0|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita20~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(20));

-- Location: LCFF_X9_Y15_N17
\deal_debounce|C0|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita19~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(19));

-- Location: LCFF_X9_Y15_N15
\deal_debounce|C0|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita18~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(18));

-- Location: LCFF_X9_Y15_N13
\deal_debounce|C0|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita17~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(17));

-- Location: LCFF_X9_Y15_N11
\deal_debounce|C0|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita16~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(16));

-- Location: LCFF_X9_Y15_N9
\deal_debounce|C0|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita15~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(15));

-- Location: LCFF_X9_Y15_N7
\deal_debounce|C0|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita14~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(14));

-- Location: LCFF_X9_Y15_N5
\deal_debounce|C0|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita13~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(13));

-- Location: LCFF_X9_Y15_N3
\deal_debounce|C0|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita12~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(12));

-- Location: LCFF_X9_Y15_N1
\deal_debounce|C0|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita11~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(11));

-- Location: LCFF_X9_Y16_N31
\deal_debounce|C0|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita10~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(10));

-- Location: LCFF_X9_Y16_N29
\deal_debounce|C0|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita9~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(9));

-- Location: LCFF_X9_Y16_N27
\deal_debounce|C0|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita8~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(8));

-- Location: LCFF_X9_Y16_N25
\deal_debounce|C0|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita7~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(7));

-- Location: LCFF_X9_Y16_N23
\deal_debounce|C0|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita6~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(6));

-- Location: LCFF_X9_Y16_N21
\deal_debounce|C0|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita5~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(5));

-- Location: LCFF_X9_Y16_N19
\deal_debounce|C0|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita4~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(4));

-- Location: LCFF_X9_Y16_N17
\deal_debounce|C0|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita3~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(3));

-- Location: LCFF_X9_Y16_N15
\deal_debounce|C0|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita2~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(2));

-- Location: LCFF_X9_Y16_N13
\deal_debounce|C0|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita1~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(1));

-- Location: LCFF_X9_Y16_N11
\deal_debounce|C0|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|C0|auto_generated|counter_comb_bita0~combout\,
	aclr => \deal_debounce|ALT_INV_state\(0),
	ena => \deal_debounce|enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|C0|auto_generated|safe_q\(0));

-- Location: LCFF_X11_Y14_N11
\stack|S18|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(4));

-- Location: LCFF_X11_Y14_N9
\stack|S18|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(2));

-- Location: LCFF_X11_Y14_N19
\stack|S18|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(3));

-- Location: LCFF_X11_Y14_N25
\stack|S18|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(1));

-- Location: LCFF_X11_Y14_N27
\stack|S18|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(5));

-- Location: LCCOMB_X9_Y16_N10
\deal_debounce|C0|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita0~combout\ = \deal_debounce|C0|auto_generated|safe_q\(0) $ (VCC)
-- \deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\ = CARRY(\deal_debounce|C0|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita0~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X9_Y16_N12
\deal_debounce|C0|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita1~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(1) & (!\deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(1) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita0~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita1~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X9_Y16_N14
\deal_debounce|C0|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita2~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(2) & (\deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(2) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(2) & !\deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita1~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita2~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X9_Y16_N16
\deal_debounce|C0|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita3~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(3) & (!\deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(3) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita2~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita3~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X9_Y16_N18
\deal_debounce|C0|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita4~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(4) & (\deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(4) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(4) & !\deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita3~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita4~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X9_Y16_N20
\deal_debounce|C0|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita5~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(5) & (!\deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(5) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita4~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita5~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X9_Y16_N22
\deal_debounce|C0|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita6~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(6) & (\deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(6) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(6) & !\deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita5~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita6~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X9_Y16_N24
\deal_debounce|C0|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita7~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(7) & (!\deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(7) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita6~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita7~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X9_Y16_N26
\deal_debounce|C0|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita8~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(8) & (\deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(8) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(8) & !\deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita7~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita8~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X9_Y16_N28
\deal_debounce|C0|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita9~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(9) & (!\deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(9) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita8~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita9~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X9_Y16_N30
\deal_debounce|C0|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita10~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(10) & (\deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(10) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(10) & !\deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita9~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita10~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X9_Y15_N0
\deal_debounce|C0|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita11~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(11) & (!\deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(11) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita10~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita11~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X9_Y15_N2
\deal_debounce|C0|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita12~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(12) & (\deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(12) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(12) & !\deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita11~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita12~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X9_Y15_N4
\deal_debounce|C0|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita13~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(13) & (!\deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(13) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita12~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita13~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X9_Y15_N6
\deal_debounce|C0|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita14~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(14) & (\deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(14) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(14) & !\deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita13~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita14~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X9_Y15_N8
\deal_debounce|C0|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita15~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(15) & (!\deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(15) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita14~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita15~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X9_Y15_N10
\deal_debounce|C0|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita16~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(16) & (\deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(16) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(16) & !\deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita15~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita16~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X9_Y15_N12
\deal_debounce|C0|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita17~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(17) & (!\deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(17) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita16~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita17~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X9_Y15_N14
\deal_debounce|C0|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita18~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(18) & (\deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(18) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(18) & !\deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita17~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita18~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X9_Y15_N16
\deal_debounce|C0|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita19~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(19) & (!\deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(19) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita18~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita19~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X9_Y15_N18
\deal_debounce|C0|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita20~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(20) & (\deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\deal_debounce|C0|auto_generated|safe_q\(20) & 
-- (!\deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\ = CARRY((\deal_debounce|C0|auto_generated|safe_q\(20) & !\deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|C0|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita19~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita20~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCCOMB_X9_Y15_N20
\deal_debounce|C0|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita21~combout\ = (\deal_debounce|C0|auto_generated|safe_q\(21) & (!\deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\)) # (!\deal_debounce|C0|auto_generated|safe_q\(21) & 
-- ((\deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \deal_debounce|C0|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\) # (!\deal_debounce|C0|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita20~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita21~combout\,
	cout => \deal_debounce|C0|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X9_Y15_N22
\deal_debounce|C0|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|C0|auto_generated|counter_comb_bita22~combout\ = \deal_debounce|C0|auto_generated|counter_comb_bita21~COUT\ $ (!\deal_debounce|C0|auto_generated|safe_q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \deal_debounce|C0|auto_generated|safe_q\(22),
	cin => \deal_debounce|C0|auto_generated|counter_comb_bita21~COUT\,
	combout => \deal_debounce|C0|auto_generated|counter_comb_bita22~combout\);

-- Location: LCFF_X20_Y14_N11
\stack|S19|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(0));

-- Location: LCFF_X20_Y14_N5
\stack|S19|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(4));

-- Location: LCFF_X20_Y14_N3
\stack|S19|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(2));

-- Location: LCFF_X20_Y14_N25
\stack|S19|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(3));

-- Location: LCFF_X20_Y14_N7
\stack|S19|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(1));

-- Location: LCFF_X20_Y14_N21
\stack|S19|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(5));

-- Location: LCFF_X15_Y17_N13
\stack|S20|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(0));

-- Location: LCFF_X15_Y17_N19
\stack|S20|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(4));

-- Location: LCFF_X15_Y17_N5
\stack|S20|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(2));

-- Location: LCFF_X15_Y17_N3
\stack|S20|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(3));

-- Location: LCFF_X15_Y17_N9
\stack|S20|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(1));

-- Location: LCFF_X15_Y17_N15
\stack|S20|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(5));

-- Location: LCFF_X16_Y17_N25
\stack|S21|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(0));

-- Location: LCFF_X16_Y17_N23
\stack|S21|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(4));

-- Location: LCFF_X16_Y17_N17
\stack|S21|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(2));

-- Location: LCFF_X16_Y17_N3
\stack|S21|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(3));

-- Location: LCFF_X16_Y17_N29
\stack|S21|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(1));

-- Location: LCFF_X16_Y17_N19
\stack|S21|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(5));

-- Location: LCFF_X15_Y17_N17
\stack|S22|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(0));

-- Location: LCFF_X16_Y14_N29
\stack|S22|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(4));

-- Location: LCFF_X15_Y17_N31
\stack|S22|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(2));

-- Location: LCFF_X16_Y14_N7
\stack|S22|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(3));

-- Location: LCFF_X13_Y14_N1
\stack|S22|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(1));

-- Location: LCFF_X16_Y14_N25
\stack|S22|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(5));

-- Location: LCFF_X15_Y16_N5
\stack|S23|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(0));

-- Location: LCFF_X16_Y17_N9
\stack|S23|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(4));

-- Location: LCFF_X16_Y17_N7
\stack|S23|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(2));

-- Location: LCFF_X16_Y17_N13
\stack|S23|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(3));

-- Location: LCFF_X15_Y16_N15
\stack|S23|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(1));

-- Location: LCFF_X16_Y17_N27
\stack|S23|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(5));

-- Location: LCFF_X18_Y15_N29
\stack|S24|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(0));

-- Location: LCFF_X18_Y15_N31
\stack|S24|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(4));

-- Location: LCFF_X18_Y15_N5
\stack|S24|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(2));

-- Location: LCFF_X18_Y15_N27
\stack|S24|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(3));

-- Location: LCFF_X18_Y15_N9
\stack|S24|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(1));

-- Location: LCFF_X18_Y15_N7
\stack|S24|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(5));

-- Location: LCFF_X15_Y15_N1
\stack|S25|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(0));

-- Location: LCFF_X15_Y15_N15
\stack|S25|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(4));

-- Location: LCFF_X16_Y14_N23
\stack|S25|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(2));

-- Location: LCFF_X16_Y14_N9
\stack|S25|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(3));

-- Location: LCFF_X15_Y15_N25
\stack|S25|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(1));

-- Location: LCFF_X16_Y14_N27
\stack|S25|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(5));

-- Location: LCFF_X18_Y15_N1
\stack|S26|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(0));

-- Location: LCFF_X18_Y15_N19
\stack|S26|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(4));

-- Location: LCFF_X18_Y15_N25
\stack|S26|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(2));

-- Location: LCFF_X18_Y15_N23
\stack|S26|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(3));

-- Location: LCFF_X18_Y15_N13
\stack|S26|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(1));

-- Location: LCFF_X18_Y15_N3
\stack|S26|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(5));

-- Location: LCFF_X15_Y15_N23
\stack|S27|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(0));

-- Location: LCFF_X15_Y15_N5
\stack|S27|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(4));

-- Location: LCFF_X15_Y15_N27
\stack|S27|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(2));

-- Location: LCFF_X15_Y15_N21
\stack|S27|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(3));

-- Location: LCFF_X15_Y15_N11
\stack|S27|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(1));

-- Location: LCFF_X15_Y15_N17
\stack|S27|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(5));

-- Location: LCFF_X16_Y16_N5
\stack|S28|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(0));

-- Location: LCFF_X16_Y16_N31
\stack|S28|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(4));

-- Location: LCFF_X16_Y16_N17
\stack|S28|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(2));

-- Location: LCFF_X16_Y16_N15
\stack|S28|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(3));

-- Location: LCFF_X16_Y16_N21
\stack|S28|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(1));

-- Location: LCFF_X16_Y16_N27
\stack|S28|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(5));

-- Location: LCFF_X19_Y14_N1
\stack|S29|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(0));

-- Location: LCFF_X19_Y16_N29
\stack|S29|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(4));

-- Location: LCFF_X19_Y14_N11
\stack|S29|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(2));

-- Location: LCFF_X19_Y17_N1
\stack|S29|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(3));

-- Location: LCFF_X19_Y16_N15
\stack|S29|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(1));

-- Location: LCFF_X19_Y14_N13
\stack|S29|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(5));

-- Location: LCFF_X16_Y16_N13
\stack|S30|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(0));

-- Location: LCFF_X15_Y16_N25
\stack|S30|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(4));

-- Location: LCFF_X19_Y14_N23
\stack|S30|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(2));

-- Location: LCFF_X16_Y16_N3
\stack|S30|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(3));

-- Location: LCFF_X16_Y16_N9
\stack|S30|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(1));

-- Location: LCFF_X15_Y16_N23
\stack|S30|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(5));

-- Location: LCFF_X18_Y16_N13
\stack|S31|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(0));

-- Location: LCFF_X18_Y16_N15
\stack|S31|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(4));

-- Location: LCFF_X18_Y16_N5
\stack|S31|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(2));

-- Location: LCFF_X19_Y16_N21
\stack|S31|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(3));

-- Location: LCFF_X19_Y16_N3
\stack|S31|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(1));

-- Location: LCFF_X19_Y16_N1
\stack|S31|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(5));

-- Location: LCFF_X21_Y14_N21
\stack|S32|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(0));

-- Location: LCFF_X21_Y14_N19
\stack|S32|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(4));

-- Location: LCFF_X21_Y14_N17
\stack|S32|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(2));

-- Location: LCFF_X21_Y14_N7
\stack|S32|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(3));

-- Location: LCFF_X21_Y14_N29
\stack|S32|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(1));

-- Location: LCFF_X21_Y14_N11
\stack|S32|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(5));

-- Location: LCFF_X13_Y12_N5
\stack|S33|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(0));

-- Location: LCFF_X13_Y12_N31
\stack|S33|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(4));

-- Location: LCFF_X13_Y12_N25
\stack|S33|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(2));

-- Location: LCFF_X13_Y12_N23
\stack|S33|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(3));

-- Location: LCFF_X13_Y12_N9
\stack|S33|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(1));

-- Location: LCFF_X13_Y12_N7
\stack|S33|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(5));

-- Location: LCFF_X16_Y12_N5
\stack|S34|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(0));

-- Location: LCFF_X16_Y12_N11
\stack|S34|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(4));

-- Location: LCFF_X16_Y12_N9
\stack|S34|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(2));

-- Location: LCFF_X16_Y12_N27
\stack|S34|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(3));

-- Location: LCFF_X16_Y12_N29
\stack|S34|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(1));

-- Location: LCFF_X16_Y12_N7
\stack|S34|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(5));

-- Location: LCFF_X18_Y12_N9
\stack|S35|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(0));

-- Location: LCFF_X18_Y12_N31
\stack|S35|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(4));

-- Location: LCFF_X18_Y12_N5
\stack|S35|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(2));

-- Location: LCFF_X18_Y12_N23
\stack|S35|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(3));

-- Location: LCFF_X18_Y12_N21
\stack|S35|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(1));

-- Location: LCFF_X18_Y12_N11
\stack|S35|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(5));

-- Location: LCFF_X14_Y11_N1
\stack|S36|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(0));

-- Location: LCFF_X14_Y11_N23
\stack|S36|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(4));

-- Location: LCFF_X14_Y11_N13
\stack|S36|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(2));

-- Location: LCFF_X14_Y11_N11
\stack|S36|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(3));

-- Location: LCFF_X14_Y11_N5
\stack|S36|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(1));

-- Location: LCFF_X14_Y11_N7
\stack|S36|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(5));

-- Location: LCFF_X16_Y11_N5
\stack|S37|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(0));

-- Location: M4K_X17_Y11
\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000100030007000F001F003F007F00FF01FF03FF07FF0FFF1FFF3FFF7FFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:stack|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 36,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 52,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: LCFF_X16_Y11_N15
\stack|S37|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(4));

-- Location: LCFF_X16_Y11_N29
\stack|S37|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(2));

-- Location: LCFF_X16_Y11_N11
\stack|S37|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(3));

-- Location: LCFF_X16_Y11_N25
\stack|S37|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(1));

-- Location: LCFF_X15_Y12_N25
\stack|S37|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(5));

-- Location: LCFF_X14_Y11_N29
\stack|S38|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(0));

-- Location: LCFF_X14_Y11_N15
\stack|S38|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(4));

-- Location: LCFF_X14_Y11_N21
\stack|S38|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(2));

-- Location: LCFF_X14_Y11_N27
\stack|S38|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(3));

-- Location: LCFF_X14_Y11_N25
\stack|S38|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(1));

-- Location: LCFF_X14_Y11_N19
\stack|S38|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(5));

-- Location: LCFF_X20_Y11_N5
\stack|S39|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(0));

-- Location: LCFF_X20_Y11_N3
\stack|S39|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(4));

-- Location: LCFF_X20_Y11_N25
\stack|S39|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(2));

-- Location: LCFF_X20_Y11_N7
\stack|S39|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(3));

-- Location: LCFF_X20_Y11_N1
\stack|S39|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(1));

-- Location: LCFF_X20_Y11_N31
\stack|S39|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(5));

-- Location: LCFF_X16_Y12_N25
\stack|S40|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(0));

-- Location: LCFF_X16_Y12_N3
\stack|S40|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(4));

-- Location: LCFF_X16_Y12_N1
\stack|S40|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(2));

-- Location: LCFF_X16_Y12_N19
\stack|S40|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(3));

-- Location: LCFF_X16_Y12_N13
\stack|S40|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(1));

-- Location: LCFF_X16_Y12_N15
\stack|S40|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(5));

-- Location: LCFF_X13_Y11_N29
\stack|S41|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(0));

-- Location: LCFF_X13_Y11_N27
\stack|S41|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(4));

-- Location: LCFF_X13_Y11_N5
\stack|S41|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(2));

-- Location: LCFF_X13_Y11_N31
\stack|S41|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(3));

-- Location: LCFF_X13_Y11_N13
\stack|S41|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(1));

-- Location: LCFF_X13_Y11_N11
\stack|S41|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(5));

-- Location: LCFF_X13_Y11_N25
\stack|S42|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(0));

-- Location: LCFF_X13_Y11_N23
\stack|S42|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(4));

-- Location: LCFF_X13_Y11_N17
\stack|S42|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(2));

-- Location: LCFF_X13_Y11_N3
\stack|S42|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(3));

-- Location: LCFF_X13_Y11_N1
\stack|S42|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(1));

-- Location: LCFF_X13_Y11_N19
\stack|S42|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(5));

-- Location: LCFF_X18_Y11_N21
\stack|S43|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(0));

-- Location: LCFF_X18_Y11_N7
\stack|S43|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(4));

-- Location: LCFF_X18_Y11_N17
\stack|S43|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(2));

-- Location: LCFF_X18_Y11_N23
\stack|S43|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(3));

-- Location: LCFF_X18_Y11_N25
\stack|S43|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(1));

-- Location: LCFF_X18_Y11_N3
\stack|S43|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(5));

-- Location: LCFF_X19_Y11_N5
\stack|S44|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(0));

-- Location: LCFF_X19_Y11_N3
\stack|S44|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(4));

-- Location: LCFF_X19_Y11_N1
\stack|S44|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(2));

-- Location: LCFF_X20_Y11_N13
\stack|S44|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(3));

-- Location: LCFF_X19_Y11_N7
\stack|S44|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(1));

-- Location: LCFF_X19_Y11_N29
\stack|S44|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(5));

-- Location: LCFF_X15_Y11_N29
\stack|S45|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(0));

-- Location: LCFF_X15_Y11_N11
\stack|S45|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(4));

-- Location: LCFF_X15_Y11_N1
\stack|S45|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(2));

-- Location: LCFF_X15_Y11_N3
\stack|S45|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(3));

-- Location: LCFF_X15_Y11_N13
\stack|S45|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(1));

-- Location: LCFF_X15_Y13_N29
\stack|S45|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(5));

-- Location: LCFF_X18_Y11_N9
\stack|S46|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(0));

-- Location: LCFF_X18_Y11_N19
\stack|S46|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(4));

-- Location: LCFF_X18_Y11_N5
\stack|S46|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(2));

-- Location: LCFF_X18_Y11_N15
\stack|S46|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(3));

-- Location: LCFF_X18_Y11_N1
\stack|S46|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(1));

-- Location: LCFF_X19_Y11_N11
\stack|S46|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(5));

-- Location: LCFF_X15_Y11_N15
\stack|S47|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[47]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(0));

-- Location: LCFF_X15_Y11_N17
\stack|S47|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[47]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(4));

-- Location: LCFF_X15_Y11_N31
\stack|S47|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[47]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(2));

-- Location: LCFF_X15_Y11_N5
\stack|S47|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[47]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(3));

-- Location: LCFF_X15_Y11_N7
\stack|S47|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[47]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(1));

-- Location: LCFF_X15_Y11_N21
\stack|S47|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[47]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(5));

-- Location: LCFF_X15_Y12_N19
\stack|S48|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[48]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(0));

-- Location: LCFF_X15_Y12_N21
\stack|S48|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[48]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(4));

-- Location: LCFF_X16_Y13_N25
\stack|S48|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[48]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(2));

-- Location: LCFF_X15_Y12_N3
\stack|S48|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[48]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(3));

-- Location: LCFF_X15_Y12_N1
\stack|S48|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[48]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(1));

-- Location: LCFF_X15_Y12_N11
\stack|S48|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[48]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(5));

-- Location: LCFF_X18_Y13_N7
\stack|S49|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[49]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(0));

-- Location: LCFF_X18_Y13_N13
\stack|S49|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[49]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(4));

-- Location: LCFF_X18_Y13_N19
\stack|S49|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[49]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(2));

-- Location: LCFF_X18_Y13_N29
\stack|S49|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[49]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(3));

-- Location: LCFF_X18_Y13_N23
\stack|S49|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[49]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(1));

-- Location: LCFF_X18_Y13_N5
\stack|S49|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[49]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(5));

-- Location: LCFF_X16_Y13_N19
\stack|S50|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[50]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(0));

-- Location: LCFF_X16_Y13_N9
\stack|S50|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[50]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(4));

-- Location: LCFF_X16_Y13_N11
\stack|S50|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[50]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(2));

-- Location: LCFF_X16_Y13_N17
\stack|S50|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[50]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(3));

-- Location: LCFF_X16_Y13_N23
\stack|S50|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[50]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(1));

-- Location: LCFF_X16_Y13_N21
\stack|S50|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[50]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(5));

-- Location: LCFF_X16_Y11_N23
\stack|S51|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[0]~0_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[51]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(0));

-- Location: LCFF_X16_Y11_N13
\stack|S51|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[4]~1_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[51]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(4));

-- Location: LCFF_X16_Y11_N3
\stack|S51|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[2]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[51]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(2));

-- Location: LCFF_X16_Y11_N17
\stack|S51|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[3]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[51]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(3));

-- Location: LCFF_X16_Y11_N7
\stack|S51|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[1]~4_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[51]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(1));

-- Location: LCFF_X16_Y11_N21
\stack|S51|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[5]~5_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[51]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(5));

-- Location: LCCOMB_X19_Y14_N16
\stack|M0|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~0_combout\ = (\reg|register_store\(27) & (\reg|register_store\(26))) # (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S5|U1|dffs\(0))) # (!\reg|register_store\(26) & ((\stack|S4|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \reg|register_store\(26),
	datac => \stack|S5|U1|dffs\(0),
	datad => \stack|S4|U1|dffs\(0),
	combout => \stack|M0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X18_Y14_N14
\stack|M0|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~1_combout\ = (\stack|M0|auto_generated|_~0_combout\ & (((\stack|S7|U1|dffs\(0)) # (!\reg|register_store\(27))))) # (!\stack|M0|auto_generated|_~0_combout\ & (\stack|S6|U1|dffs\(0) & ((\reg|register_store\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~0_combout\,
	datab => \stack|S6|U1|dffs\(0),
	datac => \stack|S7|U1|dffs\(0),
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~1_combout\);

-- Location: LCCOMB_X18_Y17_N14
\stack|M0|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~2_combout\ = (\reg|register_store\(26) & ((\reg|register_store\(27)) # ((\stack|S1|U1|dffs\(0))))) # (!\reg|register_store\(26) & (!\reg|register_store\(27) & ((\stack|S0|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \reg|register_store\(27),
	datac => \stack|S1|U1|dffs\(0),
	datad => \stack|S0|U1|dffs\(0),
	combout => \stack|M0|auto_generated|_~2_combout\);

-- Location: LCCOMB_X18_Y17_N24
\stack|M0|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~3_combout\ = (\reg|register_store\(27) & ((\stack|M0|auto_generated|_~2_combout\ & ((\stack|S3|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~2_combout\ & (\stack|S2|U1|dffs\(0))))) # (!\reg|register_store\(27) & 
-- (((\stack|M0|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \stack|S2|U1|dffs\(0),
	datac => \stack|M0|auto_generated|_~2_combout\,
	datad => \stack|S3|U1|dffs\(0),
	combout => \stack|M0|auto_generated|_~3_combout\);

-- Location: LCCOMB_X11_Y13_N12
\stack|M0|auto_generated|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~4_combout\ = (!\reg|register_store\(29) & ((\reg|register_store\(28) & (\stack|M0|auto_generated|_~1_combout\)) # (!\reg|register_store\(28) & ((\stack|M0|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~1_combout\,
	datab => \reg|register_store\(29),
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~3_combout\,
	combout => \stack|M0|auto_generated|_~4_combout\);

-- Location: LCCOMB_X13_Y16_N16
\stack|M0|auto_generated|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~5_combout\ = (\reg|register_store\(26) & ((\reg|register_store\(27) & ((\stack|S15|U1|dffs\(0)))) # (!\reg|register_store\(27) & (\stack|S13|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(0),
	datab => \reg|register_store\(27),
	datac => \stack|S15|U1|dffs\(0),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~5_combout\);

-- Location: LCCOMB_X14_Y13_N12
\stack|M0|auto_generated|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~9_combout\ = (\reg|register_store\(27) & ((\stack|S10|U1|dffs\(0)))) # (!\reg|register_store\(27) & (\stack|S8|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(0),
	datac => \stack|S10|U1|dffs\(0),
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~9_combout\);

-- Location: LCCOMB_X14_Y15_N0
\stack|M0|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~14_combout\ = (\reg|register_store\(26) & (((\reg|register_store\(27)) # (\stack|S1|U1|dffs\(4))))) # (!\reg|register_store\(26) & (\stack|S0|U1|dffs\(4) & (!\reg|register_store\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \stack|S0|U1|dffs\(4),
	datac => \reg|register_store\(27),
	datad => \stack|S1|U1|dffs\(4),
	combout => \stack|M0|auto_generated|_~14_combout\);

-- Location: LCCOMB_X14_Y15_N26
\stack|M0|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~15_combout\ = (\stack|M0|auto_generated|_~14_combout\ & (((\stack|S3|U1|dffs\(4)) # (!\reg|register_store\(27))))) # (!\stack|M0|auto_generated|_~14_combout\ & (\stack|S2|U1|dffs\(4) & ((\reg|register_store\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S2|U1|dffs\(4),
	datab => \stack|M0|auto_generated|_~14_combout\,
	datac => \stack|S3|U1|dffs\(4),
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~15_combout\);

-- Location: LCCOMB_X13_Y15_N12
\stack|M0|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~18_combout\ = (\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S15|U1|dffs\(4))) # (!\reg|register_store\(26) & ((\stack|S14|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(4),
	datab => \reg|register_store\(27),
	datac => \stack|S14|U1|dffs\(4),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~18_combout\);

-- Location: LCCOMB_X13_Y15_N20
\stack|M0|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~20_combout\ = (\reg|register_store\(26) & (\stack|S11|U1|dffs\(4))) # (!\reg|register_store\(26) & ((\stack|S10|U1|dffs\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(4),
	datab => \reg|register_store\(26),
	datad => \stack|S10|U1|dffs\(4),
	combout => \stack|M0|auto_generated|_~20_combout\);

-- Location: LCCOMB_X14_Y15_N24
\stack|M0|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~21_combout\ = (\reg|register_store\(26) & ((\stack|S9|U1|dffs\(4)))) # (!\reg|register_store\(26) & (\stack|S8|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(4),
	datac => \reg|register_store\(26),
	datad => \stack|S9|U1|dffs\(4),
	combout => \stack|M0|auto_generated|_~21_combout\);

-- Location: LCCOMB_X13_Y15_N2
\stack|M0|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~22_combout\ = (!\reg|register_store\(28) & ((\reg|register_store\(27) & (\stack|M0|auto_generated|_~20_combout\)) # (!\reg|register_store\(27) & ((\stack|M0|auto_generated|_~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~20_combout\,
	datab => \reg|register_store\(28),
	datac => \reg|register_store\(27),
	datad => \stack|M0|auto_generated|_~21_combout\,
	combout => \stack|M0|auto_generated|_~22_combout\);

-- Location: LCCOMB_X12_Y15_N10
\stack|M0|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~33_combout\ = (\reg|register_store\(27) & (\stack|S10|U1|dffs\(2))) # (!\reg|register_store\(27) & ((\stack|S8|U1|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datac => \stack|S10|U1|dffs\(2),
	datad => \stack|S8|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~33_combout\);

-- Location: LCCOMB_X11_Y15_N12
\stack|M0|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~45_combout\ = (\reg|register_store\(26) & ((\stack|S9|U1|dffs\(3)))) # (!\reg|register_store\(26) & (\stack|S8|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(26),
	datac => \stack|S8|U1|dffs\(3),
	datad => \stack|S9|U1|dffs\(3),
	combout => \stack|M0|auto_generated|_~45_combout\);

-- Location: LCCOMB_X14_Y16_N30
\stack|M0|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~48_combout\ = (\reg|register_store\(27) & (\reg|register_store\(26))) # (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S5|U1|dffs\(1))) # (!\reg|register_store\(26) & ((\stack|S4|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \reg|register_store\(26),
	datac => \stack|S5|U1|dffs\(1),
	datad => \stack|S4|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~48_combout\);

-- Location: LCCOMB_X14_Y16_N28
\stack|M0|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~49_combout\ = (\stack|M0|auto_generated|_~48_combout\ & ((\stack|S7|U1|dffs\(1)) # ((!\reg|register_store\(27))))) # (!\stack|M0|auto_generated|_~48_combout\ & (((\reg|register_store\(27) & \stack|S6|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(1),
	datab => \stack|M0|auto_generated|_~48_combout\,
	datac => \reg|register_store\(27),
	datad => \stack|S6|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~49_combout\);

-- Location: LCCOMB_X14_Y16_N26
\stack|M0|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~50_combout\ = (\reg|register_store\(26) & (((\reg|register_store\(27))))) # (!\reg|register_store\(26) & ((\reg|register_store\(27) & ((\stack|S2|U1|dffs\(1)))) # (!\reg|register_store\(27) & (\stack|S0|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \stack|S0|U1|dffs\(1),
	datac => \reg|register_store\(27),
	datad => \stack|S2|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~50_combout\);

-- Location: LCCOMB_X14_Y16_N20
\stack|M0|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~51_combout\ = (\stack|M0|auto_generated|_~50_combout\ & (((\stack|S3|U1|dffs\(1)) # (!\reg|register_store\(26))))) # (!\stack|M0|auto_generated|_~50_combout\ & (\stack|S1|U1|dffs\(1) & ((\reg|register_store\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(1),
	datab => \stack|M0|auto_generated|_~50_combout\,
	datac => \stack|S3|U1|dffs\(1),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~51_combout\);

-- Location: LCCOMB_X14_Y16_N2
\stack|M0|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~52_combout\ = (!\reg|register_store\(29) & ((\reg|register_store\(28) & (\stack|M0|auto_generated|_~49_combout\)) # (!\reg|register_store\(28) & ((\stack|M0|auto_generated|_~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(28),
	datab => \stack|M0|auto_generated|_~49_combout\,
	datac => \stack|M0|auto_generated|_~51_combout\,
	datad => \reg|register_store\(29),
	combout => \stack|M0|auto_generated|_~52_combout\);

-- Location: LCCOMB_X20_Y16_N20
\stack|M0|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~62_combout\ = (\reg|register_store\(26) & ((\stack|S1|U1|dffs\(5)) # ((\reg|register_store\(27))))) # (!\reg|register_store\(26) & (((!\reg|register_store\(27) & \stack|S0|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \stack|S1|U1|dffs\(5),
	datac => \reg|register_store\(27),
	datad => \stack|S0|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~62_combout\);

-- Location: LCCOMB_X20_Y16_N6
\stack|M0|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~63_combout\ = (\reg|register_store\(27) & ((\stack|M0|auto_generated|_~62_combout\ & ((\stack|S3|U1|dffs\(5)))) # (!\stack|M0|auto_generated|_~62_combout\ & (\stack|S2|U1|dffs\(5))))) # (!\reg|register_store\(27) & 
-- (((\stack|M0|auto_generated|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \stack|S2|U1|dffs\(5),
	datac => \stack|M0|auto_generated|_~62_combout\,
	datad => \stack|S3|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~63_combout\);

-- Location: LCCOMB_X13_Y16_N6
\stack|M0|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~66_combout\ = (\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S15|U1|dffs\(5))) # (!\reg|register_store\(26) & ((\stack|S14|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \reg|register_store\(27),
	datac => \stack|S15|U1|dffs\(5),
	datad => \stack|S14|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~66_combout\);

-- Location: LCCOMB_X1_Y20_N14
\modulo|A1|b2v_inst5|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A1|b2v_inst5|Cout~1_combout\ = (\stack|M0|auto_generated|_~70_combout\) # ((\stack|M0|auto_generated|_~59_combout\ & \stack|M0|auto_generated|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~70_combout\,
	datac => \stack|M0|auto_generated|_~59_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \modulo|A1|b2v_inst5|Cout~1_combout\);

-- Location: LCCOMB_X2_Y20_N26
\modulo|A1|b2v_inst6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A1|b2v_inst6|S~combout\ = \modulo|A1|b2v_inst5|Cout~2_combout\ $ (\stack|M0|auto_generated|_~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datac => \stack|M0|auto_generated|_~23_combout\,
	combout => \modulo|A1|b2v_inst6|S~combout\);

-- Location: LCCOMB_X1_Y20_N20
\modulo|A5|b2v_inst1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A5|b2v_inst1|Cout~0_combout\ = (\modulo|A1|b2v_inst7|S~combout\ & (\stack|M0|auto_generated|_~59_combout\ & ((\stack|M0|auto_generated|_~11_combout\) # (!\modulo|A1|b2v_inst6|S~combout\)))) # (!\modulo|A1|b2v_inst7|S~combout\ & 
-- (\modulo|A1|b2v_inst6|S~combout\ & ((\stack|M0|auto_generated|_~59_combout\) # (\stack|M0|auto_generated|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A1|b2v_inst6|S~combout\,
	datab => \modulo|A1|b2v_inst7|S~combout\,
	datac => \stack|M0|auto_generated|_~59_combout\,
	datad => \stack|M0|auto_generated|_~11_combout\,
	combout => \modulo|A5|b2v_inst1|Cout~0_combout\);

-- Location: LCCOMB_X16_Y16_N10
\stack|S1|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S0|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S2|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S0|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S0|U1|dffs\(0),
	datad => \stack|S2|U1|dffs\(0),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y14_N10
\stack|S0|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & (!\stack_mode~combout\(0) & \stack|S1|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S1|U1|dffs\(0),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y15_N18
\stack|S5|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S4|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S6|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S4|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack|S6|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y14_N22
\stack|S7|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S6|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S8|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S6|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S6|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S8|U1|dffs\(4),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y15_N6
\stack|S2|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S1|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S3|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S1|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(4),
	datab => \stack|S1|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y15_N4
\stack|S1|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S0|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S2|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S0|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S2|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack|S0|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y14_N26
\stack|S0|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & (!\stack_mode~combout\(0) & \stack|S1|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S1|U1|dffs\(4),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y15_N10
\stack|S3|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S2|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S4|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S2|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack|S2|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y15_N4
\stack|S12|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S11|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S13|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S11|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S13|U1|dffs\(4),
	datac => \stack|S11|U1|dffs\(4),
	datad => \stack_mode~combout\(0),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y14_N20
\stack|S15|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S14|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S16|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S14|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S16|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S14|U1|dffs\(4),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y15_N24
\stack|S11|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S10|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S12|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S10|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S12|U1|dffs\(4),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y15_N10
\stack|S10|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S9|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S11|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S9|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(4),
	datab => \stack|S9|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y14_N6
\stack|S9|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S8|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S10|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S8|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S8|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S10|U1|dffs\(4),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y15_N8
\stack|S8|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S7|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S9|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S7|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(4),
	datab => \stack|S9|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y15_N16
\stack|S7|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S6|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S8|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S6|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(2),
	datab => \stack|S6|U1|dffs\(2),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X12_Y15_N16
\stack|S14|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S13|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S15|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S13|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S15|U1|dffs\(2),
	datad => \stack|S13|U1|dffs\(2),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X12_Y15_N20
\stack|S11|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S10|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S12|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S10|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S12|U1|dffs\(2),
	datac => \stack|S10|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X12_Y15_N28
\stack|S10|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S9|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S11|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S9|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(2),
	datab => \stack_mode~combout\(1),
	datac => \stack|S9|U1|dffs\(2),
	datad => \stack_mode~combout\(0),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y14_N20
\stack|S5|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S4|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S6|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S4|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S6|U1|dffs\(3),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y17_N22
\stack|S1|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S0|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S2|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S0|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S0|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S2|U1|dffs\(3),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X13_Y14_N30
\stack|S12|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S11|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S13|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S11|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S11|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S13|U1|dffs\(3),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y16_N8
\stack|S6|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S5|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S7|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S5|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S5|U1|dffs\(1),
	datad => \stack|S7|U1|dffs\(1),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y16_N18
\stack|S5|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S4|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S6|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S4|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S4|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S6|U1|dffs\(1),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y16_N24
\stack|S4|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S3|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S5|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S3|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S3|U1|dffs\(1),
	datac => \stack|S5|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y16_N22
\stack|S1|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S0|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S2|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S0|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S2|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S0|U1|dffs\(1),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y16_N0
\stack|S2|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S1|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S3|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S1|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S3|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S1|U1|dffs\(1),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X18_Y14_N24
\stack|S0|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & (!\stack_mode~combout\(0) & \stack|S1|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S1|U1|dffs\(1),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y16_N6
\stack|S3|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S2|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S4|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S2|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S4|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S2|U1|dffs\(1),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X13_Y16_N8
\stack|S13|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S12|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S14|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S12|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S12|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S14|U1|dffs\(5),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y14_N20
\stack|S15|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S14|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S16|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S14|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S16|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S14|U1|dffs\(5),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y16_N4
\stack|S14|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S13|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S15|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S13|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack|S15|U1|dffs\(5),
	datad => \stack_mode~combout\(1),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y12_N12
\dealer|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux4~3_combout\ = (\dealer|state\(1) & (!\stack|C0|auto_generated|safe_q\(5) & (\dealer|state\(0) & !\stack|C0|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dealer|state\(1),
	datab => \stack|C0|auto_generated|safe_q\(5),
	datac => \dealer|state\(0),
	datad => \stack|C0|auto_generated|safe_q\(4),
	combout => \dealer|Mux4~3_combout\);

-- Location: LCFF_X8_Y15_N21
\deal_debounce|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \deal_debounce|state[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|state\(1));

-- Location: LCFF_X8_Y15_N1
\deal_debounce|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \deal_debounce|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|state\(0));

-- Location: LCFF_X8_Y15_N9
\deal_debounce|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \deal_debounce|state[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|state\(2));

-- Location: LCCOMB_X8_Y15_N12
\deal_debounce|output\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|output~combout\ = (!\deal_debounce|state\(2) & (\deal_debounce|state\(1) & \deal_debounce|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|state\(2),
	datac => \deal_debounce|state\(1),
	datad => \deal_debounce|state\(0),
	combout => \deal_debounce|output~combout\);

-- Location: LCCOMB_X14_Y14_N22
\stack|S16|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S15|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S17|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S15|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S15|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S17|U1|dffs\(4),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X12_Y15_N22
\stack|S16|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S15|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S17|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S15|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S15|U1|dffs\(2),
	datad => \stack|S17|U1|dffs\(2),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X11_Y15_N18
\stack|S16|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S15|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S17|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S15|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(3),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S17|U1|dffs\(3),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y13_N0
\stack|S16|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S15|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S17|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S15|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S15|U1|dffs\(5),
	datac => \stack|S17|U1|dffs\(5),
	datad => \stack_mode~combout\(1),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X8_Y15_N24
\deal_debounce|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~0_combout\ = (!\deal_debounce|state\(1) & (!\raw_deal~combout\ & (!\deal_debounce|state\(2) & !\deal_debounce|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|state\(1),
	datab => \raw_deal~combout\,
	datac => \deal_debounce|state\(2),
	datad => \deal_debounce|state\(0),
	combout => \deal_debounce|process_0~0_combout\);

-- Location: LCCOMB_X8_Y15_N14
\deal_debounce|state[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|state[1]~2_combout\ = (\deal_debounce|state\(2) & ((\deal_debounce|state\(0)))) # (!\deal_debounce|state\(2) & (\raw_deal~combout\ & !\deal_debounce|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deal_debounce|state\(2),
	datac => \raw_deal~combout\,
	datad => \deal_debounce|state\(0),
	combout => \deal_debounce|state[1]~2_combout\);

-- Location: LCCOMB_X8_Y15_N6
\deal_debounce|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~1_combout\ = (!\deal_debounce|state\(1) & (\deal_debounce|state\(0) & (\deal_debounce|state\(2) & \deal_debounce|C0|auto_generated|safe_q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|state\(1),
	datab => \deal_debounce|state\(0),
	datac => \deal_debounce|state\(2),
	datad => \deal_debounce|C0|auto_generated|safe_q\(22),
	combout => \deal_debounce|process_0~1_combout\);

-- Location: LCCOMB_X9_Y15_N24
\deal_debounce|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~2_combout\ = (\deal_debounce|C0|auto_generated|safe_q\(19) & (\deal_debounce|C0|auto_generated|safe_q\(18) & (\deal_debounce|C0|auto_generated|safe_q\(21) & \deal_debounce|C0|auto_generated|safe_q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(19),
	datab => \deal_debounce|C0|auto_generated|safe_q\(18),
	datac => \deal_debounce|C0|auto_generated|safe_q\(21),
	datad => \deal_debounce|C0|auto_generated|safe_q\(20),
	combout => \deal_debounce|process_0~2_combout\);

-- Location: LCCOMB_X9_Y15_N30
\deal_debounce|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~3_combout\ = (\deal_debounce|C0|auto_generated|safe_q\(17) & (\deal_debounce|C0|auto_generated|safe_q\(16) & (\deal_debounce|C0|auto_generated|safe_q\(15) & \deal_debounce|C0|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(17),
	datab => \deal_debounce|C0|auto_generated|safe_q\(16),
	datac => \deal_debounce|C0|auto_generated|safe_q\(15),
	datad => \deal_debounce|C0|auto_generated|safe_q\(14),
	combout => \deal_debounce|process_0~3_combout\);

-- Location: LCCOMB_X8_Y15_N22
\deal_debounce|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~4_combout\ = (\deal_debounce|C0|auto_generated|safe_q\(12) & (\deal_debounce|C0|auto_generated|safe_q\(13) & (\deal_debounce|C0|auto_generated|safe_q\(11) & \deal_debounce|C0|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(12),
	datab => \deal_debounce|C0|auto_generated|safe_q\(13),
	datac => \deal_debounce|C0|auto_generated|safe_q\(11),
	datad => \deal_debounce|C0|auto_generated|safe_q\(10),
	combout => \deal_debounce|process_0~4_combout\);

-- Location: LCCOMB_X8_Y15_N26
\deal_debounce|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~5_combout\ = (\deal_debounce|process_0~1_combout\ & (\deal_debounce|process_0~3_combout\ & (\deal_debounce|process_0~2_combout\ & \deal_debounce|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|process_0~1_combout\,
	datab => \deal_debounce|process_0~3_combout\,
	datac => \deal_debounce|process_0~2_combout\,
	datad => \deal_debounce|process_0~4_combout\,
	combout => \deal_debounce|process_0~5_combout\);

-- Location: LCCOMB_X9_Y16_N8
\deal_debounce|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~6_combout\ = (\deal_debounce|C0|auto_generated|safe_q\(6) & (\deal_debounce|C0|auto_generated|safe_q\(9) & (\deal_debounce|C0|auto_generated|safe_q\(7) & \deal_debounce|C0|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(6),
	datab => \deal_debounce|C0|auto_generated|safe_q\(9),
	datac => \deal_debounce|C0|auto_generated|safe_q\(7),
	datad => \deal_debounce|C0|auto_generated|safe_q\(8),
	combout => \deal_debounce|process_0~6_combout\);

-- Location: LCCOMB_X9_Y16_N2
\deal_debounce|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~7_combout\ = (\deal_debounce|C0|auto_generated|safe_q\(5) & (\deal_debounce|C0|auto_generated|safe_q\(2) & (\deal_debounce|C0|auto_generated|safe_q\(3) & \deal_debounce|C0|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(5),
	datab => \deal_debounce|C0|auto_generated|safe_q\(2),
	datac => \deal_debounce|C0|auto_generated|safe_q\(3),
	datad => \deal_debounce|C0|auto_generated|safe_q\(4),
	combout => \deal_debounce|process_0~7_combout\);

-- Location: LCCOMB_X9_Y16_N0
\deal_debounce|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~8_combout\ = (\deal_debounce|C0|auto_generated|safe_q\(0) & (\deal_debounce|C0|auto_generated|safe_q\(1) & (\deal_debounce|process_0~6_combout\ & \deal_debounce|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|C0|auto_generated|safe_q\(0),
	datab => \deal_debounce|C0|auto_generated|safe_q\(1),
	datac => \deal_debounce|process_0~6_combout\,
	datad => \deal_debounce|process_0~7_combout\,
	combout => \deal_debounce|process_0~8_combout\);

-- Location: LCCOMB_X8_Y15_N30
\deal_debounce|state[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|state[1]~3_combout\ = (!\deal_debounce|state\(1) & (\deal_debounce|state[1]~2_combout\ & ((!\deal_debounce|process_0~5_combout\) # (!\deal_debounce|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|state\(1),
	datab => \deal_debounce|state[1]~2_combout\,
	datac => \deal_debounce|process_0~8_combout\,
	datad => \deal_debounce|process_0~5_combout\,
	combout => \deal_debounce|state[1]~3_combout\);

-- Location: LCCOMB_X8_Y15_N20
\deal_debounce|state[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|state[1]~4_combout\ = (\deal_debounce|process_0~0_combout\ & !\deal_debounce|state[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deal_debounce|process_0~0_combout\,
	datad => \deal_debounce|state[1]~3_combout\,
	combout => \deal_debounce|state[1]~4_combout\);

-- Location: LCCOMB_X8_Y15_N16
\deal_debounce|state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|state~5_combout\ = (\deal_debounce|state\(1) & (((!\deal_debounce|state\(0))))) # (!\deal_debounce|state\(1) & ((\deal_debounce|state\(2) & ((!\deal_debounce|state\(0)))) # (!\deal_debounce|state\(2) & ((\raw_deal~combout\) # 
-- (\deal_debounce|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|state\(1),
	datab => \deal_debounce|state\(2),
	datac => \raw_deal~combout\,
	datad => \deal_debounce|state\(0),
	combout => \deal_debounce|state~5_combout\);

-- Location: LCCOMB_X8_Y15_N18
\deal_debounce|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|process_0~9_combout\ = (\deal_debounce|process_0~8_combout\ & \deal_debounce|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \deal_debounce|process_0~8_combout\,
	datad => \deal_debounce|process_0~5_combout\,
	combout => \deal_debounce|process_0~9_combout\);

-- Location: LCCOMB_X8_Y15_N0
\deal_debounce|state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|state~6_combout\ = (!\deal_debounce|state~5_combout\ & (((!\deal_debounce|state\(1) & !\deal_debounce|process_0~9_combout\)) # (!\deal_debounce|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|state~5_combout\,
	datab => \deal_debounce|state\(2),
	datac => \deal_debounce|state\(1),
	datad => \deal_debounce|process_0~9_combout\,
	combout => \deal_debounce|state~6_combout\);

-- Location: LCCOMB_X16_Y15_N16
\stack|S17|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S16|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S18|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S16|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(4),
	datab => \stack|S18|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y14_N20
\stack|S17|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S16|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S18|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S16|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S16|U1|dffs\(2),
	datad => \stack|S18|U1|dffs\(2),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y14_N2
\stack|S17|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S16|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S18|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S16|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S16|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S18|U1|dffs\(3),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X11_Y14_N12
\stack|S17|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S16|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S18|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S16|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S18|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y14_N14
\stack|S17|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S16|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S18|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S16|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(5),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S18|U1|dffs\(5),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCFF_X8_Y15_N29
\deal_debounce|enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \deal_debounce|enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deal_debounce|enable~regout\);

-- Location: LCCOMB_X15_Y14_N12
\stack|S18|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S17|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S19|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S17|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S17|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S19|U1|dffs\(4),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y15_N6
\stack|S18|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S17|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S19|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S17|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S19|U1|dffs\(2),
	datad => \stack|S17|U1|dffs\(2),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y14_N4
\stack|S18|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S17|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S19|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S17|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S17|U1|dffs\(3),
	datac => \stack|S19|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y14_N22
\stack|S18|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S17|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S19|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S17|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S17|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S19|U1|dffs\(1),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X20_Y14_N28
\stack|S18|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S17|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S19|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S17|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S17|U1|dffs\(5),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X8_Y15_N28
\deal_debounce|enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|enable~0_combout\ = (!\deal_debounce|process_0~0_combout\ & ((\deal_debounce|output~combout\) # ((\deal_debounce|enable~regout\ & !\deal_debounce|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|process_0~0_combout\,
	datab => \deal_debounce|output~combout\,
	datac => \deal_debounce|enable~regout\,
	datad => \deal_debounce|process_0~9_combout\,
	combout => \deal_debounce|enable~0_combout\);

-- Location: LCCOMB_X19_Y14_N26
\stack|S19|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S18|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S20|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S18|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U1|dffs\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S18|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y14_N14
\stack|enableArray[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[19]~19_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(19),
	combout => \stack|enableArray[19]~19_combout\);

-- Location: LCCOMB_X15_Y16_N28
\stack|S19|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S18|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S20|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S18|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S18|U1|dffs\(4),
	datad => \stack|S20|U1|dffs\(4),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y17_N20
\stack|S19|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S18|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S20|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S18|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S20|U1|dffs\(2),
	datac => \stack|S18|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y14_N4
\stack|S19|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S18|U1|dffs\(3)))) # (!\stack_mode~combout\(0) & (\stack|S20|U1|dffs\(3))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S18|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S20|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack|S18|U1|dffs\(3),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X11_Y14_N2
\stack|S19|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S18|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S20|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S18|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S18|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y14_N8
\stack|S19|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S18|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S20|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S18|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S20|U1|dffs\(5),
	datad => \stack|S18|U1|dffs\(5),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y17_N4
\stack|S20|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S19|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S19|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S21|U1|dffs\(0),
	datad => \stack|S19|U1|dffs\(0),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y17_N14
\stack|enableArray[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[20]~20_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(20),
	combout => \stack|enableArray[20]~20_combout\);

-- Location: LCCOMB_X16_Y17_N20
\stack|S20|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S19|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S19|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S21|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack|S19|U1|dffs\(4),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y17_N6
\stack|S20|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S19|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S21|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S19|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(2),
	datab => \stack_mode~combout\(1),
	datac => \stack|S21|U1|dffs\(2),
	datad => \stack_mode~combout\(0),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y17_N10
\stack|S20|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S19|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S21|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S19|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S21|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S19|U1|dffs\(3),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y16_N12
\stack|S20|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S19|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S19|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S19|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y17_N0
\stack|S20|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S19|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S21|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S19|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S19|U1|dffs\(5),
	datac => \stack|S21|U1|dffs\(5),
	datad => \stack_mode~combout\(1),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y17_N22
\stack|S21|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S20|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S22|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S20|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S22|U1|dffs\(0),
	datad => \stack|S20|U1|dffs\(0),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y17_N10
\stack|enableArray[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[21]~21_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(21),
	combout => \stack|enableArray[21]~21_combout\);

-- Location: LCCOMB_X15_Y16_N2
\stack|S21|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S20|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S22|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S20|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S20|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack|S22|U1|dffs\(4),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y17_N24
\stack|S21|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S20|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S22|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S20|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S22|U1|dffs\(2),
	datac => \stack|S20|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y17_N0
\stack|S21|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S20|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S22|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S20|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S20|U1|dffs\(3),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X13_Y13_N12
\stack|S21|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S20|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S22|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S20|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S22|U1|dffs\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S20|U1|dffs\(1),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y17_N10
\stack|S21|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S20|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S22|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S20|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S20|U1|dffs\(5),
	datad => \stack|S22|U1|dffs\(5),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y16_N0
\stack|S22|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S23|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S21|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S23|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N20
\stack|enableArray[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[22]~22_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \dealer|stack_enable~combout\,
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(22),
	datad => \stack_mode~combout\(0),
	combout => \stack|enableArray[22]~22_combout\);

-- Location: LCCOMB_X16_Y14_N18
\stack|S22|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S21|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S23|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S21|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S23|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S21|U1|dffs\(4),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X16_Y17_N30
\stack|S22|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S21|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S23|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S21|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S23|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack|S21|U1|dffs\(2),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y17_N12
\stack|S22|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S23|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S21|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S21|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S23|U1|dffs\(3),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y15_N22
\stack|S22|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S23|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S21|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S23|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N22
\stack|S22|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S21|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S23|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S21|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S21|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S23|U1|dffs\(5),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y16_N14
\stack|S23|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S22|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S24|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S22|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S22|U1|dffs\(0),
	datad => \stack|S24|U1|dffs\(0),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N12
\stack|enableArray[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[23]~23_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(1),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(23),
	combout => \stack|enableArray[23]~23_combout\);

-- Location: LCCOMB_X15_Y16_N30
\stack|S23|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S22|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S24|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S22|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S24|U1|dffs\(4),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y17_N28
\stack|S23|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S22|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S24|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S22|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S22|U1|dffs\(2),
	datac => \stack|S24|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y17_N26
\stack|S23|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S22|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S24|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S22|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S24|U1|dffs\(3),
	datac => \stack|S22|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y13_N22
\stack|S23|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S22|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S24|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S22|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S24|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S22|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y16_N12
\stack|S23|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S22|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S24|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S22|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S22|U1|dffs\(5),
	datad => \stack|S24|U1|dffs\(5),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y16_N16
\stack|S24|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S23|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S25|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S23|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S23|U1|dffs\(0),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y15_N20
\stack|enableArray[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[24]~24_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(24),
	combout => \stack|enableArray[24]~24_combout\);

-- Location: LCCOMB_X15_Y15_N12
\stack|S24|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S23|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S25|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S23|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S23|U1|dffs\(4),
	datac => \stack|S25|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y15_N24
\stack|S24|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S23|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S25|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S23|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S23|U1|dffs\(2),
	datac => \stack|S25|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y17_N22
\stack|S24|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S23|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S25|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S23|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S23|U1|dffs\(3),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y15_N28
\stack|S24|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S23|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S25|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S23|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S23|U1|dffs\(1),
	datab => \stack|S25|U1|dffs\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N24
\stack|S24|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S23|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S25|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S23|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S23|U1|dffs\(5),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y15_N14
\stack|S25|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S24|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S26|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S24|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S24|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S26|U1|dffs\(0),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N2
\stack|enableArray[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[25]~25_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(1),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(25),
	combout => \stack|enableArray[25]~25_combout\);

-- Location: LCCOMB_X15_Y16_N18
\stack|S25|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S24|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S26|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S24|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S26|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack|S24|U1|dffs\(4),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y15_N16
\stack|S25|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S24|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S26|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S24|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(2),
	datab => \stack|S24|U1|dffs\(2),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y13_N20
\stack|S25|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S24|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S26|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S24|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S24|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack|S26|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N4
\stack|S25|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S24|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S26|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S24|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S24|U1|dffs\(1),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y16_N20
\stack|S25|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S24|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S26|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S24|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S26|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S24|U1|dffs\(5),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y15_N18
\stack|S26|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S25|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S27|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S25|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(0),
	datac => \stack|S27|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y15_N10
\stack|enableArray[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[26]~26_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(26),
	combout => \stack|enableArray[26]~26_combout\);

-- Location: LCCOMB_X15_Y15_N8
\stack|S26|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S25|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S27|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S25|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(4),
	datac => \stack|S27|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y15_N2
\stack|S26|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S25|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S27|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S25|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(2),
	datac => \stack|S27|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y17_N20
\stack|S26|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S25|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S27|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S25|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S25|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S27|U1|dffs\(3),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y15_N28
\stack|S26|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S25|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S27|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S25|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S25|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N30
\stack|S26|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S25|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S27|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S25|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S25|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S27|U1|dffs\(5),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y16_N10
\stack|S27|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S26|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S28|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S26|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S26|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y15_N30
\stack|enableArray[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[27]~27_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dealer|stack_enable~combout\,
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(27),
	combout => \stack|enableArray[27]~27_combout\);

-- Location: LCCOMB_X15_Y16_N16
\stack|S27|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S26|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S28|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S26|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S26|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack|S28|U1|dffs\(4),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y15_N14
\stack|S27|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S26|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S28|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S26|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(2),
	datab => \stack|S28|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y15_N30
\stack|S27|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S26|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S28|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S26|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S26|U1|dffs\(3),
	datac => \stack|S28|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N10
\stack|S27|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S26|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S28|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S26|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S26|U1|dffs\(1),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y16_N26
\stack|S27|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S26|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S28|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S26|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(5),
	datab => \stack|S26|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y15_N22
\stack|S28|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S27|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S29|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S27|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S29|U1|dffs\(0),
	datac => \stack|S27|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\stack|enableArray[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[28]~28_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(28),
	combout => \stack|enableArray[28]~28_combout\);

-- Location: LCCOMB_X16_Y16_N18
\stack|S28|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S27|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S29|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S27|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(4),
	datab => \stack_mode~combout\(1),
	datac => \stack|S29|U1|dffs\(4),
	datad => \stack_mode~combout\(0),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y15_N0
\stack|S28|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S27|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S29|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S27|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S29|U1|dffs\(2),
	datac => \stack|S27|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y17_N6
\stack|S28|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S27|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S29|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S27|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S29|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S27|U1|dffs\(3),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y16_N26
\stack|S28|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S27|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S29|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S27|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S29|U1|dffs\(1),
	datac => \stack|S27|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X16_Y16_N24
\stack|S28|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S27|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S29|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S27|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(5),
	datab => \stack_mode~combout\(1),
	datac => \stack|S29|U1|dffs\(5),
	datad => \stack_mode~combout\(0),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y16_N22
\stack|S29|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S28|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S30|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S28|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S28|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y14_N22
\stack|enableArray[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[29]~29_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(29),
	combout => \stack|enableArray[29]~29_combout\);

-- Location: LCCOMB_X15_Y16_N8
\stack|S29|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S28|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S30|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S28|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(4),
	datab => \stack|S28|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y14_N30
\stack|S29|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S28|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S30|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S28|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S30|U1|dffs\(2),
	datac => \stack|S28|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y16_N0
\stack|S29|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S28|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S30|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S28|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack|S28|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y16_N12
\stack|S29|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S28|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S30|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S28|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S28|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y16_N6
\stack|S29|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S28|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S30|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S28|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(5),
	datab => \stack|S30|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y15_N30
\stack|S30|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S29|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S31|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S29|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S29|U1|dffs\(0),
	datac => \stack|S31|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N16
\stack|enableArray[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[30]~30_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(1),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(30),
	combout => \stack|enableArray[30]~30_combout\);

-- Location: LCCOMB_X19_Y16_N6
\stack|S30|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S29|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S31|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S29|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S29|U1|dffs\(4),
	datad => \stack|S31|U1|dffs\(4),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y14_N28
\stack|S30|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S29|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S31|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S29|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(2),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S31|U1|dffs\(2),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y17_N16
\stack|S30|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S29|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S31|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S29|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S29|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S31|U1|dffs\(3),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y16_N24
\stack|S30|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S29|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S31|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S29|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S31|U1|dffs\(1),
	datac => \stack|S29|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y16_N18
\stack|S30|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S29|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S31|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S29|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S31|U1|dffs\(5),
	datac => \stack|S29|U1|dffs\(5),
	datad => \stack_mode~combout\(1),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y16_N6
\stack|S31|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S30|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S32|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S30|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S32|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y16_N30
\stack|enableArray[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[31]~31_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(31),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[31]~31_combout\);

-- Location: LCCOMB_X14_Y16_N10
\stack|S31|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S30|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S32|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S30|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S32|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S30|U1|dffs\(4),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y16_N8
\stack|S31|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S30|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S32|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S30|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S30|U1|dffs\(2),
	datac => \stack|S32|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y16_N22
\stack|S31|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S30|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S32|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S30|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S32|U1|dffs\(3),
	datac => \stack|S30|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y16_N16
\stack|S31|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S30|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S32|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S30|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S32|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X20_Y16_N30
\stack|S31|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S30|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S32|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S30|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S32|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S30|U1|dffs\(5),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X21_Y14_N22
\stack|S32|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S31|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S33|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S31|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S31|U1|dffs\(0),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\stack|enableArray[32]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[32]~32_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(32),
	combout => \stack|enableArray[32]~32_combout\);

-- Location: LCCOMB_X21_Y14_N2
\stack|S32|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S31|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S33|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S31|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S33|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack|S31|U1|dffs\(4),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y14_N18
\stack|S32|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S31|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S33|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S31|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S31|U1|dffs\(2),
	datac => \stack|S33|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X21_Y14_N0
\stack|S32|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S31|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S33|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S31|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S31|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack|S33|U1|dffs\(3),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y16_N10
\stack|S32|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S31|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S33|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S31|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S31|U1|dffs\(1),
	datac => \stack|S33|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X21_Y14_N26
\stack|S32|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S31|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S33|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S31|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S31|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S33|U1|dffs\(5),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y12_N24
\stack|S33|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S32|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S34|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S32|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(0),
	datab => \stack|S32|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y12_N20
\stack|enableArray[33]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[33]~33_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(33),
	combout => \stack|enableArray[33]~33_combout\);

-- Location: LCCOMB_X12_Y12_N24
\stack|S33|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S32|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S34|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S32|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S34|U1|dffs\(4),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\stack|S33|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S32|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S34|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S32|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S32|U1|dffs\(2),
	datac => \stack_mode~combout\(1),
	datad => \stack|S34|U1|dffs\(2),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y12_N18
\stack|S33|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S32|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S34|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S32|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(3),
	datab => \stack|S34|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N28
\stack|S33|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S32|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S34|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S32|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(1),
	datab => \stack|S34|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X13_Y12_N2
\stack|S33|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S32|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S34|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S32|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S32|U1|dffs\(5),
	datac => \stack|S34|U1|dffs\(5),
	datad => \stack_mode~combout\(0),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y12_N0
\stack|S34|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S33|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S35|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S33|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S33|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y12_N16
\stack|enableArray[34]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[34]~34_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(34),
	combout => \stack|enableArray[34]~34_combout\);

-- Location: LCCOMB_X18_Y12_N28
\stack|S34|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S33|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S35|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S33|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S35|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S33|U1|dffs\(4),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y12_N14
\stack|S34|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S33|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S35|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S33|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S33|U1|dffs\(2),
	datad => \stack|S35|U1|dffs\(2),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y12_N12
\stack|S34|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S33|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S35|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S33|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S35|U1|dffs\(3),
	datad => \stack|S33|U1|dffs\(3),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y12_N30
\stack|S34|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S33|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S35|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S33|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S35|U1|dffs\(1),
	datac => \stack|S33|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X13_Y12_N28
\stack|S34|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S33|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S35|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S33|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack|S35|U1|dffs\(5),
	datad => \stack_mode~combout\(1),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y12_N26
\stack|S35|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S34|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S36|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S34|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S34|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S36|U1|dffs\(0),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y12_N0
\stack|enableArray[35]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[35]~35_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(35),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[35]~35_combout\);

-- Location: LCCOMB_X14_Y12_N22
\stack|S35|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S34|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S36|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S34|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack|S36|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\stack|S35|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S34|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S36|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S34|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S34|U1|dffs\(2),
	datac => \stack_mode~combout\(1),
	datad => \stack|S36|U1|dffs\(2),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y13_N18
\stack|S35|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S34|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S36|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S34|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack|S34|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N8
\stack|S35|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S34|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S36|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S34|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(1),
	datab => \stack|S36|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y12_N6
\stack|S35|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S34|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S36|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S34|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(5),
	datab => \stack|S34|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y12_N18
\stack|S36|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S35|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S37|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S35|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S37|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y11_N16
\stack|enableArray[36]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[36]~36_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(36),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[36]~36_combout\);

-- Location: LCCOMB_X18_Y12_N12
\stack|S36|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S35|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S37|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S35|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S35|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S37|U1|dffs\(4),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y12_N12
\stack|S36|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S35|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S37|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S35|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S37|U1|dffs\(2),
	datad => \stack|S35|U1|dffs\(2),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y12_N20
\stack|S36|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S35|U1|dffs\(3)))) # (!\stack_mode~combout\(0) & (\stack|S37|U1|dffs\(3))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S35|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(3),
	datab => \stack|S35|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N26
\stack|S36|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S35|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S37|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S35|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(1),
	datab => \stack|S35|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y12_N26
\stack|S36|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S35|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S37|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S35|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S37|U1|dffs\(5),
	datad => \stack|S35|U1|dffs\(5),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y12_N18
\stack|S37|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S36|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S38|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S36|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S38|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S36|U1|dffs\(0),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y11_N18
\stack|enableArray[37]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[37]~37_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(37),
	combout => \stack|enableArray[37]~37_combout\);

-- Location: LCCOMB_X14_Y12_N2
\stack|S37|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S36|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S38|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S36|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(4),
	datab => \stack|S38|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y11_N30
\stack|S37|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S36|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S38|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S36|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S38|U1|dffs\(2),
	datad => \stack|S36|U1|dffs\(2),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y13_N12
\stack|S37|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S36|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S38|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S36|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S36|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S38|U1|dffs\(3),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N12
\stack|S37|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S36|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S38|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S36|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S36|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y12_N14
\stack|S37|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S36|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S38|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S36|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(5),
	datab => \stack|S38|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X20_Y11_N26
\stack|S38|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S37|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S39|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S37|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S39|U1|dffs\(0),
	datac => \stack|S37|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y11_N8
\stack|enableArray[38]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[38]~38_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(38),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[38]~38_combout\);

-- Location: LCCOMB_X18_Y12_N24
\stack|S38|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S37|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S39|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S37|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S39|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S37|U1|dffs\(4),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y13_N24
\stack|S38|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S37|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S39|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S37|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(2),
	datab => \stack_mode~combout\(0),
	datac => \stack|S39|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y13_N6
\stack|S38|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S37|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S39|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S37|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S37|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack|S39|U1|dffs\(3),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N12
\stack|S38|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S37|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S39|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S37|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(1),
	datab => \stack|S39|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N18
\stack|S38|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S37|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S39|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S37|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S39|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S37|U1|dffs\(5),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y12_N14
\stack|S39|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S38|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S40|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S38|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S38|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S40|U1|dffs\(0),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y11_N20
\stack|enableArray[39]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[39]~39_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(39),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[39]~39_combout\);

-- Location: LCCOMB_X20_Y11_N18
\stack|S39|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S38|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S40|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S38|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(4),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S38|U1|dffs\(4),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y13_N10
\stack|S39|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S38|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S40|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S38|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S40|U1|dffs\(2),
	datac => \stack_mode~combout\(1),
	datad => \stack|S38|U1|dffs\(2),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y13_N10
\stack|S39|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S38|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S40|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S38|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack|S38|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N0
\stack|S39|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S38|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S40|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S38|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(1),
	datab => \stack|S40|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X20_Y11_N28
\stack|S39|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S38|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S40|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S38|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(5),
	datab => \stack_mode~combout\(1),
	datac => \stack|S38|U1|dffs\(5),
	datad => \stack_mode~combout\(0),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X20_Y11_N10
\stack|S40|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S39|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S41|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S39|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S39|U1|dffs\(0),
	datac => \stack|S41|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y12_N20
\stack|enableArray[40]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[40]~40_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(40),
	combout => \stack|enableArray[40]~40_combout\);

-- Location: LCCOMB_X18_Y12_N16
\stack|S40|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S39|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S41|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S39|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S39|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S41|U1|dffs\(4),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X16_Y12_N22
\stack|S40|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S39|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S41|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S39|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U1|dffs\(2),
	datab => \stack_mode~combout\(0),
	datac => \stack|S41|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X13_Y13_N16
\stack|S40|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S39|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S41|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S39|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S41|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S39|U1|dffs\(3),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X12_Y12_N10
\stack|S40|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S39|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S41|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S39|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S41|U1|dffs\(1),
	datab => \stack|S39|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N0
\stack|S40|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S39|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S41|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S39|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S39|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S41|U1|dffs\(5),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y12_N26
\stack|S41|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S40|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S42|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S40|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S40|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\stack|enableArray[41]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[41]~41_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(41),
	combout => \stack|enableArray[41]~41_combout\);

-- Location: LCCOMB_X13_Y11_N14
\stack|S41|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S40|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S42|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S40|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S40|U1|dffs\(4),
	datad => \stack|S42|U1|dffs\(4),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y11_N2
\stack|S41|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S40|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S42|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S40|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S42|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack|S40|U1|dffs\(2),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y13_N8
\stack|S41|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S40|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S42|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S40|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack|S42|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N26
\stack|S41|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S40|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S42|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S40|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U1|dffs\(1),
	datab => \stack|S40|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y15_N12
\stack|S41|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S40|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S42|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S40|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S42|U1|dffs\(5),
	datad => \stack|S40|U1|dffs\(5),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y11_N20
\stack|S42|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S41|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S43|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S41|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S41|U1|dffs\(0),
	datac => \stack|S43|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y11_N8
\stack|enableArray[42]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[42]~42_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(42),
	combout => \stack|enableArray[42]~42_combout\);

-- Location: LCCOMB_X13_Y12_N16
\stack|S42|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S41|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S43|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S41|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S43|U1|dffs\(4),
	datad => \stack|S41|U1|dffs\(4),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X13_Y12_N10
\stack|S42|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S41|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S43|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S41|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S41|U1|dffs\(2),
	datad => \stack|S43|U1|dffs\(2),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y13_N10
\stack|S42|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S41|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S43|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S41|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S41|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack|S43|U1|dffs\(3),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X13_Y11_N6
\stack|S42|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S41|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S43|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S41|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S41|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S43|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N20
\stack|S42|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S41|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S43|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S41|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S41|U1|dffs\(5),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y13_N2
\stack|S43|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S42|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S44|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S42|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S42|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y11_N26
\stack|enableArray[43]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[43]~43_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(43),
	combout => \stack|enableArray[43]~43_combout\);

-- Location: LCCOMB_X19_Y11_N30
\stack|S43|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S42|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S44|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S42|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S44|U1|dffs\(4),
	datac => \stack|S42|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y11_N24
\stack|S43|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S42|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S44|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S42|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S44|U1|dffs\(2),
	datac => \stack|S42|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y11_N26
\stack|S43|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S42|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S44|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S42|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U1|dffs\(3),
	datab => \stack_mode~combout\(1),
	datac => \stack|S44|U1|dffs\(3),
	datad => \stack_mode~combout\(0),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N16
\stack|S43|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S42|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S44|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S42|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S44|U1|dffs\(1),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y15_N2
\stack|S43|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S42|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S44|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S42|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S42|U1|dffs\(5),
	datad => \stack|S44|U1|dffs\(5),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y11_N16
\stack|S44|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S43|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S45|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S43|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S45|U1|dffs\(0),
	datac => \stack|S43|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y11_N12
\stack|enableArray[44]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[44]~44_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(44) & \stack_mode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(44),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[44]~44_combout\);

-- Location: LCCOMB_X15_Y12_N16
\stack|S44|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S43|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S45|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S43|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(4),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S45|U1|dffs\(4),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y11_N26
\stack|S44|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S43|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S45|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S43|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S43|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack|S45|U1|dffs\(2),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y11_N10
\stack|S44|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S43|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S45|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S43|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S45|U1|dffs\(3),
	datab => \stack|S43|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y11_N18
\stack|S44|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S43|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S45|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S43|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S43|U1|dffs\(1),
	datac => \stack|S45|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y13_N28
\stack|S44|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S43|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S45|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S43|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(5),
	datab => \stack|S45|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y13_N28
\stack|S45|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S44|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S46|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S44|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S46|U1|dffs\(0),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y11_N8
\stack|enableArray[45]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[45]~45_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(45),
	combout => \stack|enableArray[45]~45_combout\);

-- Location: LCCOMB_X15_Y12_N30
\stack|S45|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S44|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S46|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S44|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S46|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S44|U1|dffs\(4),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y11_N8
\stack|S45|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S44|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S46|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S44|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S44|U1|dffs\(2),
	datac => \stack|S46|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y11_N14
\stack|S45|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S44|U1|dffs\(3)))) # (!\stack_mode~combout\(0) & (\stack|S46|U1|dffs\(3))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S44|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S46|U1|dffs\(3),
	datab => \stack_mode~combout\(1),
	datac => \stack|S44|U1|dffs\(3),
	datad => \stack_mode~combout\(0),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y12_N30
\stack|S45|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S44|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S46|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S44|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S46|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S44|U1|dffs\(1),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X19_Y13_N2
\stack|S45|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S44|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S46|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S44|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S44|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S46|U1|dffs\(5),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y11_N24
\stack|S46|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S45|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S47|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S45|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S45|U1|dffs\(0),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y11_N28
\stack|enableArray[46]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[46]~46_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(46),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[46]~46_combout\);

-- Location: LCCOMB_X15_Y12_N8
\stack|S46|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S45|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S47|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S45|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S47|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S45|U1|dffs\(4),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X15_Y11_N18
\stack|S46|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S45|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S47|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S45|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S47|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack|S45|U1|dffs\(2),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y11_N30
\stack|S46|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S45|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S47|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S45|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S45|U1|dffs\(3),
	datab => \stack|S47|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X19_Y11_N12
\stack|S46|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S45|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S47|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S45|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack|S45|U1|dffs\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N26
\stack|S46|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S45|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S47|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S45|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S45|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S47|U1|dffs\(5),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y13_N14
\stack|S47|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S46|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S48|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S46|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S46|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S48|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\stack|enableArray[47]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[47]~47_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(47),
	combout => \stack|enableArray[47]~47_combout\);

-- Location: LCCOMB_X15_Y12_N14
\stack|S47|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S46|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S48|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S46|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S48|U1|dffs\(4),
	datad => \stack|S46|U1|dffs\(4),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X19_Y11_N22
\stack|S47|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S46|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S48|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S46|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S48|U1|dffs\(2),
	datac => \stack|S46|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y11_N22
\stack|S47|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S46|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S48|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S46|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S46|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack|S48|U1|dffs\(3),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y12_N28
\stack|S47|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S46|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S48|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S46|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S46|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S48|U1|dffs\(1),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X16_Y11_N30
\stack|S47|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S46|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S48|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S46|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S46|U1|dffs\(5),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y12_N22
\stack|S48|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S47|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S49|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S47|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S49|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S47|U1|dffs\(0),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\stack|enableArray[48]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[48]~48_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(48),
	combout => \stack|enableArray[48]~48_combout\);

-- Location: LCCOMB_X15_Y12_N4
\stack|S48|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S47|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S49|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S47|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S47|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S49|U1|dffs\(4),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y13_N16
\stack|S48|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S47|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S49|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S47|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S49|U1|dffs\(2),
	datac => \stack|S47|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y13_N10
\stack|S48|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S47|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S49|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S47|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S49|U1|dffs\(3),
	datac => \stack|S47|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y12_N6
\stack|S48|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S47|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S49|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S47|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(1),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S49|U1|dffs\(1),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y13_N16
\stack|S48|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S47|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S49|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S47|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S49|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S47|U1|dffs\(5),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y13_N12
\stack|S49|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S48|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S50|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S48|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(0),
	datab => \stack|S50|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y13_N20
\stack|enableArray[49]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[49]~49_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(49),
	combout => \stack|enableArray[49]~49_combout\);

-- Location: LCCOMB_X16_Y13_N14
\stack|S49|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S48|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S50|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S48|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S48|U1|dffs\(4),
	datac => \stack|S50|U1|dffs\(4),
	datad => \stack_mode~combout\(0),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X16_Y13_N0
\stack|S49|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S48|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S50|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S48|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S48|U1|dffs\(2),
	datad => \stack|S50|U1|dffs\(2),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y12_N6
\stack|S49|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S48|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S50|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S48|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S48|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S50|U1|dffs\(3),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y13_N30
\stack|S49|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S48|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S50|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S48|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S50|U1|dffs\(1),
	datac => \stack|S48|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X16_Y13_N26
\stack|S49|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S48|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S50|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S48|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S50|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S48|U1|dffs\(5),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y13_N28
\stack|S50|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S49|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S51|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S49|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S49|U1|dffs\(0),
	datac => \stack|S51|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y13_N2
\stack|enableArray[50]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[50]~50_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(50),
	combout => \stack|enableArray[50]~50_combout\);

-- Location: LCCOMB_X15_Y13_N14
\stack|S50|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S49|U1|dffs\(4)))) # (!\stack_mode~combout\(0) & (\stack|S51|U1|dffs\(4))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S49|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S51|U1|dffs\(4),
	datac => \stack_mode~combout\(0),
	datad => \stack|S49|U1|dffs\(4),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y13_N8
\stack|S50|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S49|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S51|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S49|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S49|U1|dffs\(2),
	datac => \stack|S51|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y13_N4
\stack|S50|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S49|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S51|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S49|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S49|U1|dffs\(3),
	datac => \stack|S51|U1|dffs\(3),
	datad => \stack_mode~combout\(0),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y13_N26
\stack|S50|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S49|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S51|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S49|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S49|U1|dffs\(1),
	datac => \stack|S51|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X16_Y13_N6
\stack|S50|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S49|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S51|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S49|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S51|U1|dffs\(5),
	datad => \stack|S49|U1|dffs\(5),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y11_N22
\stack|S51|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack|S50|U1|dffs\(0) & ((\stack_mode~combout\(0)) # (!\stack_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S50|U1|dffs\(0),
	combout => \stack|S51|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y11_N26
\stack|enableArray[51]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[51]~51_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(51),
	combout => \stack|enableArray[51]~51_combout\);

-- Location: LCCOMB_X16_Y11_N12
\stack|S51|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack|S50|U1|dffs\(4) & ((\stack_mode~combout\(0)) # (!\stack_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S50|U1|dffs\(4),
	combout => \stack|S51|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X16_Y11_N2
\stack|S51|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack|S50|U1|dffs\(2) & ((\stack_mode~combout\(0)) # (!\stack_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S50|U1|dffs\(2),
	combout => \stack|S51|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y11_N16
\stack|S51|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack|S50|U1|dffs\(3) & ((\stack_mode~combout\(0)) # (!\stack_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S50|U1|dffs\(3),
	combout => \stack|S51|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y11_N6
\stack|S51|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack|S50|U1|dffs\(1) & ((\stack_mode~combout\(0)) # (!\stack_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S50|U1|dffs\(1),
	combout => \stack|S51|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X16_Y11_N20
\stack|S51|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack|S50|U1|dffs\(5) & ((\stack_mode~combout\(0)) # (!\stack_mode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S50|U1|dffs\(5),
	combout => \stack|S51|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X8_Y15_N8
\deal_debounce|state[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \deal_debounce|state[2]~7_combout\ = (\deal_debounce|state\(2) & (((\deal_debounce|state[1]~3_combout\)))) # (!\deal_debounce|state\(2) & (\deal_debounce|state\(1) & (\deal_debounce|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|state\(1),
	datab => \deal_debounce|state\(0),
	datac => \deal_debounce|state\(2),
	datad => \deal_debounce|state[1]~3_combout\,
	combout => \deal_debounce|state[2]~7_combout\);

-- Location: LCCOMB_X23_Y12_N4
\reg|register_store[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(24) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~14_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~14_combout\,
	datac => \reg|register_store\(24),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(24));

-- Location: LCCOMB_X23_Y12_N26
\reg|register_store[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(21) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~8_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(21),
	datac => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[21]~8_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(21));

-- Location: LCCOMB_X23_Y12_N22
\reg|register_store[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(19) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~4_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(19),
	datac => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~4_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(19));

-- Location: LCCOMB_X22_Y12_N30
\reg|register_store[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(17) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~0_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(17),
	datac => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[17]~0_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(17));

-- Location: LCCOMB_X23_Y13_N26
\reg|register_store[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(14) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~24_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[14]~24_combout\,
	datac => \reg|register_store\(14),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(14));

-- Location: LCCOMB_X21_Y13_N0
\reg|register_store[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(12) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~20_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~20_combout\,
	datac => \reg|register_store\(12),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(12));

-- Location: LCCOMB_X21_Y13_N8
\reg|register_store[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(10) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~16_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~16_combout\,
	datac => \reg|register_store\(10),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(10));

-- Location: LCCOMB_X21_Y13_N14
\reg|register_store[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(5) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~6_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~6_combout\,
	datac => \reg|register_store\(5),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(5));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\raw_deal~I\ : cycloneii_io
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
	padio => ww_raw_deal,
	combout => \raw_deal~combout\);

-- Location: LCCOMB_X16_Y15_N24
\stack|S1|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[0]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S1|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N2
\stack|S7|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[4]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S7|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N30
\stack|S2|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[4]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S2|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N20
\stack|S1|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[4]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S1|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N10
\stack|S3|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[4]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S3|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X12_Y14_N4
\stack|S12|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[4]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S12|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N0
\stack|S11|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[4]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S11|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S11|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y13_N14
\stack|S10|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[4]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S10|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y14_N18
\stack|S9|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[4]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S9|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y13_N0
\stack|S8|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[4]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S8|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X12_Y14_N12
\stack|S12|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[3]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S12|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N18
\stack|S6|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[1]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S6|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N0
\stack|S5|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[1]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S5|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N28
\stack|S4|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[1]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S4|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N8
\stack|S1|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[1]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S1|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N6
\stack|S2|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[1]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S2|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N2
\stack|S3|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[1]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S3|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N10
\stack|S15|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[5]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S15|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X12_Y14_N6
\stack|S14|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[5]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S14|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N22
\stack|S16|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[4]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S16|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N20
\stack|S16|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[2]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S16|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N14
\stack|S16|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[3]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S16|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N6
\stack|S16|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[5]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S16|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N30
\stack|S17|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[4]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S17|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S17|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N0
\stack|S17|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[2]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S17|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S17|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N18
\stack|S17|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[3]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S17|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S17|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N16
\stack|S17|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[1]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S17|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N8
\stack|S17|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[5]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S17|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N10
\stack|S18|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[4]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S18|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S18|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N8
\stack|S18|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[2]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S18|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N18
\stack|S18|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[3]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S18|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N24
\stack|S18|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[1]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S18|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X11_Y14_N26
\stack|S18|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[5]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S18|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S18|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N10
\stack|S19|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[0]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S19|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N4
\stack|S19|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[4]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S19|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N2
\stack|S19|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[2]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S19|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N24
\stack|S19|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[3]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S19|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N6
\stack|S19|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[1]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S19|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N20
\stack|S19|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[5]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S19|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N12
\stack|S20|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[0]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S20|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N18
\stack|S20|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[4]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S20|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N4
\stack|S20|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[2]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S20|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N2
\stack|S20|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[3]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S20|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N8
\stack|S20|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[1]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S20|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N14
\stack|S20|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[5]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S20|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N24
\stack|S21|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[0]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S21|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N22
\stack|S21|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[4]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S21|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N16
\stack|S21|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[2]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S21|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N2
\stack|S21|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[3]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S21|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N28
\stack|S21|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[1]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S21|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N18
\stack|S21|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[5]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S21|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N16
\stack|S22|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[0]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S22|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N28
\stack|S22|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[4]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S22|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N30
\stack|S22|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[2]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S22|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N6
\stack|S22|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[3]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S22|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N0
\stack|S22|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[1]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S22|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N24
\stack|S22|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[5]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S22|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N4
\stack|S23|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[0]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S23|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N8
\stack|S23|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[4]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S23|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N6
\stack|S23|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[2]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S23|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N12
\stack|S23|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[3]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S23|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N14
\stack|S23|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[1]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S23|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N26
\stack|S23|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[5]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S23|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N28
\stack|S24|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[0]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S24|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S24|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N30
\stack|S24|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[4]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S24|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N4
\stack|S24|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[2]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S24|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N26
\stack|S24|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[3]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S24|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N8
\stack|S24|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[1]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S24|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N6
\stack|S24|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[5]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S24|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S24|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N0
\stack|S25|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[0]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S25|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N14
\stack|S25|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[4]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S25|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S25|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N22
\stack|S25|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[2]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S25|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S25|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N8
\stack|S25|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[3]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S25|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N24
\stack|S25|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[1]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S25|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N26
\stack|S25|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[5]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S25|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N0
\stack|S26|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[0]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S26|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N18
\stack|S26|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[4]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S26|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N24
\stack|S26|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[2]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S26|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N22
\stack|S26|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[3]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S26|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N12
\stack|S26|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[1]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S26|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N2
\stack|S26|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[5]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S26|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N22
\stack|S27|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[0]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S27|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N4
\stack|S27|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[4]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S27|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N26
\stack|S27|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[2]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S27|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N20
\stack|S27|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[3]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S27|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N10
\stack|S27|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[1]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S27|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y15_N16
\stack|S27|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[5]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S27|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N4
\stack|S28|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[0]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S28|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N30
\stack|S28|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[4]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S28|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\stack|S28|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[2]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S28|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N14
\stack|S28|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[3]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S28|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N20
\stack|S28|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[1]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S28|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N26
\stack|S28|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[5]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S28|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N0
\stack|S29|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[0]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S29|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S29|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N28
\stack|S29|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[4]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S29|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N10
\stack|S29|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[2]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S29|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N0
\stack|S29|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[3]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S29|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N14
\stack|S29|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[1]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S29|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N12
\stack|S29|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[5]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S29|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N12
\stack|S30|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[0]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S30|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N24
\stack|S30|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[4]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S30|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N22
\stack|S30|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[2]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S30|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N2
\stack|S30|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[3]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S30|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S30|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N8
\stack|S30|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[1]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S30|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N22
\stack|S30|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[5]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S30|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N12
\stack|S31|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[0]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S31|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N14
\stack|S31|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[4]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S31|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N4
\stack|S31|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[2]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S31|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S31|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N20
\stack|S31|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[3]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S31|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N2
\stack|S31|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[1]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S31|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S31|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N0
\stack|S31|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[5]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S31|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N20
\stack|S32|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[0]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S32|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N18
\stack|S32|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[4]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S32|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N16
\stack|S32|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[2]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S32|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N6
\stack|S32|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[3]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S32|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N28
\stack|S32|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[1]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S32|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y14_N10
\stack|S32|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[5]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S32|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X13_Y12_N4
\stack|S33|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[0]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S33|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y12_N30
\stack|S33|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[4]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S33|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y12_N24
\stack|S33|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[2]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S33|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S33|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X13_Y12_N22
\stack|S33|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[3]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S33|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y12_N8
\stack|S33|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[1]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S33|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y12_N6
\stack|S33|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[5]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S33|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N4
\stack|S34|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[0]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S34|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S34|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N10
\stack|S34|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[4]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S34|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N8
\stack|S34|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[2]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S34|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N26
\stack|S34|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[3]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S34|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N28
\stack|S34|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[1]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S34|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N6
\stack|S34|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[5]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S34|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N8
\stack|S35|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[0]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S35|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N30
\stack|S35|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[4]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S35|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N4
\stack|S35|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[2]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S35|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N22
\stack|S35|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[3]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S35|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N20
\stack|S35|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[1]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S35|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N10
\stack|S35|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[5]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S35|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N0
\stack|S36|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[0]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S36|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S36|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N22
\stack|S36|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[4]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S36|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N12
\stack|S36|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[2]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S36|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N10
\stack|S36|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[3]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S36|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N4
\stack|S36|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[1]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S36|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N6
\stack|S36|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[5]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S36|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y11_N4
\stack|S37|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[0]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S37|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y11_N14
\stack|S37|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[4]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S37|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y11_N28
\stack|S37|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[2]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S37|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y11_N10
\stack|S37|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[3]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S37|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y11_N24
\stack|S37|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[1]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S37|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N24
\stack|S37|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[5]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S37|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N28
\stack|S38|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[0]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S38|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N14
\stack|S38|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[4]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S38|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N20
\stack|S38|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[2]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S38|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N26
\stack|S38|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[3]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S38|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N24
\stack|S38|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[1]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S38|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N18
\stack|S38|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[5]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S38|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N4
\stack|S39|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[0]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S39|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N2
\stack|S39|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[4]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S39|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N24
\stack|S39|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[2]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S39|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N6
\stack|S39|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[3]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S39|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N0
\stack|S39|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[1]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S39|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N30
\stack|S39|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[5]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S39|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N24
\stack|S40|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[0]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S40|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N2
\stack|S40|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[4]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S40|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N0
\stack|S40|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[2]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S40|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N18
\stack|S40|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[3]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S40|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S40|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N12
\stack|S40|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[1]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S40|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y12_N14
\stack|S40|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[5]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S40|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N28
\stack|S41|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[0]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S41|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S41|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N26
\stack|S41|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[4]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S41|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S41|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N4
\stack|S41|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[2]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S41|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N30
\stack|S41|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[3]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S41|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N12
\stack|S41|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[1]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S41|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N10
\stack|S41|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[5]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S41|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N24
\stack|S42|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[0]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S42|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N22
\stack|S42|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[4]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S42|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N16
\stack|S42|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[2]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S42|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N2
\stack|S42|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[3]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S42|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N0
\stack|S42|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[1]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S42|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y11_N18
\stack|S42|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[5]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S42|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N20
\stack|S43|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[0]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S43|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N6
\stack|S43|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[4]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S43|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N16
\stack|S43|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[2]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S43|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N22
\stack|S43|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[3]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S43|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N24
\stack|S43|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[1]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S43|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N2
\stack|S43|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[5]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S43|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N4
\stack|S44|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[0]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S44|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N2
\stack|S44|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[4]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S44|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S44|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N0
\stack|S44|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[2]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S44|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y11_N12
\stack|S44|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[3]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S44|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N6
\stack|S44|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[1]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S44|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N28
\stack|S44|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[5]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S44|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N28
\stack|S45|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[0]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S45|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N10
\stack|S45|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[4]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S45|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N0
\stack|S45|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[2]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S45|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N2
\stack|S45|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[3]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S45|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N12
\stack|S45|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[1]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S45|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S45|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y13_N28
\stack|S45|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[5]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S45|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N8
\stack|S46|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[0]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S46|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N18
\stack|S46|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[4]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S46|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S46|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N4
\stack|S46|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[2]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S46|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N14
\stack|S46|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[3]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S46|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y11_N0
\stack|S46|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[1]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S46|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S46|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y11_N10
\stack|S46|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[5]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S46|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N14
\stack|S47|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[0]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S47|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N16
\stack|S47|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[4]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S47|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N30
\stack|S47|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[2]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S47|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N4
\stack|S47|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[3]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S47|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N6
\stack|S47|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[1]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S47|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y11_N20
\stack|S47|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[5]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S47|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N18
\stack|S48|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[0]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S48|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N20
\stack|S48|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[4]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S48|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S48|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N24
\stack|S48|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[2]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S48|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N2
\stack|S48|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[3]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S48|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N0
\stack|S48|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[1]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S48|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X15_Y12_N10
\stack|S48|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[5]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S48|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N6
\stack|S49|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[0]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S49|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N12
\stack|S49|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[4]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S49|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N18
\stack|S49|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[2]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S49|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S49|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N28
\stack|S49|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[3]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S49|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N22
\stack|S49|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[1]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S49|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N4
\stack|S49|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[5]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S49|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N18
\stack|S50|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[0]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S50|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N8
\stack|S50|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[4]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S50|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N10
\stack|S50|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[2]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S50|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N16
\stack|S50|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[3]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S50|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S50|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N22
\stack|S50|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[1]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S50|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N20
\stack|S50|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[5]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S50|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N16
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[1]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[1]~56_combout\ = \reg|register_store\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg|register_store\(1),
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[1]~56_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\stack_mode[0]~I\ : cycloneii_io
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
	padio => ww_stack_mode(0),
	combout => \stack_mode~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\stack_mode[1]~I\ : cycloneii_io
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
	padio => ww_stack_mode(1),
	combout => \stack_mode~combout\(1));

-- Location: LCCOMB_X19_Y12_N14
\stack|pop~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|pop~1_combout\ = (\stack_mode~combout\(0) & \stack_mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|pop~1_combout\);

-- Location: LCCOMB_X19_Y12_N18
\stack|C0|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita0~combout\ = \stack|C0|auto_generated|safe_q\(0) $ (((VCC) # (!\stack|pop~1_combout\)))
-- \stack|C0|auto_generated|counter_comb_bita0~COUT\ = CARRY(\stack|C0|auto_generated|safe_q\(0) $ (!\stack|pop~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(0),
	datab => \stack|pop~1_combout\,
	datad => VCC,
	combout => \stack|C0|auto_generated|counter_comb_bita0~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X21_Y15_N0
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X20_Y12_N24
\dealer|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux4~0_combout\ = (!\dealer|state\(0) & \dealer|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dealer|state\(0),
	datad => \dealer|state\(1),
	combout => \dealer|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y14_N14
\dealer|stack_enable\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|stack_enable~combout\ = (GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & ((\dealer|Mux4~0_combout\))) # (!GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & (\dealer|stack_enable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dealer|stack_enable~combout\,
	datac => \dealer|Mux4~5clkctrl_outclk\,
	datad => \dealer|Mux4~0_combout\,
	combout => \dealer|stack_enable~combout\);

-- Location: LCCOMB_X19_Y12_N2
\stack|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|comb~0_combout\ = (!\stack_mode~combout\(1) & (\stack_mode~combout\(0) & \dealer|stack_enable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|comb~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\stack|C0|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita1~combout\ = (\stack|C0|auto_generated|counter_comb_bita0~COUT\ & (\stack|C0|auto_generated|safe_q\(1) $ (((\stack|pop~1_combout\) # (VCC))))) # (!\stack|C0|auto_generated|counter_comb_bita0~COUT\ & 
-- ((\stack|C0|auto_generated|safe_q\(1)) # ((GND))))
-- \stack|C0|auto_generated|counter_comb_bita1~COUT\ = CARRY((\stack|C0|auto_generated|safe_q\(1) $ (\stack|pop~1_combout\)) # (!\stack|C0|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(1),
	datab => \stack|pop~1_combout\,
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita0~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita1~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X19_Y12_N22
\stack|C0|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita2~combout\ = (\stack|C0|auto_generated|counter_comb_bita1~COUT\ & (((\stack|C0|auto_generated|safe_q\(2) & VCC)))) # (!\stack|C0|auto_generated|counter_comb_bita1~COUT\ & (\stack|C0|auto_generated|safe_q\(2) $ 
-- (((VCC) # (!\stack|pop~1_combout\)))))
-- \stack|C0|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\stack|C0|auto_generated|counter_comb_bita1~COUT\ & (\stack|pop~1_combout\ $ (!\stack|C0|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|pop~1_combout\,
	datab => \stack|C0|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita1~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita2~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X19_Y12_N23
\stack|C0|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \stack|C0|auto_generated|counter_comb_bita2~combout\,
	sdata => \stack|comb~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|comb~0_combout\,
	ena => \stack|C0|auto_generated|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(2));

-- Location: LCCOMB_X19_Y12_N26
\stack|C0|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita4~combout\ = (\stack|C0|auto_generated|counter_comb_bita3~COUT\ & (\stack|C0|auto_generated|safe_q\(4) & ((VCC)))) # (!\stack|C0|auto_generated|counter_comb_bita3~COUT\ & (\stack|C0|auto_generated|safe_q\(4) $ 
-- (((VCC) # (!\stack|pop~1_combout\)))))
-- \stack|C0|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\stack|C0|auto_generated|counter_comb_bita3~COUT\ & (\stack|C0|auto_generated|safe_q\(4) $ (!\stack|pop~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(4),
	datab => \stack|pop~1_combout\,
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita3~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita4~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X19_Y12_N28
\stack|C0|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita5~combout\ = \stack|C0|auto_generated|counter_comb_bita4~COUT\ $ (\stack|C0|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \stack|C0|auto_generated|safe_q\(5),
	cin => \stack|C0|auto_generated|counter_comb_bita4~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita5~combout\);

-- Location: LCFF_X19_Y12_N29
\stack|C0|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \stack|C0|auto_generated|counter_comb_bita5~combout\,
	sdata => \stack|comb~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|comb~0_combout\,
	ena => \stack|C0|auto_generated|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(5));

-- Location: LCFF_X19_Y12_N27
\stack|C0|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \stack|C0|auto_generated|counter_comb_bita4~combout\,
	sdata => \stack|comb~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|comb~0_combout\,
	ena => \stack|C0|auto_generated|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(4));

-- Location: LCCOMB_X19_Y12_N16
\stack|C0|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~1_combout\ = (\stack|C0|auto_generated|safe_q\(5) & ((\stack|C0|auto_generated|safe_q\(4)) # (!\stack|C0|auto_generated|safe_q\(2)))) # (!\stack|C0|auto_generated|safe_q\(5) & (!\stack|C0|auto_generated|safe_q\(2) & 
-- \stack|C0|auto_generated|safe_q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|C0|auto_generated|safe_q\(5),
	datac => \stack|C0|auto_generated|safe_q\(2),
	datad => \stack|C0|auto_generated|safe_q\(4),
	combout => \stack|C0|auto_generated|_~1_combout\);

-- Location: LCFF_X19_Y12_N21
\stack|C0|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \stack|C0|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|comb~0_combout\,
	ena => \stack|C0|auto_generated|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(1));

-- Location: LCCOMB_X19_Y12_N6
\stack|C0|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~0_combout\ = (\stack|C0|auto_generated|safe_q\(3)) # ((\stack|C0|auto_generated|safe_q\(1)) # (\stack|C0|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(3),
	datac => \stack|C0|auto_generated|safe_q\(1),
	datad => \stack|C0|auto_generated|safe_q\(0),
	combout => \stack|C0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\stack|C0|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~2_combout\ = (\stack_mode~combout\(0) & (\stack|C0|auto_generated|safe_q\(2) & (\stack|C0|auto_generated|_~1_combout\ & !\stack|C0|auto_generated|_~0_combout\))) # (!\stack_mode~combout\(0) & 
-- ((\stack|C0|auto_generated|safe_q\(2)) # ((\stack|C0|auto_generated|_~1_combout\) # (\stack|C0|auto_generated|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|C0|auto_generated|safe_q\(2),
	datac => \stack|C0|auto_generated|_~1_combout\,
	datad => \stack|C0|auto_generated|_~0_combout\,
	combout => \stack|C0|auto_generated|_~2_combout\);

-- Location: LCCOMB_X19_Y12_N8
\stack|C0|auto_generated|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~3_combout\ = (\dealer|stack_enable~combout\ & (\stack_mode~combout\(0) $ (((\stack_mode~combout\(1) & \stack|C0|auto_generated|_~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|C0|auto_generated|_~2_combout\,
	combout => \stack|C0|auto_generated|_~3_combout\);

-- Location: LCFF_X19_Y12_N19
\stack|C0|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \stack|C0|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|comb~0_combout\,
	ena => \stack|C0|auto_generated|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(0));

-- Location: LCCOMB_X23_Y12_N12
\reg|register_store[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(22) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~10_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~10_combout\,
	datac => \dealer|rand_enable~clkctrl_outclk\,
	datad => \reg|register_store\(22),
	combout => \reg|register_store\(22));

-- Location: LCCOMB_X22_Y12_N28
\reg|register_store[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(18) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~2_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[18]~2_combout\,
	datab => \reg|register_store\(18),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(18));

-- Location: LCCOMB_X23_Y13_N16
\reg|register_store[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(15) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~26_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~26_combout\,
	datac => \reg|register_store\(15),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(15));

-- Location: LCCOMB_X22_Y13_N26
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~22_combout\ = (\reg|register_store\(12) & ((\reg|register_store\(13) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\ & VCC)) # (!\reg|register_store\(13) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\)))) # (!\reg|register_store\(12) & ((\reg|register_store\(13) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\)) # (!\reg|register_store\(13) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\ = CARRY((\reg|register_store\(12) & (!\reg|register_store\(13) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\)) # (!\reg|register_store\(12) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\) # (!\reg|register_store\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(12),
	datab => \reg|register_store\(13),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[12]~21\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~22_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~23\);

-- Location: LCCOMB_X22_Y12_N0
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~28_combout\ = ((\reg|register_store\(15) $ (\reg|register_store\(16) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\ = CARRY((\reg|register_store\(15) & ((\reg|register_store\(16)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\))) # (!\reg|register_store\(15) & 
-- (\reg|register_store\(16) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(15),
	datab => \reg|register_store\(16),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[15]~27\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~28_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~29\);

-- Location: LCCOMB_X23_Y12_N8
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[16]~26_combout\ = \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[16]~28_combout\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[16]~26_combout\);

-- Location: LCCOMB_X23_Y12_N24
\reg|register_store[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(16) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[16]~26_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[16]~26_combout\,
	datac => \reg|register_store\(16),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(16));

-- Location: LCCOMB_X22_Y12_N8
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ = ((\reg|register_store\(19) $ (\reg|register_store\(20) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\ = CARRY((\reg|register_store\(19) & ((\reg|register_store\(20)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\))) # (!\reg|register_store\(19) & 
-- (\reg|register_store\(20) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(19),
	datab => \reg|register_store\(20),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[19]~35\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\);

-- Location: LCCOMB_X21_Y13_N30
\reg|register_store[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(3) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~2_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~2_combout\,
	datac => \dealer|rand_enable~clkctrl_outclk\,
	datad => \reg|register_store\(3),
	combout => \reg|register_store\(3));

-- Location: LCCOMB_X21_Y12_N6
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~6_combout\ = (\reg|register_store\(4) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\ & VCC)) # 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\)))) # (!\reg|register_store\(4) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ 
-- & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\) # (GND)))))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\ = CARRY((\reg|register_store\(4) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\)) # 
-- (!\reg|register_store\(4) & ((!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(4),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~36_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[19]~5\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~6_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~7\);

-- Location: LCCOMB_X23_Y12_N0
\reg|register_store[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(20) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~6_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(20),
	datac => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[20]~6_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(20));

-- Location: LCCOMB_X22_Y12_N10
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\ = (\reg|register_store\(21) & ((\reg|register_store\(20) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\ & VCC)) # (!\reg|register_store\(20) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\)))) # (!\reg|register_store\(21) & ((\reg|register_store\(20) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\)) # (!\reg|register_store\(20) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\ = CARRY((\reg|register_store\(21) & (!\reg|register_store\(20) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\)) # (!\reg|register_store\(21) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\) # (!\reg|register_store\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(21),
	datab => \reg|register_store\(20),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[20]~37\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~38_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\);

-- Location: LCCOMB_X22_Y12_N12
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\ = ((\reg|register_store\(21) $ (\reg|register_store\(22) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\ = CARRY((\reg|register_store\(21) & ((\reg|register_store\(22)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\))) # (!\reg|register_store\(21) & 
-- (\reg|register_store\(22) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(21),
	datab => \reg|register_store\(22),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[21]~39\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~40_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\);

-- Location: LCCOMB_X22_Y12_N14
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\ = (\reg|register_store\(22) & ((\reg|register_store\(23) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\ & VCC)) # (!\reg|register_store\(23) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\)))) # (!\reg|register_store\(22) & ((\reg|register_store\(23) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\)) # (!\reg|register_store\(23) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\ = CARRY((\reg|register_store\(22) & (!\reg|register_store\(23) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\)) # (!\reg|register_store\(22) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\) # (!\reg|register_store\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(22),
	datab => \reg|register_store\(23),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[22]~41\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~43\);

-- Location: LCCOMB_X21_Y12_N12
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~12_combout\ = ((\reg|register_store\(7) $ (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\ $ (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\)))) # 
-- (GND)
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\ = CARRY((\reg|register_store\(7) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\) # (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\))) # 
-- (!\reg|register_store\(7) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(7),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[23]~42_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[22]~11\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~12_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~13\);

-- Location: LCCOMB_X23_Y12_N30
\reg|register_store[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(23) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~12_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(23),
	datac => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[23]~12_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(23));

-- Location: LCCOMB_X22_Y12_N18
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\ = (\reg|register_store\(24) & ((\reg|register_store\(25) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\ & VCC)) # (!\reg|register_store\(25) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\)))) # (!\reg|register_store\(24) & ((\reg|register_store\(25) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\)) # (!\reg|register_store\(25) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\ = CARRY((\reg|register_store\(24) & (!\reg|register_store\(25) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\)) # (!\reg|register_store\(24) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\) # (!\reg|register_store\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(24),
	datab => \reg|register_store\(25),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[24]~45\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\);

-- Location: LCCOMB_X21_Y13_N12
\reg|register_store[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(8) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~12_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~12_combout\,
	datac => \dealer|rand_enable~clkctrl_outclk\,
	datad => \reg|register_store\(8),
	combout => \reg|register_store\(8));

-- Location: LCCOMB_X21_Y12_N16
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~16_combout\ = ((\reg|register_store\(9) $ (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\ $ (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\)))) # 
-- (GND)
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\ = CARRY((\reg|register_store\(9) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\) # (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\))) # 
-- (!\reg|register_store\(9) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(9),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~46_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[24]~15\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~16_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\);

-- Location: LCCOMB_X23_Y12_N14
\reg|register_store[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(25) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~16_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~16_combout\,
	datac => \reg|register_store\(25),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(25));

-- Location: LCCOMB_X22_Y12_N20
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ = ((\reg|register_store\(26) $ (\reg|register_store\(25) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\ = CARRY((\reg|register_store\(26) & ((\reg|register_store\(25)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\))) # (!\reg|register_store\(26) & 
-- (\reg|register_store\(25) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \reg|register_store\(25),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[25]~47\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\);

-- Location: LCCOMB_X22_Y12_N22
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\ = (\reg|register_store\(26) & ((\reg|register_store\(27) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\ & VCC)) # (!\reg|register_store\(27) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\)))) # (!\reg|register_store\(26) & ((\reg|register_store\(27) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\)) # (!\reg|register_store\(27) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\ = CARRY((\reg|register_store\(26) & (!\reg|register_store\(27) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\)) # (!\reg|register_store\(26) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\) # (!\reg|register_store\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \reg|register_store\(27),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~49\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\);

-- Location: LCCOMB_X21_Y12_N18
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~18_combout\ = (\reg|register_store\(10) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\ & 
-- VCC)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\)))) # (!\reg|register_store\(10) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ & 
-- ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\) # (GND)))))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\ = CARRY((\reg|register_store\(10) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\)) # 
-- (!\reg|register_store\(10) & ((!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(10),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[26]~48_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[25]~17\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~18_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\);

-- Location: LCCOMB_X21_Y12_N20
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~20_combout\ = ((\reg|register_store\(11) $ (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\ $ (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\)))) # 
-- (GND)
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\ = CARRY((\reg|register_store\(11) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\) # (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\))) # 
-- (!\reg|register_store\(11) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(11),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~50_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~19\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~20_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\);

-- Location: LCCOMB_X20_Y12_N26
\reg|register_store[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(27) = (\dealer|rand_enable~combout\ & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~20_combout\))) # (!\dealer|rand_enable~combout\ & (\reg|register_store\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(27),
	datac => \dealer|rand_enable~combout\,
	datad => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~20_combout\,
	combout => \reg|register_store\(27));

-- Location: LCCOMB_X21_Y12_N30
\reg|register_store[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(26) = (\dealer|rand_enable~combout\ & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~18_combout\))) # (!\dealer|rand_enable~combout\ & (\reg|register_store\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(26),
	datac => \dealer|rand_enable~combout\,
	datad => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[26]~18_combout\,
	combout => \reg|register_store\(26));

-- Location: LCCOMB_X19_Y12_N30
\dealer|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux4~1_combout\ = (\stack|C0|auto_generated|safe_q\(1) & (\reg|register_store\(27) & (\stack|C0|auto_generated|safe_q\(0) $ (!\reg|register_store\(26))))) # (!\stack|C0|auto_generated|safe_q\(1) & (!\reg|register_store\(27) & 
-- (\stack|C0|auto_generated|safe_q\(0) $ (!\reg|register_store\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(1),
	datab => \stack|C0|auto_generated|safe_q\(0),
	datac => \reg|register_store\(27),
	datad => \reg|register_store\(26),
	combout => \dealer|Mux4~1_combout\);

-- Location: LCCOMB_X22_Y12_N24
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ = ((\reg|register_store\(28) $ (\reg|register_store\(27) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~53\ = CARRY((\reg|register_store\(28) & ((\reg|register_store\(27)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\))) # (!\reg|register_store\(28) & 
-- (\reg|register_store\(27) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(28),
	datab => \reg|register_store\(27),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[27]~51\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~53\);

-- Location: LCCOMB_X21_Y12_N22
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~22_combout\ = (\reg|register_store\(12) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ & (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\ & 
-- VCC)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\)))) # (!\reg|register_store\(12) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ & (!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ & 
-- ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\) # (GND)))))
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~23\ = CARRY((\reg|register_store\(12) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\ & !\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\)) # 
-- (!\reg|register_store\(12) & ((!\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(12),
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~52_combout\,
	datad => VCC,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[27]~21\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~22_combout\,
	cout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~23\);

-- Location: LCCOMB_X21_Y12_N28
\reg|register_store[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(28) = (\dealer|rand_enable~combout\ & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~22_combout\))) # (!\dealer|rand_enable~combout\ & (\reg|register_store\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(28),
	datac => \dealer|rand_enable~combout\,
	datad => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~22_combout\,
	combout => \reg|register_store\(28));

-- Location: LCCOMB_X19_Y12_N4
\dealer|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux4~2_combout\ = (\stack|C0|auto_generated|safe_q\(3) & (\reg|register_store\(29) & (\stack|C0|auto_generated|safe_q\(2) $ (!\reg|register_store\(28))))) # (!\stack|C0|auto_generated|safe_q\(3) & (!\reg|register_store\(29) & 
-- (\stack|C0|auto_generated|safe_q\(2) $ (!\reg|register_store\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(3),
	datab => \stack|C0|auto_generated|safe_q\(2),
	datac => \reg|register_store\(28),
	datad => \reg|register_store\(29),
	combout => \dealer|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y12_N10
\dealer|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux4~4_combout\ = (\dealer|Mux4~0_combout\) # ((\dealer|Mux4~3_combout\ & (\dealer|Mux4~1_combout\ & \dealer|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dealer|Mux4~3_combout\,
	datab => \dealer|Mux4~1_combout\,
	datac => \dealer|Mux4~2_combout\,
	datad => \dealer|Mux4~0_combout\,
	combout => \dealer|Mux4~4_combout\);

-- Location: LCCOMB_X20_Y12_N28
\dealer|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux4~5_combout\ = (\dealer|Mux4~4_combout\) # ((!\dealer|state\(1) & (\deal_debounce|output~combout\ $ (!\dealer|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deal_debounce|output~combout\,
	datab => \dealer|state\(1),
	datac => \dealer|state\(0),
	datad => \dealer|Mux4~4_combout\,
	combout => \dealer|Mux4~5_combout\);

-- Location: CLKCTRL_G3
\dealer|Mux4~5clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dealer|Mux4~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dealer|Mux4~5clkctrl_outclk\);

-- Location: LCCOMB_X20_Y12_N18
\dealer|state[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|state\(1) = (GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & (\dealer|state\(0))) # (!GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & ((\dealer|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dealer|state\(0),
	datac => \dealer|state\(1),
	datad => \dealer|Mux4~5clkctrl_outclk\,
	combout => \dealer|state\(1));

-- Location: LCCOMB_X20_Y12_N16
\dealer|state[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|state\(0) = (GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & (!\dealer|state\(1))) # (!GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & ((\dealer|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dealer|state\(1),
	datac => \dealer|state\(0),
	datad => \dealer|Mux4~5clkctrl_outclk\,
	combout => \dealer|state\(0));

-- Location: LCCOMB_X20_Y12_N20
\dealer|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|Mux0~0_combout\ = (\dealer|state\(0) & \dealer|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dealer|state\(0),
	datad => \dealer|state\(1),
	combout => \dealer|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y12_N30
\dealer|rand_enable\ : cycloneii_lcell_comb
-- Equation(s):
-- \dealer|rand_enable~combout\ = (GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & ((\dealer|Mux0~0_combout\))) # (!GLOBAL(\dealer|Mux4~5clkctrl_outclk\) & (\dealer|rand_enable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dealer|rand_enable~combout\,
	datac => \dealer|Mux0~0_combout\,
	datad => \dealer|Mux4~5clkctrl_outclk\,
	combout => \dealer|rand_enable~combout\);

-- Location: CLKCTRL_G1
\dealer|rand_enable~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dealer|rand_enable~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dealer|rand_enable~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y13_N2
\reg|register_store[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(1) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[1]~56_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[1]~56_combout\,
	datac => \reg|register_store\(1),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(1));

-- Location: LCCOMB_X22_Y13_N4
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~0_combout\ = (\reg|register_store\(2) & (\reg|register_store\(1) $ (VCC))) # (!\reg|register_store\(2) & (\reg|register_store\(1) & VCC))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\ = CARRY((\reg|register_store\(2) & \reg|register_store\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(2),
	datab => \reg|register_store\(1),
	datad => VCC,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~0_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~1\);

-- Location: LCCOMB_X22_Y13_N0
\reg|register_store[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(2) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~0_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(2),
	datac => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[2]~0_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(2));

-- Location: LCCOMB_X22_Y13_N8
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~4_combout\ = ((\reg|register_store\(3) $ (\reg|register_store\(4) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\ = CARRY((\reg|register_store\(3) & ((\reg|register_store\(4)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\))) # (!\reg|register_store\(3) & (\reg|register_store\(4) & 
-- !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(3),
	datab => \reg|register_store\(4),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[3]~3\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~4_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~5\);

-- Location: LCCOMB_X21_Y13_N24
\reg|register_store[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(4) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~4_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[4]~4_combout\,
	datac => \reg|register_store\(4),
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(4));

-- Location: LCCOMB_X22_Y13_N12
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~8_combout\ = ((\reg|register_store\(5) $ (\reg|register_store\(6) $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\)))) # (GND)
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\ = CARRY((\reg|register_store\(5) & ((\reg|register_store\(6)) # (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\))) # (!\reg|register_store\(5) & (\reg|register_store\(6) & 
-- !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(5),
	datab => \reg|register_store\(6),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[5]~7\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~8_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\);

-- Location: LCCOMB_X21_Y13_N28
\reg|register_store[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(6) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~8_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(6),
	datac => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~8_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(6));

-- Location: LCCOMB_X22_Y13_N14
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~10_combout\ = (\reg|register_store\(7) & ((\reg|register_store\(6) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\ & VCC)) # (!\reg|register_store\(6) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\)))) # (!\reg|register_store\(7) & ((\reg|register_store\(6) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\)) # (!\reg|register_store\(6) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\ = CARRY((\reg|register_store\(7) & (!\reg|register_store\(6) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\)) # (!\reg|register_store\(7) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\) # (!\reg|register_store\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(7),
	datab => \reg|register_store\(6),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[6]~9\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~10_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~11\);

-- Location: LCCOMB_X21_Y13_N2
\reg|register_store[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(7) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~10_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(7),
	datac => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[7]~10_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(7));

-- Location: LCCOMB_X22_Y13_N18
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~14_combout\ = (\reg|register_store\(8) & ((\reg|register_store\(9) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\ & VCC)) # (!\reg|register_store\(9) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\)))) # (!\reg|register_store\(8) & ((\reg|register_store\(9) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\)) # (!\reg|register_store\(9) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\ = CARRY((\reg|register_store\(8) & (!\reg|register_store\(9) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\)) # (!\reg|register_store\(8) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\) # (!\reg|register_store\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(8),
	datab => \reg|register_store\(9),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[8]~13\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~14_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~15\);

-- Location: LCCOMB_X21_Y13_N18
\reg|register_store[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(9) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~14_combout\)) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\reg|register_store\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[9]~14_combout\,
	datac => \dealer|rand_enable~clkctrl_outclk\,
	datad => \reg|register_store\(9),
	combout => \reg|register_store\(9));

-- Location: LCCOMB_X22_Y13_N22
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~18_combout\ = (\reg|register_store\(10) & ((\reg|register_store\(11) & (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\ & VCC)) # (!\reg|register_store\(11) & 
-- (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\)))) # (!\reg|register_store\(10) & ((\reg|register_store\(11) & (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\)) # (!\reg|register_store\(11) & 
-- ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\) # (GND)))))
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\ = CARRY((\reg|register_store\(10) & (!\reg|register_store\(11) & !\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\)) # (!\reg|register_store\(10) & 
-- ((!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\) # (!\reg|register_store\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(10),
	datab => \reg|register_store\(11),
	datad => VCC,
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[10]~17\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~18_combout\,
	cout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~19\);

-- Location: LCCOMB_X21_Y13_N6
\reg|register_store[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(11) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~18_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(11),
	datac => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[11]~18_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(11));

-- Location: LCCOMB_X21_Y13_N22
\reg|register_store[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(13) = (GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & ((\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~22_combout\))) # (!GLOBAL(\dealer|rand_enable~clkctrl_outclk\) & (\reg|register_store\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(13),
	datac => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[13]~22_combout\,
	datad => \dealer|rand_enable~clkctrl_outclk\,
	combout => \reg|register_store\(13));

-- Location: LCCOMB_X22_Y12_N26
\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[29]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[29]~54_combout\ = \reg|register_store\(28) $ (\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~53\ $ (\reg|register_store\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(28),
	datad => \reg|register_store\(29),
	cin => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[28]~53\,
	combout => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[29]~54_combout\);

-- Location: LCCOMB_X21_Y12_N24
\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[29]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[29]~24_combout\ = \reg|register_store\(13) $ (\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~23\ $ (!\randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(13),
	datad => \randu|Adder1|LPM_ADD_SUB_component|auto_generated|result[29]~54_combout\,
	cin => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[28]~23\,
	combout => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[29]~24_combout\);

-- Location: LCCOMB_X21_Y12_N26
\reg|register_store[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg|register_store\(29) = (\dealer|rand_enable~combout\ & ((\randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[29]~24_combout\))) # (!\dealer|rand_enable~combout\ & (\reg|register_store\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(29),
	datac => \randu|Adder2|LPM_ADD_SUB_component|auto_generated|result[29]~24_combout\,
	datad => \dealer|rand_enable~combout\,
	combout => \reg|register_store\(29));

-- Location: LCCOMB_X18_Y17_N10
\stack|S2|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S1|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S3|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S1|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S3|U1|dffs\(0),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y17_N28
\stack|S2|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[0]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S2|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N6
\stack|pop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|pop~0_combout\ = (\stack_mode~combout\(0) & !\stack_mode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|pop~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y17_N20
\stack|enableArray[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[2]~4_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(2),
	combout => \stack|enableArray[2]~4_combout\);

-- Location: LCFF_X18_Y17_N29
\stack|S2|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(0));

-- Location: LCCOMB_X18_Y16_N10
\stack|S3|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S2|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S4|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S2|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S2|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X16_Y15_N18
\stack|S3|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[0]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S3|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N26
\stack|enableArray[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[3]~7_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dealer|stack_enable~combout\,
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(3),
	combout => \stack|enableArray[3]~7_combout\);

-- Location: LCFF_X16_Y15_N19
\stack|S3|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(0));

-- Location: LCCOMB_X19_Y13_N4
\stack|S4|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S3|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S5|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S3|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S5|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S3|U1|dffs\(0),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y16_N16
\stack|S4|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[0]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S4|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N20
\stack|enableArray[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[4]~2_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(4),
	datad => \dealer|stack_enable~combout\,
	combout => \stack|enableArray[4]~2_combout\);

-- Location: LCFF_X18_Y16_N17
\stack|S4|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(0));

-- Location: LCCOMB_X19_Y14_N24
\stack|S5|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S4|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S6|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S4|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S6|U1|dffs\(0),
	datad => \stack|S4|U1|dffs\(0),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X19_Y13_N8
\stack|S5|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[0]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S5|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N14
\stack|enableArray[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[5]~1_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(5),
	combout => \stack|enableArray[5]~1_combout\);

-- Location: LCFF_X19_Y13_N9
\stack|S5|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(0));

-- Location: LCCOMB_X19_Y14_N2
\stack|S6|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S5|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S7|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S5|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S5|U1|dffs\(0),
	datac => \stack|S7|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X18_Y14_N4
\stack|S6|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[0]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S6|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y14_N16
\stack|enableArray[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[6]~0_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(6),
	combout => \stack|enableArray[6]~0_combout\);

-- Location: LCFF_X18_Y14_N5
\stack|S6|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(0));

-- Location: LCCOMB_X13_Y14_N18
\stack|S7|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S6|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S8|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S6|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S6|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S8|U1|dffs\(0),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\stack|S7|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[0]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S7|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X13_Y14_N8
\stack|enableArray[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[7]~3_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(1),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(7),
	combout => \stack|enableArray[7]~3_combout\);

-- Location: LCFF_X13_Y14_N29
\stack|S7|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(0));

-- Location: LCCOMB_X13_Y14_N16
\stack|S8|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S7|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S9|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S7|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S7|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S9|U1|dffs\(0),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X13_Y13_N20
\stack|S8|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[0]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S8|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y13_N30
\stack|enableArray[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[8]~15_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(8),
	combout => \stack|enableArray[8]~15_combout\);

-- Location: LCFF_X13_Y13_N21
\stack|S8|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(0));

-- Location: LCCOMB_X15_Y13_N2
\stack|S9|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S8|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S10|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S8|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S10|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S8|U1|dffs\(0),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y14_N30
\stack|S9|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[0]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S9|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N30
\stack|enableArray[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[9]~13_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(1),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(9),
	combout => \stack|enableArray[9]~13_combout\);

-- Location: LCFF_X15_Y14_N31
\stack|S9|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(0));

-- Location: LCCOMB_X15_Y14_N6
\stack|S10|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S9|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S11|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S9|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(0),
	datab => \stack|S9|U1|dffs\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y13_N16
\stack|S10|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[0]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S10|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y13_N30
\stack|enableArray[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[10]~14_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(10),
	combout => \stack|enableArray[10]~14_combout\);

-- Location: LCFF_X14_Y13_N17
\stack|S10|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(0));

-- Location: LCCOMB_X14_Y15_N2
\stack|S11|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S10|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S12|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S10|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(0),
	datab => \stack|S10|U1|dffs\(0),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X15_Y14_N20
\stack|S11|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[0]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S11|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N0
\stack|enableArray[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[11]~12_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(1),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(11),
	combout => \stack|enableArray[11]~12_combout\);

-- Location: LCFF_X15_Y14_N21
\stack|S11|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(0));

-- Location: LCCOMB_X11_Y13_N2
\stack|M0|auto_generated|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~8_combout\ = (\reg|register_store\(26) & ((\reg|register_store\(27) & ((\stack|S11|U1|dffs\(0)))) # (!\reg|register_store\(27) & (\stack|S9|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(0),
	datab => \reg|register_store\(26),
	datac => \reg|register_store\(27),
	datad => \stack|S11|U1|dffs\(0),
	combout => \stack|M0|auto_generated|_~8_combout\);

-- Location: LCCOMB_X11_Y13_N20
\stack|M0|auto_generated|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~10_combout\ = (!\reg|register_store\(28) & ((\stack|M0|auto_generated|_~8_combout\) # ((\stack|M0|auto_generated|_~9_combout\ & !\reg|register_store\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~9_combout\,
	datab => \reg|register_store\(26),
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~8_combout\,
	combout => \stack|M0|auto_generated|_~10_combout\);

-- Location: LCCOMB_X20_Y14_N26
\stack|S18|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (((\stack|S17|U1|dffs\(0))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S19|U1|dffs\(0))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S17|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S17|U1|dffs\(0),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X11_Y14_N0
\stack|S18|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[0]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S18|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N10
\stack|enableArray[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[18]~18_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(18),
	combout => \stack|enableArray[18]~18_combout\);

-- Location: LCFF_X11_Y14_N1
\stack|S18|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(0));

-- Location: LCCOMB_X20_Y14_N22
\stack|S17|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S16|U1|dffs\(0)))) # (!\stack_mode~combout\(0) & (\stack|S18|U1|dffs\(0))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S16|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S18|U1|dffs\(0),
	datad => \stack|S16|U1|dffs\(0),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X20_Y14_N12
\stack|S17|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[0]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S17|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y14_N16
\stack|enableArray[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[17]~17_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(17),
	combout => \stack|enableArray[17]~17_combout\);

-- Location: LCFF_X20_Y14_N13
\stack|S17|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(0));

-- Location: LCCOMB_X19_Y14_N6
\stack|S16|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S15|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S17|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S15|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S17|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X11_Y14_N4
\stack|S16|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[0]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S16|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y14_N4
\stack|enableArray[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[16]~16_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(16),
	combout => \stack|enableArray[16]~16_combout\);

-- Location: LCFF_X11_Y14_N5
\stack|S16|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(0));

-- Location: LCCOMB_X13_Y14_N14
\stack|S15|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S14|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S16|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S14|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S14|U1|dffs\(0),
	datac => \stack|S16|U1|dffs\(0),
	datad => \stack_mode~combout\(0),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y14_N16
\stack|S15|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[0]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S15|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S15|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N8
\stack|enableArray[15]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[15]~8_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(15),
	combout => \stack|enableArray[15]~8_combout\);

-- Location: LCFF_X14_Y14_N17
\stack|S15|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(0));

-- Location: LCCOMB_X13_Y16_N28
\stack|S14|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S13|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S15|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S13|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(0),
	datab => \stack|S15|U1|dffs\(0),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X12_Y14_N16
\stack|S14|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[0]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S14|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y14_N8
\stack|enableArray[14]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[14]~10_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(14),
	combout => \stack|enableArray[14]~10_combout\);

-- Location: LCFF_X12_Y14_N17
\stack|S14|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(0));

-- Location: LCCOMB_X13_Y16_N18
\stack|S13|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S12|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack|S14|U1|dffs\(0)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S12|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S12|U1|dffs\(0),
	datac => \stack_mode~combout\(0),
	datad => \stack|S14|U1|dffs\(0),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X14_Y14_N30
\stack|S13|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[0]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S13|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y14_N14
\stack|enableArray[13]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[13]~9_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \dealer|stack_enable~combout\,
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(13),
	combout => \stack|enableArray[13]~9_combout\);

-- Location: LCFF_X14_Y14_N31
\stack|S13|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(0));

-- Location: LCCOMB_X12_Y13_N4
\stack|S12|U0|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[0]~0_combout\ = (\stack_mode~combout\(0) & (\stack|S11|U1|dffs\(0))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S13|U1|dffs\(0)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S11|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(0),
	datab => \stack_mode~combout\(0),
	datac => \stack|S13|U1|dffs\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X12_Y14_N26
\stack|S12|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[0]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \stack|S12|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X12_Y14_N14
\stack|enableArray[12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[12]~11_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(12),
	combout => \stack|enableArray[12]~11_combout\);

-- Location: LCFF_X12_Y14_N27
\stack|S12|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(0));

-- Location: LCCOMB_X13_Y16_N2
\stack|M0|auto_generated|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~6_combout\ = (!\reg|register_store\(26) & ((\reg|register_store\(27) & (\stack|S14|U1|dffs\(0))) # (!\reg|register_store\(27) & ((\stack|S12|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(0),
	datab => \reg|register_store\(27),
	datac => \reg|register_store\(26),
	datad => \stack|S12|U1|dffs\(0),
	combout => \stack|M0|auto_generated|_~6_combout\);

-- Location: LCCOMB_X13_Y16_N20
\stack|M0|auto_generated|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~7_combout\ = (\reg|register_store\(28) & ((\stack|M0|auto_generated|_~5_combout\) # (\stack|M0|auto_generated|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~5_combout\,
	datab => \stack|M0|auto_generated|_~6_combout\,
	datac => \reg|register_store\(28),
	combout => \stack|M0|auto_generated|_~7_combout\);

-- Location: LCCOMB_X11_Y13_N18
\stack|M0|auto_generated|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~11_combout\ = (\stack|M0|auto_generated|_~4_combout\) # ((\reg|register_store\(29) & ((\stack|M0|auto_generated|_~10_combout\) # (\stack|M0|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~4_combout\,
	datab => \reg|register_store\(29),
	datac => \stack|M0|auto_generated|_~10_combout\,
	datad => \stack|M0|auto_generated|_~7_combout\,
	combout => \stack|M0|auto_generated|_~11_combout\);

-- Location: LCCOMB_X12_Y13_N20
\stack|S13|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S12|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S14|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S12|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S12|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y14_N28
\stack|S13|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[1]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S13|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S13|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X14_Y14_N29
\stack|S13|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(1));

-- Location: LCCOMB_X12_Y13_N10
\stack|S12|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S11|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S13|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S11|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S13|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X12_Y14_N24
\stack|S12|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[1]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S12|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X12_Y14_N25
\stack|S12|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(1));

-- Location: LCCOMB_X12_Y13_N0
\stack|M0|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~53_combout\ = (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S13|U1|dffs\(1))) # (!\reg|register_store\(26) & ((\stack|S12|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(1),
	datab => \reg|register_store\(26),
	datac => \stack|S12|U1|dffs\(1),
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~53_combout\);

-- Location: LCCOMB_X12_Y13_N16
\stack|S14|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S13|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S15|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S13|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S15|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X12_Y14_N18
\stack|S14|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[1]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S14|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X12_Y14_N19
\stack|S14|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(1));

-- Location: LCCOMB_X11_Y14_N30
\stack|S16|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S15|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S17|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S15|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S17|U1|dffs\(1),
	datab => \stack|S15|U1|dffs\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X11_Y14_N16
\stack|S16|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[1]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S16|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X11_Y14_N17
\stack|S16|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(1));

-- Location: LCCOMB_X12_Y14_N30
\stack|S15|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S14|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack|S16|U1|dffs\(1)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S14|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S14|U1|dffs\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S16|U1|dffs\(1),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y14_N18
\stack|S15|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[1]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S15|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S15|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X14_Y14_N19
\stack|S15|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(1));

-- Location: LCCOMB_X12_Y13_N2
\stack|M0|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~54_combout\ = (\reg|register_store\(27) & ((\reg|register_store\(26) & ((\stack|S15|U1|dffs\(1)))) # (!\reg|register_store\(26) & (\stack|S14|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(1),
	datab => \stack|S15|U1|dffs\(1),
	datac => \reg|register_store\(26),
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~54_combout\);

-- Location: LCCOMB_X12_Y13_N24
\stack|M0|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~55_combout\ = (\reg|register_store\(28) & ((\stack|M0|auto_generated|_~53_combout\) # (\stack|M0|auto_generated|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~53_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~54_combout\,
	combout => \stack|M0|auto_generated|_~55_combout\);

-- Location: LCCOMB_X12_Y13_N26
\stack|S11|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S10|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S12|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S10|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S10|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y14_N26
\stack|S11|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[1]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S11|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X15_Y14_N27
\stack|S11|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(1));

-- Location: LCCOMB_X13_Y13_N2
\stack|S10|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (((\stack|S9|U1|dffs\(1))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S11|U1|dffs\(1))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S9|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S11|U1|dffs\(1),
	datac => \stack_mode~combout\(1),
	datad => \stack|S9|U1|dffs\(1),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X14_Y13_N4
\stack|S10|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[1]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S10|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X14_Y13_N5
\stack|S10|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(1));

-- Location: LCCOMB_X12_Y13_N12
\stack|S9|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S8|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S10|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S8|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S10|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X15_Y14_N16
\stack|S9|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[1]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S9|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X15_Y14_N17
\stack|S9|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(1));

-- Location: LCCOMB_X12_Y13_N18
\stack|S7|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(0) & (\stack|S6|U1|dffs\(1))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S8|U1|dffs\(1)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S6|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S8|U1|dffs\(1),
	datad => \stack_mode~combout\(1),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X13_Y14_N24
\stack|S7|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[1]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S7|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X13_Y14_N25
\stack|S7|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(1));

-- Location: LCCOMB_X13_Y13_N28
\stack|S8|U0|$00000|auto_generated|result_node[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[1]~4_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S7|U1|dffs\(1)))) # (!\stack_mode~combout\(0) & (\stack|S9|U1|dffs\(1))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S7|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S9|U1|dffs\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S7|U1|dffs\(1),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X13_Y13_N8
\stack|S8|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[1]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[1]~4_combout\,
	combout => \stack|S8|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X13_Y13_N9
\stack|S8|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(1));

-- Location: LCCOMB_X12_Y13_N28
\stack|M0|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~57_combout\ = (\reg|register_store\(26) & ((\stack|S9|U1|dffs\(1)))) # (!\reg|register_store\(26) & (\stack|S8|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S8|U1|dffs\(1),
	datac => \reg|register_store\(26),
	datad => \stack|S9|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~57_combout\);

-- Location: LCCOMB_X12_Y13_N22
\stack|M0|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~56_combout\ = (\reg|register_store\(26) & ((\stack|S11|U1|dffs\(1)))) # (!\reg|register_store\(26) & (\stack|S10|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(26),
	datac => \stack|S10|U1|dffs\(1),
	datad => \stack|S11|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~56_combout\);

-- Location: LCCOMB_X12_Y13_N30
\stack|M0|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~58_combout\ = (!\reg|register_store\(28) & ((\reg|register_store\(27) & ((\stack|M0|auto_generated|_~56_combout\))) # (!\reg|register_store\(27) & (\stack|M0|auto_generated|_~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \stack|M0|auto_generated|_~57_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~56_combout\,
	combout => \stack|M0|auto_generated|_~58_combout\);

-- Location: LCCOMB_X11_Y13_N0
\stack|M0|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~59_combout\ = (\stack|M0|auto_generated|_~52_combout\) # ((\reg|register_store\(29) & ((\stack|M0|auto_generated|_~55_combout\) # (\stack|M0|auto_generated|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~52_combout\,
	datab => \stack|M0|auto_generated|_~55_combout\,
	datac => \reg|register_store\(29),
	datad => \stack|M0|auto_generated|_~58_combout\,
	combout => \stack|M0|auto_generated|_~59_combout\);

-- Location: LCCOMB_X19_Y13_N24
\stack|S7|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S6|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S8|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S6|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(5),
	datab => \stack|S8|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X13_Y14_N10
\stack|S7|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[5]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S7|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X13_Y14_N11
\stack|S7|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(5));

-- Location: LCCOMB_X19_Y13_N22
\stack|S8|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S7|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S9|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S7|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S9|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S7|U1|dffs\(5),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y13_N6
\stack|S8|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[5]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S8|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y13_N7
\stack|S8|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(5));

-- Location: LCCOMB_X13_Y16_N14
\stack|S9|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S8|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S10|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S8|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S10|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S8|U1|dffs\(5),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y14_N14
\stack|S9|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[5]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S9|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X15_Y14_N15
\stack|S9|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(5));

-- Location: LCCOMB_X13_Y13_N10
\stack|S10|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S9|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S11|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S9|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S11|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S9|U1|dffs\(5),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X14_Y13_N26
\stack|S10|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[5]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S10|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X14_Y13_N27
\stack|S10|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(5));

-- Location: LCCOMB_X13_Y16_N26
\stack|S11|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S10|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S12|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S10|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S12|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S10|U1|dffs\(5),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X15_Y14_N28
\stack|S11|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[5]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S11|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X15_Y14_N29
\stack|S11|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(5));

-- Location: LCCOMB_X13_Y16_N10
\stack|S12|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (((\stack|S11|U1|dffs\(5))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S13|U1|dffs\(5))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S11|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(5),
	datab => \stack_mode~combout\(0),
	datac => \stack|S11|U1|dffs\(5),
	datad => \stack_mode~combout\(1),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X12_Y14_N28
\stack|S12|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[5]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S12|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X12_Y14_N29
\stack|S12|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(5));

-- Location: LCCOMB_X14_Y14_N12
\stack|S13|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[5]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S13|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X14_Y14_N13
\stack|S13|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(5));

-- Location: LCCOMB_X13_Y16_N0
\stack|M0|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~65_combout\ = (!\reg|register_store\(27) & ((\reg|register_store\(26) & ((\stack|S13|U1|dffs\(5)))) # (!\reg|register_store\(26) & (\stack|S12|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \reg|register_store\(27),
	datac => \stack|S12|U1|dffs\(5),
	datad => \stack|S13|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~65_combout\);

-- Location: LCCOMB_X13_Y16_N12
\stack|M0|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~67_combout\ = (\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S11|U1|dffs\(5))) # (!\reg|register_store\(26) & ((\stack|S10|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(5),
	datab => \reg|register_store\(27),
	datac => \reg|register_store\(26),
	datad => \stack|S10|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~67_combout\);

-- Location: LCCOMB_X13_Y16_N22
\stack|M0|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~68_combout\ = (\reg|register_store\(28) & ((\stack|M0|auto_generated|_~66_combout\) # ((\stack|M0|auto_generated|_~65_combout\)))) # (!\reg|register_store\(28) & (((\stack|M0|auto_generated|_~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~66_combout\,
	datab => \stack|M0|auto_generated|_~65_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~67_combout\,
	combout => \stack|M0|auto_generated|_~68_combout\);

-- Location: LCCOMB_X13_Y16_N30
\stack|M0|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~64_combout\ = (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S9|U1|dffs\(5))) # (!\reg|register_store\(26) & ((\stack|S8|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(5),
	datab => \reg|register_store\(27),
	datac => \reg|register_store\(26),
	datad => \stack|S8|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~64_combout\);

-- Location: LCCOMB_X13_Y16_N24
\stack|M0|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~69_combout\ = (\reg|register_store\(29) & ((\stack|M0|auto_generated|_~68_combout\) # ((!\reg|register_store\(28) & \stack|M0|auto_generated|_~64_combout\)))) # (!\reg|register_store\(29) & (((\reg|register_store\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(29),
	datab => \stack|M0|auto_generated|_~68_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~64_combout\,
	combout => \stack|M0|auto_generated|_~69_combout\);

-- Location: LCCOMB_X18_Y14_N8
\stack|S0|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & (!\stack_mode~combout\(0) & \stack|S1|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S1|U1|dffs\(5),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y14_N2
\stack|enableArray[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[0]~6_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \dealer|stack_enable~combout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(0),
	combout => \stack|enableArray[0]~6_combout\);

-- Location: LCFF_X18_Y14_N9
\stack|S0|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U0|$00000|auto_generated|result_node[5]~5_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N14
\stack|S1|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S0|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S2|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S0|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S2|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S0|U1|dffs\(5),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y15_N12
\stack|S1|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[5]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S1|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y15_N4
\stack|enableArray[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[1]~5_combout\ = (\dealer|stack_enable~combout\ & ((\stack_mode~combout\(0)) # ((\stack_mode~combout\(1) & \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dealer|stack_enable~combout\,
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(1),
	combout => \stack|enableArray[1]~5_combout\);

-- Location: LCFF_X16_Y15_N13
\stack|S1|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N0
\stack|S2|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S1|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S3|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S1|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S1|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S3|U1|dffs\(5),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y17_N16
\stack|S2|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[5]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S2|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y17_N17
\stack|S2|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N16
\stack|S3|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S2|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack|S4|U1|dffs\(5)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S2|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S2|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S4|U1|dffs\(5),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X16_Y15_N6
\stack|S3|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[5]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S3|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S3|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y15_N7
\stack|S3|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N18
\stack|S4|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S3|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S5|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S3|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S5|U1|dffs\(5),
	datad => \stack|S3|U1|dffs\(5),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y16_N18
\stack|S4|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[5]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S4|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y16_N19
\stack|S4|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N24
\stack|S5|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S4|U1|dffs\(5)))) # (!\stack_mode~combout\(0) & (\stack|S6|U1|dffs\(5))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S4|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S6|U1|dffs\(5),
	datac => \stack_mode~combout\(0),
	datad => \stack|S4|U1|dffs\(5),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X19_Y13_N20
\stack|S5|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[5]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S5|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y13_N21
\stack|S5|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(5));

-- Location: LCCOMB_X19_Y13_N14
\stack|S6|U0|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[5]~5_combout\ = (\stack_mode~combout\(0) & (\stack|S5|U1|dffs\(5))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S7|U1|dffs\(5)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S5|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S5|U1|dffs\(5),
	datac => \stack_mode~combout\(1),
	datad => \stack|S7|U1|dffs\(5),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X18_Y14_N30
\stack|S6|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[5]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S6|U0|$00000|auto_generated|result_node[5]~5_combout\,
	combout => \stack|S6|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y14_N31
\stack|S6|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N12
\stack|M0|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~60_combout\ = (\reg|register_store\(27) & (((\reg|register_store\(26))))) # (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S5|U1|dffs\(5))) # (!\reg|register_store\(26) & ((\stack|S4|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(5),
	datab => \stack|S4|U1|dffs\(5),
	datac => \reg|register_store\(27),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~60_combout\);

-- Location: LCCOMB_X20_Y16_N10
\stack|M0|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~61_combout\ = (\reg|register_store\(27) & ((\stack|M0|auto_generated|_~60_combout\ & (\stack|S7|U1|dffs\(5))) # (!\stack|M0|auto_generated|_~60_combout\ & ((\stack|S6|U1|dffs\(5)))))) # (!\reg|register_store\(27) & 
-- (((\stack|M0|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(5),
	datab => \stack|S6|U1|dffs\(5),
	datac => \reg|register_store\(27),
	datad => \stack|M0|auto_generated|_~60_combout\,
	combout => \stack|M0|auto_generated|_~61_combout\);

-- Location: LCCOMB_X12_Y16_N20
\stack|M0|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~70_combout\ = (\stack|M0|auto_generated|_~69_combout\ & (((\reg|register_store\(29)) # (\stack|M0|auto_generated|_~61_combout\)))) # (!\stack|M0|auto_generated|_~69_combout\ & (\stack|M0|auto_generated|_~63_combout\ & 
-- (!\reg|register_store\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~63_combout\,
	datab => \stack|M0|auto_generated|_~69_combout\,
	datac => \reg|register_store\(29),
	datad => \stack|M0|auto_generated|_~61_combout\,
	combout => \stack|M0|auto_generated|_~70_combout\);

-- Location: LCCOMB_X1_Y20_N4
\modulo|A1|b2v_inst5|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A1|b2v_inst5|Cout~0_combout\ = (\stack|M0|auto_generated|_~23_combout\ & (((\stack|M0|auto_generated|_~70_combout\) # (!\stack|M0|auto_generated|_~59_combout\)))) # (!\stack|M0|auto_generated|_~23_combout\ & 
-- ((\stack|M0|auto_generated|_~11_combout\ & ((\stack|M0|auto_generated|_~59_combout\) # (!\stack|M0|auto_generated|_~70_combout\))) # (!\stack|M0|auto_generated|_~11_combout\ & (\stack|M0|auto_generated|_~59_combout\ & 
-- !\stack|M0|auto_generated|_~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~23_combout\,
	datab => \stack|M0|auto_generated|_~11_combout\,
	datac => \stack|M0|auto_generated|_~59_combout\,
	datad => \stack|M0|auto_generated|_~70_combout\,
	combout => \modulo|A1|b2v_inst5|Cout~0_combout\);

-- Location: LCCOMB_X13_Y14_N12
\stack|S7|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[2]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S7|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X13_Y14_N13
\stack|S7|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(2));

-- Location: LCCOMB_X15_Y13_N8
\stack|S8|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S7|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S9|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S7|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S9|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack|S7|U1|dffs\(2),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y13_N4
\stack|S8|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[2]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S8|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S8|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X15_Y13_N5
\stack|S8|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(2));

-- Location: LCCOMB_X13_Y13_N26
\stack|S10|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[2]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S10|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X13_Y13_N27
\stack|S10|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(2));

-- Location: LCCOMB_X12_Y15_N26
\stack|S9|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S8|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S10|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S8|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S8|U1|dffs\(2),
	datac => \stack|S10|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X15_Y14_N24
\stack|S9|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[2]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S9|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X15_Y14_N25
\stack|S9|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(2));

-- Location: LCCOMB_X12_Y15_N12
\stack|M0|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~32_combout\ = (\reg|register_store\(26) & ((\reg|register_store\(27) & (\stack|S11|U1|dffs\(2))) # (!\reg|register_store\(27) & ((\stack|S9|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(2),
	datab => \reg|register_store\(26),
	datac => \stack|S9|U1|dffs\(2),
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~32_combout\);

-- Location: LCCOMB_X12_Y15_N8
\stack|M0|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~34_combout\ = (!\reg|register_store\(28) & ((\stack|M0|auto_generated|_~32_combout\) # ((\stack|M0|auto_generated|_~33_combout\ & !\reg|register_store\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~33_combout\,
	datab => \reg|register_store\(26),
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~32_combout\,
	combout => \stack|M0|auto_generated|_~34_combout\);

-- Location: LCCOMB_X20_Y16_N26
\stack|S5|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S4|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S6|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S4|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(2),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S4|U1|dffs\(2),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y13_N26
\stack|S5|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[2]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S5|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y13_N27
\stack|S5|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(2));

-- Location: LCCOMB_X19_Y16_N30
\stack|S4|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S3|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S5|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S3|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S3|U1|dffs\(2),
	datad => \stack|S5|U1|dffs\(2),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y16_N24
\stack|S4|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[2]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S4|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y16_N25
\stack|S4|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(2));

-- Location: LCCOMB_X19_Y15_N18
\stack|S3|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S2|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack|S4|U1|dffs\(2)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S2|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S2|U1|dffs\(2),
	datab => \stack_mode~combout\(1),
	datac => \stack|S4|U1|dffs\(2),
	datad => \stack_mode~combout\(0),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y15_N14
\stack|S3|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[2]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S3|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y15_N15
\stack|S3|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(2));

-- Location: LCCOMB_X19_Y16_N4
\stack|S2|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S1|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S3|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S1|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S3|U1|dffs\(2),
	datac => \stack|S1|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y17_N8
\stack|S2|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[2]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S2|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y17_N9
\stack|S2|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(2));

-- Location: LCCOMB_X19_Y15_N20
\stack|S1|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (\stack|S0|U1|dffs\(2))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S2|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S0|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S0|U1|dffs\(2),
	datac => \stack|S2|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X16_Y15_N0
\stack|S1|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[2]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S1|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y15_N1
\stack|S1|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(2));

-- Location: LCCOMB_X18_Y14_N6
\stack|S0|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & (!\stack_mode~combout\(0) & \stack|S1|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datad => \stack|S1|U1|dffs\(2),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X18_Y14_N7
\stack|S0|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U0|$00000|auto_generated|result_node[2]~2_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(2));

-- Location: LCCOMB_X18_Y16_N2
\stack|M0|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~26_combout\ = (\reg|register_store\(26) & ((\stack|S1|U1|dffs\(2)) # ((\reg|register_store\(27))))) # (!\reg|register_store\(26) & (((!\reg|register_store\(27) & \stack|S0|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(2),
	datab => \reg|register_store\(26),
	datac => \reg|register_store\(27),
	datad => \stack|S0|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~26_combout\);

-- Location: LCCOMB_X18_Y16_N8
\stack|M0|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~27_combout\ = (\stack|M0|auto_generated|_~26_combout\ & (((\stack|S3|U1|dffs\(2)) # (!\reg|register_store\(27))))) # (!\stack|M0|auto_generated|_~26_combout\ & (\stack|S2|U1|dffs\(2) & ((\reg|register_store\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S2|U1|dffs\(2),
	datab => \stack|S3|U1|dffs\(2),
	datac => \stack|M0|auto_generated|_~26_combout\,
	datad => \reg|register_store\(27),
	combout => \stack|M0|auto_generated|_~27_combout\);

-- Location: LCCOMB_X20_Y16_N8
\stack|M0|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~24_combout\ = (\reg|register_store\(26) & (((\reg|register_store\(27)) # (\stack|S5|U1|dffs\(2))))) # (!\reg|register_store\(26) & (\stack|S4|U1|dffs\(2) & (!\reg|register_store\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(26),
	datab => \stack|S4|U1|dffs\(2),
	datac => \reg|register_store\(27),
	datad => \stack|S5|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~24_combout\);

-- Location: LCCOMB_X20_Y16_N4
\stack|S6|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S5|U1|dffs\(2)))) # (!\stack_mode~combout\(0) & (\stack|S7|U1|dffs\(2))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S5|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack_mode~combout\(0),
	datac => \stack|S7|U1|dffs\(2),
	datad => \stack|S5|U1|dffs\(2),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X18_Y14_N12
\stack|S6|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[2]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S6|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y14_N13
\stack|S6|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(2));

-- Location: LCCOMB_X20_Y16_N22
\stack|M0|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~25_combout\ = (\reg|register_store\(27) & ((\stack|M0|auto_generated|_~24_combout\ & (\stack|S7|U1|dffs\(2))) # (!\stack|M0|auto_generated|_~24_combout\ & ((\stack|S6|U1|dffs\(2)))))) # (!\reg|register_store\(27) & 
-- (((\stack|M0|auto_generated|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \stack|S7|U1|dffs\(2),
	datac => \stack|M0|auto_generated|_~24_combout\,
	datad => \stack|S6|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~25_combout\);

-- Location: LCCOMB_X14_Y16_N4
\stack|M0|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~28_combout\ = (!\reg|register_store\(29) & ((\reg|register_store\(28) & ((\stack|M0|auto_generated|_~25_combout\))) # (!\reg|register_store\(28) & (\stack|M0|auto_generated|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(29),
	datab => \stack|M0|auto_generated|_~27_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~25_combout\,
	combout => \stack|M0|auto_generated|_~28_combout\);

-- Location: LCCOMB_X12_Y15_N24
\stack|S11|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[2]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S11|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X12_Y15_N25
\stack|S11|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(2));

-- Location: LCCOMB_X12_Y14_N0
\stack|S14|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[2]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S14|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X12_Y14_N1
\stack|S14|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(2));

-- Location: LCCOMB_X12_Y15_N6
\stack|S13|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S12|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S14|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S12|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S14|U1|dffs\(2),
	datac => \stack|S12|U1|dffs\(2),
	datad => \stack_mode~combout\(1),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y14_N26
\stack|S13|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[2]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S13|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S13|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X14_Y14_N27
\stack|S13|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(2));

-- Location: LCCOMB_X12_Y15_N14
\stack|S12|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S11|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S13|U1|dffs\(2)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S11|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack_mode~combout\(1),
	datac => \stack|S11|U1|dffs\(2),
	datad => \stack|S13|U1|dffs\(2),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X12_Y14_N10
\stack|S12|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[2]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S12|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X12_Y14_N11
\stack|S12|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(2));

-- Location: LCCOMB_X12_Y15_N0
\stack|M0|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~30_combout\ = (!\reg|register_store\(26) & ((\reg|register_store\(27) & ((\stack|S14|U1|dffs\(2)))) # (!\reg|register_store\(27) & (\stack|S12|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \reg|register_store\(26),
	datac => \stack|S12|U1|dffs\(2),
	datad => \stack|S14|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~30_combout\);

-- Location: LCCOMB_X11_Y14_N28
\stack|S15|U0|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[2]~2_combout\ = (\stack_mode~combout\(0) & (((\stack|S14|U1|dffs\(2))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S16|U1|dffs\(2))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S14|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(2),
	datab => \stack|S14|U1|dffs\(2),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X14_Y14_N0
\stack|S15|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[2]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S15|U0|$00000|auto_generated|result_node[2]~2_combout\,
	combout => \stack|S15|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X14_Y14_N1
\stack|S15|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(2));

-- Location: LCCOMB_X12_Y15_N18
\stack|M0|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~29_combout\ = (\reg|register_store\(26) & ((\reg|register_store\(27) & (\stack|S15|U1|dffs\(2))) # (!\reg|register_store\(27) & ((\stack|S13|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \reg|register_store\(26),
	datac => \stack|S15|U1|dffs\(2),
	datad => \stack|S13|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~29_combout\);

-- Location: LCCOMB_X12_Y15_N30
\stack|M0|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~31_combout\ = (\reg|register_store\(28) & ((\stack|M0|auto_generated|_~30_combout\) # (\stack|M0|auto_generated|_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~30_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~29_combout\,
	combout => \stack|M0|auto_generated|_~31_combout\);

-- Location: LCCOMB_X11_Y15_N24
\stack|M0|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~35_combout\ = (\stack|M0|auto_generated|_~28_combout\) # ((\reg|register_store\(29) & ((\stack|M0|auto_generated|_~34_combout\) # (\stack|M0|auto_generated|_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(29),
	datab => \stack|M0|auto_generated|_~34_combout\,
	datac => \stack|M0|auto_generated|_~28_combout\,
	datad => \stack|M0|auto_generated|_~31_combout\,
	combout => \stack|M0|auto_generated|_~35_combout\);

-- Location: LCCOMB_X12_Y14_N20
\stack|S15|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S14|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S16|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S14|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S14|U1|dffs\(3),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y14_N2
\stack|S15|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[3]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S15|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S15|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X14_Y14_N3
\stack|S15|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N16
\stack|S14|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S13|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S15|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S13|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack_mode~combout\(1),
	datad => \stack|S15|U1|dffs\(3),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X12_Y14_N2
\stack|S14|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[3]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S14|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X12_Y14_N3
\stack|S14|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N2
\stack|S13|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S12|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S14|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(3),
	datab => \stack_mode~combout\(0),
	datac => \stack|S14|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y14_N24
\stack|S13|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[3]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S13|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X14_Y14_N25
\stack|S13|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N8
\stack|M0|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~41_combout\ = (!\reg|register_store\(27) & ((\reg|register_store\(26) & ((\stack|S13|U1|dffs\(3)))) # (!\reg|register_store\(26) & (\stack|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(3),
	datab => \reg|register_store\(27),
	datac => \stack|S13|U1|dffs\(3),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~41_combout\);

-- Location: LCCOMB_X11_Y15_N22
\stack|M0|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~42_combout\ = (\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S15|U1|dffs\(3))) # (!\reg|register_store\(26) & ((\stack|S14|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(3),
	datab => \stack|S14|U1|dffs\(3),
	datac => \reg|register_store\(27),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~42_combout\);

-- Location: LCCOMB_X11_Y15_N28
\stack|M0|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~43_combout\ = (\reg|register_store\(28) & ((\stack|M0|auto_generated|_~41_combout\) # (\stack|M0|auto_generated|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|register_store\(28),
	datac => \stack|M0|auto_generated|_~41_combout\,
	datad => \stack|M0|auto_generated|_~42_combout\,
	combout => \stack|M0|auto_generated|_~43_combout\);

-- Location: LCCOMB_X11_Y15_N10
\stack|S11|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S10|U1|dffs\(3)))) # (!\stack_mode~combout\(0) & (\stack|S12|U1|dffs\(3))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S10|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(3),
	datab => \stack_mode~combout\(1),
	datac => \stack_mode~combout\(0),
	datad => \stack|S10|U1|dffs\(3),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y14_N10
\stack|S11|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[3]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S11|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X15_Y14_N11
\stack|S11|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N20
\stack|S9|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S8|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S10|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S8|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(3),
	datab => \stack|S10|U1|dffs\(3),
	datac => \stack_mode~combout\(0),
	datad => \stack_mode~combout\(1),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y14_N8
\stack|S9|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[3]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S9|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X15_Y14_N9
\stack|S9|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(3));

-- Location: LCCOMB_X13_Y13_N22
\stack|S10|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S9|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S11|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S9|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S11|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S9|U1|dffs\(3),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X14_Y13_N6
\stack|S10|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[3]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S10|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X14_Y13_N7
\stack|S10|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N6
\stack|M0|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~44_combout\ = (\reg|register_store\(26) & ((\stack|S11|U1|dffs\(3)))) # (!\reg|register_store\(26) & (\stack|S10|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S10|U1|dffs\(3),
	datac => \stack|S11|U1|dffs\(3),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~44_combout\);

-- Location: LCCOMB_X11_Y15_N14
\stack|M0|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~46_combout\ = (!\reg|register_store\(28) & ((\reg|register_store\(27) & ((\stack|M0|auto_generated|_~44_combout\))) # (!\reg|register_store\(27) & (\stack|M0|auto_generated|_~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~45_combout\,
	datab => \reg|register_store\(27),
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~44_combout\,
	combout => \stack|M0|auto_generated|_~46_combout\);

-- Location: LCCOMB_X18_Y13_N2
\stack|S5|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[3]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S5|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y13_N3
\stack|S5|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(3));

-- Location: LCCOMB_X16_Y15_N28
\stack|S1|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[3]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S1|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y15_N29
\stack|S1|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N0
\stack|S2|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S1|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S3|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S1|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S1|U1|dffs\(3),
	datac => \stack|S3|U1|dffs\(3),
	datad => \stack_mode~combout\(0),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y17_N18
\stack|S2|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[3]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S2|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y17_N19
\stack|S2|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(3));

-- Location: LCCOMB_X18_Y16_N0
\stack|S3|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S2|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S4|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S2|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S4|U1|dffs\(3),
	datac => \stack|S2|U1|dffs\(3),
	datad => \stack_mode~combout\(1),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X16_Y15_N22
\stack|S3|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[3]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S3|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S3|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X16_Y15_N23
\stack|S3|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N2
\stack|S4|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & ((\stack|S3|U1|dffs\(3)))) # (!\stack_mode~combout\(0) & (\stack|S5|U1|dffs\(3))))) # (!\stack_mode~combout\(1) & 
-- (((\stack|S3|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S5|U1|dffs\(3),
	datac => \stack|S3|U1|dffs\(3),
	datad => \stack_mode~combout\(0),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y16_N22
\stack|S4|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[3]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S4|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y16_N23
\stack|S4|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N30
\stack|M0|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~36_combout\ = (\reg|register_store\(27) & (((\reg|register_store\(26))))) # (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S5|U1|dffs\(3))) # (!\reg|register_store\(26) & ((\stack|S4|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(3),
	datab => \reg|register_store\(27),
	datac => \stack|S4|U1|dffs\(3),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~36_combout\);

-- Location: LCCOMB_X13_Y13_N24
\stack|S8|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (((\stack|S7|U1|dffs\(3))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S9|U1|dffs\(3))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S7|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S9|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S7|U1|dffs\(3),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X15_Y13_N6
\stack|S8|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[3]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S8|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X15_Y13_N7
\stack|S8|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~0_combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(3));

-- Location: LCCOMB_X13_Y14_N4
\stack|S7|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S6|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack|S8|U1|dffs\(3)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S6|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(3),
	datab => \stack|S8|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X13_Y14_N26
\stack|S7|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[3]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S7|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S7|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X13_Y14_N27
\stack|S7|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(3));

-- Location: LCCOMB_X15_Y14_N4
\stack|S6|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(0) & (\stack|S5|U1|dffs\(3))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S7|U1|dffs\(3)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S5|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S5|U1|dffs\(3),
	datac => \stack_mode~combout\(1),
	datad => \stack|S7|U1|dffs\(3),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X18_Y14_N28
\stack|S6|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[3]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S6|U0|$00000|auto_generated|result_node[3]~3_combout\,
	combout => \stack|S6|U1|dffs[3]~feeder_combout\);

-- Location: LCFF_X18_Y14_N29
\stack|S6|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(3));

-- Location: LCCOMB_X11_Y15_N0
\stack|M0|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~37_combout\ = (\stack|M0|auto_generated|_~36_combout\ & ((\stack|S7|U1|dffs\(3)) # ((!\reg|register_store\(27))))) # (!\stack|M0|auto_generated|_~36_combout\ & (((\reg|register_store\(27) & \stack|S6|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(3),
	datab => \stack|M0|auto_generated|_~36_combout\,
	datac => \reg|register_store\(27),
	datad => \stack|S6|U1|dffs\(3),
	combout => \stack|M0|auto_generated|_~37_combout\);

-- Location: LCCOMB_X18_Y17_N4
\stack|S0|U0|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[3]~3_combout\ = (\stack_mode~combout\(1) & (\stack|S1|U1|dffs\(3) & !\stack_mode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(1),
	datab => \stack|S1|U1|dffs\(3),
	datad => \stack_mode~combout\(0),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCFF_X18_Y17_N5
\stack|S0|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U0|$00000|auto_generated|result_node[3]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N26
\stack|M0|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~38_combout\ = (\reg|register_store\(27) & (((\reg|register_store\(26))))) # (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S1|U1|dffs\(3))) # (!\reg|register_store\(26) & ((\stack|S0|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \stack|S1|U1|dffs\(3),
	datac => \stack|S0|U1|dffs\(3),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~38_combout\);

-- Location: LCCOMB_X18_Y17_N12
\stack|M0|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~39_combout\ = (\reg|register_store\(27) & ((\stack|M0|auto_generated|_~38_combout\ & (\stack|S3|U1|dffs\(3))) # (!\stack|M0|auto_generated|_~38_combout\ & ((\stack|S2|U1|dffs\(3)))))) # (!\reg|register_store\(27) & 
-- (\stack|M0|auto_generated|_~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \stack|M0|auto_generated|_~38_combout\,
	datac => \stack|S3|U1|dffs\(3),
	datad => \stack|S2|U1|dffs\(3),
	combout => \stack|M0|auto_generated|_~39_combout\);

-- Location: LCCOMB_X11_Y15_N26
\stack|M0|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~40_combout\ = (!\reg|register_store\(29) & ((\reg|register_store\(28) & (\stack|M0|auto_generated|_~37_combout\)) # (!\reg|register_store\(28) & ((\stack|M0|auto_generated|_~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(29),
	datab => \stack|M0|auto_generated|_~37_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~39_combout\,
	combout => \stack|M0|auto_generated|_~40_combout\);

-- Location: LCCOMB_X11_Y15_N4
\stack|M0|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~47_combout\ = (\stack|M0|auto_generated|_~40_combout\) # ((\reg|register_store\(29) & ((\stack|M0|auto_generated|_~43_combout\) # (\stack|M0|auto_generated|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(29),
	datab => \stack|M0|auto_generated|_~43_combout\,
	datac => \stack|M0|auto_generated|_~46_combout\,
	datad => \stack|M0|auto_generated|_~40_combout\,
	combout => \stack|M0|auto_generated|_~47_combout\);

-- Location: LCCOMB_X2_Y20_N0
\modulo|A1|b2v_inst5|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A1|b2v_inst5|Cout~2_combout\ = (\modulo|A1|b2v_inst5|Cout~1_combout\ & ((\stack|M0|auto_generated|_~47_combout\) # ((\modulo|A1|b2v_inst5|Cout~0_combout\ & \stack|M0|auto_generated|_~35_combout\)))) # (!\modulo|A1|b2v_inst5|Cout~1_combout\ & 
-- (\modulo|A1|b2v_inst5|Cout~0_combout\ & (\stack|M0|auto_generated|_~35_combout\ & \stack|M0|auto_generated|_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A1|b2v_inst5|Cout~1_combout\,
	datab => \modulo|A1|b2v_inst5|Cout~0_combout\,
	datac => \stack|M0|auto_generated|_~35_combout\,
	datad => \stack|M0|auto_generated|_~47_combout\,
	combout => \modulo|A1|b2v_inst5|Cout~2_combout\);

-- Location: LCCOMB_X14_Y14_N6
\stack|S15|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[4]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S15|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X14_Y14_N7
\stack|S15|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(4));

-- Location: LCCOMB_X13_Y15_N22
\stack|S14|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S13|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S15|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S13|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_mode~combout\(0),
	datab => \stack|S13|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack|S15|U1|dffs\(4),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X12_Y14_N22
\stack|S14|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[4]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S14|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X12_Y14_N23
\stack|S14|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(4));

-- Location: LCCOMB_X13_Y15_N6
\stack|S13|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(1) & ((\stack_mode~combout\(0) & (\stack|S12|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack|S14|U1|dffs\(4)))))) # (!\stack_mode~combout\(1) & 
-- (\stack|S12|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(4),
	datab => \stack|S14|U1|dffs\(4),
	datac => \stack_mode~combout\(1),
	datad => \stack_mode~combout\(0),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X14_Y14_N4
\stack|S13|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[4]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S13|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X14_Y14_N5
\stack|S13|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(4));

-- Location: LCCOMB_X13_Y15_N18
\stack|M0|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~17_combout\ = (!\reg|register_store\(27) & ((\reg|register_store\(26) & ((\stack|S13|U1|dffs\(4)))) # (!\reg|register_store\(26) & (\stack|S12|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(4),
	datab => \stack|S13|U1|dffs\(4),
	datac => \reg|register_store\(27),
	datad => \reg|register_store\(26),
	combout => \stack|M0|auto_generated|_~17_combout\);

-- Location: LCCOMB_X13_Y15_N26
\stack|M0|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~19_combout\ = (\reg|register_store\(28) & ((\stack|M0|auto_generated|_~18_combout\) # (\stack|M0|auto_generated|_~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~18_combout\,
	datac => \reg|register_store\(28),
	datad => \stack|M0|auto_generated|_~17_combout\,
	combout => \stack|M0|auto_generated|_~19_combout\);

-- Location: LCCOMB_X18_Y13_N24
\stack|S5|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[4]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S5|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y13_N25
\stack|S5|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(4));

-- Location: LCCOMB_X14_Y15_N20
\stack|S6|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (((\stack|S5|U1|dffs\(4))))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & (\stack|S7|U1|dffs\(4))) # (!\stack_mode~combout\(1) & 
-- ((\stack|S5|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack|S5|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y14_N0
\stack|S6|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[4]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S6|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y14_N1
\stack|S6|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(4));

-- Location: LCCOMB_X14_Y15_N16
\stack|S4|U0|$00000|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[4]~1_combout\ = (\stack_mode~combout\(0) & (\stack|S3|U1|dffs\(4))) # (!\stack_mode~combout\(0) & ((\stack_mode~combout\(1) & ((\stack|S5|U1|dffs\(4)))) # (!\stack_mode~combout\(1) & 
-- (\stack|S3|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(4),
	datab => \stack_mode~combout\(0),
	datac => \stack|S5|U1|dffs\(4),
	datad => \stack_mode~combout\(1),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X18_Y16_N26
\stack|S4|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[4]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[4]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[4]~1_combout\,
	combout => \stack|S4|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y16_N27
\stack|S4|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~combout\,
	sload => \stack|pop~0_combout\,
	ena => \stack|enableArray[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(4));

-- Location: LCCOMB_X14_Y15_N12
\stack|M0|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~12_combout\ = (\reg|register_store\(27) & (\reg|register_store\(26))) # (!\reg|register_store\(27) & ((\reg|register_store\(26) & (\stack|S5|U1|dffs\(4))) # (!\reg|register_store\(26) & ((\stack|S4|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|register_store\(27),
	datab => \reg|register_store\(26),
	datac => \stack|S5|U1|dffs\(4),
	datad => \stack|S4|U1|dffs\(4),
	combout => \stack|M0|auto_generated|_~12_combout\);

-- Location: LCCOMB_X14_Y15_N30
\stack|M0|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~13_combout\ = (\reg|register_store\(27) & ((\stack|M0|auto_generated|_~12_combout\ & (\stack|S7|U1|dffs\(4))) # (!\stack|M0|auto_generated|_~12_combout\ & ((\stack|S6|U1|dffs\(4)))))) # (!\reg|register_store\(27) & 
-- (((\stack|M0|auto_generated|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(4),
	datab => \reg|register_store\(27),
	datac => \stack|S6|U1|dffs\(4),
	datad => \stack|M0|auto_generated|_~12_combout\,
	combout => \stack|M0|auto_generated|_~13_combout\);

-- Location: LCCOMB_X13_Y15_N28
\stack|M0|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~16_combout\ = (!\reg|register_store\(29) & ((\reg|register_store\(28) & ((\stack|M0|auto_generated|_~13_combout\))) # (!\reg|register_store\(28) & (\stack|M0|auto_generated|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~15_combout\,
	datab => \reg|register_store\(28),
	datac => \reg|register_store\(29),
	datad => \stack|M0|auto_generated|_~13_combout\,
	combout => \stack|M0|auto_generated|_~16_combout\);

-- Location: LCCOMB_X13_Y15_N0
\stack|M0|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~23_combout\ = (\stack|M0|auto_generated|_~16_combout\) # ((\reg|register_store\(29) & ((\stack|M0|auto_generated|_~22_combout\) # (\stack|M0|auto_generated|_~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~22_combout\,
	datab => \stack|M0|auto_generated|_~19_combout\,
	datac => \reg|register_store\(29),
	datad => \stack|M0|auto_generated|_~16_combout\,
	combout => \stack|M0|auto_generated|_~23_combout\);

-- Location: LCCOMB_X1_Y20_N24
\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ = \stack|M0|auto_generated|_~11_combout\ $ (\modulo|A1|b2v_inst5|Cout~2_combout\ $ (\stack|M0|auto_generated|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~11_combout\,
	datac => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\);

-- Location: LCCOMB_X2_Y20_N24
\modulo|A1|b2v_inst7|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A1|b2v_inst7|S~combout\ = \stack|M0|auto_generated|_~70_combout\ $ (((\modulo|A1|b2v_inst5|Cout~2_combout\ & \stack|M0|auto_generated|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datac => \stack|M0|auto_generated|_~23_combout\,
	datad => \stack|M0|auto_generated|_~70_combout\,
	combout => \modulo|A1|b2v_inst7|S~combout\);

-- Location: LCCOMB_X1_Y20_N30
\modulo|A5|b2v_inst1|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A5|b2v_inst1|S~combout\ = \modulo|A1|b2v_inst7|S~combout\ $ (\stack|M0|auto_generated|_~59_combout\ $ (((\modulo|A1|b2v_inst6|S~combout\ & !\stack|M0|auto_generated|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A1|b2v_inst6|S~combout\,
	datab => \modulo|A1|b2v_inst7|S~combout\,
	datac => \stack|M0|auto_generated|_~59_combout\,
	datad => \stack|M0|auto_generated|_~11_combout\,
	combout => \modulo|A5|b2v_inst1|S~combout\);

-- Location: LCCOMB_X2_Y20_N2
\modulo|A4|b2v_inst2|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A4|b2v_inst2|S~0_combout\ = (\modulo|A1|b2v_inst5|Cout~2_combout\ & (!\stack|M0|auto_generated|_~23_combout\)) # (!\modulo|A1|b2v_inst5|Cout~2_combout\ & ((\stack|M0|auto_generated|_~23_combout\) # (!\stack|M0|auto_generated|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datac => \stack|M0|auto_generated|_~23_combout\,
	datad => \stack|M0|auto_generated|_~70_combout\,
	combout => \modulo|A4|b2v_inst2|S~0_combout\);

-- Location: LCCOMB_X2_Y20_N18
\modulo|A5|b2v_inst3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A5|b2v_inst3|S~0_combout\ = \stack|M0|auto_generated|_~47_combout\ $ ((((!\modulo|A1|b2v_inst5|Cout~2_combout\ & !\stack|M0|auto_generated|_~23_combout\)) # (!\stack|M0|auto_generated|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datab => \stack|M0|auto_generated|_~47_combout\,
	datac => \stack|M0|auto_generated|_~23_combout\,
	datad => \stack|M0|auto_generated|_~70_combout\,
	combout => \modulo|A5|b2v_inst3|S~0_combout\);

-- Location: LCCOMB_X2_Y20_N12
\modulo|A5|b2v_inst3|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A5|b2v_inst3|S~combout\ = \modulo|A5|b2v_inst3|S~0_combout\ $ (((\modulo|A5|b2v_inst1|Cout~0_combout\ & (\modulo|A4|b2v_inst2|S~0_combout\ & !\stack|M0|auto_generated|_~35_combout\)) # (!\modulo|A5|b2v_inst1|Cout~0_combout\ & 
-- ((\modulo|A4|b2v_inst2|S~0_combout\) # (!\stack|M0|auto_generated|_~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst1|Cout~0_combout\,
	datab => \modulo|A4|b2v_inst2|S~0_combout\,
	datac => \stack|M0|auto_generated|_~35_combout\,
	datad => \modulo|A5|b2v_inst3|S~0_combout\,
	combout => \modulo|A5|b2v_inst3|S~combout\);

-- Location: LCCOMB_X2_Y20_N4
\modulo|A5|b2v_inst2|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo|A5|b2v_inst2|S~combout\ = \modulo|A5|b2v_inst1|Cout~0_combout\ $ (\modulo|A4|b2v_inst2|S~0_combout\ $ (\stack|M0|auto_generated|_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst1|Cout~0_combout\,
	datab => \modulo|A4|b2v_inst2|S~0_combout\,
	datac => \stack|M0|auto_generated|_~35_combout\,
	combout => \modulo|A5|b2v_inst2|S~combout\);

-- Location: LCCOMB_X1_Y20_N26
\segnum|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux6~0_combout\ = (\modulo|A5|b2v_inst3|S~combout\ & ((\modulo|A5|b2v_inst1|S~combout\ $ (\modulo|A5|b2v_inst2|S~combout\)) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\))) # (!\modulo|A5|b2v_inst3|S~combout\ & 
-- ((\modulo|A5|b2v_inst1|S~combout\) # (\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ $ (\modulo|A5|b2v_inst2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y20_N28
\segnum|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux5~0_combout\ = (\modulo|A5|b2v_inst1|S~combout\ & ((\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (\modulo|A5|b2v_inst3|S~combout\)) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & ((!\modulo|A5|b2v_inst2|S~combout\))))) # 
-- (!\modulo|A5|b2v_inst1|S~combout\ & (!\modulo|A5|b2v_inst2|S~combout\ & (\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ $ (\modulo|A5|b2v_inst3|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\segnum|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux4~0_combout\ = (\modulo|A5|b2v_inst3|S~combout\ & (!\modulo|A5|b2v_inst2|S~combout\ & ((\modulo|A5|b2v_inst1|S~combout\) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\)))) # (!\modulo|A5|b2v_inst3|S~combout\ & 
-- (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (\modulo|A5|b2v_inst1|S~combout\ & \modulo|A5|b2v_inst2|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y20_N16
\segnum|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux3~0_combout\ = (\modulo|A5|b2v_inst1|S~combout\ & ((\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & ((\modulo|A5|b2v_inst2|S~combout\))) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & ((!\modulo|A5|b2v_inst2|S~combout\) # 
-- (!\modulo|A5|b2v_inst3|S~combout\))))) # (!\modulo|A5|b2v_inst1|S~combout\ & ((\modulo|A5|b2v_inst3|S~combout\) # (\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ $ (\modulo|A5|b2v_inst2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\segnum|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux2~0_combout\ = (\modulo|A5|b2v_inst1|S~combout\ & (((\modulo|A5|b2v_inst3|S~combout\)) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\))) # (!\modulo|A5|b2v_inst1|S~combout\ & ((\modulo|A5|b2v_inst2|S~combout\ & 
-- (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\)) # (!\modulo|A5|b2v_inst2|S~combout\ & ((\modulo|A5|b2v_inst3|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\segnum|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux1~0_combout\ = (\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (\modulo|A5|b2v_inst3|S~combout\ $ (((\modulo|A5|b2v_inst1|S~combout\) # (\modulo|A5|b2v_inst2|S~combout\))))) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & 
-- (\modulo|A5|b2v_inst1|S~combout\ & (!\modulo|A5|b2v_inst3|S~combout\ & \modulo|A5|b2v_inst2|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y20_N10
\segnum|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segnum|Mux0~0_combout\ = (\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & (!\modulo|A5|b2v_inst3|S~combout\ & (\modulo|A5|b2v_inst1|S~combout\ $ (\modulo|A5|b2v_inst2|S~combout\)))) # (!\modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\ & 
-- (!\modulo|A5|b2v_inst1|S~combout\ & (\modulo|A5|b2v_inst3|S~combout\ $ (\modulo|A5|b2v_inst2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo|A5|b2v_inst|SYNTHESIZED_WIRE_0~combout\,
	datab => \modulo|A5|b2v_inst1|S~combout\,
	datac => \modulo|A5|b2v_inst3|S~combout\,
	datad => \modulo|A5|b2v_inst2|S~combout\,
	combout => \segnum|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y20_N6
\segsuit|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segsuit|Mux6~0_combout\ = (\modulo|A1|b2v_inst5|Cout~2_combout\ & (\stack|M0|auto_generated|_~23_combout\ $ (!\stack|M0|auto_generated|_~70_combout\))) # (!\modulo|A1|b2v_inst5|Cout~2_combout\ & (\stack|M0|auto_generated|_~23_combout\ & 
-- !\stack|M0|auto_generated|_~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datac => \stack|M0|auto_generated|_~23_combout\,
	datad => \stack|M0|auto_generated|_~70_combout\,
	combout => \segsuit|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\segsuit|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segsuit|Mux4~0_combout\ = (\stack|M0|auto_generated|_~70_combout\ & (!\modulo|A1|b2v_inst5|Cout~2_combout\ & !\stack|M0|auto_generated|_~23_combout\)) # (!\stack|M0|auto_generated|_~70_combout\ & (\modulo|A1|b2v_inst5|Cout~2_combout\ & 
-- \stack|M0|auto_generated|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~70_combout\,
	datac => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \segsuit|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y20_N6
\segsuit|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \segsuit|Mux4~1_combout\ = (\modulo|A1|b2v_inst5|Cout~2_combout\ & (!\stack|M0|auto_generated|_~70_combout\ & \stack|M0|auto_generated|_~23_combout\)) # (!\modulo|A1|b2v_inst5|Cout~2_combout\ & ((!\stack|M0|auto_generated|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~70_combout\,
	datac => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \segsuit|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y20_N8
\segsuit|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segsuit|Mux1~0_combout\ = (\stack|M0|auto_generated|_~70_combout\ & ((!\stack|M0|auto_generated|_~23_combout\) # (!\modulo|A1|b2v_inst5|Cout~2_combout\))) # (!\stack|M0|auto_generated|_~70_combout\ & ((\modulo|A1|b2v_inst5|Cout~2_combout\) # 
-- (\stack|M0|auto_generated|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~70_combout\,
	datac => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \segsuit|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y20_N18
\segsuit|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segsuit|Mux0~0_combout\ = (\stack|M0|auto_generated|_~70_combout\) # ((\modulo|A1|b2v_inst5|Cout~2_combout\ & \stack|M0|auto_generated|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~70_combout\,
	datac => \modulo|A1|b2v_inst5|Cout~2_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \segsuit|Mux0~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[0]~I\ : cycloneii_io
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
	datain => \segnum|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[1]~I\ : cycloneii_io
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
	datain => \segnum|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[2]~I\ : cycloneii_io
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
	datain => \segnum|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[3]~I\ : cycloneii_io
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
	datain => \segnum|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[4]~I\ : cycloneii_io
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
	datain => \segnum|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[5]~I\ : cycloneii_io
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
	datain => \segnum|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_num[6]~I\ : cycloneii_io
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
	datain => \segnum|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_num(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[0]~I\ : cycloneii_io
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
	datain => \segsuit|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_suit(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[1]~I\ : cycloneii_io
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
	padio => ww_segments_out_suit(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[2]~I\ : cycloneii_io
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
	datain => \segsuit|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_suit(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[3]~I\ : cycloneii_io
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
	datain => \segsuit|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_suit(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[4]~I\ : cycloneii_io
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
	datain => \segsuit|ALT_INV_Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_suit(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[5]~I\ : cycloneii_io
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
	datain => \segsuit|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_suit(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segments_out_suit[6]~I\ : cycloneii_io
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
	datain => \segsuit|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segments_out_suit(6));
END structure;


