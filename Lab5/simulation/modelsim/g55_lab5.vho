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

-- DATE "03/28/2017 10:10:42"

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

ENTITY 	g55_computer_player IS
    PORT (
	turn : IN std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	top_card : IN std_logic_vector(5 DOWNTO 0);
	card_in : IN std_logic_vector(5 DOWNTO 0);
	card_out : OUT std_logic_vector(5 DOWNTO 0);
	num_cards : OUT std_logic_vector(5 DOWNTO 0);
	request_card : OUT std_logic;
	done : OUT std_logic
	);
END g55_computer_player;

-- Design Ports Information
-- card_out[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- card_out[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- card_out[2]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- card_out[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- card_out[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- card_out[5]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num_cards[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num_cards[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num_cards[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num_cards[3]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num_cards[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- num_cards[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- request_card	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- done	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_card[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_card[5]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_card[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_card[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_card[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- top_card[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- turn	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_in[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_in[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_in[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_in[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_in[5]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_in[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g55_computer_player IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_turn : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_top_card : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_card_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_card_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_num_cards : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_request_card : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \card_out[0]~0_combout\ : std_logic;
SIGNAL \state[1]~2_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~25_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~30_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~9_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~30_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~60_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~61_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~64_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~65_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~46_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~55_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~85_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~86_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~96_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~58_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~60_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~108_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~109_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~81_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~124_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~89_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~131_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~132_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~98_combout\ : std_logic;
SIGNAL \rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~combout\ : std_logic;
SIGNAL \rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \rules|DEC2|A5|b2v_inst1|S~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \state[3]~15_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~152_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~153_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~154_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~155_combout\ : std_logic;
SIGNAL \state[1]~18_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S0|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S0|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \last_card_input[4]~feeder_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \rules|DEC1|A1|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A1|b2v_inst4|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A1|b2v_inst6|S~combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst1|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0~combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst2|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst3|S~1_combout\ : std_logic;
SIGNAL \rules|Equal1~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst2|S~0_combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst2|S~combout\ : std_logic;
SIGNAL \rules|Equal1~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \card_num~4_combout\ : std_logic;
SIGNAL \turn~combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \rules|DEC1|A5|b2v_inst1|S~0_combout\ : std_logic;
SIGNAL \rules|Equal3~0_combout\ : std_logic;
SIGNAL \rules|Equal3~1_combout\ : std_logic;
SIGNAL \last_card_input[2]~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \last_card_input[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \state[1]~11_combout\ : std_logic;
SIGNAL \state[4]~12_combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \stack_mode[0]~2_combout\ : std_logic;
SIGNAL \stack_mode[0]~3_combout\ : std_logic;
SIGNAL \state[1]~3_combout\ : std_logic;
SIGNAL \stack_en~feeder_combout\ : std_logic;
SIGNAL \stack_en~regout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|pop~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \card_num~7_combout\ : std_logic;
SIGNAL \card_num[31]~1_combout\ : std_logic;
SIGNAL \card_num[31]~2_combout\ : std_logic;
SIGNAL \card_addr[0]~feeder_combout\ : std_logic;
SIGNAL \card_addr[4]~0_combout\ : std_logic;
SIGNAL \card_addr[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \card_num~3_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \card_num~0_combout\ : std_logic;
SIGNAL \stack|enableArray[9]~41_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[10]~42_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \stack|enableArray[4]~46_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[5]~45_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[6]~44_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[7]~47_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[8]~43_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~22_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[15]~36_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~18_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~19_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~20_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[13]~37_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[14]~38_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~21_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~23_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[1]~49_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[2]~48_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~39_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~40_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~37_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~38_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~17_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~24_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[25]~13_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[24]~15_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[23]~7_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[21]~5_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[16]~10_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[17]~9_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[18]~8_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[19]~11_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[20]~6_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~56_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~57_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~58_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~59_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~25_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~29_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[30]~16_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[31]~18_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~26_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[26]~14_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[27]~12_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[29]~19_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[28]~17_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~27_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~28_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~31_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[3]~32_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[33]~25_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[34]~24_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[35]~27_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[36]~22_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[37]~21_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[38]~20_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[39]~23_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~43_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~44_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~45_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[42]~34_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[41]~33_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~52_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[40]~35_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~53_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|enableArray[51]~3_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[50]~0_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[49]~1_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[48]~2_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[47]~28_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[46]~30_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~50_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[43]~32_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[44]~31_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[45]~29_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~49_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~51_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~54_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~12_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~46_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~47_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~48_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~55_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[22]~4_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~66_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~67_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~68_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~69_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~41_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~45_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~42_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~43_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~44_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~47_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~48_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[32]~26_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~77_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~78_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~75_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~76_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~79_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~70_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~71_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~72_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~73_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~74_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~80_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~37_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~38_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~35_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[12]~39_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~34_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~36_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~39_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S0|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[0]~50_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[3]~51_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~62_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~63_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~33_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~40_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[5]~49_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~41_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~42_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~151_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst5|Cout~0_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~100_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~101_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~102_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~103_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~59_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~64_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~63_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~61_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~62_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~65_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~66_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~87_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~88_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~89_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~93_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~94_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~95_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~97_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~98_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~90_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~91_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~92_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~99_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~67_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~83_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~84_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~81_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~82_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~50_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~54_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~52_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|enableArray[11]~40_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~51_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~53_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~56_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[2]~57_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst4|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst5|Cout~1_combout\ : std_logic;
SIGNAL \rules|DEC2|A5|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \rules|DEC2|A4|b2v_inst2|S~0_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst7|S~8_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst7|S~combout\ : std_logic;
SIGNAL \rules|DEC2|A5|b2v_inst1|Cout~0_combout\ : std_logic;
SIGNAL \rules|DEC2|A5|b2v_inst2|Cout~0_combout\ : std_logic;
SIGNAL \rules|Equal3~2_combout\ : std_logic;
SIGNAL \rules|Equal3~3_combout\ : std_logic;
SIGNAL \rules|DEC2|A5|b2v_inst2|S~combout\ : std_logic;
SIGNAL \rules|Equal0~0_combout\ : std_logic;
SIGNAL \rules|Equal0~1_combout\ : std_logic;
SIGNAL \state~6_combout\ : std_logic;
SIGNAL \state[2]~10_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \state[3]~8_combout\ : std_logic;
SIGNAL \state[3]~9_combout\ : std_logic;
SIGNAL \state[3]~16_combout\ : std_logic;
SIGNAL \state[3]~17_combout\ : std_logic;
SIGNAL \state[3]~4_combout\ : std_logic;
SIGNAL \state[1]~13_combout\ : std_logic;
SIGNAL \state[1]~14_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~33_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~34_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S0|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~35_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~36_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~15_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~10_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~12_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~13_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~14_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S51|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~13_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~14_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~150_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~5_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~6_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~2_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~17_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~18_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~15_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~16_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~7_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~19_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~20_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~21_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~27_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~26_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~28_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~29_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~31_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~22_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~23_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~24_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~32_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~8_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[4]~16_combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst6|S~combout\ : std_logic;
SIGNAL \rules|DEC1|A1|b2v_inst7|S~combout\ : std_logic;
SIGNAL \rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\ : std_logic;
SIGNAL \rules|Equal2~0_combout\ : std_logic;
SIGNAL \state~5_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \card_num~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \card_num~5_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~123_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~120_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~121_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~122_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~125_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~117_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~118_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~119_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~114_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~115_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~116_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~126_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~112_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~113_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~110_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~111_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~76_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~80_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S26|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S26|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S27|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S27|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S28|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S28|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~77_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~78_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~79_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~82_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~83_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S3|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S3|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S0|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~106_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~107_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~104_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~105_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~68_combout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S13|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S13|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~72_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~70_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~69_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~71_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~73_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~74_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~75_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[0]~84_combout\ : std_logic;
SIGNAL \play_card_value[0]~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \card_out[0]~1_combout\ : std_logic;
SIGNAL \card_out[0]~reg0_regout\ : std_logic;
SIGNAL \stack|S14|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S14|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S15|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S15|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S16|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S16|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S17|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S17|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S18|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S18|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S19|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S19|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S20|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S20|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S21|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S21|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S22|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S22|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S23|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S23|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S24|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S24|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S25|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S25|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~97_combout\ : std_logic;
SIGNAL \stack|S32|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S32|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S29|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S30|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S30|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S31|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S31|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~95_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~94_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~96_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~99_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~133_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~134_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~135_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~136_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~93_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~100_combout\ : std_logic;
SIGNAL \stack|S34|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S34|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S35|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S35|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S36|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S36|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S37|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S37|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S46|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S46|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S45|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S45|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S44|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S44|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S43|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S43|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S42|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S42|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S41|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S41|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S40|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S40|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S39|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S39|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S38|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S38|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~137_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~138_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~139_combout\ : std_logic;
SIGNAL \stack|S33|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S33|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~140_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~141_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~142_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~147_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~146_combout\ : std_logic;
SIGNAL \stack|S50|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S50|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S49|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S49|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S48|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S48|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S47|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S47|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~144_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~143_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~145_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~148_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~149_combout\ : std_logic;
SIGNAL \stack|S2|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S2|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S1|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S1|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S0|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S0|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~129_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~130_combout\ : std_logic;
SIGNAL \stack|S11|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S11|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S10|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S10|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S9|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S9|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S8|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S8|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S7|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S7|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S4|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S4|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S5|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S5|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|S6|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S6|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~127_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|_~128_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~85_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~90_combout\ : std_logic;
SIGNAL \stack|S12|U0|$00000|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \stack|S12|U1|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~87_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~86_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~88_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~91_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~92_combout\ : std_logic;
SIGNAL \stack|M0|auto_generated|result_node[1]~101_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \card_out[1]~reg0_regout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \card_out[2]~reg0_regout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \card_out[3]~reg0_regout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \card_out[4]~reg0_regout\ : std_logic;
SIGNAL \play_card_value[5]~feeder_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \card_out[5]~reg0_regout\ : std_logic;
SIGNAL \stack|pop~0_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \stack|C0|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \request_card~reg0_regout\ : std_logic;
SIGNAL \done~1_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~2_combout\ : std_logic;
SIGNAL \done~reg0_regout\ : std_logic;
SIGNAL state : std_logic_vector(4 DOWNTO 0);
SIGNAL play_card_value : std_logic_vector(5 DOWNTO 0);
SIGNAL card_num : std_logic_vector(31 DOWNTO 0);
SIGNAL \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \stack|M0|auto_generated|result_node\ : std_logic_vector(5 DOWNTO 0);
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
SIGNAL \card_in~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL stack_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL last_card_input : std_logic_vector(5 DOWNTO 0);
SIGNAL card_addr : std_logic_vector(5 DOWNTO 0);
SIGNAL \stack|C0|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
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
SIGNAL \top_card~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL ALT_INV_state : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_turn <= turn;
ww_reset <= reset;
ww_clock <= clock;
ww_top_card <= top_card;
ww_card_in <= card_in;
card_out <= ww_card_out;
num_cards <= ww_num_cards;
request_card <= ww_request_card;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (card_addr(5) & card_addr(4) & card_addr(3) & card_addr(2) & card_addr(1) & card_addr(0));

\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(16) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(17) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(18) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(19) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(20) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(21) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(22) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(6);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(23) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(7);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(24) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(8);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(25) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(9);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(26) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(10);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(27) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(11);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(28) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(12);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(29) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(13);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(30) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(14);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(31) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(15);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(32) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(16);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(33) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(17);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(34) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(18);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(35) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(19);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(36) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(20);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(37) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(21);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(38) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(22);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(39) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(23);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(40) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(24);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(41) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(25);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(42) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(26);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(43) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(27);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(44) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(28);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(45) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(29);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(46) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(30);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(47) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(31);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(48) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(32);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(49) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(33);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(50) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(34);
\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(51) <= \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(35);

\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (card_addr(5) & card_addr(4) & card_addr(3) & card_addr(2) & card_addr(1) & card_addr(0));

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

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
ALT_INV_state(1) <= NOT state(1);

-- Location: LCFF_X22_Y21_N31
\stack|S44|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[44]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(4));

-- Location: LCFF_X22_Y15_N13
\stack|S43|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[43]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(4));

-- Location: LCFF_X23_Y15_N9
\stack|S42|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[42]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(4));

-- Location: LCFF_X26_Y18_N23
\stack|S0|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(3));

-- Location: LCFF_X25_Y15_N3
\stack|S3|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(3));

-- Location: LCFF_X24_Y16_N27
\stack|S11|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(3));

-- Location: LCFF_X23_Y14_N13
\stack|S12|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(3));

-- Location: LCFF_X20_Y17_N15
\stack|S32|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[32]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(3));

-- Location: LCFF_X18_Y15_N11
\stack|S22|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(3));

-- Location: LCFF_X26_Y17_N1
\stack|S6|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(5));

-- Location: LCFF_X26_Y17_N11
\stack|S7|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[7]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(5));

-- Location: LCFF_X23_Y14_N3
\stack|S14|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(5));

-- Location: LCFF_X24_Y16_N17
\stack|S11|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(5));

-- Location: LCFF_X18_Y18_N1
\stack|S50|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[50]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(5));

-- Location: LCFF_X24_Y21_N11
\stack|S49|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[49]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(5));

-- Location: LCFF_X16_Y18_N13
\stack|S48|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[48]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(5));

-- Location: LCFF_X18_Y18_N15
\stack|S51|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[5]~2_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[51]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(5));

-- Location: LCFF_X19_Y17_N7
\stack|S19|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[19]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(5));

-- Location: LCFF_X23_Y15_N11
\stack|S40|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[40]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(5));

-- Location: LCFF_X27_Y19_N29
\stack|S0|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(2));

-- Location: LCFF_X24_Y16_N7
\stack|S9|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(2));

-- Location: LCFF_X18_Y18_N13
\stack|S50|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[50]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(2));

-- Location: LCFF_X19_Y18_N23
\stack|S49|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[49]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(2));

-- Location: LCFF_X19_Y18_N17
\stack|S48|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[48]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(2));

-- Location: LCFF_X18_Y18_N31
\stack|S51|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[2]~3_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[51]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(2));

-- Location: LCFF_X20_Y16_N21
\stack|S36|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[36]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(2));

-- Location: LCFF_X20_Y13_N11
\stack|S35|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[35]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(2));

-- Location: LCFF_X22_Y15_N7
\stack|S41|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[41]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(2));

-- Location: LCFF_X22_Y15_N21
\stack|S43|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[43]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(2));

-- Location: LCFF_X25_Y15_N27
\stack|S1|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(0));

-- Location: LCFF_X18_Y18_N21
\stack|S50|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[50]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(0));

-- Location: LCFF_X19_Y18_N27
\stack|S49|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[49]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(0));

-- Location: LCFF_X19_Y18_N21
\stack|S48|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[48]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(0));

-- Location: LCFF_X18_Y18_N3
\stack|S51|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[0]~4_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[51]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(0));

-- Location: LCFF_X21_Y18_N17
\stack|S47|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[47]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(0));

-- Location: LCFF_X25_Y15_N1
\stack|S3|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(1));

-- Location: LCFF_X26_Y16_N7
\stack|S13|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(1));

-- Location: LCFF_X18_Y18_N19
\stack|S51|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[1]~5_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[51]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(1));

-- Location: LCFF_X19_Y14_N31
\stack|S28|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(1));

-- Location: LCFF_X18_Y13_N5
\stack|S27|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(1));

-- Location: LCFF_X19_Y13_N15
\stack|S26|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(1));

-- Location: LCCOMB_X18_Y19_N20
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (card_num(1) & (!\Add0~1\)) # (!card_num(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!card_num(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => card_num(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X16_Y19_N4
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\stack|C0|auto_generated|safe_q\(0) & !\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X16_Y19_N6
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\stack|C0|auto_generated|safe_q\(1) & (\Add0~2_combout\ & !\LessThan0~1_cout\)) # (!\stack|C0|auto_generated|safe_q\(1) & ((\Add0~2_combout\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(1),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X16_Y19_N8
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\stack|C0|auto_generated|safe_q\(2) & ((!\LessThan0~3_cout\) # (!\Add0~4_combout\))) # (!\stack|C0|auto_generated|safe_q\(2) & (!\Add0~4_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(2),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X16_Y19_N10
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Add0~6_combout\ & ((!\LessThan0~5_cout\) # (!\stack|C0|auto_generated|safe_q\(3)))) # (!\Add0~6_combout\ & (!\stack|C0|auto_generated|safe_q\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \stack|C0|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X16_Y19_N12
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Add0~8_combout\ & (\stack|C0|auto_generated|safe_q\(4) & !\LessThan0~7_cout\)) # (!\Add0~8_combout\ & ((\stack|C0|auto_generated|safe_q\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \stack|C0|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X16_Y19_N14
\LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\stack|C0|auto_generated|safe_q\(5) & ((\LessThan0~9_cout\) # (!\Add0~10_combout\))) # (!\stack|C0|auto_generated|safe_q\(5) & (\LessThan0~9_cout\ & !\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(5),
	datad => \Add0~10_combout\,
	cin => \LessThan0~9_cout\,
	combout => \LessThan0~10_combout\);

-- Location: M4K_X17_Y16
\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000300000000700000000F00000001F00000003F00000007F0000000FF0000001FF0000003FF0000007FF000000FFF000001FFF000003FFF000007FFF00000FFFF00001FFFF00003FFFF00007FFFF0000FFFFF0001FFFFF0003FFFFF0007FFFFF000FFFFFF001FFFFFF003FFFFFF007FFFFFF00FFFFFFF01FFFFFFF03FFFFFFF07FFFFFFF0FFFFFFFF1FFFFFFFF3FFFFFFFF7FFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:stack|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
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
	port_a_first_bit_number => 16,
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
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M4K_X17_Y19
\stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000100030007000F001F003F007F00FF01FF03FF07FF0FFF1FFF3FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "g55_pop_enable.mif",
	init_file_layout => "port_a",
	logical_ram_name => "g55_stack52:stack|g55_pop_enable:E0|g55_lpm_rom:crc_table|altsyncram:altsyncram_component|altsyncram_ag81:auto_generated|ALTSYNCRAM",
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
	port_a_first_bit_number => 0,
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
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \stack|E0|crc_table|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y21_N10
\card_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_out[0]~0_combout\ = ((state(3) & ((state(1)) # (state(2)))) # (!state(3) & (state(1) $ (!state(2))))) # (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(1),
	datad => state(2),
	combout => \card_out[0]~0_combout\);

-- Location: LCCOMB_X19_Y21_N6
\state[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~2_combout\ = (!state(4) & (!state(1) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datac => state(1),
	datad => state(2),
	combout => \state[1]~2_combout\);

-- Location: LCCOMB_X21_Y16_N12
\stack|M0|auto_generated|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~25_combout\ = (card_addr(5) & card_addr(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => card_addr(5),
	datad => card_addr(3),
	combout => \stack|M0|auto_generated|_~25_combout\);

-- Location: LCCOMB_X22_Y20_N6
\stack|M0|auto_generated|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~30_combout\ = (!card_addr(0) & ((card_addr(1) & ((\stack|S42|U1|dffs\(4)))) # (!card_addr(1) & (\stack|S40|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S40|U1|dffs\(4),
	datac => \stack|S42|U1|dffs\(4),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~30_combout\);

-- Location: LCCOMB_X21_Y16_N14
\stack|M0|auto_generated|result_node[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~9_combout\ = (!card_addr(4) & !card_addr(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => card_addr(4),
	datad => card_addr(5),
	combout => \stack|M0|auto_generated|result_node[5]~9_combout\);

-- Location: LCCOMB_X22_Y13_N24
\stack|M0|auto_generated|result_node[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~30_combout\ = (!card_addr(0) & ((card_addr(1) & (\stack|S26|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S24|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(3),
	datab => \stack|S24|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[3]~30_combout\);

-- Location: LCCOMB_X21_Y18_N0
\stack|M0|auto_generated|_~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~60_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S5|U1|dffs\(5)))) # (!card_addr(0) & (\stack|S4|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S4|U1|dffs\(5),
	datac => card_addr(0),
	datad => \stack|S5|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~60_combout\);

-- Location: LCCOMB_X21_Y19_N10
\stack|M0|auto_generated|_~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~61_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~60_combout\ & (\stack|S7|U1|dffs\(5))) # (!\stack|M0|auto_generated|_~60_combout\ & ((\stack|S6|U1|dffs\(5)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S7|U1|dffs\(5),
	datac => \stack|S6|U1|dffs\(5),
	datad => \stack|M0|auto_generated|_~60_combout\,
	combout => \stack|M0|auto_generated|_~61_combout\);

-- Location: LCCOMB_X20_Y18_N20
\stack|M0|auto_generated|_~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~64_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S49|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S48|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S49|U1|dffs\(5),
	datab => card_addr(1),
	datac => \stack|S48|U1|dffs\(5),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~64_combout\);

-- Location: LCCOMB_X19_Y18_N10
\stack|M0|auto_generated|_~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~65_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~64_combout\ & (\stack|S51|U1|dffs\(5))) # (!\stack|M0|auto_generated|_~64_combout\ & ((\stack|S50|U1|dffs\(5)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S51|U1|dffs\(5),
	datab => card_addr(1),
	datac => \stack|S50|U1|dffs\(5),
	datad => \stack|M0|auto_generated|_~64_combout\,
	combout => \stack|M0|auto_generated|_~65_combout\);

-- Location: LCCOMB_X20_Y15_N2
\stack|M0|auto_generated|result_node[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~46_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S27|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S26|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(5),
	datab => card_addr(0),
	datac => \stack|S26|U1|dffs\(5),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[5]~46_combout\);

-- Location: LCCOMB_X24_Y19_N28
\stack|M0|auto_generated|result_node[2]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~55_combout\ = (!card_addr(2) & ((card_addr(0) & (\stack|S11|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S10|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(2),
	datab => \stack|S10|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(2),
	combout => \stack|M0|auto_generated|result_node[2]~55_combout\);

-- Location: LCCOMB_X19_Y18_N0
\stack|M0|auto_generated|_~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~85_combout\ = (card_addr(0) & (((\stack|S49|U1|dffs\(2)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S48|U1|dffs\(2) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(2),
	datab => \stack|S49|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~85_combout\);

-- Location: LCCOMB_X19_Y18_N14
\stack|M0|auto_generated|_~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~86_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~85_combout\ & ((\stack|S51|U1|dffs\(2)))) # (!\stack|M0|auto_generated|_~85_combout\ & (\stack|S50|U1|dffs\(2))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S50|U1|dffs\(2),
	datab => card_addr(1),
	datac => \stack|S51|U1|dffs\(2),
	datad => \stack|M0|auto_generated|_~85_combout\,
	combout => \stack|M0|auto_generated|_~86_combout\);

-- Location: LCCOMB_X21_Y16_N10
\stack|M0|auto_generated|_~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~96_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S41|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S40|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => card_addr(1),
	datac => \stack|S41|U1|dffs\(2),
	datad => \stack|S40|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~96_combout\);

-- Location: LCCOMB_X21_Y19_N0
\stack|M0|auto_generated|result_node[2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~58_combout\ = (\stack|M0|auto_generated|result_node[2]~57_combout\) # ((\stack|M0|auto_generated|_~153_combout\ & \stack|M0|auto_generated|_~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|_~153_combout\,
	datac => \stack|M0|auto_generated|_~99_combout\,
	datad => \stack|M0|auto_generated|result_node[2]~57_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~58_combout\);

-- Location: LCCOMB_X20_Y19_N6
\stack|M0|auto_generated|result_node[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~60_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S29|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S28|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(2),
	datab => \stack|S28|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[2]~60_combout\);

-- Location: LCCOMB_X21_Y18_N2
\stack|M0|auto_generated|_~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~108_combout\ = (card_addr(0) & (((\stack|S49|U1|dffs\(0)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S48|U1|dffs\(0) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(0),
	datab => \stack|S49|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~108_combout\);

-- Location: LCCOMB_X21_Y18_N4
\stack|M0|auto_generated|_~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~109_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~108_combout\ & ((\stack|S51|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~108_combout\ & (\stack|S50|U1|dffs\(0))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S50|U1|dffs\(0),
	datac => \stack|S51|U1|dffs\(0),
	datad => \stack|M0|auto_generated|_~108_combout\,
	combout => \stack|M0|auto_generated|_~109_combout\);

-- Location: LCCOMB_X21_Y14_N2
\stack|M0|auto_generated|result_node[0]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~81_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S27|U1|dffs\(0))) # (!card_addr(0) & ((\stack|S26|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(0),
	datab => \stack|S26|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[0]~81_combout\);

-- Location: LCCOMB_X22_Y18_N24
\stack|M0|auto_generated|_~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~124_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S43|U1|dffs\(0))) # (!card_addr(0) & ((\stack|S42|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(0),
	datab => \stack|S42|U1|dffs\(0),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~124_combout\);

-- Location: LCCOMB_X23_Y16_N16
\stack|M0|auto_generated|result_node[1]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~89_combout\ = (card_addr(0) & ((card_addr(1) & ((\stack|S11|U1|dffs\(1)))) # (!card_addr(1) & (\stack|S9|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S9|U1|dffs\(1),
	datac => card_addr(0),
	datad => \stack|S11|U1|dffs\(1),
	combout => \stack|M0|auto_generated|result_node[1]~89_combout\);

-- Location: LCCOMB_X19_Y16_N0
\stack|M0|auto_generated|_~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~131_combout\ = (card_addr(1) & (card_addr(0))) # (!card_addr(1) & ((card_addr(0) & (\stack|S49|U1|dffs\(1))) # (!card_addr(0) & ((\stack|S48|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => card_addr(0),
	datac => \stack|S49|U1|dffs\(1),
	datad => \stack|S48|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~131_combout\);

-- Location: LCCOMB_X19_Y16_N6
\stack|M0|auto_generated|_~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~132_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~131_combout\ & ((\stack|S51|U1|dffs\(1)))) # (!\stack|M0|auto_generated|_~131_combout\ & (\stack|S50|U1|dffs\(1))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S50|U1|dffs\(1),
	datac => \stack|S51|U1|dffs\(1),
	datad => \stack|M0|auto_generated|_~131_combout\,
	combout => \stack|M0|auto_generated|_~132_combout\);

-- Location: LCCOMB_X19_Y16_N4
\stack|M0|auto_generated|result_node[1]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~98_combout\ = (card_addr(1) & ((card_addr(0) & ((\stack|S27|U1|dffs\(1)))) # (!card_addr(0) & (\stack|S26|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(1),
	datab => card_addr(0),
	datac => card_addr(1),
	datad => \stack|S27|U1|dffs\(1),
	combout => \stack|M0|auto_generated|result_node[1]~98_combout\);

-- Location: LCCOMB_X22_Y23_N30
\rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~combout\ = (\top_card~combout\(4) & (\top_card~combout\(5) & ((\top_card~combout\(3)) # (\rules|DEC1|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~combout\);

-- Location: LCCOMB_X22_Y23_N6
\rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0_combout\ = (\top_card~combout\(4) & (((!\top_card~combout\(3) & !\rules|DEC1|A1|b2v_inst4|Cout~0_combout\)) # (!\top_card~combout\(5)))) # (!\top_card~combout\(4) & ((\top_card~combout\(5)) # 
-- ((\top_card~combout\(3) & \rules|DEC1|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0_combout\);

-- Location: LCCOMB_X22_Y23_N24
\rules|DEC1|A5|b2v_inst3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst3|S~0_combout\ = (\top_card~combout\(5) & ((\top_card~combout\(4)) # ((\rules|DEC1|A1|b2v_inst3|Cout~0_combout\ & \top_card~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \rules|DEC1|A1|b2v_inst3|Cout~0_combout\,
	datac => \top_card~combout\(5),
	datad => \top_card~combout\(2),
	combout => \rules|DEC1|A5|b2v_inst3|S~0_combout\);

-- Location: LCCOMB_X22_Y19_N10
\rules|DEC2|A5|b2v_inst1|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A5|b2v_inst1|S~combout\ = \rules|DEC2|A1|b2v_inst7|S~combout\ $ (\stack|M0|auto_generated|result_node[1]~101_combout\ $ (((!\stack|M0|auto_generated|result_node[0]~84_combout\ & \rules|DEC2|A1|b2v_inst6|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC2|A1|b2v_inst7|S~combout\,
	datab => \stack|M0|auto_generated|result_node[0]~84_combout\,
	datac => \stack|M0|auto_generated|result_node[1]~101_combout\,
	datad => \rules|DEC2|A1|b2v_inst6|S~combout\,
	combout => \rules|DEC2|A5|b2v_inst1|S~combout\);

-- Location: LCFF_X25_Y21_N1
\last_card_input[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \last_card_input[4]~feeder_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_card_input(4));

-- Location: LCFF_X25_Y21_N11
\last_card_input[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \card_in~combout\(5),
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_card_input(5));

-- Location: LCCOMB_X25_Y21_N10
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\card_in~combout\(5) & (last_card_input(5) & (last_card_input(4) $ (!\card_in~combout\(4))))) # (!\card_in~combout\(5) & (!last_card_input(5) & (last_card_input(4) $ (!\card_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_in~combout\(5),
	datab => last_card_input(4),
	datac => last_card_input(5),
	datad => \card_in~combout\(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y19_N16
\state[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[3]~15_combout\ = (\state[3]~4_combout\ & (\LessThan0~10_combout\ & \state~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state[3]~4_combout\,
	datac => \LessThan0~10_combout\,
	datad => \state~5_combout\,
	combout => \state[3]~15_combout\);

-- Location: LCCOMB_X19_Y20_N22
\stack|S20|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S19|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S21|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S19|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S21|U1|dffs\(4),
	datad => \stack|S19|U1|dffs\(4),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X21_Y17_N20
\stack|S34|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S33|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S35|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S33|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S33|U1|dffs\(4),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\stack|S45|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S44|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S46|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S44|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S46|U1|dffs\(4),
	datad => \stack|S44|U1|dffs\(4),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\stack|S44|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S43|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S45|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S43|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S45|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S43|U1|dffs\(4),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y20_N26
\stack|S43|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S42|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S44|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S42|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S42|U1|dffs\(4),
	datad => \stack|S44|U1|dffs\(4),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\stack|S42|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S41|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S43|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S41|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S43|U1|dffs\(4),
	datad => \stack|S41|U1|dffs\(4),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X26_Y17_N20
\stack|S6|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S5|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S7|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S5|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S7|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S5|U1|dffs\(4),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X26_Y20_N28
\stack|S4|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S3|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S5|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S3|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S5|U1|dffs\(4),
	datad => \stack|S3|U1|dffs\(4),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X26_Y18_N12
\stack|S0|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\card_in~combout\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S1|U1|dffs\(3)))) # (!\stack_en~regout\ & (\card_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_in~combout\(3),
	datab => stack_mode(0),
	datac => \stack|S1|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S0|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X25_Y15_N4
\stack|S3|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S2|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S4|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S2|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(3),
	datab => \stack|S2|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y17_N24
\stack|S15|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S14|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S16|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S14|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S14|U1|dffs\(3),
	datac => \stack|S16|U1|dffs\(3),
	datad => stack_mode(0),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y17_N4
\stack|S11|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S10|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S12|U1|dffs\(3)))))) # (!\stack_en~regout\ & (((\stack|S10|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S10|U1|dffs\(3),
	datad => \stack|S12|U1|dffs\(3),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y17_N16
\stack|S12|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S11|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S13|U1|dffs\(3)))))) # (!\stack_en~regout\ & (((\stack|S11|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S11|U1|dffs\(3),
	datad => \stack|S13|U1|dffs\(3),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
\stack|S33|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S32|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S34|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S32|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(3),
	datab => \stack|S34|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S33|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X22_Y13_N22
\stack|S32|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S31|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S33|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S31|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S31|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack|S33|U1|dffs\(3),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\stack|S43|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S42|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S44|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S42|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(3),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S42|U1|dffs\(3),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y17_N8
\stack|S40|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S39|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S41|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S39|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S41|U1|dffs\(3),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S39|U1|dffs\(3),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X18_Y15_N6
\stack|S22|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S21|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S23|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S21|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S23|U1|dffs\(3),
	datab => \stack|S21|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S22|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X26_Y17_N18
\stack|S6|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S5|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S7|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S5|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(5),
	datab => \stack|S7|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X26_Y17_N12
\stack|S7|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S6|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S8|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S6|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(5),
	datab => \stack|S6|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y15_N20
\stack|S14|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S13|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S15|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S13|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S13|U1|dffs\(5),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y15_N0
\stack|S11|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S10|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S12|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S10|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S10|U1|dffs\(5),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y16_N0
\stack|S10|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S9|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S11|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S9|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack|S9|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S10|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y18_N24
\stack|S50|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S49|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S51|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S49|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S51|U1|dffs\(5),
	datab => \stack|S49|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S50|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y18_N10
\stack|S49|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S48|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S50|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S48|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S50|U1|dffs\(5),
	datad => \stack|S48|U1|dffs\(5),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y18_N12
\stack|S48|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S47|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S49|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S47|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S49|U1|dffs\(5),
	datab => \stack|S47|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S48|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X18_Y18_N14
\stack|S51|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack|S50|U1|dffs\(5) & ((stack_mode(0)) # (!\stack_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S51|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X21_Y21_N26
\stack|S19|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S18|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S20|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S18|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S20|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S18|U1|dffs\(5),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X21_Y13_N16
\stack|S30|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S29|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S31|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S29|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S31|U1|dffs\(5),
	datab => \stack|S29|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S30|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y13_N16
\stack|S24|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S23|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S25|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S23|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S23|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S25|U1|dffs\(5),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y18_N2
\stack|S40|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S39|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S41|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S39|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S39|U1|dffs\(5),
	datac => \stack|S41|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S40|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y16_N26
\stack|S35|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S34|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S36|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S34|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S36|U1|dffs\(5),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y19_N18
\stack|S0|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\card_in~combout\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S1|U1|dffs\(2))) # (!\stack_en~regout\ & ((\card_in~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \card_in~combout\(2),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y19_N8
\stack|S9|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S8|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S10|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S8|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S10|U1|dffs\(2),
	datac => \stack|S8|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S9|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y18_N4
\stack|S50|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S49|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S51|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S49|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S49|U1|dffs\(2),
	datac => \stack|S51|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S50|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y18_N18
\stack|S49|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S48|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S50|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S48|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S50|U1|dffs\(2),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y18_N30
\stack|S48|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S47|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S49|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S47|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S49|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => \stack|S47|U1|dffs\(2),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X18_Y18_N30
\stack|S51|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack|S50|U1|dffs\(2) & ((stack_mode(0)) # (!\stack_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S51|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y15_N6
\stack|S36|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S35|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S37|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S35|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S37|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S36|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y16_N14
\stack|S35|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S34|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S36|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S34|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S34|U1|dffs\(2),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y18_N16
\stack|S47|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S46|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S48|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S46|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S48|U1|dffs\(2),
	datac => \stack|S46|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S47|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X22_Y14_N20
\stack|S41|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S40|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S42|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S40|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S40|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack|S42|U1|dffs\(2),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X22_Y14_N22
\stack|S43|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S42|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S44|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S42|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S44|U1|dffs\(2),
	datad => \stack|S42|U1|dffs\(2),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X22_Y15_N26
\stack|S42|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S41|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S43|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S41|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S41|U1|dffs\(2),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y20_N16
\stack|S16|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S15|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S17|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S15|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S15|U1|dffs\(2),
	datac => \stack|S17|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S16|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y18_N16
\stack|S7|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S6|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S8|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S6|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(0),
	datab => \stack|S8|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S7|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y18_N0
\stack|S1|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S0|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S2|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S0|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S0|U1|dffs\(0),
	datac => \stack_en~regout\,
	datad => \stack|S2|U1|dffs\(0),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y16_N20
\stack|S10|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S9|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S11|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S9|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(0),
	datab => \stack|S11|U1|dffs\(0),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y18_N10
\stack|S50|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S49|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S51|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S49|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S51|U1|dffs\(0),
	datac => \stack|S49|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S50|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y18_N28
\stack|S49|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S48|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S50|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S48|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(0),
	datac => \stack|S48|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S49|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y18_N8
\stack|S48|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S47|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S49|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S47|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S47|U1|dffs\(0),
	datad => \stack|S49|U1|dffs\(0),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y18_N2
\stack|S51|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack|S50|U1|dffs\(0) & ((stack_mode(0)) # (!\stack_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S51|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y15_N22
\stack|S20|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S19|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S21|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S19|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S21|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S20|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y14_N20
\stack|S32|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S31|U1|dffs\(0)))) # (!stack_mode(0) & (\stack|S33|U1|dffs\(0))))) # (!\stack_en~regout\ & (((\stack|S31|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => \stack|S31|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y18_N8
\stack|S47|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S46|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S48|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S46|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(0),
	datab => \stack|S46|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S47|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y15_N30
\stack|S3|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S2|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S4|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S2|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S2|U1|dffs\(1),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X26_Y16_N26
\stack|S13|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S12|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S14|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S12|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(1),
	datab => \stack|S14|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S13|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y18_N18
\stack|S51|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack|S50|U1|dffs\(1) & ((stack_mode(0)) # (!\stack_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S51|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X22_Y14_N16
\stack|S29|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S28|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S30|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S28|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S28|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack|S30|U1|dffs\(1),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y14_N22
\stack|S28|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S27|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S29|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S27|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S29|U1|dffs\(1),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y13_N30
\stack|S27|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S26|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S28|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S26|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(1),
	datab => \stack|S28|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y13_N0
\stack|S26|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S25|U1|dffs\(1)))) # (!stack_mode(0) & (\stack|S27|U1|dffs\(1))))) # (!\stack_en~regout\ & (((\stack|S25|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S27|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack|S25|U1|dffs\(1),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y19_N20
\stack|M0|auto_generated|_~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~152_combout\ = ((\stack|M0|auto_generated|_~65_combout\ & (!card_addr(3) & !card_addr(2)))) # (!card_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => \stack|M0|auto_generated|_~65_combout\,
	datac => card_addr(3),
	datad => card_addr(2),
	combout => \stack|M0|auto_generated|_~152_combout\);

-- Location: LCCOMB_X20_Y18_N22
\stack|M0|auto_generated|_~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~153_combout\ = ((!card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~86_combout\))) # (!card_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(2),
	datac => card_addr(3),
	datad => \stack|M0|auto_generated|_~86_combout\,
	combout => \stack|M0|auto_generated|_~153_combout\);

-- Location: LCCOMB_X21_Y18_N14
\stack|M0|auto_generated|_~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~154_combout\ = ((!card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~109_combout\))) # (!card_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~109_combout\,
	datad => card_addr(4),
	combout => \stack|M0|auto_generated|_~154_combout\);

-- Location: LCCOMB_X22_Y16_N22
\stack|M0|auto_generated|_~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~155_combout\ = ((!card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~132_combout\))) # (!card_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(2),
	datac => card_addr(3),
	datad => \stack|M0|auto_generated|_~132_combout\,
	combout => \stack|M0|auto_generated|_~155_combout\);

-- Location: LCCOMB_X19_Y21_N22
\state[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~18_combout\ = (!state(4) & (!state(1) & (\state[1]~11_combout\ & !state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(1),
	datac => \state[1]~11_combout\,
	datad => state(2),
	combout => \state[1]~18_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_card[4]~I\ : cycloneii_io
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
	padio => ww_top_card(4),
	combout => \top_card~combout\(4));

-- Location: LCCOMB_X22_Y21_N30
\stack|S44|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[4]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S44|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N12
\stack|S43|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[4]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S43|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S43|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N8
\stack|S42|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[4]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S42|U1|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N22
\stack|S0|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U1|dffs[3]~feeder_combout\ = \stack|S0|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S0|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S0|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N2
\stack|S3|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[3]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S3|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S3|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N26
\stack|S11|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[3]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S11|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N12
\stack|S12|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[3]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S12|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N14
\stack|S32|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[3]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S32|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N10
\stack|S22|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[3]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S22|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N0
\stack|S6|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[5]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S6|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N10
\stack|S7|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[5]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S7|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N2
\stack|S14|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[5]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S14|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N16
\stack|S11|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[5]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S11|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N0
\stack|S50|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[5]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S50|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N10
\stack|S49|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[5]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S49|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y18_N12
\stack|S48|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[5]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S48|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N6
\stack|S19|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[5]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S19|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S19|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N10
\stack|S40|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[5]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S40|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X27_Y19_N28
\stack|S0|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U1|dffs[2]~feeder_combout\ = \stack|S0|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S0|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S0|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X24_Y16_N6
\stack|S9|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[2]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S9|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S9|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N12
\stack|S50|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[2]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S50|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N22
\stack|S49|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[2]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S49|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N16
\stack|S48|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[2]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S48|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y16_N20
\stack|S36|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[2]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S36|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y13_N10
\stack|S35|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[2]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S35|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N6
\stack|S41|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[2]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S41|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S41|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N20
\stack|S43|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[2]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S43|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N26
\stack|S1|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[0]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S1|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N20
\stack|S50|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[0]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S50|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N26
\stack|S49|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[0]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S49|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N20
\stack|S48|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[0]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S48|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S48|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N16
\stack|S47|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[0]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S47|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S47|U1|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N0
\stack|S3|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[1]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S3|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y16_N6
\stack|S13|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[1]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S13|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y14_N30
\stack|S28|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[1]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S28|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X18_Y13_N4
\stack|S27|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[1]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S27|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N14
\stack|S26|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[1]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S26|U1|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X25_Y21_N0
\last_card_input[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \last_card_input[4]~feeder_combout\ = \card_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_in~combout\(4),
	combout => \last_card_input[4]~feeder_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_card[3]~I\ : cycloneii_io
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
	padio => ww_top_card(3),
	combout => \top_card~combout\(3));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_card[5]~I\ : cycloneii_io
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
	padio => ww_top_card(5),
	combout => \top_card~combout\(5));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_card[1]~I\ : cycloneii_io
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
	padio => ww_top_card(1),
	combout => \top_card~combout\(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_card[0]~I\ : cycloneii_io
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
	padio => ww_top_card(0),
	combout => \top_card~combout\(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\top_card[2]~I\ : cycloneii_io
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
	padio => ww_top_card(2),
	combout => \top_card~combout\(2));

-- Location: LCCOMB_X22_Y23_N8
\rules|DEC1|A1|b2v_inst3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A1|b2v_inst3|Cout~0_combout\ = (\top_card~combout\(1) & ((\top_card~combout\(3)) # ((\top_card~combout\(0) & \top_card~combout\(2))))) # (!\top_card~combout\(1) & (\top_card~combout\(0) & (\top_card~combout\(3) & \top_card~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(0),
	datab => \top_card~combout\(1),
	datac => \top_card~combout\(3),
	datad => \top_card~combout\(2),
	combout => \rules|DEC1|A1|b2v_inst3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y23_N10
\rules|DEC1|A1|b2v_inst4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A1|b2v_inst4|Cout~0_combout\ = (\top_card~combout\(4) & ((\rules|DEC1|A1|b2v_inst3|Cout~0_combout\) # (\top_card~combout\(2)))) # (!\top_card~combout\(4) & (\rules|DEC1|A1|b2v_inst3|Cout~0_combout\ & \top_card~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datac => \rules|DEC1|A1|b2v_inst3|Cout~0_combout\,
	datad => \top_card~combout\(2),
	combout => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y23_N12
\rules|DEC1|A1|b2v_inst6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A1|b2v_inst6|S~combout\ = \top_card~combout\(4) $ (((\top_card~combout\(3) & ((\top_card~combout\(5)) # (\rules|DEC1|A1|b2v_inst4|Cout~0_combout\))) # (!\top_card~combout\(3) & (\top_card~combout\(5) & 
-- \rules|DEC1|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC1|A1|b2v_inst6|S~combout\);

-- Location: LCCOMB_X22_Y23_N18
\rules|DEC1|A5|b2v_inst1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst1|Cout~0_combout\ = (\rules|DEC1|A1|b2v_inst7|S~combout\ & (\top_card~combout\(1) & ((\top_card~combout\(0)) # (!\rules|DEC1|A1|b2v_inst6|S~combout\)))) # (!\rules|DEC1|A1|b2v_inst7|S~combout\ & (\rules|DEC1|A1|b2v_inst6|S~combout\ 
-- & ((\top_card~combout\(1)) # (\top_card~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A1|b2v_inst7|S~combout\,
	datab => \top_card~combout\(1),
	datac => \top_card~combout\(0),
	datad => \rules|DEC1|A1|b2v_inst6|S~combout\,
	combout => \rules|DEC1|A5|b2v_inst1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y23_N28
\rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0~combout\ = (\top_card~combout\(3) & ((\top_card~combout\(5)) # (\top_card~combout\(4) $ (\rules|DEC1|A1|b2v_inst4|Cout~0_combout\)))) # (!\top_card~combout\(3) & ((\top_card~combout\(4)) # 
-- ((\top_card~combout\(5) & \rules|DEC1|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0~combout\);

-- Location: LCCOMB_X22_Y23_N2
\rules|DEC1|A5|b2v_inst2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst2|Cout~0_combout\ = (\rules|DEC1|A5|b2v_inst1|Cout~0_combout\ & ((\top_card~combout\(2)) # (\rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0_combout\ $ (\rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0~combout\)))) # 
-- (!\rules|DEC1|A5|b2v_inst1|Cout~0_combout\ & (\top_card~combout\(2) & (\rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0_combout\ $ (\rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~0_combout\,
	datab => \rules|DEC1|A5|b2v_inst1|Cout~0_combout\,
	datac => \rules|DEC1|A3|b2v_inst2|SYNTHESIZED_WIRE_0~combout\,
	datad => \top_card~combout\(2),
	combout => \rules|DEC1|A5|b2v_inst2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y23_N26
\rules|DEC1|A5|b2v_inst3|S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst3|S~1_combout\ = \rules|DEC1|A5|b2v_inst2|Cout~0_combout\ $ (((\top_card~combout\(3) & ((!\top_card~combout\(5)))) # (!\top_card~combout\(3) & (\rules|DEC1|A5|b2v_inst3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A5|b2v_inst3|S~0_combout\,
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A5|b2v_inst2|Cout~0_combout\,
	combout => \rules|DEC1|A5|b2v_inst3|S~1_combout\);

-- Location: LCCOMB_X22_Y23_N20
\rules|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal1~0_combout\ = (\top_card~combout\(0) & (!\rules|DEC1|A1|b2v_inst6|S~combout\ & (\rules|DEC1|A1|b2v_inst7|S~combout\ $ (\top_card~combout\(1))))) # (!\top_card~combout\(0) & (\rules|DEC1|A1|b2v_inst6|S~combout\ & 
-- (\rules|DEC1|A1|b2v_inst7|S~combout\ $ (!\top_card~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A1|b2v_inst7|S~combout\,
	datab => \top_card~combout\(1),
	datac => \top_card~combout\(0),
	datad => \rules|DEC1|A1|b2v_inst6|S~combout\,
	combout => \rules|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y23_N4
\rules|DEC1|A5|b2v_inst2|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst2|S~0_combout\ = (\top_card~combout\(3) & (\top_card~combout\(4) & ((\top_card~combout\(5)) # (\rules|DEC1|A1|b2v_inst4|Cout~0_combout\)))) # (!\top_card~combout\(3) & (\top_card~combout\(5) & (\top_card~combout\(4) $ 
-- (!\rules|DEC1|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC1|A5|b2v_inst2|S~0_combout\);

-- Location: LCCOMB_X22_Y23_N22
\rules|DEC1|A5|b2v_inst2|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst2|S~combout\ = \rules|DEC1|A5|b2v_inst1|Cout~0_combout\ $ (\rules|DEC1|A5|b2v_inst2|S~0_combout\ $ (\top_card~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rules|DEC1|A5|b2v_inst1|Cout~0_combout\,
	datac => \rules|DEC1|A5|b2v_inst2|S~0_combout\,
	datad => \top_card~combout\(2),
	combout => \rules|DEC1|A5|b2v_inst2|S~combout\);

-- Location: LCCOMB_X22_Y23_N0
\rules|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal1~1_combout\ = (!\rules|DEC1|A5|b2v_inst3|S~1_combout\ & (\rules|Equal1~0_combout\ & \rules|DEC1|A5|b2v_inst2|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rules|DEC1|A5|b2v_inst3|S~1_combout\,
	datac => \rules|Equal1~0_combout\,
	datad => \rules|DEC1|A5|b2v_inst2|S~combout\,
	combout => \rules|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y19_N22
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (card_num(2) & (\Add0~3\ $ (GND))) # (!card_num(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((card_num(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => card_num(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y19_N24
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (card_num(3) & (!\Add0~5\)) # (!card_num(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!card_num(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => card_num(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X18_Y19_N14
\card_num~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num~4_combout\ = (\Add0~6_combout\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \state~7_combout\,
	combout => \card_num~4_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\turn~I\ : cycloneii_io
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
	padio => ww_turn,
	combout => \turn~combout\);

-- Location: LCCOMB_X19_Y21_N8
\Mux41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (state(0) & ((state(1) $ (!state(3))))) # (!state(0) & (((state(1)) # (state(3))) # (!\turn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \turn~combout\,
	datac => state(1),
	datad => state(3),
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X22_Y23_N14
\rules|DEC1|A5|b2v_inst1|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A5|b2v_inst1|S~0_combout\ = \rules|DEC1|A1|b2v_inst7|S~combout\ $ (\top_card~combout\(1) $ (((!\top_card~combout\(0) & \rules|DEC1|A1|b2v_inst6|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A1|b2v_inst7|S~combout\,
	datab => \top_card~combout\(1),
	datac => \top_card~combout\(0),
	datad => \rules|DEC1|A1|b2v_inst6|S~combout\,
	combout => \rules|DEC1|A5|b2v_inst1|S~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\rules|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal3~0_combout\ = \top_card~combout\(0) $ (\stack|M0|auto_generated|result_node[0]~84_combout\ $ (\rules|DEC1|A1|b2v_inst6|S~combout\ $ (\rules|DEC2|A1|b2v_inst6|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(0),
	datab => \stack|M0|auto_generated|result_node[0]~84_combout\,
	datac => \rules|DEC1|A1|b2v_inst6|S~combout\,
	datad => \rules|DEC2|A1|b2v_inst6|S~combout\,
	combout => \rules|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\rules|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal3~1_combout\ = (!\rules|Equal3~0_combout\ & (\rules|DEC2|A5|b2v_inst1|S~combout\ $ (!\rules|DEC1|A5|b2v_inst1|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC2|A5|b2v_inst1|S~combout\,
	datab => \rules|DEC1|A5|b2v_inst1|S~0_combout\,
	datad => \rules|Equal3~0_combout\,
	combout => \rules|Equal3~1_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_in[2]~I\ : cycloneii_io
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
	padio => ww_card_in(2),
	combout => \card_in~combout\(2));

-- Location: LCCOMB_X25_Y21_N4
\last_card_input[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \last_card_input[2]~feeder_combout\ = \card_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_in~combout\(2),
	combout => \last_card_input[2]~feeder_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X25_Y21_N5
\last_card_input[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \last_card_input[2]~feeder_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_card_input(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_in[3]~I\ : cycloneii_io
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
	padio => ww_card_in(3),
	combout => \card_in~combout\(3));

-- Location: LCFF_X25_Y21_N23
\last_card_input[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \card_in~combout\(3),
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_card_input(3));

-- Location: LCCOMB_X25_Y21_N22
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\card_in~combout\(3) & (last_card_input(3) & (last_card_input(2) $ (!\card_in~combout\(2))))) # (!\card_in~combout\(3) & (!last_card_input(3) & (last_card_input(2) $ (!\card_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_in~combout\(3),
	datab => last_card_input(2),
	datac => last_card_input(3),
	datad => \card_in~combout\(2),
	combout => \Equal0~1_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_in[0]~I\ : cycloneii_io
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
	padio => ww_card_in(0),
	combout => \card_in~combout\(0));

-- Location: LCCOMB_X25_Y21_N28
\last_card_input[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \last_card_input[0]~feeder_combout\ = \card_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_in~combout\(0),
	combout => \last_card_input[0]~feeder_combout\);

-- Location: LCFF_X25_Y21_N29
\last_card_input[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \last_card_input[0]~feeder_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_card_input(0));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_in[1]~I\ : cycloneii_io
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
	padio => ww_card_in(1),
	combout => \card_in~combout\(1));

-- Location: LCFF_X25_Y21_N3
\last_card_input[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \card_in~combout\(1),
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => last_card_input(1));

-- Location: LCCOMB_X25_Y21_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\card_in~combout\(1) & (last_card_input(1) & (last_card_input(0) $ (!\card_in~combout\(0))))) # (!\card_in~combout\(1) & (!last_card_input(1) & (last_card_input(0) $ (!\card_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_in~combout\(1),
	datab => last_card_input(0),
	datac => last_card_input(1),
	datad => \card_in~combout\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y21_N16
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X19_Y21_N24
\state[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~11_combout\ = (state(3) & (state(0) & ((\Equal0~3_combout\)))) # (!state(3) & (!state(0) & (!\turn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(3),
	datab => state(0),
	datac => \turn~combout\,
	datad => \Equal0~3_combout\,
	combout => \state[1]~11_combout\);

-- Location: LCCOMB_X19_Y21_N10
\state[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[4]~12_combout\ = (\state[1]~2_combout\ & (state(0) & (!\state[1]~11_combout\ & state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~2_combout\,
	datab => state(0),
	datac => \state[1]~11_combout\,
	datad => state(3),
	combout => \state[4]~12_combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X19_Y21_N11
\state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state[4]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(4));

-- Location: LCCOMB_X23_Y21_N22
\stack_mode[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_mode[0]~2_combout\ = (\reset~combout\) # ((state(0) & (state(4) $ (!state(2)))) # (!state(0) & ((state(4)) # (state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \reset~combout\,
	datac => state(4),
	datad => state(2),
	combout => \stack_mode[0]~2_combout\);

-- Location: LCCOMB_X23_Y21_N14
\stack_mode[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_mode[0]~3_combout\ = (!\stack_mode[0]~2_combout\ & (!state(1) & !state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack_mode[0]~2_combout\,
	datac => state(1),
	datad => state(3),
	combout => \stack_mode[0]~3_combout\);

-- Location: LCFF_X23_Y21_N31
\stack_mode[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => state(4),
	sload => VCC,
	ena => \stack_mode[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => stack_mode(0));

-- Location: LCCOMB_X23_Y21_N12
\state[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~3_combout\ = (state(4)) # (state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(4),
	datad => state(2),
	combout => \state[1]~3_combout\);

-- Location: LCCOMB_X23_Y21_N16
\stack_en~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack_en~feeder_combout\ = \state[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state[1]~3_combout\,
	combout => \stack_en~feeder_combout\);

-- Location: LCFF_X23_Y21_N17
stack_en : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack_en~feeder_combout\,
	ena => \stack_mode[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack_en~regout\);

-- Location: LCCOMB_X23_Y17_N14
\stack|S9|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S8|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S10|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S8|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(3),
	datab => \stack|S10|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y16_N28
\stack|S9|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[3]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S9|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N18
\stack|pop~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|pop~1_combout\ = (stack_mode(0) & !\stack_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|pop~1_combout\);

-- Location: LCCOMB_X18_Y19_N18
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = card_num(0) $ (VCC)
-- \Add0~1\ = CARRY(card_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_num(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X18_Y19_N2
\card_num~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num~7_combout\ = (\Add0~0_combout\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \state~7_combout\,
	combout => \card_num~7_combout\);

-- Location: LCCOMB_X23_Y21_N18
\card_num[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num[31]~1_combout\ = (state(4)) # ((\reset~combout\) # (state(0) $ (state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(4),
	datac => state(1),
	datad => \reset~combout\,
	combout => \card_num[31]~1_combout\);

-- Location: LCCOMB_X23_Y21_N24
\card_num[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num[31]~2_combout\ = (!state(2) & (!\card_num[31]~1_combout\ & !state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \card_num[31]~1_combout\,
	datad => state(3),
	combout => \card_num[31]~2_combout\);

-- Location: LCFF_X18_Y19_N3
\card_num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_num~7_combout\,
	sclr => ALT_INV_state(1),
	ena => \card_num[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_num(0));

-- Location: LCCOMB_X21_Y16_N16
\card_addr[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_addr[0]~feeder_combout\ = card_num(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => card_num(0),
	combout => \card_addr[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N4
\card_addr[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_addr[4]~0_combout\ = (!\reset~combout\ & \state[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \state[3]~4_combout\,
	combout => \card_addr[4]~0_combout\);

-- Location: LCFF_X21_Y16_N17
\card_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_addr[0]~feeder_combout\,
	ena => \card_addr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_addr(0));

-- Location: LCCOMB_X22_Y16_N10
\card_addr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_addr[1]~feeder_combout\ = card_num(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => card_num(1),
	combout => \card_addr[1]~feeder_combout\);

-- Location: LCFF_X22_Y16_N11
\card_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_addr[1]~feeder_combout\,
	ena => \card_addr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_addr(1));

-- Location: LCCOMB_X18_Y19_N26
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (card_num(4) & (\Add0~7\ $ (GND))) # (!card_num(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((card_num(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => card_num(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X21_Y19_N24
\card_num~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num~3_combout\ = (\Add0~8_combout\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \state~7_combout\,
	combout => \card_num~3_combout\);

-- Location: LCFF_X21_Y19_N25
\card_num[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_num~3_combout\,
	sclr => ALT_INV_state(1),
	ena => \card_num[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_num(4));

-- Location: LCFF_X21_Y16_N15
\card_addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => card_num(4),
	sload => VCC,
	ena => \card_addr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_addr(4));

-- Location: LCCOMB_X18_Y19_N28
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = card_num(5) $ (\Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => card_num(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X18_Y19_N4
\card_num~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num~0_combout\ = (\Add0~10_combout\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \state~7_combout\,
	combout => \card_num~0_combout\);

-- Location: LCFF_X18_Y19_N5
\card_num[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_num~0_combout\,
	sclr => ALT_INV_state(1),
	ena => \card_num[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_num(5));

-- Location: LCFF_X21_Y16_N13
\card_addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => card_num(5),
	sload => VCC,
	ena => \card_addr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_addr(5));

-- Location: LCCOMB_X24_Y16_N10
\stack|enableArray[9]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[9]~41_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(9),
	combout => \stack|enableArray[9]~41_combout\);

-- Location: LCFF_X24_Y16_N29
\stack|S9|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(3));

-- Location: LCCOMB_X26_Y19_N0
\stack|S10|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S9|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S11|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S9|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S9|U1|dffs\(3),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X26_Y19_N6
\stack|S10|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[3]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S10|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N22
\stack|enableArray[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[10]~42_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(10),
	combout => \stack|enableArray[10]~42_combout\);

-- Location: LCFF_X26_Y19_N7
\stack|S10|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(3));

-- Location: LCCOMB_X25_Y17_N4
\stack|S4|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S3|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S5|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S3|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S5|U1|dffs\(3),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X25_Y17_N12
\stack|S4|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[3]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S4|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S4|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N22
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

-- Location: LCCOMB_X25_Y18_N6
\stack|enableArray[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[4]~46_combout\ = (\stack_en~regout\ & ((\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(4)) # (stack_mode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	combout => \stack|enableArray[4]~46_combout\);

-- Location: LCFF_X25_Y17_N13
\stack|S4|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(3));

-- Location: LCCOMB_X25_Y17_N2
\stack|S5|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S4|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S6|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S4|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S6|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => \stack|S4|U1|dffs\(3),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X25_Y17_N22
\stack|S5|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[3]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S5|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N6
\stack|enableArray[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[5]~45_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(5),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[5]~45_combout\);

-- Location: LCFF_X25_Y17_N23
\stack|S5|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(3));

-- Location: LCCOMB_X26_Y17_N2
\stack|S6|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S5|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S7|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S5|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(3),
	datab => \stack|S5|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X26_Y17_N8
\stack|S6|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[3]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S6|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y19_N6
\stack|enableArray[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[6]~44_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(6),
	combout => \stack|enableArray[6]~44_combout\);

-- Location: LCFF_X26_Y17_N9
\stack|S6|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(3));

-- Location: LCCOMB_X26_Y17_N28
\stack|S7|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S6|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S8|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S6|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(3),
	datab => \stack|S6|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X26_Y17_N6
\stack|S7|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[3]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S7|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y19_N12
\stack|enableArray[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[7]~47_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(7),
	combout => \stack|enableArray[7]~47_combout\);

-- Location: LCFF_X26_Y17_N7
\stack|S7|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[7]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(3));

-- Location: LCCOMB_X26_Y19_N2
\stack|S8|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S7|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S9|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S7|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S7|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack|S9|U1|dffs\(3),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X26_Y19_N20
\stack|S8|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[3]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S8|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X25_Y19_N30
\stack|enableArray[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[8]~43_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(8),
	combout => \stack|enableArray[8]~43_combout\);

-- Location: LCFF_X26_Y19_N21
\stack|S8|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(3));

-- Location: LCCOMB_X23_Y17_N30
\stack|M0|auto_generated|result_node[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~22_combout\ = (!card_addr(2) & ((card_addr(1) & (\stack|S10|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S8|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => card_addr(2),
	datac => \stack|S10|U1|dffs\(3),
	datad => \stack|S8|U1|dffs\(3),
	combout => \stack|M0|auto_generated|result_node[3]~22_combout\);

-- Location: LCCOMB_X23_Y17_N0
\stack|S15|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[3]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S15|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N30
\stack|enableArray[15]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[15]~36_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(15),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[15]~36_combout\);

-- Location: LCFF_X23_Y17_N1
\stack|S15|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(3));

-- Location: LCCOMB_X22_Y17_N26
\stack|M0|auto_generated|result_node[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~18_combout\ = (card_addr(2) & ((card_addr(1) & ((\stack|S15|U1|dffs\(3)))) # (!card_addr(1) & (\stack|S13|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(3),
	datab => \stack|S15|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(2),
	combout => \stack|M0|auto_generated|result_node[3]~18_combout\);

-- Location: LCCOMB_X21_Y16_N22
\stack|M0|auto_generated|result_node[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~19_combout\ = (!card_addr(2) & ((card_addr(1) & (\stack|S11|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S9|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(3),
	datab => card_addr(2),
	datac => card_addr(1),
	datad => \stack|S9|U1|dffs\(3),
	combout => \stack|M0|auto_generated|result_node[3]~19_combout\);

-- Location: LCCOMB_X22_Y17_N8
\stack|M0|auto_generated|result_node[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~20_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|result_node[3]~18_combout\) # (\stack|M0|auto_generated|result_node[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|result_node[3]~18_combout\,
	datac => card_addr(0),
	datad => \stack|M0|auto_generated|result_node[3]~19_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~20_combout\);

-- Location: LCCOMB_X23_Y17_N26
\stack|S13|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S12|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S14|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S12|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(3),
	datab => \stack|S14|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\stack|S13|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[3]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S13|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N4
\stack|enableArray[13]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[13]~37_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(13),
	combout => \stack|enableArray[13]~37_combout\);

-- Location: LCFF_X23_Y17_N7
\stack|S13|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(3));

-- Location: LCCOMB_X24_Y17_N26
\stack|S14|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S13|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S15|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S13|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack|S13|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S14|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y14_N14
\stack|S14|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[3]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S14|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N26
\stack|enableArray[14]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[14]~38_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(14),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[14]~38_combout\);

-- Location: LCFF_X23_Y14_N15
\stack|S14|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(3));

-- Location: LCCOMB_X23_Y14_N6
\stack|M0|auto_generated|result_node[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~21_combout\ = (card_addr(2) & ((card_addr(1) & ((\stack|S14|U1|dffs\(3)))) # (!card_addr(1) & (\stack|S12|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(3),
	datab => \stack|S14|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(2),
	combout => \stack|M0|auto_generated|result_node[3]~21_combout\);

-- Location: LCCOMB_X22_Y17_N14
\stack|M0|auto_generated|result_node[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~23_combout\ = (\stack|M0|auto_generated|result_node[3]~20_combout\) # ((!card_addr(0) & ((\stack|M0|auto_generated|result_node[3]~22_combout\) # (\stack|M0|auto_generated|result_node[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|M0|auto_generated|result_node[3]~22_combout\,
	datac => \stack|M0|auto_generated|result_node[3]~20_combout\,
	datad => \stack|M0|auto_generated|result_node[3]~21_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~23_combout\);

-- Location: LCCOMB_X25_Y15_N10
\stack|S1|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S0|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S2|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S0|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S0|U1|dffs\(3),
	datab => \stack|S2|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X25_Y15_N12
\stack|S1|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[3]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S1|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y19_N0
\stack|enableArray[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[1]~49_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(1),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[1]~49_combout\);

-- Location: LCFF_X25_Y15_N13
\stack|S1|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(3));

-- Location: LCCOMB_X26_Y18_N18
\stack|S2|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S1|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S3|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S1|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack|S1|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S2|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X26_Y18_N16
\stack|S2|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[3]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S2|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y19_N10
\stack|enableArray[2]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[2]~48_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(2),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[2]~48_combout\);

-- Location: LCFF_X26_Y18_N17
\stack|S2|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(3));

-- Location: LCCOMB_X25_Y17_N30
\stack|M0|auto_generated|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~39_combout\ = (card_addr(0) & (((\stack|S1|U1|dffs\(3)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S0|U1|dffs\(3) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S0|U1|dffs\(3),
	datab => \stack|S1|U1|dffs\(3),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~39_combout\);

-- Location: LCCOMB_X25_Y17_N8
\stack|M0|auto_generated|_~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~40_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~39_combout\ & (\stack|S3|U1|dffs\(3))) # (!\stack|M0|auto_generated|_~39_combout\ & ((\stack|S2|U1|dffs\(3)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(3),
	datab => \stack|S2|U1|dffs\(3),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~39_combout\,
	combout => \stack|M0|auto_generated|_~40_combout\);

-- Location: LCCOMB_X25_Y17_N18
\stack|M0|auto_generated|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~37_combout\ = (card_addr(0) & (((\stack|S5|U1|dffs\(3)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S4|U1|dffs\(3) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(3),
	datab => \stack|S5|U1|dffs\(3),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~37_combout\);

-- Location: LCCOMB_X25_Y17_N20
\stack|M0|auto_generated|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~38_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~37_combout\ & (\stack|S7|U1|dffs\(3))) # (!\stack|M0|auto_generated|_~37_combout\ & ((\stack|S6|U1|dffs\(3)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(3),
	datab => \stack|S6|U1|dffs\(3),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~37_combout\,
	combout => \stack|M0|auto_generated|_~38_combout\);

-- Location: LCCOMB_X22_Y17_N12
\stack|M0|auto_generated|result_node[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~17_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~38_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~40_combout\,
	datad => \stack|M0|auto_generated|_~38_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~17_combout\);

-- Location: LCCOMB_X22_Y17_N4
\stack|M0|auto_generated|result_node[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~24_combout\ = (\stack|M0|auto_generated|result_node[5]~9_combout\ & ((\stack|M0|auto_generated|result_node[3]~17_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~9_combout\,
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[3]~23_combout\,
	datad => \stack|M0|auto_generated|result_node[3]~17_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~24_combout\);

-- Location: LCCOMB_X22_Y13_N16
\stack|S25|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S24|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S26|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S24|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S24|U1|dffs\(3),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y13_N30
\stack|S25|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[3]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S25|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N12
\stack|enableArray[25]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[25]~13_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(25),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[25]~13_combout\);

-- Location: LCFF_X23_Y13_N31
\stack|S25|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N6
\stack|S24|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S23|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S25|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S23|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S25|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack|S23|U1|dffs\(3),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X19_Y13_N2
\stack|S24|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[3]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S24|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N26
\stack|enableArray[24]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[24]~15_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(24),
	combout => \stack|enableArray[24]~15_combout\);

-- Location: LCFF_X19_Y13_N3
\stack|S24|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(3));

-- Location: LCCOMB_X18_Y15_N28
\stack|S23|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S22|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S24|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S22|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(3),
	datab => \stack|S24|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S23|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X18_Y15_N24
\stack|S23|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[3]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S23|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N14
\stack|enableArray[23]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[23]~7_combout\ = (\stack_en~regout\ & ((\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(23)) # (stack_mode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(23),
	datad => stack_mode(0),
	combout => \stack|enableArray[23]~7_combout\);

-- Location: LCFF_X18_Y15_N25
\stack|S23|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(3));

-- Location: LCCOMB_X21_Y15_N0
\stack|S21|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S20|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S22|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S20|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack|S20|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S21|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X21_Y15_N28
\stack|S21|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[3]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S21|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N4
\stack|enableArray[21]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[21]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(21),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[21]~5_combout\);

-- Location: LCFF_X21_Y15_N29
\stack|S21|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(3));

-- Location: LCCOMB_X23_Y17_N2
\stack|S16|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S15|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S17|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S15|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S17|U1|dffs\(3),
	datac => \stack|S15|U1|dffs\(3),
	datad => stack_mode(0),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y20_N12
\stack|S16|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[3]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S16|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y20_N8
\stack|enableArray[16]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[16]~10_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(16),
	combout => \stack|enableArray[16]~10_combout\);

-- Location: LCFF_X24_Y20_N13
\stack|S16|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(3));

-- Location: LCCOMB_X23_Y17_N8
\stack|S17|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S16|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S18|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S16|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S18|U1|dffs\(3),
	datac => \stack|S16|U1|dffs\(3),
	datad => stack_mode(0),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X19_Y17_N8
\stack|S17|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[3]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S17|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N6
\stack|enableArray[17]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[17]~9_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(17),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[17]~9_combout\);

-- Location: LCFF_X19_Y17_N9
\stack|S17|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(3));

-- Location: LCCOMB_X23_Y17_N10
\stack|S18|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S17|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S19|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S17|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(3),
	datab => \stack|S17|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y20_N14
\stack|S18|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[3]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S18|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S18|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N0
\stack|enableArray[18]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[18]~8_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(18),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[18]~8_combout\);

-- Location: LCFF_X24_Y20_N15
\stack|S18|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(3));

-- Location: LCCOMB_X19_Y17_N12
\stack|S19|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S18|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S20|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S18|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S18|U1|dffs\(3),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X19_Y17_N22
\stack|S19|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[3]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S19|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N30
\stack|enableArray[19]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[19]~11_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(19),
	combout => \stack|enableArray[19]~11_combout\);

-- Location: LCFF_X19_Y17_N23
\stack|S19|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[19]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(3));

-- Location: LCCOMB_X21_Y15_N26
\stack|S20|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S19|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S21|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S19|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S21|U1|dffs\(3),
	datac => \stack|S19|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S20|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X21_Y15_N14
\stack|S20|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[3]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S20|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N18
\stack|enableArray[20]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[20]~6_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(20),
	combout => \stack|enableArray[20]~6_combout\);

-- Location: LCFF_X21_Y15_N15
\stack|S20|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(3));

-- Location: LCCOMB_X21_Y15_N20
\stack|M0|auto_generated|_~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~56_combout\ = (card_addr(0) & ((\stack|S21|U1|dffs\(3)) # ((card_addr(1))))) # (!card_addr(0) & (((\stack|S20|U1|dffs\(3) & !card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(3),
	datab => \stack|S20|U1|dffs\(3),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~56_combout\);

-- Location: LCCOMB_X21_Y15_N2
\stack|M0|auto_generated|_~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~57_combout\ = (\stack|M0|auto_generated|_~56_combout\ & (((\stack|S23|U1|dffs\(3)) # (!card_addr(1))))) # (!\stack|M0|auto_generated|_~56_combout\ & (\stack|S22|U1|dffs\(3) & ((card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(3),
	datab => \stack|S23|U1|dffs\(3),
	datac => \stack|M0|auto_generated|_~56_combout\,
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~57_combout\);

-- Location: LCCOMB_X23_Y17_N12
\stack|M0|auto_generated|_~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~58_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S17|U1|dffs\(3))) # (!card_addr(0) & ((\stack|S16|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S17|U1|dffs\(3),
	datac => \stack|S16|U1|dffs\(3),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~58_combout\);

-- Location: LCCOMB_X23_Y17_N22
\stack|M0|auto_generated|_~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~59_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~58_combout\ & (\stack|S19|U1|dffs\(3))) # (!\stack|M0|auto_generated|_~58_combout\ & ((\stack|S18|U1|dffs\(3)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S19|U1|dffs\(3),
	datac => \stack|S18|U1|dffs\(3),
	datad => \stack|M0|auto_generated|_~58_combout\,
	combout => \stack|M0|auto_generated|_~59_combout\);

-- Location: LCCOMB_X22_Y17_N16
\stack|M0|auto_generated|result_node[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~25_combout\ = (!card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~57_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~57_combout\,
	datad => \stack|M0|auto_generated|_~59_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~25_combout\);

-- Location: LCCOMB_X22_Y13_N30
\stack|M0|auto_generated|result_node[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~29_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S27|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S25|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(3),
	datab => \stack|S25|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[3]~29_combout\);

-- Location: LCCOMB_X22_Y13_N18
\stack|S30|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S29|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S31|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S29|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S31|U1|dffs\(3),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X22_Y13_N0
\stack|S30|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[3]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S30|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N8
\stack|enableArray[30]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[30]~16_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(30),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[30]~16_combout\);

-- Location: LCFF_X22_Y13_N1
\stack|S30|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[30]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(3));

-- Location: LCCOMB_X22_Y14_N18
\stack|S31|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S30|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S32|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S30|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(3),
	datab => \stack|S30|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S31|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X21_Y13_N28
\stack|S31|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[3]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S31|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N30
\stack|enableArray[31]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[31]~18_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(31),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[31]~18_combout\);

-- Location: LCFF_X21_Y13_N29
\stack|S31|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[31]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N4
\stack|M0|auto_generated|result_node[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~26_combout\ = (card_addr(0) & ((card_addr(1) & ((\stack|S31|U1|dffs\(3)))) # (!card_addr(1) & (\stack|S29|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(3),
	datab => \stack|S31|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[3]~26_combout\);

-- Location: LCCOMB_X23_Y13_N18
\stack|S26|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S25|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S27|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S25|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S25|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => \stack|S27|U1|dffs\(3),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y13_N8
\stack|S26|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[3]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S26|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N18
\stack|enableArray[26]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[26]~14_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(26),
	combout => \stack|enableArray[26]~14_combout\);

-- Location: LCFF_X24_Y13_N9
\stack|S26|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N26
\stack|S27|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S26|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S28|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S26|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S28|U1|dffs\(3),
	datad => \stack|S26|U1|dffs\(3),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y13_N16
\stack|S27|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[3]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S27|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N12
\stack|enableArray[27]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[27]~12_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(27),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[27]~12_combout\);

-- Location: LCFF_X23_Y13_N17
\stack|S27|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N20
\stack|S29|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S28|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S30|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S28|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S28|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack|S30|U1|dffs\(3),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y13_N6
\stack|S29|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[3]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S29|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N24
\stack|enableArray[29]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[29]~19_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(29),
	combout => \stack|enableArray[29]~19_combout\);

-- Location: LCFF_X24_Y13_N7
\stack|S29|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N12
\stack|S28|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S27|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S29|U1|dffs\(3)))))) # (!\stack_en~regout\ & (((\stack|S27|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S27|U1|dffs\(3),
	datad => \stack|S29|U1|dffs\(3),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X22_Y13_N14
\stack|S28|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[3]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S28|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S28|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N22
\stack|enableArray[28]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[28]~17_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(28),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[28]~17_combout\);

-- Location: LCFF_X22_Y13_N15
\stack|S28|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N2
\stack|M0|auto_generated|result_node[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~27_combout\ = (!card_addr(0) & ((card_addr(1) & (\stack|S30|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S28|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(3),
	datab => \stack|S28|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[3]~27_combout\);

-- Location: LCCOMB_X22_Y13_N28
\stack|M0|auto_generated|result_node[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~28_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[3]~26_combout\) # (\stack|M0|auto_generated|result_node[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[3]~26_combout\,
	datad => \stack|M0|auto_generated|result_node[3]~27_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~28_combout\);

-- Location: LCCOMB_X22_Y13_N10
\stack|M0|auto_generated|result_node[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~31_combout\ = (\stack|M0|auto_generated|result_node[3]~28_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[3]~30_combout\) # (\stack|M0|auto_generated|result_node[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[3]~30_combout\,
	datab => \stack|M0|auto_generated|result_node[3]~29_combout\,
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|result_node[3]~28_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~31_combout\);

-- Location: LCCOMB_X22_Y17_N6
\stack|M0|auto_generated|result_node[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[3]~32_combout\ = (card_addr(4) & ((\stack|M0|auto_generated|result_node[3]~25_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(4),
	datac => \stack|M0|auto_generated|result_node[3]~25_combout\,
	datad => \stack|M0|auto_generated|result_node[3]~31_combout\,
	combout => \stack|M0|auto_generated|result_node[3]~32_combout\);

-- Location: LCCOMB_X20_Y13_N26
\stack|S33|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[3]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S33|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y13_N20
\stack|enableArray[33]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[33]~25_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(33),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[33]~25_combout\);

-- Location: LCFF_X20_Y13_N27
\stack|S33|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[33]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(3));

-- Location: LCCOMB_X22_Y13_N8
\stack|S34|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S33|U1|dffs\(3)))) # (!stack_mode(0) & (\stack|S35|U1|dffs\(3))))) # (!\stack_en~regout\ & (((\stack|S33|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S35|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack|S33|U1|dffs\(3),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X21_Y17_N0
\stack|S34|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[3]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S34|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N22
\stack|enableArray[34]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[34]~24_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(34),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[34]~24_combout\);

-- Location: LCFF_X21_Y17_N1
\stack|S34|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[34]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(3));

-- Location: LCCOMB_X24_Y17_N22
\stack|S35|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S34|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S36|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S34|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(3),
	datab => \stack|S34|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S35|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\stack|S35|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[3]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S35|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y13_N18
\stack|enableArray[35]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[35]~27_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(35),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[35]~27_combout\);

-- Location: LCFF_X24_Y14_N27
\stack|S35|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[35]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(3));

-- Location: LCCOMB_X24_Y17_N24
\stack|S36|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S35|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S37|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S35|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(3),
	datab => \stack|S35|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S36|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y17_N30
\stack|S36|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[3]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S36|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N8
\stack|enableArray[36]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[36]~22_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(36),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[36]~22_combout\);

-- Location: LCFF_X24_Y17_N31
\stack|S36|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[36]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(3));

-- Location: LCCOMB_X24_Y17_N2
\stack|S37|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S36|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S38|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S36|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(3),
	datab => \stack|S36|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S37|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y17_N4
\stack|S37|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[3]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S37|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N4
\stack|enableArray[37]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[37]~21_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(37),
	combout => \stack|enableArray[37]~21_combout\);

-- Location: LCFF_X24_Y17_N5
\stack|S37|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(3));

-- Location: LCCOMB_X24_Y17_N28
\stack|S38|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S37|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S39|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S37|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack|S37|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S38|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\stack|S38|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[3]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S38|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y20_N0
\stack|enableArray[38]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[38]~20_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(38),
	combout => \stack|enableArray[38]~20_combout\);

-- Location: LCFF_X24_Y14_N29
\stack|S38|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[38]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(3));

-- Location: LCCOMB_X24_Y17_N10
\stack|S39|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S38|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S40|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S38|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack|S38|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S39|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X20_Y20_N24
\stack|S39|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[3]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S39|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y20_N18
\stack|enableArray[39]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[39]~23_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(39),
	combout => \stack|enableArray[39]~23_combout\);

-- Location: LCFF_X20_Y20_N25
\stack|S39|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[39]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(3));

-- Location: LCCOMB_X23_Y17_N28
\stack|M0|auto_generated|_~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~43_combout\ = (card_addr(0) & ((\stack|S37|U1|dffs\(3)) # ((card_addr(1))))) # (!card_addr(0) & (((\stack|S36|U1|dffs\(3) & !card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(3),
	datab => \stack|S36|U1|dffs\(3),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~43_combout\);

-- Location: LCCOMB_X23_Y17_N18
\stack|M0|auto_generated|_~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~44_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~43_combout\ & (\stack|S39|U1|dffs\(3))) # (!\stack|M0|auto_generated|_~43_combout\ & ((\stack|S38|U1|dffs\(3)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S39|U1|dffs\(3),
	datac => \stack|S38|U1|dffs\(3),
	datad => \stack|M0|auto_generated|_~43_combout\,
	combout => \stack|M0|auto_generated|_~44_combout\);

-- Location: LCCOMB_X22_Y17_N22
\stack|M0|auto_generated|_~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~45_combout\ = (card_addr(5) & (card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(5),
	datab => card_addr(2),
	datac => card_addr(3),
	datad => \stack|M0|auto_generated|_~44_combout\,
	combout => \stack|M0|auto_generated|_~45_combout\);

-- Location: LCCOMB_X22_Y15_N16
\stack|S42|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S41|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S43|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S41|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(3),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S41|U1|dffs\(3),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\stack|S42|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[3]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S42|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N28
\stack|enableArray[42]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[42]~34_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(42),
	combout => \stack|enableArray[42]~34_combout\);

-- Location: LCFF_X23_Y15_N25
\stack|S42|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[42]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(3));

-- Location: LCCOMB_X24_Y15_N10
\stack|S41|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S40|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S42|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S40|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(3),
	datab => \stack|S42|U1|dffs\(3),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S41|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X22_Y15_N30
\stack|S41|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[3]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S41|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N30
\stack|enableArray[41]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[41]~33_combout\ = (\stack_en~regout\ & ((\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(41)) # (stack_mode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(41),
	datab => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[41]~33_combout\);

-- Location: LCFF_X22_Y15_N31
\stack|S41|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[41]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(3));

-- Location: LCCOMB_X22_Y15_N22
\stack|M0|auto_generated|_~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~52_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S43|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S41|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(3),
	datab => \stack|S41|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~52_combout\);

-- Location: LCCOMB_X23_Y15_N26
\stack|S40|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[3]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S40|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N2
\stack|enableArray[40]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[40]~35_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(40),
	combout => \stack|enableArray[40]~35_combout\);

-- Location: LCFF_X23_Y15_N27
\stack|S40|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[40]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(3));

-- Location: LCCOMB_X23_Y15_N20
\stack|M0|auto_generated|_~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~53_combout\ = (!card_addr(0) & ((card_addr(1) & (\stack|S42|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S40|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U1|dffs\(3),
	datab => \stack|S40|U1|dffs\(3),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~53_combout\);

-- Location: LCCOMB_X18_Y18_N22
\stack|S51|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack|S50|U1|dffs\(3) & ((stack_mode(0)) # (!\stack_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S51|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X18_Y18_N26
\stack|enableArray[51]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[51]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(51),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[51]~3_combout\);

-- Location: LCFF_X18_Y18_N23
\stack|S51|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[3]~1_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[51]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(3));

-- Location: LCCOMB_X18_Y18_N28
\stack|S50|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S49|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S51|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S49|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S51|U1|dffs\(3),
	datac => \stack|S49|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S50|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X18_Y18_N16
\stack|S50|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[3]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S50|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N24
\stack|enableArray[50]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[50]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(50),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[50]~0_combout\);

-- Location: LCFF_X18_Y18_N17
\stack|S50|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[50]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N26
\stack|S49|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (\stack|S48|U1|dffs\(3))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S50|U1|dffs\(3)))) # (!\stack_en~regout\ & (\stack|S48|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S48|U1|dffs\(3),
	datac => \stack|S50|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S49|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X19_Y18_N8
\stack|S49|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[3]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S49|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y19_N16
\stack|enableArray[49]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[49]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(49),
	combout => \stack|enableArray[49]~1_combout\);

-- Location: LCFF_X19_Y18_N9
\stack|S49|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[49]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N8
\stack|S48|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S47|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S49|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S47|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S49|U1|dffs\(3),
	datac => \stack|S47|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S48|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X16_Y17_N8
\stack|S48|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[3]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S48|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N2
\stack|enableArray[48]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[48]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(48),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[48]~2_combout\);

-- Location: LCFF_X16_Y17_N9
\stack|S48|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[3]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[48]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N10
\stack|S47|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S46|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S48|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S46|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S46|U1|dffs\(3),
	datac => \stack|S48|U1|dffs\(3),
	datad => stack_mode(0),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X18_Y17_N24
\stack|S47|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[3]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S47|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N22
\stack|enableArray[47]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[47]~28_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(47),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[47]~28_combout\);

-- Location: LCFF_X18_Y17_N25
\stack|S47|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[47]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(3));

-- Location: LCCOMB_X19_Y17_N26
\stack|S46|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[3]~1_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S45|U1|dffs\(3))) # (!stack_mode(0) & ((\stack|S47|U1|dffs\(3)))))) # (!\stack_en~regout\ & (\stack|S45|U1|dffs\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S45|U1|dffs\(3),
	datab => \stack|S47|U1|dffs\(3),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X22_Y21_N4
\stack|S46|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[3]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S46|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y17_N28
\stack|enableArray[46]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[46]~30_combout\ = (\stack_en~regout\ & ((\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(46)) # (stack_mode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(46),
	datab => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[46]~30_combout\);

-- Location: LCFF_X22_Y21_N5
\stack|S46|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[46]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(3));

-- Location: LCCOMB_X22_Y17_N20
\stack|M0|auto_generated|_~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~50_combout\ = (!card_addr(0) & ((card_addr(1) & ((\stack|S46|U1|dffs\(3)))) # (!card_addr(1) & (\stack|S44|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(3),
	datab => \stack|S46|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~50_combout\);

-- Location: LCCOMB_X22_Y15_N24
\stack|S43|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[3]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S43|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N24
\stack|enableArray[43]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[43]~32_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(43),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[43]~32_combout\);

-- Location: LCFF_X22_Y15_N25
\stack|S43|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[43]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N22
\stack|S44|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S43|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S45|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S43|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S45|U1|dffs\(3),
	datac => \stack|S43|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S44|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X22_Y21_N26
\stack|S44|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[3]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S44|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y16_N20
\stack|enableArray[44]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[44]~31_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(44),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[44]~31_combout\);

-- Location: LCFF_X22_Y21_N27
\stack|S44|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[44]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N28
\stack|S45|U0|$00000|auto_generated|result_node[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[3]~1_combout\ = (stack_mode(0) & (((\stack|S44|U1|dffs\(3))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S46|U1|dffs\(3))) # (!\stack_en~regout\ & ((\stack|S44|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S46|U1|dffs\(3),
	datac => \stack|S44|U1|dffs\(3),
	datad => \stack_en~regout\,
	combout => \stack|S45|U0|$00000|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X18_Y17_N14
\stack|S45|U1|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[3]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[3]~1_combout\,
	combout => \stack|S45|U1|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N20
\stack|enableArray[45]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[45]~29_combout\ = (\stack_en~regout\ & ((\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(45)) # (stack_mode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(45),
	datad => stack_mode(0),
	combout => \stack|enableArray[45]~29_combout\);

-- Location: LCFF_X18_Y17_N15
\stack|S45|U1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[3]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[45]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(3));

-- Location: LCCOMB_X18_Y17_N16
\stack|M0|auto_generated|_~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~49_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S47|U1|dffs\(3))) # (!card_addr(1) & ((\stack|S45|U1|dffs\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(3),
	datab => \stack|S45|U1|dffs\(3),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~49_combout\);

-- Location: LCCOMB_X22_Y17_N18
\stack|M0|auto_generated|_~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~51_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|_~50_combout\) # (\stack|M0|auto_generated|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~50_combout\,
	datad => \stack|M0|auto_generated|_~49_combout\,
	combout => \stack|M0|auto_generated|_~51_combout\);

-- Location: LCCOMB_X22_Y17_N24
\stack|M0|auto_generated|_~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~54_combout\ = (\stack|M0|auto_generated|_~51_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|_~52_combout\) # (\stack|M0|auto_generated|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => \stack|M0|auto_generated|_~52_combout\,
	datac => \stack|M0|auto_generated|_~53_combout\,
	datad => \stack|M0|auto_generated|_~51_combout\,
	combout => \stack|M0|auto_generated|_~54_combout\);

-- Location: LCCOMB_X20_Y19_N2
\stack|M0|auto_generated|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~12_combout\ = (!card_addr(3) & !card_addr(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datad => card_addr(2),
	combout => \stack|M0|auto_generated|_~12_combout\);

-- Location: LCCOMB_X21_Y17_N28
\stack|M0|auto_generated|_~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~46_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S33|U1|dffs\(3)))) # (!card_addr(0) & (\stack|S32|U1|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(3),
	datab => card_addr(1),
	datac => card_addr(0),
	datad => \stack|S33|U1|dffs\(3),
	combout => \stack|M0|auto_generated|_~46_combout\);

-- Location: LCCOMB_X22_Y17_N0
\stack|M0|auto_generated|_~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~47_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~46_combout\ & ((\stack|S35|U1|dffs\(3)))) # (!\stack|M0|auto_generated|_~46_combout\ & (\stack|S34|U1|dffs\(3))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(3),
	datab => card_addr(1),
	datac => \stack|S35|U1|dffs\(3),
	datad => \stack|M0|auto_generated|_~46_combout\,
	combout => \stack|M0|auto_generated|_~47_combout\);

-- Location: LCCOMB_X22_Y17_N10
\stack|M0|auto_generated|_~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~48_combout\ = (card_addr(5) & ((card_addr(4)) # ((\stack|M0|auto_generated|_~12_combout\ & \stack|M0|auto_generated|_~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(5),
	datab => card_addr(4),
	datac => \stack|M0|auto_generated|_~12_combout\,
	datad => \stack|M0|auto_generated|_~47_combout\,
	combout => \stack|M0|auto_generated|_~48_combout\);

-- Location: LCCOMB_X22_Y17_N2
\stack|M0|auto_generated|_~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~55_combout\ = (\stack|M0|auto_generated|_~45_combout\) # ((\stack|M0|auto_generated|_~48_combout\) # ((\stack|M0|auto_generated|_~25_combout\ & \stack|M0|auto_generated|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~25_combout\,
	datab => \stack|M0|auto_generated|_~45_combout\,
	datac => \stack|M0|auto_generated|_~54_combout\,
	datad => \stack|M0|auto_generated|_~48_combout\,
	combout => \stack|M0|auto_generated|_~55_combout\);

-- Location: LCCOMB_X22_Y19_N2
\stack|M0|auto_generated|result_node[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node\(3) = (\stack|M0|auto_generated|result_node[3]~24_combout\) # ((\stack|M0|auto_generated|_~55_combout\ & (\stack|M0|auto_generated|_~151_combout\)) # (!\stack|M0|auto_generated|_~55_combout\ & 
-- ((\stack|M0|auto_generated|result_node[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~151_combout\,
	datab => \stack|M0|auto_generated|result_node[3]~24_combout\,
	datac => \stack|M0|auto_generated|result_node[3]~32_combout\,
	datad => \stack|M0|auto_generated|_~55_combout\,
	combout => \stack|M0|auto_generated|result_node\(3));

-- Location: LCCOMB_X19_Y13_N28
\stack|S24|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[5]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S24|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S24|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y13_N29
\stack|S24|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(5));

-- Location: LCCOMB_X23_Y21_N20
\stack|S23|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S22|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S24|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S22|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack|S24|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S23|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X18_Y21_N16
\stack|S23|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[5]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S23|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X18_Y21_N17
\stack|S23|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N30
\stack|S22|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S21|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S23|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S21|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S23|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => \stack|S21|U1|dffs\(5),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y21_N12
\stack|S22|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[5]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S22|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N2
\stack|enableArray[22]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[22]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(22),
	combout => \stack|enableArray[22]~4_combout\);

-- Location: LCFF_X20_Y21_N13
\stack|S22|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N0
\stack|S21|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S20|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S22|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S20|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S20|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => \stack|S22|U1|dffs\(5),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X21_Y21_N12
\stack|S21|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[5]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S21|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X21_Y21_N13
\stack|S21|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N10
\stack|S20|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S19|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S21|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S19|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S21|U1|dffs\(5),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X21_Y21_N18
\stack|S20|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[5]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S20|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X21_Y21_N19
\stack|S20|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N20
\stack|M0|auto_generated|_~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~66_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S21|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S20|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(5),
	datab => \stack|S20|U1|dffs\(5),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~66_combout\);

-- Location: LCCOMB_X21_Y21_N14
\stack|M0|auto_generated|_~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~67_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~66_combout\ & ((\stack|S23|U1|dffs\(5)))) # (!\stack|M0|auto_generated|_~66_combout\ & (\stack|S22|U1|dffs\(5))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(5),
	datab => card_addr(1),
	datac => \stack|M0|auto_generated|_~66_combout\,
	datad => \stack|S23|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~67_combout\);

-- Location: LCCOMB_X24_Y18_N6
\stack|S15|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S14|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S16|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S14|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(5),
	datab => \stack|S16|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\stack|S15|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[5]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S15|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S15|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X24_Y18_N27
\stack|S15|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N8
\stack|S16|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S15|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S17|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S15|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S15|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S17|U1|dffs\(5),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y21_N14
\stack|S16|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[5]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S16|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S16|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y21_N15
\stack|S16|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N6
\stack|S17|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S16|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S18|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S16|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S18|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => \stack|S16|U1|dffs\(5),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y17_N24
\stack|S17|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[5]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S17|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y17_N25
\stack|S17|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N16
\stack|S18|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S17|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S19|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S17|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S17|U1|dffs\(5),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y21_N20
\stack|S18|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[5]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S18|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X24_Y21_N21
\stack|S18|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(5));

-- Location: LCCOMB_X21_Y21_N28
\stack|M0|auto_generated|_~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~68_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S17|U1|dffs\(5)))) # (!card_addr(0) & (\stack|S16|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(5),
	datab => \stack|S17|U1|dffs\(5),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~68_combout\);

-- Location: LCCOMB_X21_Y21_N2
\stack|M0|auto_generated|_~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~69_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~68_combout\ & (\stack|S19|U1|dffs\(5))) # (!\stack|M0|auto_generated|_~68_combout\ & ((\stack|S18|U1|dffs\(5)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(5),
	datab => \stack|S18|U1|dffs\(5),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~68_combout\,
	combout => \stack|M0|auto_generated|_~69_combout\);

-- Location: LCCOMB_X21_Y21_N24
\stack|M0|auto_generated|result_node[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~41_combout\ = (!card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~67_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => \stack|M0|auto_generated|_~67_combout\,
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|_~69_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~41_combout\);

-- Location: LCCOMB_X21_Y13_N12
\stack|S30|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[5]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S30|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X21_Y13_N13
\stack|S30|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[30]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(5));

-- Location: LCCOMB_X21_Y14_N8
\stack|S29|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S28|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S30|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S28|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S30|U1|dffs\(5),
	datad => \stack|S28|U1|dffs\(5),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X22_Y14_N6
\stack|S29|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[5]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S29|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X22_Y14_N7
\stack|S29|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(5));

-- Location: LCCOMB_X20_Y14_N4
\stack|S28|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S27|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S29|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S27|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S27|U1|dffs\(5),
	datac => \stack|S29|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S28|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y14_N18
\stack|S28|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[5]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S28|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y14_N19
\stack|S28|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(5));

-- Location: LCCOMB_X19_Y14_N20
\stack|S27|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S26|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S28|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S26|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S28|U1|dffs\(5),
	datac => \stack|S26|U1|dffs\(5),
	datad => stack_mode(0),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y15_N14
\stack|S27|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[5]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S27|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y15_N15
\stack|S27|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(5));

-- Location: LCCOMB_X19_Y13_N18
\stack|S26|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S25|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S27|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S25|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S25|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S27|U1|dffs\(5),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y13_N22
\stack|S26|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[5]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S26|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y13_N23
\stack|S26|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(5));

-- Location: LCCOMB_X19_Y15_N2
\stack|S25|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S24|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S26|U1|dffs\(5)))))) # (!\stack_en~regout\ & (((\stack|S24|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S24|U1|dffs\(5),
	datad => \stack|S26|U1|dffs\(5),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X19_Y15_N4
\stack|S25|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[5]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S25|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X19_Y15_N5
\stack|S25|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(5));

-- Location: LCCOMB_X19_Y15_N20
\stack|M0|auto_generated|result_node[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~45_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S25|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S24|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|S25|U1|dffs\(5),
	datac => \stack|S24|U1|dffs\(5),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[5]~45_combout\);

-- Location: LCCOMB_X22_Y14_N12
\stack|M0|auto_generated|result_node[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~42_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S29|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S28|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(5),
	datab => card_addr(1),
	datac => \stack|S28|U1|dffs\(5),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[5]~42_combout\);

-- Location: LCCOMB_X21_Y13_N26
\stack|S31|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S30|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S32|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S30|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S30|U1|dffs\(5),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X21_Y13_N30
\stack|S31|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[5]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S31|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X21_Y13_N31
\stack|S31|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[31]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(5));

-- Location: LCCOMB_X21_Y13_N22
\stack|M0|auto_generated|result_node[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~43_combout\ = (card_addr(1) & ((card_addr(0) & ((\stack|S31|U1|dffs\(5)))) # (!card_addr(0) & (\stack|S30|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(5),
	datab => card_addr(0),
	datac => \stack|S31|U1|dffs\(5),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[5]~43_combout\);

-- Location: LCCOMB_X21_Y19_N12
\stack|M0|auto_generated|result_node[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~44_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[5]~42_combout\) # (\stack|M0|auto_generated|result_node[5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[5]~42_combout\,
	datad => \stack|M0|auto_generated|result_node[5]~43_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~44_combout\);

-- Location: LCCOMB_X21_Y19_N18
\stack|M0|auto_generated|result_node[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~47_combout\ = (\stack|M0|auto_generated|result_node[5]~44_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[5]~46_combout\) # (\stack|M0|auto_generated|result_node[5]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~46_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[5]~45_combout\,
	datad => \stack|M0|auto_generated|result_node[5]~44_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~47_combout\);

-- Location: LCCOMB_X21_Y19_N4
\stack|M0|auto_generated|result_node[5]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~48_combout\ = (card_addr(4) & ((\stack|M0|auto_generated|result_node[5]~41_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[5]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[5]~41_combout\,
	datad => \stack|M0|auto_generated|result_node[5]~47_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~48_combout\);

-- Location: LCCOMB_X20_Y13_N30
\stack|S35|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[5]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S35|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y13_N31
\stack|S35|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[35]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(5));

-- Location: LCCOMB_X20_Y13_N24
\stack|S34|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S33|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S35|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S33|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S33|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S35|U1|dffs\(5),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y17_N16
\stack|S34|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[5]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S34|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y17_N17
\stack|S34|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[34]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(5));

-- Location: LCCOMB_X21_Y13_N6
\stack|S33|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S32|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S34|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S32|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(5),
	datab => \stack|S34|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S33|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y13_N4
\stack|S33|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[5]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S33|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y13_N5
\stack|S33|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[33]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(5));

-- Location: LCCOMB_X20_Y13_N22
\stack|S32|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S31|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S33|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S31|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S33|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S31|U1|dffs\(5),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y17_N10
\stack|S32|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[5]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S32|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N30
\stack|enableArray[32]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[32]~26_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(32),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[32]~26_combout\);

-- Location: LCFF_X20_Y17_N11
\stack|S32|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[32]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N10
\stack|M0|auto_generated|_~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~77_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S33|U1|dffs\(5)))) # (!card_addr(0) & (\stack|S32|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S32|U1|dffs\(5),
	datac => card_addr(0),
	datad => \stack|S33|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~77_combout\);

-- Location: LCCOMB_X20_Y16_N16
\stack|M0|auto_generated|_~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~78_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~77_combout\ & ((\stack|S35|U1|dffs\(5)))) # (!\stack|M0|auto_generated|_~77_combout\ & (\stack|S34|U1|dffs\(5))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(5),
	datab => \stack|S35|U1|dffs\(5),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~77_combout\,
	combout => \stack|M0|auto_generated|_~78_combout\);

-- Location: LCCOMB_X20_Y16_N0
\stack|S36|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S35|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S37|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S35|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S35|U1|dffs\(5),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y16_N8
\stack|S36|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[5]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S36|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y16_N9
\stack|S36|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[36]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(5));

-- Location: LCCOMB_X20_Y20_N2
\stack|S39|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S38|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S40|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S38|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(5),
	datab => \stack|S38|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S39|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y20_N16
\stack|S39|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[5]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S39|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y20_N17
\stack|S39|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[39]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(5));

-- Location: LCCOMB_X20_Y20_N12
\stack|S38|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S37|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S39|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S37|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S39|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S37|U1|dffs\(5),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y20_N30
\stack|S38|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[5]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S38|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y20_N31
\stack|S38|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[38]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(5));

-- Location: LCCOMB_X24_Y17_N12
\stack|S37|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S36|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S38|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S36|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(5),
	datab => \stack|S38|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S37|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y17_N16
\stack|S37|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[5]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S37|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X24_Y17_N17
\stack|S37|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(5));

-- Location: LCCOMB_X20_Y16_N30
\stack|M0|auto_generated|_~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~75_combout\ = (card_addr(0) & (((card_addr(1)) # (\stack|S37|U1|dffs\(5))))) # (!card_addr(0) & (\stack|S36|U1|dffs\(5) & (!card_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|S36|U1|dffs\(5),
	datac => card_addr(1),
	datad => \stack|S37|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~75_combout\);

-- Location: LCCOMB_X20_Y16_N12
\stack|M0|auto_generated|_~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~76_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~75_combout\ & ((\stack|S39|U1|dffs\(5)))) # (!\stack|M0|auto_generated|_~75_combout\ & (\stack|S38|U1|dffs\(5))))) # (!card_addr(1) & 
-- (\stack|M0|auto_generated|_~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|M0|auto_generated|_~75_combout\,
	datac => \stack|S38|U1|dffs\(5),
	datad => \stack|S39|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~76_combout\);

-- Location: LCCOMB_X20_Y16_N18
\stack|M0|auto_generated|_~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~79_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~76_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~78_combout\,
	datad => \stack|M0|auto_generated|_~76_combout\,
	combout => \stack|M0|auto_generated|_~79_combout\);

-- Location: LCCOMB_X20_Y14_N10
\stack|S45|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S44|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S46|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S44|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack|S46|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S45|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y14_N12
\stack|S45|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[5]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S45|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y14_N13
\stack|S45|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[45]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(5));

-- Location: LCCOMB_X20_Y18_N4
\stack|S46|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S45|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S47|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S45|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S47|U1|dffs\(5),
	datac => \stack|S45|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S46|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y18_N2
\stack|S46|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[5]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S46|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S46|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y18_N3
\stack|S46|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[46]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(5));

-- Location: LCCOMB_X20_Y18_N26
\stack|S47|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S46|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S48|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S46|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S46|U1|dffs\(5),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y18_N28
\stack|S47|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[5]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S47|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y18_N29
\stack|S47|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[47]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(5));

-- Location: LCCOMB_X20_Y18_N6
\stack|M0|auto_generated|_~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~70_combout\ = (card_addr(1) & (((\stack|S46|U1|dffs\(5)) # (card_addr(0))))) # (!card_addr(1) & (\stack|S44|U1|dffs\(5) & ((!card_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(5),
	datab => \stack|S46|U1|dffs\(5),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~70_combout\);

-- Location: LCCOMB_X20_Y18_N24
\stack|M0|auto_generated|_~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~71_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|_~70_combout\ & (\stack|S47|U1|dffs\(5))) # (!\stack|M0|auto_generated|_~70_combout\ & ((\stack|S45|U1|dffs\(5)))))) # (!card_addr(0) & 
-- (((\stack|M0|auto_generated|_~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|S47|U1|dffs\(5),
	datac => \stack|S45|U1|dffs\(5),
	datad => \stack|M0|auto_generated|_~70_combout\,
	combout => \stack|M0|auto_generated|_~71_combout\);

-- Location: LCCOMB_X20_Y14_N28
\stack|S44|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S43|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S45|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S43|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S45|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack|S43|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S44|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X20_Y14_N26
\stack|S44|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[5]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S44|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X20_Y14_N27
\stack|S44|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[44]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(5));

-- Location: LCCOMB_X16_Y16_N18
\stack|S43|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S42|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S44|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S42|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S42|U1|dffs\(5),
	datac => \stack|S44|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S43|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X16_Y16_N28
\stack|S43|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[5]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S43|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X16_Y16_N29
\stack|S43|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[43]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(5));

-- Location: LCCOMB_X20_Y14_N2
\stack|S42|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S41|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S43|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S41|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S41|U1|dffs\(5),
	datac => \stack|S43|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S42|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X23_Y15_N16
\stack|S42|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[5]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S42|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X23_Y15_N17
\stack|S42|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[42]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(5));

-- Location: LCCOMB_X21_Y15_N16
\stack|S41|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S40|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S42|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S40|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack|S42|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S41|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X22_Y15_N8
\stack|S41|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[5]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S41|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X22_Y15_N9
\stack|S41|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[5]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[41]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(5));

-- Location: LCCOMB_X21_Y15_N8
\stack|M0|auto_generated|_~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~72_combout\ = (card_addr(0) & (((\stack|S41|U1|dffs\(5)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S40|U1|dffs\(5) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(5),
	datab => \stack|S41|U1|dffs\(5),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~72_combout\);

-- Location: LCCOMB_X20_Y18_N18
\stack|M0|auto_generated|_~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~73_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~72_combout\ & (\stack|S43|U1|dffs\(5))) # (!\stack|M0|auto_generated|_~72_combout\ & ((\stack|S42|U1|dffs\(5)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(5),
	datab => card_addr(1),
	datac => \stack|M0|auto_generated|_~72_combout\,
	datad => \stack|S42|U1|dffs\(5),
	combout => \stack|M0|auto_generated|_~73_combout\);

-- Location: LCCOMB_X20_Y18_N0
\stack|M0|auto_generated|_~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~74_combout\ = (card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~71_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~71_combout\,
	datad => \stack|M0|auto_generated|_~73_combout\,
	combout => \stack|M0|auto_generated|_~74_combout\);

-- Location: LCCOMB_X20_Y19_N4
\stack|M0|auto_generated|_~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~80_combout\ = (card_addr(5) & ((card_addr(4)) # ((\stack|M0|auto_generated|_~79_combout\) # (\stack|M0|auto_generated|_~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(5),
	datac => \stack|M0|auto_generated|_~79_combout\,
	datad => \stack|M0|auto_generated|_~74_combout\,
	combout => \stack|M0|auto_generated|_~80_combout\);

-- Location: LCCOMB_X24_Y15_N14
\stack|S8|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S7|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S9|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S7|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack|S9|U1|dffs\(5),
	datad => \stack_en~regout\,
	combout => \stack|S8|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X26_Y19_N18
\stack|S8|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[5]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S8|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S8|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X26_Y19_N19
\stack|S8|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(5));

-- Location: LCCOMB_X25_Y15_N22
\stack|S9|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S8|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S10|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S8|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S8|U1|dffs\(5),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y16_N18
\stack|S9|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[5]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S9|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X24_Y16_N19
\stack|S9|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(5));

-- Location: LCCOMB_X25_Y15_N14
\stack|M0|auto_generated|result_node[5]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~37_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S9|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S8|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => card_addr(0),
	datac => \stack|S9|U1|dffs\(5),
	datad => \stack|S8|U1|dffs\(5),
	combout => \stack|M0|auto_generated|result_node[5]~37_combout\);

-- Location: LCCOMB_X25_Y16_N0
\stack|S10|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[5]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S10|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X25_Y16_N1
\stack|S10|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(5));

-- Location: LCCOMB_X24_Y15_N16
\stack|M0|auto_generated|result_node[5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~38_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S11|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S10|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(5),
	datab => card_addr(0),
	datac => card_addr(1),
	datad => \stack|S10|U1|dffs\(5),
	combout => \stack|M0|auto_generated|result_node[5]~38_combout\);

-- Location: LCCOMB_X24_Y15_N28
\stack|M0|auto_generated|result_node[5]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~35_combout\ = (card_addr(1) & ((card_addr(0) & ((\stack|S15|U1|dffs\(5)))) # (!card_addr(0) & (\stack|S14|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(5),
	datab => \stack|S15|U1|dffs\(5),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[5]~35_combout\);

-- Location: LCCOMB_X24_Y15_N2
\stack|S12|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S11|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S13|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S11|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S11|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S13|U1|dffs\(5),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y15_N12
\stack|S12|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[5]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S12|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N16
\stack|enableArray[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[12]~39_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(12),
	combout => \stack|enableArray[12]~39_combout\);

-- Location: LCFF_X24_Y15_N13
\stack|S12|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(5));

-- Location: LCCOMB_X24_Y15_N8
\stack|S13|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S12|U1|dffs\(5)))) # (!stack_mode(0) & (\stack|S14|U1|dffs\(5))))) # (!\stack_en~regout\ & (((\stack|S12|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(5),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S12|U1|dffs\(5),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X24_Y15_N26
\stack|S13|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[5]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S13|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S13|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X24_Y15_N27
\stack|S13|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(5));

-- Location: LCCOMB_X24_Y15_N18
\stack|M0|auto_generated|result_node[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~34_combout\ = (!card_addr(1) & ((card_addr(0) & ((\stack|S13|U1|dffs\(5)))) # (!card_addr(0) & (\stack|S12|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(5),
	datab => \stack|S13|U1|dffs\(5),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[5]~34_combout\);

-- Location: LCCOMB_X24_Y15_N22
\stack|M0|auto_generated|result_node[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~36_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[5]~35_combout\) # (\stack|M0|auto_generated|result_node[5]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|result_node[5]~35_combout\,
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|result_node[5]~34_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~36_combout\);

-- Location: LCCOMB_X24_Y15_N6
\stack|M0|auto_generated|result_node[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~39_combout\ = (\stack|M0|auto_generated|result_node[5]~36_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[5]~37_combout\) # (\stack|M0|auto_generated|result_node[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => \stack|M0|auto_generated|result_node[5]~37_combout\,
	datac => \stack|M0|auto_generated|result_node[5]~38_combout\,
	datad => \stack|M0|auto_generated|result_node[5]~36_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~39_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_in[5]~I\ : cycloneii_io
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
	padio => ww_card_in(5),
	combout => \card_in~combout\(5));

-- Location: LCCOMB_X25_Y20_N10
\stack|S0|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\card_in~combout\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S1|U1|dffs\(5))) # (!\stack_en~regout\ & ((\card_in~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \card_in~combout\(5),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y20_N18
\stack|S0|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U1|dffs[5]~feeder_combout\ = \stack|S0|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S0|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S0|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X18_Y19_N30
\stack|enableArray[0]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[0]~50_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datac => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(0),
	datad => \stack_en~regout\,
	combout => \stack|enableArray[0]~50_combout\);

-- Location: LCFF_X25_Y20_N19
\stack|S0|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(5));

-- Location: LCCOMB_X25_Y20_N4
\stack|S1|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S0|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S2|U1|dffs\(5)))))) # (!\stack_en~regout\ & (\stack|S0|U1|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S0|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack|S2|U1|dffs\(5),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y20_N20
\stack|S1|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[5]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S1|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S1|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X25_Y20_N21
\stack|S1|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(5));

-- Location: LCCOMB_X24_Y17_N14
\stack|S5|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S4|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S6|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S4|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(5),
	datab => \stack|S4|U1|dffs\(5),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S5|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y17_N14
\stack|S5|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[5]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S5|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X25_Y17_N15
\stack|S5|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(5));

-- Location: LCCOMB_X25_Y20_N24
\stack|S4|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (\stack|S3|U1|dffs\(5))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S5|U1|dffs\(5)))) # (!\stack_en~regout\ & (\stack|S3|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(5),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S5|U1|dffs\(5),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y17_N0
\stack|S4|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[5]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S4|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X25_Y17_N1
\stack|S4|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(5));

-- Location: LCCOMB_X25_Y17_N10
\stack|S3|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[5]~2_combout\ = (stack_mode(0) & (((\stack|S2|U1|dffs\(5))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S4|U1|dffs\(5))) # (!\stack_en~regout\ & ((\stack|S2|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S4|U1|dffs\(5),
	datac => \stack_en~regout\,
	datad => \stack|S2|U1|dffs\(5),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X25_Y15_N16
\stack|S3|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[5]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S3|U1|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N8
\stack|enableArray[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[3]~51_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(3),
	combout => \stack|enableArray[3]~51_combout\);

-- Location: LCFF_X25_Y15_N17
\stack|S3|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(5));

-- Location: LCCOMB_X25_Y20_N26
\stack|S2|U0|$00000|auto_generated|result_node[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[5]~2_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S1|U1|dffs\(5))) # (!stack_mode(0) & ((\stack|S3|U1|dffs\(5)))))) # (!\stack_en~regout\ & (((\stack|S1|U1|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S1|U1|dffs\(5),
	datad => \stack|S3|U1|dffs\(5),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X26_Y20_N24
\stack|S2|U1|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[5]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[5]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[5]~2_combout\,
	combout => \stack|S2|U1|dffs[5]~feeder_combout\);

-- Location: LCFF_X26_Y20_N25
\stack|S2|U1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[5]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(5));

-- Location: LCCOMB_X25_Y20_N6
\stack|M0|auto_generated|_~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~62_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S1|U1|dffs\(5))) # (!card_addr(0) & ((\stack|S0|U1|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(5),
	datab => \stack|S0|U1|dffs\(5),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~62_combout\);

-- Location: LCCOMB_X25_Y20_N16
\stack|M0|auto_generated|_~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~63_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~62_combout\ & ((\stack|S3|U1|dffs\(5)))) # (!\stack|M0|auto_generated|_~62_combout\ & (\stack|S2|U1|dffs\(5))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S2|U1|dffs\(5),
	datac => \stack|S3|U1|dffs\(5),
	datad => \stack|M0|auto_generated|_~62_combout\,
	combout => \stack|M0|auto_generated|_~63_combout\);

-- Location: LCCOMB_X21_Y19_N28
\stack|M0|auto_generated|result_node[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~33_combout\ = (!card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~61_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~61_combout\,
	datab => card_addr(3),
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|_~63_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~33_combout\);

-- Location: LCCOMB_X21_Y19_N2
\stack|M0|auto_generated|result_node[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~40_combout\ = (\stack|M0|auto_generated|result_node[5]~9_combout\ & ((\stack|M0|auto_generated|result_node[5]~33_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[5]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~9_combout\,
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[5]~39_combout\,
	datad => \stack|M0|auto_generated|result_node[5]~33_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~40_combout\);

-- Location: LCCOMB_X21_Y19_N14
\stack|M0|auto_generated|result_node[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[5]~49_combout\ = (\stack|M0|auto_generated|result_node[5]~40_combout\) # ((\stack|M0|auto_generated|_~80_combout\ & (\stack|M0|auto_generated|_~152_combout\)) # (!\stack|M0|auto_generated|_~80_combout\ & 
-- ((\stack|M0|auto_generated|result_node[5]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~152_combout\,
	datab => \stack|M0|auto_generated|result_node[5]~48_combout\,
	datac => \stack|M0|auto_generated|_~80_combout\,
	datad => \stack|M0|auto_generated|result_node[5]~40_combout\,
	combout => \stack|M0|auto_generated|result_node[5]~49_combout\);

-- Location: LCCOMB_X18_Y17_N0
\stack|M0|auto_generated|_~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~41_combout\ = (card_addr(0) & (((\stack|S49|U1|dffs\(3)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S48|U1|dffs\(3) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(3),
	datab => \stack|S49|U1|dffs\(3),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~41_combout\);

-- Location: LCCOMB_X18_Y17_N6
\stack|M0|auto_generated|_~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~42_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~41_combout\ & (\stack|S51|U1|dffs\(3))) # (!\stack|M0|auto_generated|_~41_combout\ & ((\stack|S50|U1|dffs\(3)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S51|U1|dffs\(3),
	datac => \stack|S50|U1|dffs\(3),
	datad => \stack|M0|auto_generated|_~41_combout\,
	combout => \stack|M0|auto_generated|_~42_combout\);

-- Location: LCCOMB_X18_Y17_N12
\stack|M0|auto_generated|_~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~151_combout\ = ((!card_addr(3) & (!card_addr(2) & \stack|M0|auto_generated|_~42_combout\))) # (!card_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(2),
	datac => card_addr(4),
	datad => \stack|M0|auto_generated|_~42_combout\,
	combout => \stack|M0|auto_generated|_~151_combout\);

-- Location: LCCOMB_X22_Y17_N30
\rules|DEC2|A1|b2v_inst5|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst5|Cout~0_combout\ = (\stack|M0|auto_generated|result_node[3]~24_combout\) # ((\stack|M0|auto_generated|_~55_combout\ & (\stack|M0|auto_generated|_~151_combout\)) # (!\stack|M0|auto_generated|_~55_combout\ & 
-- ((\stack|M0|auto_generated|result_node[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[3]~24_combout\,
	datab => \stack|M0|auto_generated|_~55_combout\,
	datac => \stack|M0|auto_generated|_~151_combout\,
	datad => \stack|M0|auto_generated|result_node[3]~32_combout\,
	combout => \rules|DEC2|A1|b2v_inst5|Cout~0_combout\);

-- Location: LCCOMB_X20_Y15_N10
\stack|S29|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S28|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S30|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S28|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S28|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S29|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X22_Y14_N0
\stack|S29|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[2]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S29|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X22_Y14_N1
\stack|S29|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(2));

-- Location: LCCOMB_X18_Y15_N4
\stack|S28|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S27|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S29|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S27|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S27|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack|S29|U1|dffs\(2),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X16_Y19_N30
\stack|S28|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[2]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S28|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y19_N31
\stack|S28|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(2));

-- Location: LCCOMB_X20_Y15_N24
\stack|S27|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S26|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S28|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S26|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S28|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S27|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y15_N10
\stack|S27|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[2]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S27|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y15_N11
\stack|S27|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(2));

-- Location: LCCOMB_X19_Y15_N22
\stack|S26|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S25|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S27|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S25|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S25|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S27|U1|dffs\(2),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y14_N0
\stack|S26|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[2]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S26|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S26|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y14_N1
\stack|S26|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(2));

-- Location: LCCOMB_X19_Y15_N0
\stack|S25|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S24|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S26|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S24|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S24|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => \stack|S26|U1|dffs\(2),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y15_N16
\stack|S25|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[2]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S25|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y15_N17
\stack|S25|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(2));

-- Location: LCCOMB_X19_Y16_N26
\stack|S24|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S23|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S25|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S23|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S25|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => \stack|S23|U1|dffs\(2),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y13_N20
\stack|S24|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[2]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S24|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y13_N21
\stack|S24|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(2));

-- Location: LCCOMB_X18_Y15_N18
\stack|S23|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S22|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S24|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S22|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(2),
	datab => \stack|S24|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S23|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X18_Y15_N26
\stack|S23|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[2]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S23|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y15_N27
\stack|S23|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(2));

-- Location: LCCOMB_X24_Y20_N6
\stack|S16|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[2]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S16|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X24_Y20_N7
\stack|S16|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N8
\stack|S17|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S16|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S18|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S16|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S18|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S16|U1|dffs\(2),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y17_N20
\stack|S17|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[2]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S17|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y17_N21
\stack|S17|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N18
\stack|S18|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S17|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S19|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S17|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S19|U1|dffs\(2),
	datad => \stack|S17|U1|dffs\(2),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y19_N6
\stack|S18|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[2]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S18|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y19_N7
\stack|S18|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N26
\stack|S19|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S18|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S20|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S18|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S18|U1|dffs\(2),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y17_N10
\stack|S19|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[2]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S19|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y17_N11
\stack|S19|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[19]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N0
\stack|S20|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S19|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S21|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S19|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S19|U1|dffs\(2),
	datad => \stack|S21|U1|dffs\(2),
	combout => \stack|S20|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X19_Y19_N24
\stack|S20|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[2]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S20|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X19_Y19_N25
\stack|S20|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N4
\stack|S22|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S21|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S23|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S21|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S23|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => \stack|S21|U1|dffs\(2),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X18_Y20_N18
\stack|S22|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[2]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S22|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S22|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X18_Y20_N19
\stack|S22|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N2
\stack|S21|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S20|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S22|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S20|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S20|U1|dffs\(2),
	datad => \stack|S22|U1|dffs\(2),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X16_Y19_N20
\stack|S21|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[2]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S21|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y19_N21
\stack|S21|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(2));

-- Location: LCCOMB_X19_Y19_N12
\stack|M0|auto_generated|_~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~100_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S21|U1|dffs\(2)))) # (!card_addr(0) & (\stack|S20|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U1|dffs\(2),
	datab => \stack|S21|U1|dffs\(2),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~100_combout\);

-- Location: LCCOMB_X19_Y19_N14
\stack|M0|auto_generated|_~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~101_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~100_combout\ & ((\stack|S23|U1|dffs\(2)))) # (!\stack|M0|auto_generated|_~100_combout\ & (\stack|S22|U1|dffs\(2))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(2),
	datab => \stack|S23|U1|dffs\(2),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~100_combout\,
	combout => \stack|M0|auto_generated|_~101_combout\);

-- Location: LCCOMB_X20_Y19_N24
\stack|M0|auto_generated|_~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~102_combout\ = (card_addr(0) & ((\stack|S17|U1|dffs\(2)) # ((card_addr(1))))) # (!card_addr(0) & (((!card_addr(1) & \stack|S16|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|S17|U1|dffs\(2),
	datac => card_addr(1),
	datad => \stack|S16|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~102_combout\);

-- Location: LCCOMB_X19_Y19_N28
\stack|M0|auto_generated|_~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~103_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~102_combout\ & ((\stack|S19|U1|dffs\(2)))) # (!\stack|M0|auto_generated|_~102_combout\ & (\stack|S18|U1|dffs\(2))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S18|U1|dffs\(2),
	datab => \stack|S19|U1|dffs\(2),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~102_combout\,
	combout => \stack|M0|auto_generated|_~103_combout\);

-- Location: LCCOMB_X19_Y19_N30
\stack|M0|auto_generated|result_node[2]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~59_combout\ = (!card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~101_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~101_combout\,
	datad => \stack|M0|auto_generated|_~103_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~59_combout\);

-- Location: LCCOMB_X19_Y15_N28
\stack|M0|auto_generated|result_node[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~64_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S27|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S26|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(2),
	datab => \stack|S26|U1|dffs\(2),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[2]~64_combout\);

-- Location: LCCOMB_X19_Y15_N30
\stack|M0|auto_generated|result_node[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~63_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S25|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S24|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S25|U1|dffs\(2),
	datab => \stack|S24|U1|dffs\(2),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[2]~63_combout\);

-- Location: LCCOMB_X20_Y15_N26
\stack|S30|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S29|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S31|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S29|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(2),
	datab => \stack|S31|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S30|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y15_N16
\stack|S30|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[2]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S30|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y15_N17
\stack|S30|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[30]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(2));

-- Location: LCCOMB_X20_Y15_N4
\stack|S31|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S30|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S32|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S30|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => \stack|S30|U1|dffs\(2),
	datad => stack_mode(0),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y15_N14
\stack|S31|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[2]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S31|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S31|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y15_N15
\stack|S31|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[31]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(2));

-- Location: LCCOMB_X20_Y15_N8
\stack|M0|auto_generated|result_node[2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~61_combout\ = (card_addr(1) & ((card_addr(0) & ((\stack|S31|U1|dffs\(2)))) # (!card_addr(0) & (\stack|S30|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(2),
	datab => \stack|S31|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[2]~61_combout\);

-- Location: LCCOMB_X20_Y19_N0
\stack|M0|auto_generated|result_node[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~62_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[2]~60_combout\) # (\stack|M0|auto_generated|result_node[2]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[2]~60_combout\,
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|result_node[2]~61_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~62_combout\);

-- Location: LCCOMB_X20_Y19_N10
\stack|M0|auto_generated|result_node[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~65_combout\ = (\stack|M0|auto_generated|result_node[2]~62_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[2]~64_combout\) # (\stack|M0|auto_generated|result_node[2]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => \stack|M0|auto_generated|result_node[2]~64_combout\,
	datac => \stack|M0|auto_generated|result_node[2]~63_combout\,
	datad => \stack|M0|auto_generated|result_node[2]~62_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~65_combout\);

-- Location: LCCOMB_X20_Y19_N16
\stack|M0|auto_generated|result_node[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~66_combout\ = (card_addr(4) & ((\stack|M0|auto_generated|result_node[2]~59_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[2]~59_combout\,
	datad => \stack|M0|auto_generated|result_node[2]~65_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~66_combout\);

-- Location: LCCOMB_X19_Y16_N12
\stack|S40|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S39|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S41|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S39|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S41|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => \stack|S39|U1|dffs\(2),
	datad => stack_mode(0),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X23_Y15_N0
\stack|S40|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[2]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S40|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y15_N1
\stack|S40|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[40]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(2));

-- Location: LCCOMB_X20_Y16_N24
\stack|S39|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S38|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S40|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S38|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S40|U1|dffs\(2),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y20_N8
\stack|S39|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[2]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S39|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y20_N9
\stack|S39|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[39]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(2));

-- Location: LCCOMB_X20_Y16_N2
\stack|S37|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S36|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S38|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S36|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => \stack|S38|U1|dffs\(2),
	datad => stack_mode(0),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y16_N22
\stack|S37|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[2]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S37|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y16_N23
\stack|S37|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(2));

-- Location: LCCOMB_X20_Y16_N4
\stack|S38|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S37|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S39|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S37|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S37|U1|dffs\(2),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y20_N22
\stack|S38|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[2]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S38|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S38|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y20_N23
\stack|S38|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[38]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(2));

-- Location: LCCOMB_X20_Y16_N28
\stack|M0|auto_generated|_~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~87_combout\ = (card_addr(0) & (((\stack|S37|U1|dffs\(2)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S36|U1|dffs\(2) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(2),
	datab => \stack|S37|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~87_combout\);

-- Location: LCCOMB_X20_Y16_N6
\stack|M0|auto_generated|_~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~88_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~87_combout\ & (\stack|S39|U1|dffs\(2))) # (!\stack|M0|auto_generated|_~87_combout\ & ((\stack|S38|U1|dffs\(2)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S39|U1|dffs\(2),
	datac => \stack|S38|U1|dffs\(2),
	datad => \stack|M0|auto_generated|_~87_combout\,
	combout => \stack|M0|auto_generated|_~88_combout\);

-- Location: LCCOMB_X20_Y19_N26
\stack|M0|auto_generated|_~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~89_combout\ = (!card_addr(3) & (card_addr(5) & (card_addr(2) & \stack|M0|auto_generated|_~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(5),
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|_~88_combout\,
	combout => \stack|M0|auto_generated|_~89_combout\);

-- Location: LCCOMB_X21_Y18_N28
\stack|S47|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[2]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S47|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y18_N29
\stack|S47|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[47]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(2));

-- Location: LCCOMB_X20_Y18_N14
\stack|S46|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S45|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S47|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S45|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S45|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => \stack|S47|U1|dffs\(2),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X21_Y18_N26
\stack|S46|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[2]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S46|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X21_Y18_N27
\stack|S46|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[46]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(2));

-- Location: LCCOMB_X20_Y14_N8
\stack|S45|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S44|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S46|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S44|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S44|U1|dffs\(2),
	datac => \stack|S46|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S45|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y14_N0
\stack|S45|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[2]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S45|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S45|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y14_N1
\stack|S45|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[45]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(2));

-- Location: LCCOMB_X20_Y14_N22
\stack|S44|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S43|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S45|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S43|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S45|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S44|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y14_N18
\stack|S44|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[2]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S44|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y14_N19
\stack|S44|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[44]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(2));

-- Location: LCCOMB_X21_Y16_N24
\stack|M0|auto_generated|_~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~93_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S45|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S44|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S45|U1|dffs\(2),
	datab => card_addr(0),
	datac => card_addr(1),
	datad => \stack|S44|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~93_combout\);

-- Location: LCCOMB_X21_Y16_N6
\stack|M0|auto_generated|_~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~94_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S47|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S46|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => card_addr(1),
	datac => \stack|S47|U1|dffs\(2),
	datad => \stack|S46|U1|dffs\(2),
	combout => \stack|M0|auto_generated|_~94_combout\);

-- Location: LCCOMB_X21_Y16_N20
\stack|M0|auto_generated|_~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~95_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|_~93_combout\) # (\stack|M0|auto_generated|_~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~93_combout\,
	datad => \stack|M0|auto_generated|_~94_combout\,
	combout => \stack|M0|auto_generated|_~95_combout\);

-- Location: LCCOMB_X23_Y15_N14
\stack|S42|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[2]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S42|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y15_N15
\stack|S42|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[42]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(2));

-- Location: LCCOMB_X22_Y15_N4
\stack|M0|auto_generated|_~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~97_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S43|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S42|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(2),
	datab => \stack|S42|U1|dffs\(2),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~97_combout\);

-- Location: LCCOMB_X21_Y16_N8
\stack|M0|auto_generated|_~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~98_combout\ = (\stack|M0|auto_generated|_~95_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|_~96_combout\) # (\stack|M0|auto_generated|_~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~96_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~95_combout\,
	datad => \stack|M0|auto_generated|_~97_combout\,
	combout => \stack|M0|auto_generated|_~98_combout\);

-- Location: LCCOMB_X20_Y15_N18
\stack|S33|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S32|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S34|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S32|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => \stack|S34|U1|dffs\(2),
	datad => stack_mode(0),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y13_N0
\stack|S33|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[2]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S33|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y13_N1
\stack|S33|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[33]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(2));

-- Location: LCCOMB_X20_Y15_N0
\stack|S34|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S33|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S35|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S33|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S33|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S34|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X20_Y17_N4
\stack|S34|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[2]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S34|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X20_Y17_N5
\stack|S34|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[34]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(2));

-- Location: LCCOMB_X20_Y15_N28
\stack|S32|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S31|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S33|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S31|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S31|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S32|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X16_Y15_N24
\stack|S32|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[2]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S32|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X16_Y15_N25
\stack|S32|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[32]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(2));

-- Location: LCCOMB_X20_Y15_N12
\stack|M0|auto_generated|_~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~90_combout\ = (card_addr(0) & ((\stack|S33|U1|dffs\(2)) # ((card_addr(1))))) # (!card_addr(0) & (((\stack|S32|U1|dffs\(2) & !card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(2),
	datab => \stack|S32|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~90_combout\);

-- Location: LCCOMB_X20_Y15_N22
\stack|M0|auto_generated|_~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~91_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~90_combout\ & (\stack|S35|U1|dffs\(2))) # (!\stack|M0|auto_generated|_~90_combout\ & ((\stack|S34|U1|dffs\(2)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(2),
	datab => card_addr(1),
	datac => \stack|S34|U1|dffs\(2),
	datad => \stack|M0|auto_generated|_~90_combout\,
	combout => \stack|M0|auto_generated|_~91_combout\);

-- Location: LCCOMB_X20_Y19_N28
\stack|M0|auto_generated|_~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~92_combout\ = (card_addr(5) & ((card_addr(4)) # ((\stack|M0|auto_generated|_~12_combout\ & \stack|M0|auto_generated|_~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => \stack|M0|auto_generated|_~12_combout\,
	datac => card_addr(5),
	datad => \stack|M0|auto_generated|_~91_combout\,
	combout => \stack|M0|auto_generated|_~92_combout\);

-- Location: LCCOMB_X20_Y19_N30
\stack|M0|auto_generated|_~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~99_combout\ = (\stack|M0|auto_generated|_~89_combout\) # ((\stack|M0|auto_generated|_~92_combout\) # ((\stack|M0|auto_generated|_~25_combout\ & \stack|M0|auto_generated|_~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~25_combout\,
	datab => \stack|M0|auto_generated|_~89_combout\,
	datac => \stack|M0|auto_generated|_~98_combout\,
	datad => \stack|M0|auto_generated|_~92_combout\,
	combout => \stack|M0|auto_generated|_~99_combout\);

-- Location: LCCOMB_X20_Y19_N18
\stack|M0|auto_generated|result_node[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~67_combout\ = (\stack|M0|auto_generated|result_node[2]~66_combout\ & !\stack|M0|auto_generated|_~99_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack|M0|auto_generated|result_node[2]~66_combout\,
	datad => \stack|M0|auto_generated|_~99_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~67_combout\);

-- Location: LCCOMB_X25_Y19_N0
\stack|S4|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S3|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S5|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S3|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(2),
	datab => \stack|S3|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y19_N14
\stack|S4|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[2]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S4|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X25_Y19_N15
\stack|S4|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N24
\stack|S3|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S2|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S4|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S2|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S2|U1|dffs\(2),
	datac => \stack|S4|U1|dffs\(2),
	datad => stack_mode(0),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y15_N20
\stack|S3|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[2]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S3|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X25_Y15_N21
\stack|S3|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N12
\stack|S2|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S1|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S3|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S1|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S3|U1|dffs\(2),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X26_Y18_N0
\stack|S2|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[2]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S2|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X26_Y18_N1
\stack|S2|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(2));

-- Location: LCCOMB_X26_Y18_N30
\stack|S1|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S0|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S2|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S0|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S0|U1|dffs\(2),
	datab => \stack|S2|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S1|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y15_N6
\stack|S1|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[2]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S1|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X25_Y15_N7
\stack|S1|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N26
\stack|M0|auto_generated|_~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~83_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S1|U1|dffs\(2)))) # (!card_addr(0) & (\stack|S0|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S0|U1|dffs\(2),
	datab => \stack|S1|U1|dffs\(2),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~83_combout\);

-- Location: LCCOMB_X25_Y19_N4
\stack|M0|auto_generated|_~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~84_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~83_combout\ & (\stack|S3|U1|dffs\(2))) # (!\stack|M0|auto_generated|_~83_combout\ & ((\stack|S2|U1|dffs\(2)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(2),
	datab => \stack|S2|U1|dffs\(2),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~83_combout\,
	combout => \stack|M0|auto_generated|_~84_combout\);

-- Location: LCCOMB_X25_Y19_N10
\stack|S8|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S7|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S9|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S7|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(2),
	datab => \stack|S7|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X26_Y19_N12
\stack|S8|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[2]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S8|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X26_Y19_N13
\stack|S8|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N22
\stack|S5|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S4|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S6|U1|dffs\(2)))))) # (!\stack_en~regout\ & (((\stack|S4|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S4|U1|dffs\(2),
	datad => \stack|S6|U1|dffs\(2),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y19_N20
\stack|S5|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[2]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S5|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X25_Y19_N21
\stack|S5|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N28
\stack|S6|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S5|U1|dffs\(2)))) # (!stack_mode(0) & (\stack|S7|U1|dffs\(2))))) # (!\stack_en~regout\ & (((\stack|S5|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S7|U1|dffs\(2),
	datac => \stack|S5|U1|dffs\(2),
	datad => stack_mode(0),
	combout => \stack|S6|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y18_N0
\stack|S6|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[2]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S6|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X24_Y18_N1
\stack|S6|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N2
\stack|S7|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S6|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S8|U1|dffs\(2))) # (!\stack_en~regout\ & ((\stack|S6|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S8|U1|dffs\(2),
	datac => \stack_en~regout\,
	datad => \stack|S6|U1|dffs\(2),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X26_Y17_N24
\stack|S7|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[2]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S7|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X26_Y17_N25
\stack|S7|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[7]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(2));

-- Location: LCCOMB_X25_Y19_N6
\stack|M0|auto_generated|_~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~81_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S5|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S4|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(2),
	datab => \stack|S4|U1|dffs\(2),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~81_combout\);

-- Location: LCCOMB_X25_Y19_N8
\stack|M0|auto_generated|_~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~82_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~81_combout\ & ((\stack|S7|U1|dffs\(2)))) # (!\stack|M0|auto_generated|_~81_combout\ & (\stack|S6|U1|dffs\(2))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(2),
	datab => \stack|S7|U1|dffs\(2),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~81_combout\,
	combout => \stack|M0|auto_generated|_~82_combout\);

-- Location: LCCOMB_X20_Y19_N14
\stack|M0|auto_generated|result_node[2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~50_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~82_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~84_combout\,
	datad => \stack|M0|auto_generated|_~82_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~50_combout\);

-- Location: LCCOMB_X24_Y19_N18
\stack|S15|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S14|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S16|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S14|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(2),
	datab => \stack|S16|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S15|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y18_N22
\stack|S15|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[2]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S15|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S15|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X24_Y18_N23
\stack|S15|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(2));

-- Location: LCCOMB_X24_Y19_N22
\stack|M0|auto_generated|result_node[2]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~54_combout\ = (card_addr(2) & ((card_addr(0) & ((\stack|S15|U1|dffs\(2)))) # (!card_addr(0) & (\stack|S14|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(2),
	datab => \stack|S15|U1|dffs\(2),
	datac => card_addr(0),
	datad => card_addr(2),
	combout => \stack|M0|auto_generated|result_node[2]~54_combout\);

-- Location: LCCOMB_X23_Y19_N10
\stack|M0|auto_generated|result_node[2]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~52_combout\ = (!card_addr(2) & ((card_addr(0) & (\stack|S9|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S8|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(2),
	datab => \stack|S8|U1|dffs\(2),
	datac => card_addr(2),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[2]~52_combout\);

-- Location: LCCOMB_X24_Y16_N22
\stack|S10|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S9|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S11|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S9|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(2),
	datab => stack_mode(0),
	datac => \stack|S11|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S10|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X25_Y16_N22
\stack|S10|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[2]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S10|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X25_Y16_N23
\stack|S10|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(2));

-- Location: LCCOMB_X24_Y19_N14
\stack|S11|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S10|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S12|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S10|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S10|U1|dffs\(2),
	datac => \stack|S12|U1|dffs\(2),
	datad => \stack_en~regout\,
	combout => \stack|S11|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y16_N20
\stack|S11|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[2]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S11|U1|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N10
\stack|enableArray[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|enableArray[11]~40_combout\ = (\stack_en~regout\ & ((stack_mode(0)) # (\stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|E0|crc_table|altsyncram_component|auto_generated|q_a\(11),
	combout => \stack|enableArray[11]~40_combout\);

-- Location: LCFF_X24_Y16_N21
\stack|S11|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[2]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(2));

-- Location: LCCOMB_X24_Y19_N0
\stack|S14|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (\stack|S13|U1|dffs\(2))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S15|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S13|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(2),
	datab => \stack|S15|U1|dffs\(2),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S14|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y19_N10
\stack|S14|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[2]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S14|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X24_Y19_N11
\stack|S14|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(2));

-- Location: LCCOMB_X24_Y19_N24
\stack|S13|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[2]~3_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S12|U1|dffs\(2))) # (!stack_mode(0) & ((\stack|S14|U1|dffs\(2)))))) # (!\stack_en~regout\ & (\stack|S12|U1|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(2),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S14|U1|dffs\(2),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X23_Y17_N20
\stack|S13|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[2]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S13|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X23_Y17_N21
\stack|S13|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(2));

-- Location: LCCOMB_X24_Y19_N2
\stack|S12|U0|$00000|auto_generated|result_node[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[2]~3_combout\ = (stack_mode(0) & (((\stack|S11|U1|dffs\(2))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S13|U1|dffs\(2)))) # (!\stack_en~regout\ & (\stack|S11|U1|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S11|U1|dffs\(2),
	datad => \stack|S13|U1|dffs\(2),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X24_Y19_N20
\stack|S12|U1|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[2]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[2]~3_combout\,
	combout => \stack|S12|U1|dffs[2]~feeder_combout\);

-- Location: LCFF_X24_Y19_N21
\stack|S12|U1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[2]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(2));

-- Location: LCCOMB_X22_Y16_N0
\stack|M0|auto_generated|result_node[2]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~51_combout\ = (card_addr(2) & ((card_addr(0) & (\stack|S13|U1|dffs\(2))) # (!card_addr(0) & ((\stack|S12|U1|dffs\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(2),
	datab => card_addr(0),
	datac => card_addr(2),
	datad => \stack|S12|U1|dffs\(2),
	combout => \stack|M0|auto_generated|result_node[2]~51_combout\);

-- Location: LCCOMB_X20_Y19_N12
\stack|M0|auto_generated|result_node[2]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~53_combout\ = (!card_addr(1) & ((\stack|M0|auto_generated|result_node[2]~52_combout\) # (\stack|M0|auto_generated|result_node[2]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datac => \stack|M0|auto_generated|result_node[2]~52_combout\,
	datad => \stack|M0|auto_generated|result_node[2]~51_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~53_combout\);

-- Location: LCCOMB_X20_Y19_N22
\stack|M0|auto_generated|result_node[2]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~56_combout\ = (\stack|M0|auto_generated|result_node[2]~53_combout\) # ((card_addr(1) & ((\stack|M0|auto_generated|result_node[2]~55_combout\) # (\stack|M0|auto_generated|result_node[2]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[2]~55_combout\,
	datab => \stack|M0|auto_generated|result_node[2]~54_combout\,
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|result_node[2]~53_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~56_combout\);

-- Location: LCCOMB_X20_Y19_N8
\stack|M0|auto_generated|result_node[2]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[2]~57_combout\ = (\stack|M0|auto_generated|result_node[5]~9_combout\ & ((\stack|M0|auto_generated|result_node[2]~50_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~9_combout\,
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[2]~50_combout\,
	datad => \stack|M0|auto_generated|result_node[2]~56_combout\,
	combout => \stack|M0|auto_generated|result_node[2]~57_combout\);

-- Location: LCCOMB_X21_Y19_N30
\stack|M0|auto_generated|result_node[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node\(2) = (\stack|M0|auto_generated|result_node[2]~57_combout\) # ((\stack|M0|auto_generated|_~99_combout\ & (\stack|M0|auto_generated|_~153_combout\)) # (!\stack|M0|auto_generated|_~99_combout\ & 
-- ((\stack|M0|auto_generated|result_node[2]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~153_combout\,
	datab => \stack|M0|auto_generated|result_node[2]~66_combout\,
	datac => \stack|M0|auto_generated|_~99_combout\,
	datad => \stack|M0|auto_generated|result_node[2]~57_combout\,
	combout => \stack|M0|auto_generated|result_node\(2));

-- Location: LCCOMB_X22_Y19_N0
\rules|DEC2|A1|b2v_inst3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst3|Cout~0_combout\ = (\stack|M0|auto_generated|result_node[1]~101_combout\ & ((\stack|M0|auto_generated|result_node\(3)) # ((\stack|M0|auto_generated|result_node[0]~84_combout\ & \stack|M0|auto_generated|result_node\(2))))) # 
-- (!\stack|M0|auto_generated|result_node[1]~101_combout\ & (\stack|M0|auto_generated|result_node[0]~84_combout\ & (\stack|M0|auto_generated|result_node\(2) & \stack|M0|auto_generated|result_node\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[1]~101_combout\,
	datab => \stack|M0|auto_generated|result_node[0]~84_combout\,
	datac => \stack|M0|auto_generated|result_node\(2),
	datad => \stack|M0|auto_generated|result_node\(3),
	combout => \rules|DEC2|A1|b2v_inst3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\rules|DEC2|A1|b2v_inst4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst4|Cout~0_combout\ = (\stack|M0|auto_generated|result_node[4]~16_combout\ & ((\stack|M0|auto_generated|result_node[2]~58_combout\) # ((\stack|M0|auto_generated|result_node[2]~67_combout\) # 
-- (\rules|DEC2|A1|b2v_inst3|Cout~0_combout\)))) # (!\stack|M0|auto_generated|result_node[4]~16_combout\ & (\rules|DEC2|A1|b2v_inst3|Cout~0_combout\ & ((\stack|M0|auto_generated|result_node[2]~58_combout\) # 
-- (\stack|M0|auto_generated|result_node[2]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[2]~58_combout\,
	datab => \stack|M0|auto_generated|result_node[2]~67_combout\,
	datac => \stack|M0|auto_generated|result_node[4]~16_combout\,
	datad => \rules|DEC2|A1|b2v_inst3|Cout~0_combout\,
	combout => \rules|DEC2|A1|b2v_inst4|Cout~0_combout\);

-- Location: LCCOMB_X21_Y19_N22
\rules|DEC2|A1|b2v_inst5|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst5|Cout~1_combout\ = (\stack|M0|auto_generated|result_node[5]~49_combout\ & ((\rules|DEC2|A1|b2v_inst5|Cout~0_combout\) # (\rules|DEC2|A1|b2v_inst4|Cout~0_combout\))) # (!\stack|M0|auto_generated|result_node[5]~49_combout\ & 
-- (\rules|DEC2|A1|b2v_inst5|Cout~0_combout\ & \rules|DEC2|A1|b2v_inst4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|result_node[5]~49_combout\,
	datac => \rules|DEC2|A1|b2v_inst5|Cout~0_combout\,
	datad => \rules|DEC2|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC2|A1|b2v_inst5|Cout~1_combout\);

-- Location: LCCOMB_X21_Y19_N20
\rules|DEC2|A5|b2v_inst3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A5|b2v_inst3|S~0_combout\ = (\stack|M0|auto_generated|result_node[5]~49_combout\ & ((\stack|M0|auto_generated|result_node[4]~16_combout\) # (\rules|DEC2|A1|b2v_inst5|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|result_node[5]~49_combout\,
	datac => \stack|M0|auto_generated|result_node[4]~16_combout\,
	datad => \rules|DEC2|A1|b2v_inst5|Cout~1_combout\,
	combout => \rules|DEC2|A5|b2v_inst3|S~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\rules|DEC2|A4|b2v_inst2|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A4|b2v_inst2|S~0_combout\ = (\stack|M0|auto_generated|result_node[4]~16_combout\ & ((!\rules|DEC2|A1|b2v_inst5|Cout~1_combout\))) # (!\stack|M0|auto_generated|result_node[4]~16_combout\ & ((\rules|DEC2|A1|b2v_inst5|Cout~1_combout\) # 
-- (!\stack|M0|auto_generated|result_node[5]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|result_node[5]~49_combout\,
	datac => \stack|M0|auto_generated|result_node[4]~16_combout\,
	datad => \rules|DEC2|A1|b2v_inst5|Cout~1_combout\,
	combout => \rules|DEC2|A4|b2v_inst2|S~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\rules|DEC2|A1|b2v_inst7|S~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst7|S~8_combout\ = (\stack|M0|auto_generated|result_node[3]~24_combout\) # ((\stack|M0|auto_generated|_~55_combout\ & (\stack|M0|auto_generated|_~151_combout\)) # (!\stack|M0|auto_generated|_~55_combout\ & 
-- ((\stack|M0|auto_generated|result_node[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~55_combout\,
	datab => \stack|M0|auto_generated|_~151_combout\,
	datac => \stack|M0|auto_generated|result_node[3]~24_combout\,
	datad => \stack|M0|auto_generated|result_node[3]~32_combout\,
	combout => \rules|DEC2|A1|b2v_inst7|S~8_combout\);

-- Location: LCCOMB_X22_Y19_N16
\rules|DEC2|A1|b2v_inst7|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst7|S~combout\ = (\stack|M0|auto_generated|result_node[5]~49_combout\ & (((!\rules|DEC2|A1|b2v_inst7|S~8_combout\ & !\rules|DEC2|A1|b2v_inst4|Cout~0_combout\)) # (!\stack|M0|auto_generated|result_node[4]~16_combout\))) # 
-- (!\stack|M0|auto_generated|result_node[5]~49_combout\ & (\stack|M0|auto_generated|result_node[4]~16_combout\ & (\rules|DEC2|A1|b2v_inst7|S~8_combout\ & \rules|DEC2|A1|b2v_inst4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~49_combout\,
	datab => \stack|M0|auto_generated|result_node[4]~16_combout\,
	datac => \rules|DEC2|A1|b2v_inst7|S~8_combout\,
	datad => \rules|DEC2|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC2|A1|b2v_inst7|S~combout\);

-- Location: LCCOMB_X22_Y19_N26
\rules|DEC2|A5|b2v_inst1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A5|b2v_inst1|Cout~0_combout\ = (\stack|M0|auto_generated|result_node[0]~84_combout\ & ((\rules|DEC2|A1|b2v_inst7|S~combout\ & (\stack|M0|auto_generated|result_node[1]~101_combout\)) # (!\rules|DEC2|A1|b2v_inst7|S~combout\ & 
-- ((\rules|DEC2|A1|b2v_inst6|S~combout\))))) # (!\stack|M0|auto_generated|result_node[0]~84_combout\ & (\stack|M0|auto_generated|result_node[1]~101_combout\ & (\rules|DEC2|A1|b2v_inst7|S~combout\ $ (\rules|DEC2|A1|b2v_inst6|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[1]~101_combout\,
	datab => \stack|M0|auto_generated|result_node[0]~84_combout\,
	datac => \rules|DEC2|A1|b2v_inst7|S~combout\,
	datad => \rules|DEC2|A1|b2v_inst6|S~combout\,
	combout => \rules|DEC2|A5|b2v_inst1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\rules|DEC2|A5|b2v_inst2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A5|b2v_inst2|Cout~0_combout\ = (\rules|DEC2|A4|b2v_inst2|S~0_combout\ & (\rules|DEC2|A5|b2v_inst1|Cout~0_combout\ & ((\stack|M0|auto_generated|result_node[2]~58_combout\) # (\stack|M0|auto_generated|result_node[2]~67_combout\)))) # 
-- (!\rules|DEC2|A4|b2v_inst2|S~0_combout\ & ((\stack|M0|auto_generated|result_node[2]~58_combout\) # ((\stack|M0|auto_generated|result_node[2]~67_combout\) # (\rules|DEC2|A5|b2v_inst1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[2]~58_combout\,
	datab => \stack|M0|auto_generated|result_node[2]~67_combout\,
	datac => \rules|DEC2|A4|b2v_inst2|S~0_combout\,
	datad => \rules|DEC2|A5|b2v_inst1|Cout~0_combout\,
	combout => \rules|DEC2|A5|b2v_inst2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\rules|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal3~2_combout\ = \rules|DEC1|A5|b2v_inst3|S~1_combout\ $ (\stack|M0|auto_generated|result_node\(3) $ (\rules|DEC2|A5|b2v_inst3|S~0_combout\ $ (\rules|DEC2|A5|b2v_inst2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A5|b2v_inst3|S~1_combout\,
	datab => \stack|M0|auto_generated|result_node\(3),
	datac => \rules|DEC2|A5|b2v_inst3|S~0_combout\,
	datad => \rules|DEC2|A5|b2v_inst2|Cout~0_combout\,
	combout => \rules|Equal3~2_combout\);

-- Location: LCCOMB_X22_Y19_N6
\rules|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal3~3_combout\ = (\rules|Equal3~1_combout\ & (!\rules|Equal3~2_combout\ & (\rules|DEC2|A5|b2v_inst2|S~combout\ $ (\rules|DEC1|A5|b2v_inst2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC2|A5|b2v_inst2|S~combout\,
	datab => \rules|DEC1|A5|b2v_inst2|S~combout\,
	datac => \rules|Equal3~1_combout\,
	datad => \rules|Equal3~2_combout\,
	combout => \rules|Equal3~3_combout\);

-- Location: LCCOMB_X22_Y19_N20
\rules|DEC2|A5|b2v_inst2|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A5|b2v_inst2|S~combout\ = \stack|M0|auto_generated|result_node\(2) $ (\rules|DEC2|A4|b2v_inst2|S~0_combout\ $ (\rules|DEC2|A5|b2v_inst1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node\(2),
	datab => \rules|DEC2|A4|b2v_inst2|S~0_combout\,
	datad => \rules|DEC2|A5|b2v_inst1|Cout~0_combout\,
	combout => \rules|DEC2|A5|b2v_inst2|S~combout\);

-- Location: LCCOMB_X22_Y19_N18
\rules|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal0~0_combout\ = (\rules|DEC2|A5|b2v_inst1|S~combout\ & (\stack|M0|auto_generated|result_node\(3) $ (\rules|DEC2|A5|b2v_inst3|S~0_combout\ $ (!\rules|DEC2|A5|b2v_inst2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC2|A5|b2v_inst1|S~combout\,
	datab => \stack|M0|auto_generated|result_node\(3),
	datac => \rules|DEC2|A5|b2v_inst3|S~0_combout\,
	datad => \rules|DEC2|A5|b2v_inst2|Cout~0_combout\,
	combout => \rules|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\rules|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal0~1_combout\ = (!\rules|DEC2|A5|b2v_inst2|S~combout\ & (\rules|Equal0~0_combout\ & (\stack|M0|auto_generated|result_node[0]~84_combout\ $ (\rules|DEC2|A1|b2v_inst6|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[0]~84_combout\,
	datab => \rules|DEC2|A1|b2v_inst6|S~combout\,
	datac => \rules|DEC2|A5|b2v_inst2|S~combout\,
	datad => \rules|Equal0~0_combout\,
	combout => \rules|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y19_N6
\state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~6_combout\ = (\state~5_combout\ & (!\rules|Equal3~3_combout\ & !\rules|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~5_combout\,
	datac => \rules|Equal3~3_combout\,
	datad => \rules|Equal0~1_combout\,
	combout => \state~6_combout\);

-- Location: LCCOMB_X23_Y19_N24
\state[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[2]~10_combout\ = (!\state~7_combout\ & (\state[3]~4_combout\ & (!\state[3]~9_combout\ & !\state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~7_combout\,
	datab => \state[3]~4_combout\,
	datac => \state[3]~9_combout\,
	datad => \state~6_combout\,
	combout => \state[2]~10_combout\);

-- Location: LCFF_X23_Y19_N25
\state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state[2]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(2));

-- Location: LCCOMB_X19_Y21_N28
\Mux41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (!state(4) & (!\Mux41~2_combout\ & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datac => \Mux41~2_combout\,
	datad => state(2),
	combout => \Mux41~3_combout\);

-- Location: LCFF_X19_Y21_N29
\state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux41~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LCCOMB_X19_Y21_N20
\state[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[3]~8_combout\ = (state(0) & ((state(3)))) # (!state(0) & (!\turn~combout\ & !state(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(0),
	datac => \turn~combout\,
	datad => state(3),
	combout => \state[3]~8_combout\);

-- Location: LCCOMB_X19_Y21_N18
\state[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[3]~9_combout\ = (\state[1]~2_combout\ & (\state[3]~8_combout\ & ((\Equal0~3_combout\) # (!state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~2_combout\,
	datab => state(0),
	datac => \state[3]~8_combout\,
	datad => \Equal0~3_combout\,
	combout => \state[3]~9_combout\);

-- Location: LCCOMB_X23_Y19_N30
\state[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[3]~16_combout\ = (\state[3]~9_combout\) # ((\state[3]~15_combout\ & (!\rules|Equal3~3_combout\ & !\rules|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[3]~15_combout\,
	datab => \state[3]~9_combout\,
	datac => \rules|Equal3~3_combout\,
	datad => \rules|Equal0~1_combout\,
	combout => \state[3]~16_combout\);

-- Location: LCCOMB_X23_Y19_N20
\state[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[3]~17_combout\ = (\state[3]~16_combout\ & (((state(3))))) # (!\state[3]~16_combout\ & (\state[3]~4_combout\ & ((\state~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[3]~4_combout\,
	datab => \state[3]~16_combout\,
	datac => state(3),
	datad => \state~6_combout\,
	combout => \state[3]~17_combout\);

-- Location: LCFF_X23_Y19_N21
\state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state[3]~17_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(3));

-- Location: LCCOMB_X23_Y21_N6
\state[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[3]~4_combout\ = (state(0) & (!state(3) & (state(1) & !\state[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(3),
	datac => state(1),
	datad => \state[1]~3_combout\,
	combout => \state[3]~4_combout\);

-- Location: LCCOMB_X19_Y21_N26
\state[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~13_combout\ = (\state[1]~2_combout\ & (!state(0) & (\turn~combout\ & !state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~2_combout\,
	datab => state(0),
	datac => \turn~combout\,
	datad => state(3),
	combout => \state[1]~13_combout\);

-- Location: LCCOMB_X23_Y19_N22
\state[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \state[1]~14_combout\ = (\state[1]~13_combout\) # ((!\state[1]~18_combout\ & (\state[3]~4_combout\ & \state~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~18_combout\,
	datab => \state[3]~4_combout\,
	datac => \state[1]~13_combout\,
	datad => \state~7_combout\,
	combout => \state[1]~14_combout\);

-- Location: LCFF_X23_Y19_N23
\state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \state[1]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LCFF_X18_Y19_N15
\card_num[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_num~4_combout\,
	sclr => ALT_INV_state(1),
	ena => \card_num[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_num(3));

-- Location: LCFF_X20_Y19_N21
\card_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => card_num(3),
	sload => VCC,
	ena => \card_addr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_addr(3));

-- Location: LCCOMB_X25_Y16_N4
\stack|S9|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S8|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S10|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S8|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U1|dffs\(4),
	datab => \stack|S8|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\stack|S9|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[4]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S9|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X24_Y16_N9
\stack|S9|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(4));

-- Location: LCCOMB_X26_Y19_N28
\stack|S8|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S7|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S9|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S7|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S9|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S7|U1|dffs\(4),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X26_Y19_N16
\stack|S8|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[4]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S8|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X26_Y19_N17
\stack|S8|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(4));

-- Location: LCCOMB_X26_Y17_N16
\stack|S6|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[4]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S6|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X26_Y17_N17
\stack|S6|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(4));

-- Location: LCCOMB_X26_Y19_N30
\stack|S7|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S6|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S8|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S6|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S8|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S6|U1|dffs\(4),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X26_Y17_N14
\stack|S7|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[4]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S7|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S7|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X26_Y17_N15
\stack|S7|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[7]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(4));

-- Location: LCCOMB_X26_Y20_N4
\stack|S4|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[4]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S4|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X26_Y20_N5
\stack|S4|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(4));

-- Location: LCCOMB_X26_Y20_N18
\stack|S5|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S4|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S6|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S4|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S6|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S4|U1|dffs\(4),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X25_Y17_N24
\stack|S5|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[4]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S5|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X25_Y17_N25
\stack|S5|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(4));

-- Location: LCCOMB_X25_Y20_N28
\stack|M0|auto_generated|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~33_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S5|U1|dffs\(4)))) # (!card_addr(0) & (\stack|S4|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(4),
	datab => \stack|S5|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~33_combout\);

-- Location: LCCOMB_X25_Y20_N14
\stack|M0|auto_generated|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~34_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~33_combout\ & (\stack|S7|U1|dffs\(4))) # (!\stack|M0|auto_generated|_~33_combout\ & ((\stack|S6|U1|dffs\(4)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S7|U1|dffs\(4),
	datac => \stack|S6|U1|dffs\(4),
	datad => \stack|M0|auto_generated|_~33_combout\,
	combout => \stack|M0|auto_generated|_~34_combout\);

-- Location: LCCOMB_X26_Y20_N22
\stack|S3|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S2|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S4|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S2|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S4|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S2|U1|dffs\(4),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\stack|S3|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[4]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S3|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S3|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X27_Y20_N27
\stack|S3|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_in[4]~I\ : cycloneii_io
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
	padio => ww_card_in(4),
	combout => \card_in~combout\(4));

-- Location: LCCOMB_X26_Y20_N20
\stack|S0|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\card_in~combout\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S1|U1|dffs\(4))) # (!\stack_en~regout\ & ((\card_in~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \card_in~combout\(4),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X25_Y20_N30
\stack|S0|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U1|dffs[4]~feeder_combout\ = \stack|S0|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S0|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S0|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X25_Y20_N31
\stack|S0|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(4));

-- Location: LCCOMB_X25_Y20_N22
\stack|S1|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S0|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S2|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S0|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S0|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S2|U1|dffs\(4),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X25_Y20_N8
\stack|S1|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[4]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S1|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X25_Y20_N9
\stack|S1|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(4));

-- Location: LCCOMB_X26_Y20_N26
\stack|S2|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S1|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S3|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S1|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S3|U1|dffs\(4),
	datad => \stack|S1|U1|dffs\(4),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\stack|S2|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[4]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S2|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X26_Y20_N31
\stack|S2|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(4));

-- Location: LCCOMB_X25_Y20_N0
\stack|M0|auto_generated|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~35_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S1|U1|dffs\(4))) # (!card_addr(0) & ((\stack|S0|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(4),
	datab => \stack|S0|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~35_combout\);

-- Location: LCCOMB_X25_Y20_N2
\stack|M0|auto_generated|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~36_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~35_combout\ & (\stack|S3|U1|dffs\(4))) # (!\stack|M0|auto_generated|_~35_combout\ & ((\stack|S2|U1|dffs\(4)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(4),
	datab => \stack|S2|U1|dffs\(4),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~35_combout\,
	combout => \stack|M0|auto_generated|_~36_combout\);

-- Location: LCCOMB_X25_Y20_N12
\stack|M0|auto_generated|result_node[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~15_combout\ = (!card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~34_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~34_combout\,
	datad => \stack|M0|auto_generated|_~36_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~15_combout\);

-- Location: LCCOMB_X19_Y20_N2
\stack|S20|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[4]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S20|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y20_N3
\stack|S20|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(4));

-- Location: LCCOMB_X19_Y20_N12
\stack|S19|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S18|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S20|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S18|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S20|U1|dffs\(4),
	datad => \stack|S18|U1|dffs\(4),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X19_Y17_N14
\stack|S19|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[4]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S19|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y17_N15
\stack|S19|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[19]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(4));

-- Location: LCCOMB_X19_Y20_N24
\stack|S18|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S17|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S19|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S17|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S17|U1|dffs\(4),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S19|U1|dffs\(4),
	combout => \stack|S18|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\stack|S18|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[4]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S18|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S18|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y20_N21
\stack|S18|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(4));

-- Location: LCCOMB_X19_Y20_N26
\stack|S17|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S16|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S18|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S16|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(4),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S18|U1|dffs\(4),
	combout => \stack|S17|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X19_Y17_N28
\stack|S17|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[4]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S17|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y17_N29
\stack|S17|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(4));

-- Location: LCCOMB_X23_Y18_N28
\stack|S16|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S15|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S17|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S15|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S17|U1|dffs\(4),
	datad => \stack|S15|U1|dffs\(4),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X24_Y20_N0
\stack|S16|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[4]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S16|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S16|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X24_Y20_N1
\stack|S16|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(4));

-- Location: LCCOMB_X24_Y18_N4
\stack|S15|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S14|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S16|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S14|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(4),
	datab => \stack|S16|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\stack|S15|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[4]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S15|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S15|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X24_Y18_N29
\stack|S15|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(4));

-- Location: LCCOMB_X25_Y16_N12
\stack|S11|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S10|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S12|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S10|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S12|U1|dffs\(4),
	combout => \stack|S11|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X25_Y16_N8
\stack|S11|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[4]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S11|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X25_Y16_N9
\stack|S11|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(4));

-- Location: LCCOMB_X24_Y18_N8
\stack|S12|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S11|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S13|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S11|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S11|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S13|U1|dffs\(4),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\stack|S12|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[4]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S12|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X24_Y15_N5
\stack|S12|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(4));

-- Location: LCCOMB_X24_Y18_N18
\stack|S13|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S12|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S14|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S12|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(4),
	datab => \stack|S12|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y18_N16
\stack|S13|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[4]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S13|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y18_N17
\stack|S13|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(4));

-- Location: LCCOMB_X23_Y18_N22
\stack|S14|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S13|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S15|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S13|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S13|U1|dffs\(4),
	datad => \stack|S15|U1|dffs\(4),
	combout => \stack|S14|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\stack|S14|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[4]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S14|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y14_N25
\stack|S14|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(4));

-- Location: LCCOMB_X23_Y18_N2
\stack|M0|auto_generated|result_node[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~10_combout\ = (card_addr(1) & (((\stack|S14|U1|dffs\(4)) # (card_addr(0))))) # (!card_addr(1) & (\stack|S12|U1|dffs\(4) & ((!card_addr(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(4),
	datab => \stack|S14|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[4]~10_combout\);

-- Location: LCCOMB_X23_Y18_N24
\stack|M0|auto_generated|result_node[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~11_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|result_node[4]~10_combout\ & ((\stack|S15|U1|dffs\(4)))) # (!\stack|M0|auto_generated|result_node[4]~10_combout\ & (\stack|S13|U1|dffs\(4))))) # 
-- (!card_addr(0) & (((\stack|M0|auto_generated|result_node[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(4),
	datab => \stack|S15|U1|dffs\(4),
	datac => card_addr(0),
	datad => \stack|M0|auto_generated|result_node[4]~10_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X25_Y16_N2
\stack|S10|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S9|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S11|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S9|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(4),
	datab => \stack|S11|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S10|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X25_Y16_N6
\stack|S10|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[4]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S10|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X25_Y16_N7
\stack|S10|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(4));

-- Location: LCCOMB_X25_Y18_N28
\stack|M0|auto_generated|result_node[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~12_combout\ = (card_addr(0) & (((card_addr(1))))) # (!card_addr(0) & ((card_addr(1) & ((\stack|S10|U1|dffs\(4)))) # (!card_addr(1) & (\stack|S8|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(4),
	datab => \stack|S10|U1|dffs\(4),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[4]~12_combout\);

-- Location: LCCOMB_X24_Y18_N30
\stack|M0|auto_generated|result_node[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~13_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|result_node[4]~12_combout\ & ((\stack|S11|U1|dffs\(4)))) # (!\stack|M0|auto_generated|result_node[4]~12_combout\ & (\stack|S9|U1|dffs\(4))))) # (!card_addr(0) 
-- & (((\stack|M0|auto_generated|result_node[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(4),
	datab => card_addr(0),
	datac => \stack|S11|U1|dffs\(4),
	datad => \stack|M0|auto_generated|result_node[4]~12_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~13_combout\);

-- Location: LCCOMB_X23_Y18_N10
\stack|M0|auto_generated|result_node[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~14_combout\ = (card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|result_node[4]~11_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|result_node[4]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[4]~11_combout\,
	datad => \stack|M0|auto_generated|result_node[4]~13_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~14_combout\);

-- Location: LCCOMB_X23_Y20_N30
\stack|S45|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[4]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S45|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S45|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y20_N31
\stack|S45|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[45]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N2
\stack|S46|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S45|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S47|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S45|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S45|U1|dffs\(4),
	datac => \stack|S47|U1|dffs\(4),
	datad => \stack_en~regout\,
	combout => \stack|S46|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X22_Y21_N20
\stack|S46|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[4]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S46|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S46|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y21_N21
\stack|S46|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[46]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N6
\stack|S47|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S46|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S48|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S46|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(4),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S46|U1|dffs\(4),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\stack|S47|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[4]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S47|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y20_N5
\stack|S47|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[47]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N12
\stack|S48|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S47|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S49|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S47|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S49|U1|dffs\(4),
	datac => \stack|S47|U1|dffs\(4),
	datad => \stack_en~regout\,
	combout => \stack|S48|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X27_Y20_N8
\stack|S48|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[4]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S48|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X27_Y20_N9
\stack|S48|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[48]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N22
\stack|S49|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S48|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S50|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S48|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S48|U1|dffs\(4),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X24_Y21_N16
\stack|S49|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[4]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S49|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X24_Y21_N17
\stack|S49|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[49]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(4));

-- Location: LCCOMB_X18_Y18_N6
\stack|S51|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S51|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack|S50|U1|dffs\(4) & ((stack_mode(0)) # (!\stack_en~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(4),
	datad => \stack_en~regout\,
	combout => \stack|S51|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCFF_X18_Y18_N7
\stack|S51|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S51|U0|$00000|auto_generated|result_node[4]~0_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[51]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S51|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N8
\stack|S50|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S49|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S51|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S49|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S49|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S51|U1|dffs\(4),
	combout => \stack|S50|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X18_Y18_N4
\stack|S50|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[4]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S50|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y18_N5
\stack|S50|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[50]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N20
\stack|M0|auto_generated|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~13_combout\ = (card_addr(0) & (((\stack|S49|U1|dffs\(4)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S48|U1|dffs\(4) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S48|U1|dffs\(4),
	datab => \stack|S49|U1|dffs\(4),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~13_combout\);

-- Location: LCCOMB_X23_Y20_N18
\stack|M0|auto_generated|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~14_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~13_combout\ & ((\stack|S51|U1|dffs\(4)))) # (!\stack|M0|auto_generated|_~13_combout\ & (\stack|S50|U1|dffs\(4))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S50|U1|dffs\(4),
	datac => \stack|M0|auto_generated|_~13_combout\,
	datad => \stack|S51|U1|dffs\(4),
	combout => \stack|M0|auto_generated|_~14_combout\);

-- Location: LCCOMB_X22_Y20_N0
\stack|M0|auto_generated|_~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~150_combout\ = ((!card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~14_combout\))) # (!card_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => card_addr(4),
	datad => \stack|M0|auto_generated|_~14_combout\,
	combout => \stack|M0|auto_generated|_~150_combout\);

-- Location: LCCOMB_X21_Y17_N12
\stack|S34|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[4]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S34|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y17_N13
\stack|S34|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[34]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N30
\stack|S33|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S32|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S34|U1|dffs\(4)))))) # (!\stack_en~regout\ & (((\stack|S32|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S32|U1|dffs\(4),
	datad => \stack|S34|U1|dffs\(4),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\stack|S33|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[4]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S33|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y17_N3
\stack|S33|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[33]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N24
\stack|S32|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S31|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S33|U1|dffs\(4)))))) # (!\stack_en~regout\ & (((\stack|S31|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S31|U1|dffs\(4),
	datad => \stack|S33|U1|dffs\(4),
	combout => \stack|S32|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X20_Y17_N0
\stack|S32|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[4]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S32|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y17_N1
\stack|S32|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[32]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(4));

-- Location: LCCOMB_X23_Y13_N4
\stack|S28|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S27|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S29|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S27|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S29|U1|dffs\(4),
	combout => \stack|S28|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X19_Y14_N24
\stack|S28|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[4]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S28|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y14_N25
\stack|S28|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N6
\stack|S29|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S28|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S30|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S28|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S28|U1|dffs\(4),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X22_Y14_N4
\stack|S29|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[4]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S29|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S29|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y14_N5
\stack|S29|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N10
\stack|S30|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S29|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S31|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S29|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S31|U1|dffs\(4),
	datad => \stack|S29|U1|dffs\(4),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X20_Y15_N20
\stack|S30|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[4]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S30|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y15_N21
\stack|S30|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[30]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N8
\stack|S31|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S30|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S32|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S30|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S32|U1|dffs\(4),
	datad => \stack|S30|U1|dffs\(4),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\stack|S31|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[4]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S31|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S31|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y14_N13
\stack|S31|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[31]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N16
\stack|M0|auto_generated|result_node[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~5_combout\ = (card_addr(1) & ((\stack|S31|U1|dffs\(4)))) # (!card_addr(1) & (\stack|S29|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U1|dffs\(4),
	datac => card_addr(1),
	datad => \stack|S31|U1|dffs\(4),
	combout => \stack|M0|auto_generated|result_node[4]~5_combout\);

-- Location: LCCOMB_X21_Y17_N18
\stack|M0|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~4_combout\ = (!card_addr(0) & ((card_addr(1) & ((\stack|S30|U1|dffs\(4)))) # (!card_addr(1) & (\stack|S28|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(4),
	datab => card_addr(1),
	datac => card_addr(0),
	datad => \stack|S30|U1|dffs\(4),
	combout => \stack|M0|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X21_Y17_N22
\stack|M0|auto_generated|result_node[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~6_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[4]~4_combout\) # ((card_addr(0) & \stack|M0|auto_generated|result_node[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[4]~5_combout\,
	datad => \stack|M0|auto_generated|result_node[4]~4_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~6_combout\);

-- Location: LCCOMB_X19_Y20_N28
\stack|S21|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S20|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S22|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S20|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(4),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S20|U1|dffs\(4),
	combout => \stack|S21|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X19_Y20_N16
\stack|S21|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[4]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S21|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y20_N17
\stack|S21|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(4));

-- Location: LCCOMB_X19_Y20_N30
\stack|S22|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S21|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S23|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S21|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S21|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S23|U1|dffs\(4),
	combout => \stack|S22|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X18_Y20_N20
\stack|S22|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[4]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S22|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y20_N21
\stack|S22|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(4));

-- Location: LCCOMB_X19_Y15_N8
\stack|S23|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S22|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S24|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S22|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S24|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S22|U1|dffs\(4),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X18_Y15_N16
\stack|S23|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[4]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S23|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S23|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X18_Y15_N17
\stack|S23|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(4));

-- Location: LCCOMB_X19_Y13_N4
\stack|S24|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S23|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S25|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S23|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S25|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S23|U1|dffs\(4),
	combout => \stack|S24|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\stack|S24|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[4]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S24|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S24|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X19_Y13_N13
\stack|S24|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(4));

-- Location: LCCOMB_X23_Y13_N2
\stack|S27|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S26|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S28|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S26|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S28|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S26|U1|dffs\(4),
	combout => \stack|S27|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\stack|S27|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[4]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S27|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y13_N25
\stack|S27|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(4));

-- Location: LCCOMB_X23_Y13_N26
\stack|S26|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S25|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S27|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S25|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S25|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S27|U1|dffs\(4),
	combout => \stack|S26|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\stack|S26|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[4]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S26|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X24_Y13_N5
\stack|S26|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(4));

-- Location: LCCOMB_X23_Y13_N28
\stack|S25|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S24|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S26|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S24|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S24|U1|dffs\(4),
	datac => stack_mode(0),
	datad => \stack|S26|U1|dffs\(4),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\stack|S25|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[4]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S25|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y13_N15
\stack|S25|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[4]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(4));

-- Location: LCCOMB_X23_Y13_N20
\stack|M0|auto_generated|result_node[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~1_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S27|U1|dffs\(4))) # (!card_addr(1) & ((\stack|S25|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(4),
	datab => \stack|S25|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\stack|M0|auto_generated|result_node[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~2_combout\ = (!card_addr(0) & ((card_addr(1) & (\stack|S26|U1|dffs\(4))) # (!card_addr(1) & ((\stack|S24|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(4),
	datab => \stack|S24|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[4]~2_combout\);

-- Location: LCCOMB_X23_Y13_N8
\stack|M0|auto_generated|result_node[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~3_combout\ = (!card_addr(2) & ((\stack|M0|auto_generated|result_node[4]~1_combout\) # (\stack|M0|auto_generated|result_node[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[4]~1_combout\,
	datad => \stack|M0|auto_generated|result_node[4]~2_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X23_Y20_N24
\stack|M0|auto_generated|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~17_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S17|U1|dffs\(4)))) # (!card_addr(0) & (\stack|S16|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S16|U1|dffs\(4),
	datac => \stack|S17|U1|dffs\(4),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~17_combout\);

-- Location: LCCOMB_X22_Y20_N24
\stack|M0|auto_generated|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~18_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~17_combout\ & (\stack|S19|U1|dffs\(4))) # (!\stack|M0|auto_generated|_~17_combout\ & ((\stack|S18|U1|dffs\(4)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S19|U1|dffs\(4),
	datac => \stack|S18|U1|dffs\(4),
	datad => \stack|M0|auto_generated|_~17_combout\,
	combout => \stack|M0|auto_generated|_~18_combout\);

-- Location: LCCOMB_X19_Y20_N8
\stack|M0|auto_generated|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~15_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S21|U1|dffs\(4))) # (!card_addr(0) & ((\stack|S20|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(4),
	datab => \stack|S20|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~15_combout\);

-- Location: LCCOMB_X22_Y20_N22
\stack|M0|auto_generated|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~16_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~15_combout\ & ((\stack|S23|U1|dffs\(4)))) # (!\stack|M0|auto_generated|_~15_combout\ & (\stack|S22|U1|dffs\(4))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S22|U1|dffs\(4),
	datac => \stack|S23|U1|dffs\(4),
	datad => \stack|M0|auto_generated|_~15_combout\,
	combout => \stack|M0|auto_generated|_~16_combout\);

-- Location: LCCOMB_X22_Y20_N18
\stack|M0|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~0_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~16_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~18_combout\,
	datad => \stack|M0|auto_generated|_~16_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X22_Y20_N4
\stack|M0|auto_generated|result_node[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~7_combout\ = (\stack|M0|auto_generated|result_node[4]~0_combout\) # ((card_addr(3) & ((\stack|M0|auto_generated|result_node[4]~6_combout\) # (\stack|M0|auto_generated|result_node[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => \stack|M0|auto_generated|result_node[4]~6_combout\,
	datac => \stack|M0|auto_generated|result_node[4]~3_combout\,
	datad => \stack|M0|auto_generated|result_node[4]~0_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~7_combout\);

-- Location: LCCOMB_X21_Y20_N26
\stack|S36|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S35|U1|dffs\(4))) # (!stack_mode(0) & ((\stack|S37|U1|dffs\(4)))))) # (!\stack_en~regout\ & (\stack|S35|U1|dffs\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(4),
	datab => \stack_en~regout\,
	datac => \stack|S37|U1|dffs\(4),
	datad => stack_mode(0),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X21_Y20_N18
\stack|S36|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[4]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S36|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y20_N19
\stack|S36|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[36]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N0
\stack|S37|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S36|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S38|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S36|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S38|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S36|U1|dffs\(4),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X21_Y20_N24
\stack|S37|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[4]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S37|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X21_Y20_N25
\stack|S37|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N30
\stack|S38|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[4]~0_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S37|U1|dffs\(4)))) # (!stack_mode(0) & (\stack|S39|U1|dffs\(4))))) # (!\stack_en~regout\ & (((\stack|S37|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U1|dffs\(4),
	datab => \stack_en~regout\,
	datac => \stack|S37|U1|dffs\(4),
	datad => stack_mode(0),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X20_Y20_N4
\stack|S38|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[4]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S38|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y20_N5
\stack|S38|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[38]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(4));

-- Location: LCCOMB_X21_Y20_N4
\stack|M0|auto_generated|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~19_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S37|U1|dffs\(4))) # (!card_addr(0) & ((\stack|S36|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(4),
	datab => \stack|S36|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~19_combout\);

-- Location: LCCOMB_X21_Y20_N14
\stack|M0|auto_generated|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~20_combout\ = (\stack|M0|auto_generated|_~19_combout\ & ((\stack|S39|U1|dffs\(4)) # ((!card_addr(1))))) # (!\stack|M0|auto_generated|_~19_combout\ & (((\stack|S38|U1|dffs\(4) & card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U1|dffs\(4),
	datab => \stack|S38|U1|dffs\(4),
	datac => \stack|M0|auto_generated|_~19_combout\,
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~20_combout\);

-- Location: LCCOMB_X22_Y20_N30
\stack|M0|auto_generated|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~21_combout\ = (card_addr(5) & (card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(5),
	datab => card_addr(2),
	datac => card_addr(3),
	datad => \stack|M0|auto_generated|_~20_combout\,
	combout => \stack|M0|auto_generated|_~21_combout\);

-- Location: LCCOMB_X23_Y20_N14
\stack|M0|auto_generated|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~27_combout\ = (!card_addr(0) & ((card_addr(1) & ((\stack|S46|U1|dffs\(4)))) # (!card_addr(1) & (\stack|S44|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(4),
	datab => card_addr(1),
	datac => \stack|S46|U1|dffs\(4),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~27_combout\);

-- Location: LCCOMB_X22_Y20_N10
\stack|M0|auto_generated|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~26_combout\ = (card_addr(0) & ((card_addr(1) & ((\stack|S47|U1|dffs\(4)))) # (!card_addr(1) & (\stack|S45|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S45|U1|dffs\(4),
	datac => \stack|S47|U1|dffs\(4),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~26_combout\);

-- Location: LCCOMB_X22_Y20_N8
\stack|M0|auto_generated|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~28_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|_~27_combout\) # (\stack|M0|auto_generated|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~27_combout\,
	datad => \stack|M0|auto_generated|_~26_combout\,
	combout => \stack|M0|auto_generated|_~28_combout\);

-- Location: LCCOMB_X20_Y20_N6
\stack|S39|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S38|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S40|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S38|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack|S40|U1|dffs\(4),
	datad => \stack_en~regout\,
	combout => \stack|S39|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X20_Y20_N14
\stack|S39|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[4]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S39|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y20_N15
\stack|S39|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[39]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(4));

-- Location: LCCOMB_X23_Y20_N10
\stack|S40|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (\stack|S39|U1|dffs\(4))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S41|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S39|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S39|U1|dffs\(4),
	datac => \stack_en~regout\,
	datad => \stack|S41|U1|dffs\(4),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y15_N6
\stack|S40|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[4]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S40|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X23_Y15_N7
\stack|S40|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[40]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(4));

-- Location: LCCOMB_X23_Y15_N30
\stack|S41|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S40|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S42|U1|dffs\(4))) # (!\stack_en~regout\ & ((\stack|S40|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S42|U1|dffs\(4),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S40|U1|dffs\(4),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\stack|S41|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[4]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S41|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X22_Y15_N19
\stack|S41|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[41]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(4));

-- Location: LCCOMB_X22_Y15_N0
\stack|M0|auto_generated|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~29_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S43|U1|dffs\(4))) # (!card_addr(1) & ((\stack|S41|U1|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(4),
	datab => \stack|S41|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~29_combout\);

-- Location: LCCOMB_X22_Y20_N16
\stack|M0|auto_generated|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~31_combout\ = (\stack|M0|auto_generated|_~28_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|_~30_combout\) # (\stack|M0|auto_generated|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~30_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~28_combout\,
	datad => \stack|M0|auto_generated|_~29_combout\,
	combout => \stack|M0|auto_generated|_~31_combout\);

-- Location: LCCOMB_X21_Y17_N4
\stack|M0|auto_generated|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~22_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S33|U1|dffs\(4)))) # (!card_addr(0) & (\stack|S32|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(4),
	datab => \stack|S33|U1|dffs\(4),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~22_combout\);

-- Location: LCCOMB_X21_Y20_N20
\stack|S35|U0|$00000|auto_generated|result_node[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[4]~0_combout\ = (stack_mode(0) & (((\stack|S34|U1|dffs\(4))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S36|U1|dffs\(4)))) # (!\stack_en~regout\ & (\stack|S34|U1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S34|U1|dffs\(4),
	datad => \stack|S36|U1|dffs\(4),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X20_Y13_N8
\stack|S35|U1|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[4]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[4]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[4]~0_combout\,
	combout => \stack|S35|U1|dffs[4]~feeder_combout\);

-- Location: LCFF_X20_Y13_N9
\stack|S35|U1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[4]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[35]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(4));

-- Location: LCCOMB_X21_Y17_N26
\stack|M0|auto_generated|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~23_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~22_combout\ & ((\stack|S35|U1|dffs\(4)))) # (!\stack|M0|auto_generated|_~22_combout\ & (\stack|S34|U1|dffs\(4))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(4),
	datab => card_addr(1),
	datac => \stack|M0|auto_generated|_~22_combout\,
	datad => \stack|S35|U1|dffs\(4),
	combout => \stack|M0|auto_generated|_~23_combout\);

-- Location: LCCOMB_X22_Y20_N28
\stack|M0|auto_generated|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~24_combout\ = (card_addr(5) & ((card_addr(4)) # ((\stack|M0|auto_generated|_~12_combout\ & \stack|M0|auto_generated|_~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(5),
	datab => card_addr(4),
	datac => \stack|M0|auto_generated|_~12_combout\,
	datad => \stack|M0|auto_generated|_~23_combout\,
	combout => \stack|M0|auto_generated|_~24_combout\);

-- Location: LCCOMB_X22_Y20_N26
\stack|M0|auto_generated|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~32_combout\ = (\stack|M0|auto_generated|_~21_combout\) # ((\stack|M0|auto_generated|_~24_combout\) # ((\stack|M0|auto_generated|_~25_combout\ & \stack|M0|auto_generated|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~25_combout\,
	datab => \stack|M0|auto_generated|_~21_combout\,
	datac => \stack|M0|auto_generated|_~31_combout\,
	datad => \stack|M0|auto_generated|_~24_combout\,
	combout => \stack|M0|auto_generated|_~32_combout\);

-- Location: LCCOMB_X22_Y20_N12
\stack|M0|auto_generated|result_node[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~8_combout\ = (\stack|M0|auto_generated|_~32_combout\ & (((\stack|M0|auto_generated|_~150_combout\)))) # (!\stack|M0|auto_generated|_~32_combout\ & (card_addr(4) & 
-- ((\stack|M0|auto_generated|result_node[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => \stack|M0|auto_generated|_~150_combout\,
	datac => \stack|M0|auto_generated|result_node[4]~7_combout\,
	datad => \stack|M0|auto_generated|_~32_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~8_combout\);

-- Location: LCCOMB_X22_Y20_N14
\stack|M0|auto_generated|result_node[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[4]~16_combout\ = (\stack|M0|auto_generated|result_node[4]~8_combout\) # ((\stack|M0|auto_generated|result_node[5]~9_combout\ & ((\stack|M0|auto_generated|result_node[4]~15_combout\) # 
-- (\stack|M0|auto_generated|result_node[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~9_combout\,
	datab => \stack|M0|auto_generated|result_node[4]~15_combout\,
	datac => \stack|M0|auto_generated|result_node[4]~14_combout\,
	datad => \stack|M0|auto_generated|result_node[4]~8_combout\,
	combout => \stack|M0|auto_generated|result_node[4]~16_combout\);

-- Location: LCCOMB_X21_Y19_N16
\rules|DEC2|A1|b2v_inst6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst6|S~combout\ = \stack|M0|auto_generated|result_node[4]~16_combout\ $ (\rules|DEC2|A1|b2v_inst5|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack|M0|auto_generated|result_node[4]~16_combout\,
	datad => \rules|DEC2|A1|b2v_inst5|Cout~1_combout\,
	combout => \rules|DEC2|A1|b2v_inst6|S~combout\);

-- Location: LCCOMB_X22_Y23_N16
\rules|DEC1|A1|b2v_inst7|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC1|A1|b2v_inst7|S~combout\ = (\top_card~combout\(4) & ((\top_card~combout\(3) & (!\top_card~combout\(5) & \rules|DEC1|A1|b2v_inst4|Cout~0_combout\)) # (!\top_card~combout\(3) & (\top_card~combout\(5) & 
-- !\rules|DEC1|A1|b2v_inst4|Cout~0_combout\)))) # (!\top_card~combout\(4) & (((\top_card~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_card~combout\(4),
	datab => \top_card~combout\(3),
	datac => \top_card~combout\(5),
	datad => \rules|DEC1|A1|b2v_inst4|Cout~0_combout\,
	combout => \rules|DEC1|A1|b2v_inst7|S~combout\);

-- Location: LCCOMB_X23_Y19_N12
\rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\ = (\stack|M0|auto_generated|result_node[4]~16_combout\ & \rules|DEC2|A1|b2v_inst5|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack|M0|auto_generated|result_node[4]~16_combout\,
	datad => \rules|DEC2|A1|b2v_inst5|Cout~1_combout\,
	combout => \rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\);

-- Location: LCCOMB_X23_Y19_N26
\rules|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rules|Equal2~0_combout\ = (\rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~combout\ & (!\rules|DEC1|A1|b2v_inst7|S~combout\ & (\stack|M0|auto_generated|result_node[5]~49_combout\ & \rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\))) # 
-- (!\rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~combout\ & ((\rules|DEC1|A1|b2v_inst7|S~combout\ & (\stack|M0|auto_generated|result_node[5]~49_combout\ $ (\rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\))) # (!\rules|DEC1|A1|b2v_inst7|S~combout\ & 
-- (!\stack|M0|auto_generated|result_node[5]~49_combout\ & !\rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~combout\,
	datab => \rules|DEC1|A1|b2v_inst7|S~combout\,
	datac => \stack|M0|auto_generated|result_node[5]~49_combout\,
	datad => \rules|DEC2|A1|b2v_inst6|SYNTHESIZED_WIRE_1~combout\,
	combout => \rules|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~5_combout\ = (!\rules|Equal1~1_combout\ & ((\rules|DEC1|A1|b2v_inst6|S~combout\ $ (\rules|DEC2|A1|b2v_inst6|S~combout\)) # (!\rules|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rules|DEC1|A1|b2v_inst6|S~combout\,
	datab => \rules|Equal1~1_combout\,
	datac => \rules|DEC2|A1|b2v_inst6|S~combout\,
	datad => \rules|Equal2~0_combout\,
	combout => \state~5_combout\);

-- Location: LCCOMB_X22_Y19_N8
\state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (\LessThan0~10_combout\ & (\state~5_combout\ & (!\rules|Equal0~1_combout\ & !\rules|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \state~5_combout\,
	datac => \rules|Equal0~1_combout\,
	datad => \rules|Equal3~3_combout\,
	combout => \state~7_combout\);

-- Location: LCCOMB_X21_Y19_N26
\card_num~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num~6_combout\ = (\Add0~2_combout\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datac => \state~7_combout\,
	combout => \card_num~6_combout\);

-- Location: LCFF_X21_Y19_N27
\card_num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_num~6_combout\,
	sclr => ALT_INV_state(1),
	ena => \card_num[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_num(1));

-- Location: LCCOMB_X18_Y19_N8
\card_num~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_num~5_combout\ = (\Add0~4_combout\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => \state~7_combout\,
	combout => \card_num~5_combout\);

-- Location: LCFF_X18_Y19_N9
\card_num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \card_num~5_combout\,
	sclr => ALT_INV_state(1),
	ena => \card_num[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_num(2));

-- Location: LCFF_X22_Y16_N1
\card_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => card_num(2),
	sload => VCC,
	ena => \card_addr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_addr(2));

-- Location: LCCOMB_X24_Y15_N30
\stack|S40|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S39|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S41|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S39|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S39|U1|dffs\(0),
	datab => \stack|S41|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S40|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X23_Y15_N4
\stack|S40|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[0]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S40|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y15_N5
\stack|S40|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[40]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(0));

-- Location: LCCOMB_X21_Y18_N22
\stack|S46|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S45|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S47|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S45|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(0),
	datab => \stack|S45|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S46|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y18_N6
\stack|S46|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[0]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S46|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y18_N7
\stack|S46|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[46]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(0));

-- Location: LCCOMB_X21_Y18_N20
\stack|S45|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S44|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S46|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S44|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S46|U1|dffs\(0),
	datac => \stack|S44|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S45|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y14_N24
\stack|S45|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[0]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S45|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y14_N25
\stack|S45|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[45]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(0));

-- Location: LCCOMB_X21_Y18_N10
\stack|S44|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S43|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S45|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S43|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S45|U1|dffs\(0),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X22_Y21_N16
\stack|S44|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[0]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S44|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X22_Y21_N17
\stack|S44|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[44]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(0));

-- Location: LCCOMB_X21_Y18_N12
\stack|S43|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S42|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S44|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S42|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S42|U1|dffs\(0),
	datac => \stack|S44|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S43|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X22_Y15_N28
\stack|S43|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[0]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S43|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X22_Y15_N29
\stack|S43|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[43]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(0));

-- Location: LCCOMB_X20_Y15_N30
\stack|S42|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S41|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S43|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S41|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S41|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S43|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S42|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X23_Y15_N22
\stack|S42|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[0]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S42|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y15_N23
\stack|S42|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[42]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N30
\stack|S41|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S40|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S42|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S40|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S40|U1|dffs\(0),
	datac => \stack|S42|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S41|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X22_Y15_N2
\stack|S41|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[0]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S41|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X22_Y15_N3
\stack|S41|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[41]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(0));

-- Location: LCCOMB_X22_Y15_N14
\stack|M0|auto_generated|_~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~123_combout\ = (!card_addr(1) & ((card_addr(0) & ((\stack|S41|U1|dffs\(0)))) # (!card_addr(0) & (\stack|S40|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S40|U1|dffs\(0),
	datab => \stack|S41|U1|dffs\(0),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~123_combout\);

-- Location: LCCOMB_X21_Y18_N30
\stack|M0|auto_generated|_~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~120_combout\ = (!card_addr(1) & ((card_addr(0) & ((\stack|S45|U1|dffs\(0)))) # (!card_addr(0) & (\stack|S44|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S44|U1|dffs\(0),
	datab => \stack|S45|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~120_combout\);

-- Location: LCCOMB_X21_Y18_N24
\stack|M0|auto_generated|_~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~121_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S47|U1|dffs\(0))) # (!card_addr(0) & ((\stack|S46|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(0),
	datab => \stack|S46|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~121_combout\);

-- Location: LCCOMB_X22_Y18_N22
\stack|M0|auto_generated|_~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~122_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|_~120_combout\) # (\stack|M0|auto_generated|_~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~120_combout\,
	datad => \stack|M0|auto_generated|_~121_combout\,
	combout => \stack|M0|auto_generated|_~122_combout\);

-- Location: LCCOMB_X22_Y18_N18
\stack|M0|auto_generated|_~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~125_combout\ = (\stack|M0|auto_generated|_~122_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|_~124_combout\) # (\stack|M0|auto_generated|_~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~124_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~123_combout\,
	datad => \stack|M0|auto_generated|_~122_combout\,
	combout => \stack|M0|auto_generated|_~125_combout\);

-- Location: LCCOMB_X21_Y20_N6
\stack|S39|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S38|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S40|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S38|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => \stack|S40|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y20_N20
\stack|S39|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[0]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S39|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y20_N21
\stack|S39|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[39]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(0));

-- Location: LCCOMB_X20_Y20_N28
\stack|S38|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S37|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S39|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S37|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S39|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S38|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y20_N10
\stack|S38|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[0]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S38|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y20_N11
\stack|S38|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[38]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(0));

-- Location: LCCOMB_X21_Y20_N10
\stack|S37|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S36|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S38|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S36|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S36|U1|dffs\(0),
	datac => \stack_en~regout\,
	datad => \stack|S38|U1|dffs\(0),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y20_N16
\stack|S37|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[0]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S37|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S37|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y20_N17
\stack|S37|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(0));

-- Location: LCCOMB_X21_Y20_N28
\stack|S36|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S35|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S37|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S35|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(0),
	datab => \stack|S37|U1|dffs\(0),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y20_N22
\stack|S36|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[0]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S36|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y20_N23
\stack|S36|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[36]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(0));

-- Location: LCCOMB_X21_Y17_N14
\stack|S35|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S34|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S36|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S34|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S34|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack|S36|U1|dffs\(0),
	combout => \stack|S35|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y13_N2
\stack|S35|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[0]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S35|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S35|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y13_N3
\stack|S35|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[35]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(0));

-- Location: LCCOMB_X20_Y17_N24
\stack|S32|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[0]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S32|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y17_N25
\stack|S32|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[32]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N28
\stack|S33|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S32|U1|dffs\(0)))) # (!stack_mode(0) & (\stack|S34|U1|dffs\(0))))) # (!\stack_en~regout\ & (((\stack|S32|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S34|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => \stack|S32|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S33|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y13_N28
\stack|S33|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[0]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S33|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S33|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y13_N29
\stack|S33|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[33]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(0));

-- Location: LCCOMB_X20_Y13_N12
\stack|S34|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S33|U1|dffs\(0)))) # (!stack_mode(0) & (\stack|S35|U1|dffs\(0))))) # (!\stack_en~regout\ & (((\stack|S33|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S35|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack|S33|U1|dffs\(0),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X20_Y17_N6
\stack|S34|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[0]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S34|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S34|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X20_Y17_N7
\stack|S34|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[34]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N0
\stack|M0|auto_generated|_~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~117_combout\ = (card_addr(0) & (((\stack|S33|U1|dffs\(0)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S32|U1|dffs\(0) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(0),
	datab => card_addr(0),
	datac => \stack|S33|U1|dffs\(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~117_combout\);

-- Location: LCCOMB_X21_Y14_N26
\stack|M0|auto_generated|_~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~118_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~117_combout\ & (\stack|S35|U1|dffs\(0))) # (!\stack|M0|auto_generated|_~117_combout\ & ((\stack|S34|U1|dffs\(0)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S35|U1|dffs\(0),
	datab => \stack|S34|U1|dffs\(0),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~117_combout\,
	combout => \stack|M0|auto_generated|_~118_combout\);

-- Location: LCCOMB_X22_Y18_N8
\stack|M0|auto_generated|_~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~119_combout\ = (card_addr(5) & ((card_addr(4)) # ((\stack|M0|auto_generated|_~12_combout\ & \stack|M0|auto_generated|_~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(5),
	datac => \stack|M0|auto_generated|_~12_combout\,
	datad => \stack|M0|auto_generated|_~118_combout\,
	combout => \stack|M0|auto_generated|_~119_combout\);

-- Location: LCCOMB_X21_Y20_N12
\stack|M0|auto_generated|_~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~114_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S37|U1|dffs\(0))) # (!card_addr(0) & ((\stack|S36|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S37|U1|dffs\(0),
	datab => \stack|S36|U1|dffs\(0),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~114_combout\);

-- Location: LCCOMB_X21_Y20_N2
\stack|M0|auto_generated|_~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~115_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~114_combout\ & ((\stack|S39|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~114_combout\ & (\stack|S38|U1|dffs\(0))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S38|U1|dffs\(0),
	datab => card_addr(1),
	datac => \stack|S39|U1|dffs\(0),
	datad => \stack|M0|auto_generated|_~114_combout\,
	combout => \stack|M0|auto_generated|_~115_combout\);

-- Location: LCCOMB_X22_Y18_N30
\stack|M0|auto_generated|_~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~116_combout\ = (card_addr(5) & (card_addr(2) & (!card_addr(3) & \stack|M0|auto_generated|_~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(5),
	datab => card_addr(2),
	datac => card_addr(3),
	datad => \stack|M0|auto_generated|_~115_combout\,
	combout => \stack|M0|auto_generated|_~116_combout\);

-- Location: LCCOMB_X22_Y18_N28
\stack|M0|auto_generated|_~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~126_combout\ = (\stack|M0|auto_generated|_~119_combout\) # ((\stack|M0|auto_generated|_~116_combout\) # ((\stack|M0|auto_generated|_~25_combout\ & \stack|M0|auto_generated|_~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~25_combout\,
	datab => \stack|M0|auto_generated|_~125_combout\,
	datac => \stack|M0|auto_generated|_~119_combout\,
	datad => \stack|M0|auto_generated|_~116_combout\,
	combout => \stack|M0|auto_generated|_~126_combout\);

-- Location: LCCOMB_X23_Y18_N4
\stack|S15|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S14|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S16|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S14|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S14|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => \stack|S16|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S15|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X23_Y18_N26
\stack|S15|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[0]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S15|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S15|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y18_N27
\stack|S15|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(0));

-- Location: LCCOMB_X24_Y18_N10
\stack|S16|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S15|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S17|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S15|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S15|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack|S17|U1|dffs\(0),
	combout => \stack|S16|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y20_N2
\stack|S16|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[0]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S16|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X24_Y20_N3
\stack|S16|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(0));

-- Location: LCCOMB_X23_Y18_N18
\stack|S17|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S16|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S18|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S16|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S18|U1|dffs\(0),
	datac => \stack|S16|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S17|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X16_Y18_N2
\stack|S17|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[0]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S17|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S17|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X16_Y18_N3
\stack|S17|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(0));

-- Location: LCCOMB_X24_Y17_N6
\stack|S18|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S17|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S19|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S17|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S17|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S18|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y20_N8
\stack|S18|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[0]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S18|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X24_Y20_N9
\stack|S18|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(0));

-- Location: LCCOMB_X21_Y15_N18
\stack|S20|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[0]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S20|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y15_N19
\stack|S20|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(0));

-- Location: LCCOMB_X19_Y17_N18
\stack|S19|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S18|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S20|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S18|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S18|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => \stack|S20|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y17_N0
\stack|S19|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[0]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S19|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X19_Y17_N1
\stack|S19|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[19]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(0));

-- Location: LCCOMB_X23_Y18_N12
\stack|M0|auto_generated|_~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~112_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & ((\stack|S17|U1|dffs\(0)))) # (!card_addr(0) & (\stack|S16|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S16|U1|dffs\(0),
	datab => card_addr(1),
	datac => \stack|S17|U1|dffs\(0),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~112_combout\);

-- Location: LCCOMB_X23_Y18_N14
\stack|M0|auto_generated|_~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~113_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~112_combout\ & ((\stack|S19|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~112_combout\ & (\stack|S18|U1|dffs\(0))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S18|U1|dffs\(0),
	datac => \stack|S19|U1|dffs\(0),
	datad => \stack|M0|auto_generated|_~112_combout\,
	combout => \stack|M0|auto_generated|_~113_combout\);

-- Location: LCCOMB_X20_Y14_N16
\stack|S24|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S23|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S25|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S23|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S25|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S23|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S24|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y13_N10
\stack|S24|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[0]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S24|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S24|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X19_Y13_N11
\stack|S24|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(0));

-- Location: LCCOMB_X21_Y15_N12
\stack|S21|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S20|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S22|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S20|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S20|U1|dffs\(0),
	datac => \stack|S22|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S21|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y15_N24
\stack|S21|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[0]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S21|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y15_N25
\stack|S21|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(0));

-- Location: LCCOMB_X21_Y15_N6
\stack|S22|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S21|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S23|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S21|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S23|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S21|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S22|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y15_N8
\stack|S22|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[0]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S22|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X18_Y15_N9
\stack|S22|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(0));

-- Location: LCCOMB_X19_Y15_N24
\stack|S23|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S22|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S24|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S22|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S24|U1|dffs\(0),
	datac => \stack_en~regout\,
	datad => \stack|S22|U1|dffs\(0),
	combout => \stack|S23|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X18_Y15_N14
\stack|S23|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[0]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S23|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X18_Y15_N15
\stack|S23|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(0));

-- Location: LCCOMB_X21_Y15_N10
\stack|M0|auto_generated|_~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~110_combout\ = (card_addr(0) & ((\stack|S21|U1|dffs\(0)) # ((card_addr(1))))) # (!card_addr(0) & (((\stack|S20|U1|dffs\(0) & !card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S21|U1|dffs\(0),
	datab => \stack|S20|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~110_combout\);

-- Location: LCCOMB_X21_Y15_N4
\stack|M0|auto_generated|_~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~111_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~110_combout\ & ((\stack|S23|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~110_combout\ & (\stack|S22|U1|dffs\(0))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S22|U1|dffs\(0),
	datab => card_addr(1),
	datac => \stack|S23|U1|dffs\(0),
	datad => \stack|M0|auto_generated|_~110_combout\,
	combout => \stack|M0|auto_generated|_~111_combout\);

-- Location: LCCOMB_X22_Y18_N14
\stack|M0|auto_generated|result_node[0]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~76_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~111_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~113_combout\,
	datad => \stack|M0|auto_generated|_~111_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~76_combout\);

-- Location: LCCOMB_X19_Y15_N18
\stack|M0|auto_generated|result_node[0]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~80_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S25|U1|dffs\(0))) # (!card_addr(0) & ((\stack|S24|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S25|U1|dffs\(0),
	datab => \stack|S24|U1|dffs\(0),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[0]~80_combout\);

-- Location: LCCOMB_X21_Y14_N6
\stack|S31|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S30|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S32|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S30|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S32|U1|dffs\(0),
	datac => \stack|S30|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S31|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y14_N14
\stack|S31|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[0]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S31|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y14_N15
\stack|S31|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[31]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N4
\stack|S30|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S29|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S31|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S29|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S29|U1|dffs\(0),
	datac => \stack|S31|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S30|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X21_Y14_N20
\stack|S30|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[0]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S30|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S30|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X21_Y14_N21
\stack|S30|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[30]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(0));

-- Location: LCCOMB_X19_Y15_N26
\stack|S25|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S24|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S26|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S24|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S24|U1|dffs\(0),
	datac => \stack_en~regout\,
	datad => \stack|S26|U1|dffs\(0),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y15_N12
\stack|S25|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[0]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S25|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X19_Y15_N13
\stack|S25|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(0));

-- Location: LCCOMB_X20_Y14_N30
\stack|S26|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S25|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S27|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S25|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S27|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S25|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S26|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y14_N12
\stack|S26|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S26|U1|dffs[0]~feeder_combout\ = \stack|S26|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S26|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S26|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X19_Y14_N13
\stack|S26|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S26|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[26]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S26|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N22
\stack|S27|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S26|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S28|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S26|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S28|U1|dffs\(0),
	datac => \stack|S26|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S27|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y14_N4
\stack|S27|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S27|U1|dffs[0]~feeder_combout\ = \stack|S27|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S27|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S27|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X25_Y14_N5
\stack|S27|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S27|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S27|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N16
\stack|S28|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S27|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S29|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S27|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S29|U1|dffs\(0),
	datac => \stack|S27|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S28|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X19_Y14_N14
\stack|S28|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S28|U1|dffs[0]~feeder_combout\ = \stack|S28|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S28|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S28|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X19_Y14_N15
\stack|S28|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S28|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[28]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S28|U1|dffs\(0));

-- Location: LCCOMB_X21_Y14_N10
\stack|S29|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S28|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S30|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S28|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S30|U1|dffs\(0),
	datad => \stack|S28|U1|dffs\(0),
	combout => \stack|S29|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X22_Y14_N14
\stack|S29|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[0]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S29|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S29|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X22_Y14_N15
\stack|S29|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(0));

-- Location: LCCOMB_X22_Y14_N10
\stack|M0|auto_generated|result_node[0]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~77_combout\ = (!card_addr(1) & ((card_addr(0) & ((\stack|S29|U1|dffs\(0)))) # (!card_addr(0) & (\stack|S28|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(0),
	datab => card_addr(1),
	datac => \stack|S29|U1|dffs\(0),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[0]~77_combout\);

-- Location: LCCOMB_X21_Y14_N24
\stack|M0|auto_generated|result_node[0]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~78_combout\ = (card_addr(1) & ((card_addr(0) & ((\stack|S31|U1|dffs\(0)))) # (!card_addr(0) & (\stack|S30|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S30|U1|dffs\(0),
	datab => \stack|S31|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[0]~78_combout\);

-- Location: LCCOMB_X22_Y18_N0
\stack|M0|auto_generated|result_node[0]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~79_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[0]~77_combout\) # (\stack|M0|auto_generated|result_node[0]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[0]~77_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~78_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~79_combout\);

-- Location: LCCOMB_X22_Y18_N10
\stack|M0|auto_generated|result_node[0]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~82_combout\ = (\stack|M0|auto_generated|result_node[0]~79_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[0]~81_combout\) # (\stack|M0|auto_generated|result_node[0]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[0]~81_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[0]~80_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~79_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~82_combout\);

-- Location: LCCOMB_X22_Y18_N4
\stack|M0|auto_generated|result_node[0]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~83_combout\ = (card_addr(4) & ((\stack|M0|auto_generated|result_node[0]~76_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[0]~76_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~82_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~83_combout\);

-- Location: LCCOMB_X25_Y18_N26
\stack|S7|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[0]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S7|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S7|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X25_Y18_N27
\stack|S7|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[7]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N24
\stack|S6|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S5|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S7|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S5|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S7|U1|dffs\(0),
	datac => \stack|S5|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S6|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y18_N12
\stack|S6|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[0]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S6|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X24_Y18_N13
\stack|S6|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(0));

-- Location: LCCOMB_X24_Y18_N24
\stack|S5|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S4|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S6|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S4|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S4|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S6|U1|dffs\(0),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y19_N16
\stack|S5|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[0]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S5|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X25_Y19_N17
\stack|S5|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N30
\stack|S4|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S3|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S5|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S3|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S3|U1|dffs\(0),
	datac => \stack|S5|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S4|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y18_N4
\stack|S4|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[0]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S4|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X25_Y18_N5
\stack|S4|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N14
\stack|S2|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S1|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S3|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S1|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(0),
	datab => \stack|S3|U1|dffs\(0),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S2|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X26_Y18_N26
\stack|S2|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[0]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S2|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X26_Y18_N27
\stack|S2|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N12
\stack|S3|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S2|U1|dffs\(0)))) # (!stack_mode(0) & (\stack|S4|U1|dffs\(0))))) # (!\stack_en~regout\ & (((\stack|S2|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S4|U1|dffs\(0),
	datad => \stack|S2|U1|dffs\(0),
	combout => \stack|S3|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X25_Y15_N24
\stack|S3|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S3|U1|dffs[0]~feeder_combout\ = \stack|S3|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S3|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S3|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X25_Y15_N25
\stack|S3|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S3|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S3|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N18
\stack|S0|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\card_in~combout\(0)))) # (!stack_mode(0) & (\stack|S1|U1|dffs\(0))))) # (!\stack_en~regout\ & (((\card_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(0),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \card_in~combout\(0),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X26_Y18_N20
\stack|S0|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U1|dffs[0]~feeder_combout\ = \stack|S0|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S0|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S0|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X26_Y18_N21
\stack|S0|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N10
\stack|M0|auto_generated|_~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~106_combout\ = (card_addr(0) & ((\stack|S1|U1|dffs\(0)) # ((card_addr(1))))) # (!card_addr(0) & (((\stack|S0|U1|dffs\(0) & !card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S1|U1|dffs\(0),
	datab => \stack|S0|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~106_combout\);

-- Location: LCCOMB_X25_Y18_N20
\stack|M0|auto_generated|_~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~107_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~106_combout\ & ((\stack|S3|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~106_combout\ & (\stack|S2|U1|dffs\(0))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S2|U1|dffs\(0),
	datab => \stack|S3|U1|dffs\(0),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~106_combout\,
	combout => \stack|M0|auto_generated|_~107_combout\);

-- Location: LCCOMB_X25_Y18_N2
\stack|M0|auto_generated|_~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~104_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S5|U1|dffs\(0))) # (!card_addr(0) & ((\stack|S4|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(0),
	datab => \stack|S4|U1|dffs\(0),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~104_combout\);

-- Location: LCCOMB_X25_Y18_N8
\stack|M0|auto_generated|_~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~105_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~104_combout\ & ((\stack|S7|U1|dffs\(0)))) # (!\stack|M0|auto_generated|_~104_combout\ & (\stack|S6|U1|dffs\(0))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S6|U1|dffs\(0),
	datab => \stack|S7|U1|dffs\(0),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~104_combout\,
	combout => \stack|M0|auto_generated|_~105_combout\);

-- Location: LCCOMB_X22_Y18_N20
\stack|M0|auto_generated|result_node[0]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~68_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~105_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|_~107_combout\,
	datad => \stack|M0|auto_generated|_~105_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~68_combout\);

-- Location: LCCOMB_X23_Y18_N20
\stack|S14|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S13|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S15|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S13|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S13|U1|dffs\(0),
	datac => \stack|S15|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S14|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X23_Y14_N20
\stack|S14|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[0]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S14|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y14_N21
\stack|S14|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(0));

-- Location: LCCOMB_X23_Y18_N6
\stack|S13|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (((\stack|S12|U1|dffs\(0))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S14|U1|dffs\(0))) # (!\stack_en~regout\ & ((\stack|S12|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S14|U1|dffs\(0),
	datad => \stack|S12|U1|dffs\(0),
	combout => \stack|S13|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X23_Y18_N0
\stack|S13|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S13|U1|dffs[0]~feeder_combout\ = \stack|S13|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S13|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S13|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X23_Y18_N1
\stack|S13|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S13|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S13|U1|dffs\(0));

-- Location: LCCOMB_X25_Y16_N24
\stack|S12|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S11|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S13|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S11|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S11|U1|dffs\(0),
	datac => \stack|S13|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S12|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y19_N12
\stack|S12|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[0]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S12|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X24_Y19_N13
\stack|S12|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(0));

-- Location: LCCOMB_X24_Y16_N4
\stack|S11|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[0]~4_combout\ = (stack_mode(0) & (\stack|S10|U1|dffs\(0))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S12|U1|dffs\(0)))) # (!\stack_en~regout\ & (\stack|S10|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U1|dffs\(0),
	datab => stack_mode(0),
	datac => \stack|S12|U1|dffs\(0),
	datad => \stack_en~regout\,
	combout => \stack|S11|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y16_N2
\stack|S11|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[0]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S11|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S11|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X24_Y16_N3
\stack|S11|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(0));

-- Location: LCCOMB_X25_Y16_N28
\stack|S10|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[0]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S10|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X25_Y16_N29
\stack|S10|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(0));

-- Location: LCCOMB_X25_Y18_N22
\stack|S8|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S7|U1|dffs\(0))) # (!stack_mode(0) & ((\stack|S9|U1|dffs\(0)))))) # (!\stack_en~regout\ & (\stack|S7|U1|dffs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S7|U1|dffs\(0),
	datac => \stack|S9|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S8|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X26_Y19_N26
\stack|S8|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[0]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S8|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X26_Y19_N27
\stack|S8|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[0]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(0));

-- Location: LCCOMB_X25_Y16_N14
\stack|S9|U0|$00000|auto_generated|result_node[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[0]~4_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S8|U1|dffs\(0)))) # (!stack_mode(0) & (\stack|S10|U1|dffs\(0))))) # (!\stack_en~regout\ & (((\stack|S8|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S10|U1|dffs\(0),
	datac => \stack|S8|U1|dffs\(0),
	datad => stack_mode(0),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X24_Y16_N12
\stack|S9|U1|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[0]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S9|U0|$00000|auto_generated|result_node[0]~4_combout\,
	combout => \stack|S9|U1|dffs[0]~feeder_combout\);

-- Location: LCFF_X24_Y16_N13
\stack|S9|U1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[0]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(0));

-- Location: LCCOMB_X23_Y18_N30
\stack|M0|auto_generated|result_node[0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~72_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S11|U1|dffs\(0))) # (!card_addr(1) & ((\stack|S9|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S11|U1|dffs\(0),
	datac => \stack|S9|U1|dffs\(0),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[0]~72_combout\);

-- Location: LCCOMB_X23_Y18_N8
\stack|M0|auto_generated|result_node[0]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~70_combout\ = (!card_addr(0) & ((card_addr(1) & ((\stack|S14|U1|dffs\(0)))) # (!card_addr(1) & (\stack|S12|U1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(0),
	datab => card_addr(1),
	datac => \stack|S14|U1|dffs\(0),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[0]~70_combout\);

-- Location: LCCOMB_X22_Y18_N26
\stack|M0|auto_generated|result_node[0]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~69_combout\ = (card_addr(0) & ((card_addr(1) & (\stack|S15|U1|dffs\(0))) # (!card_addr(1) & ((\stack|S13|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S15|U1|dffs\(0),
	datab => \stack|S13|U1|dffs\(0),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[0]~69_combout\);

-- Location: LCCOMB_X22_Y18_N16
\stack|M0|auto_generated|result_node[0]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~71_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[0]~70_combout\) # (\stack|M0|auto_generated|result_node[0]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[0]~70_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~69_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~71_combout\);

-- Location: LCCOMB_X25_Y16_N16
\stack|M0|auto_generated|result_node[0]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~73_combout\ = (!card_addr(0) & ((card_addr(1) & (\stack|S10|U1|dffs\(0))) # (!card_addr(1) & ((\stack|S8|U1|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S10|U1|dffs\(0),
	datac => \stack|S8|U1|dffs\(0),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[0]~73_combout\);

-- Location: LCCOMB_X22_Y18_N2
\stack|M0|auto_generated|result_node[0]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~74_combout\ = (\stack|M0|auto_generated|result_node[0]~71_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[0]~72_combout\) # (\stack|M0|auto_generated|result_node[0]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => \stack|M0|auto_generated|result_node[0]~72_combout\,
	datac => \stack|M0|auto_generated|result_node[0]~71_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~73_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~74_combout\);

-- Location: LCCOMB_X22_Y18_N12
\stack|M0|auto_generated|result_node[0]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~75_combout\ = (\stack|M0|auto_generated|result_node[5]~9_combout\ & ((\stack|M0|auto_generated|result_node[0]~68_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[0]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~9_combout\,
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[0]~68_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~74_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~75_combout\);

-- Location: LCCOMB_X22_Y18_N6
\stack|M0|auto_generated|result_node[0]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[0]~84_combout\ = (\stack|M0|auto_generated|result_node[0]~75_combout\) # ((\stack|M0|auto_generated|_~126_combout\ & (\stack|M0|auto_generated|_~154_combout\)) # (!\stack|M0|auto_generated|_~126_combout\ & 
-- ((\stack|M0|auto_generated|result_node[0]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~154_combout\,
	datab => \stack|M0|auto_generated|_~126_combout\,
	datac => \stack|M0|auto_generated|result_node[0]~83_combout\,
	datad => \stack|M0|auto_generated|result_node[0]~75_combout\,
	combout => \stack|M0|auto_generated|result_node[0]~84_combout\);

-- Location: LCCOMB_X22_Y19_N14
\play_card_value[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \play_card_value[0]~0_combout\ = (\card_addr[4]~0_combout\ & (((\rules|Equal0~1_combout\) # (\rules|Equal3~3_combout\)) # (!\state~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_addr[4]~0_combout\,
	datab => \state~5_combout\,
	datac => \rules|Equal0~1_combout\,
	datad => \rules|Equal3~3_combout\,
	combout => \play_card_value[0]~0_combout\);

-- Location: LCFF_X22_Y19_N5
\play_card_value[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \stack|M0|auto_generated|result_node[0]~84_combout\,
	sload => VCC,
	ena => \play_card_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => play_card_value(0));

-- Location: LCCOMB_X23_Y19_N28
\Mux47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (state(2) & play_card_value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => play_card_value(0),
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X23_Y21_N8
\card_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_out[0]~1_combout\ = (!\card_out[0]~0_combout\ & (!\reset~combout\ & !state(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_out[0]~0_combout\,
	datab => \reset~combout\,
	datac => state(4),
	combout => \card_out[0]~1_combout\);

-- Location: LCFF_X23_Y19_N29
\card_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux47~0_combout\,
	ena => \card_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_out[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y16_N16
\stack|S14|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S13|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S15|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S13|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(1),
	datab => \stack|S15|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S14|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y14_N10
\stack|S14|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S14|U1|dffs[1]~feeder_combout\ = \stack|S14|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S14|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S14|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y14_N11
\stack|S14|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S14|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S14|U1|dffs\(1));

-- Location: LCCOMB_X26_Y16_N8
\stack|S15|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S14|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S16|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S14|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S14|U1|dffs\(1),
	datac => \stack|S16|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S15|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X26_Y16_N28
\stack|S15|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S15|U1|dffs[1]~feeder_combout\ = \stack|S15|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S15|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S15|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X26_Y16_N29
\stack|S15|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S15|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[15]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S15|U1|dffs\(1));

-- Location: LCCOMB_X24_Y20_N28
\stack|S16|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S15|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S17|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S15|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S15|U1|dffs\(1),
	datac => \stack|S17|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S16|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X24_Y20_N26
\stack|S16|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S16|U1|dffs[1]~feeder_combout\ = \stack|S16|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S16|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S16|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X24_Y20_N27
\stack|S16|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S16|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S16|U1|dffs\(1));

-- Location: LCCOMB_X18_Y17_N4
\stack|S17|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S16|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S18|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S16|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S18|U1|dffs\(1),
	datac => \stack|S16|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S17|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y17_N30
\stack|S17|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S17|U1|dffs[1]~feeder_combout\ = \stack|S17|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S17|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S17|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y17_N31
\stack|S17|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S17|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S17|U1|dffs\(1));

-- Location: LCCOMB_X24_Y20_N22
\stack|S18|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S17|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S19|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S17|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S19|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack|S17|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S18|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X24_Y20_N20
\stack|S18|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S18|U1|dffs[1]~feeder_combout\ = \stack|S18|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S18|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S18|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X24_Y20_N21
\stack|S18|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S18|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[18]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S18|U1|dffs\(1));

-- Location: LCCOMB_X18_Y17_N18
\stack|S19|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S18|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S20|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S18|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S18|U1|dffs\(1),
	datac => \stack|S20|U1|dffs\(1),
	datad => stack_mode(0),
	combout => \stack|S19|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y17_N16
\stack|S19|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S19|U1|dffs[1]~feeder_combout\ = \stack|S19|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S19|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S19|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y17_N17
\stack|S19|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S19|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[19]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S19|U1|dffs\(1));

-- Location: LCCOMB_X18_Y16_N14
\stack|S20|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S19|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S21|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S19|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S21|U1|dffs\(1),
	datac => \stack|S19|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S20|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y16_N10
\stack|S20|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S20|U1|dffs[1]~feeder_combout\ = \stack|S20|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S20|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S20|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y16_N11
\stack|S20|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S20|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[20]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S20|U1|dffs\(1));

-- Location: LCCOMB_X18_Y16_N24
\stack|S21|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S20|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S22|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S20|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S22|U1|dffs\(1),
	datac => \stack|S20|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S21|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y16_N28
\stack|S21|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S21|U1|dffs[1]~feeder_combout\ = \stack|S21|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S21|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S21|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y16_N29
\stack|S21|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S21|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S21|U1|dffs\(1));

-- Location: LCCOMB_X18_Y16_N2
\stack|S22|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S21|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S23|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S21|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S21|U1|dffs\(1),
	datac => \stack|S23|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S22|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y15_N0
\stack|S22|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S22|U1|dffs[1]~feeder_combout\ = \stack|S22|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S22|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S22|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y15_N1
\stack|S22|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S22|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[22]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S22|U1|dffs\(1));

-- Location: LCCOMB_X18_Y16_N16
\stack|S23|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S22|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S24|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S22|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S24|U1|dffs\(1),
	datab => \stack|S22|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S23|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X16_Y16_N26
\stack|S23|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S23|U1|dffs[1]~feeder_combout\ = \stack|S23|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S23|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S23|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y16_N27
\stack|S23|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S23|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[23]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S23|U1|dffs\(1));

-- Location: LCCOMB_X18_Y16_N6
\stack|S24|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S23|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S25|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S23|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S25|U1|dffs\(1),
	datac => \stack|S23|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S24|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y13_N8
\stack|S24|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S24|U1|dffs[1]~feeder_combout\ = \stack|S24|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S24|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S24|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y13_N9
\stack|S24|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S24|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S24|U1|dffs\(1));

-- Location: LCCOMB_X19_Y13_N24
\stack|S25|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S24|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S26|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S24|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S26|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S24|U1|dffs\(1),
	combout => \stack|S25|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y15_N6
\stack|S25|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S25|U1|dffs[1]~feeder_combout\ = \stack|S25|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S25|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S25|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y15_N7
\stack|S25|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S25|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[25]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S25|U1|dffs\(1));

-- Location: LCCOMB_X18_Y16_N12
\stack|M0|auto_generated|result_node[1]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~97_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S25|U1|dffs\(1))) # (!card_addr(0) & ((\stack|S24|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|S25|U1|dffs\(1),
	datac => card_addr(1),
	datad => \stack|S24|U1|dffs\(1),
	combout => \stack|M0|auto_generated|result_node[1]~97_combout\);

-- Location: LCCOMB_X20_Y17_N12
\stack|S32|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S31|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S33|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S31|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack|S31|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S32|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y17_N8
\stack|S32|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S32|U1|dffs[1]~feeder_combout\ = \stack|S32|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S32|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S32|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y17_N9
\stack|S32|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S32|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[32]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S32|U1|dffs\(1));

-- Location: LCCOMB_X22_Y14_N28
\stack|S29|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S29|U1|dffs[1]~feeder_combout\ = \stack|S29|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S29|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S29|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y14_N29
\stack|S29|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S29|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S29|U1|dffs\(1));

-- Location: LCCOMB_X22_Y14_N24
\stack|S30|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S29|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S31|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S29|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S29|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack|S31|U1|dffs\(1),
	combout => \stack|S30|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X21_Y14_N18
\stack|S30|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S30|U1|dffs[1]~feeder_combout\ = \stack|S30|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S30|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S30|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X21_Y14_N19
\stack|S30|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S30|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[30]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S30|U1|dffs\(1));

-- Location: LCCOMB_X22_Y14_N30
\stack|S31|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S30|U1|dffs\(1)))) # (!stack_mode(0) & (\stack|S32|U1|dffs\(1))))) # (!\stack_en~regout\ & (((\stack|S30|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S32|U1|dffs\(1),
	datad => \stack|S30|U1|dffs\(1),
	combout => \stack|S31|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X22_Y14_N2
\stack|S31|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S31|U1|dffs[1]~feeder_combout\ = \stack|S31|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S31|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S31|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y14_N3
\stack|S31|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S31|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[31]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S31|U1|dffs\(1));

-- Location: LCCOMB_X22_Y16_N16
\stack|M0|auto_generated|result_node[1]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~95_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S31|U1|dffs\(1))) # (!card_addr(0) & ((\stack|S30|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S31|U1|dffs\(1),
	datac => card_addr(0),
	datad => \stack|S30|U1|dffs\(1),
	combout => \stack|M0|auto_generated|result_node[1]~95_combout\);

-- Location: LCCOMB_X22_Y14_N8
\stack|M0|auto_generated|result_node[1]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~94_combout\ = (!card_addr(1) & ((card_addr(0) & ((\stack|S29|U1|dffs\(1)))) # (!card_addr(0) & (\stack|S28|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S28|U1|dffs\(1),
	datab => card_addr(0),
	datac => \stack|S29|U1|dffs\(1),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|result_node[1]~94_combout\);

-- Location: LCCOMB_X22_Y16_N6
\stack|M0|auto_generated|result_node[1]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~96_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[1]~95_combout\) # (\stack|M0|auto_generated|result_node[1]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[1]~95_combout\,
	datad => \stack|M0|auto_generated|result_node[1]~94_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~96_combout\);

-- Location: LCCOMB_X22_Y16_N20
\stack|M0|auto_generated|result_node[1]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~99_combout\ = (\stack|M0|auto_generated|result_node[1]~96_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[1]~98_combout\) # (\stack|M0|auto_generated|result_node[1]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[1]~98_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[1]~97_combout\,
	datad => \stack|M0|auto_generated|result_node[1]~96_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~99_combout\);

-- Location: LCCOMB_X18_Y16_N0
\stack|M0|auto_generated|_~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~133_combout\ = (card_addr(0) & (((\stack|S21|U1|dffs\(1)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S20|U1|dffs\(1) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S20|U1|dffs\(1),
	datab => \stack|S21|U1|dffs\(1),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~133_combout\);

-- Location: LCCOMB_X18_Y16_N26
\stack|M0|auto_generated|_~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~134_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~133_combout\ & (\stack|S23|U1|dffs\(1))) # (!\stack|M0|auto_generated|_~133_combout\ & ((\stack|S22|U1|dffs\(1)))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S23|U1|dffs\(1),
	datab => \stack|S22|U1|dffs\(1),
	datac => card_addr(1),
	datad => \stack|M0|auto_generated|_~133_combout\,
	combout => \stack|M0|auto_generated|_~134_combout\);

-- Location: LCCOMB_X21_Y16_N18
\stack|M0|auto_generated|_~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~135_combout\ = (card_addr(0) & (card_addr(1))) # (!card_addr(0) & ((card_addr(1) & ((\stack|S18|U1|dffs\(1)))) # (!card_addr(1) & (\stack|S16|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => card_addr(1),
	datac => \stack|S16|U1|dffs\(1),
	datad => \stack|S18|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~135_combout\);

-- Location: LCCOMB_X21_Y16_N28
\stack|M0|auto_generated|_~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~136_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|_~135_combout\ & ((\stack|S19|U1|dffs\(1)))) # (!\stack|M0|auto_generated|_~135_combout\ & (\stack|S17|U1|dffs\(1))))) # (!card_addr(0) & 
-- (((\stack|M0|auto_generated|_~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S17|U1|dffs\(1),
	datab => card_addr(0),
	datac => \stack|S19|U1|dffs\(1),
	datad => \stack|M0|auto_generated|_~135_combout\,
	combout => \stack|M0|auto_generated|_~136_combout\);

-- Location: LCCOMB_X22_Y16_N30
\stack|M0|auto_generated|result_node[1]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~93_combout\ = (!card_addr(3) & ((card_addr(2) & (\stack|M0|auto_generated|_~134_combout\)) # (!card_addr(2) & ((\stack|M0|auto_generated|_~136_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~134_combout\,
	datad => \stack|M0|auto_generated|_~136_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~93_combout\);

-- Location: LCCOMB_X22_Y16_N26
\stack|M0|auto_generated|result_node[1]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~100_combout\ = (card_addr(4) & ((\stack|M0|auto_generated|result_node[1]~93_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[1]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(4),
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[1]~99_combout\,
	datad => \stack|M0|auto_generated|result_node[1]~93_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~100_combout\);

-- Location: LCCOMB_X20_Y17_N30
\stack|S34|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S33|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S35|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S33|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S33|U1|dffs\(1),
	datab => \stack_en~regout\,
	datac => stack_mode(0),
	datad => \stack|S35|U1|dffs\(1),
	combout => \stack|S34|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y17_N2
\stack|S34|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S34|U1|dffs[1]~feeder_combout\ = \stack|S34|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S34|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S34|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y17_N3
\stack|S34|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S34|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[34]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S34|U1|dffs\(1));

-- Location: LCCOMB_X21_Y13_N2
\stack|S35|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S34|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S36|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S34|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(1),
	datab => \stack|S34|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S35|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y13_N6
\stack|S35|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S35|U1|dffs[1]~feeder_combout\ = \stack|S35|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S35|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S35|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y13_N7
\stack|S35|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S35|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[35]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S35|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N22
\stack|S36|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S35|U1|dffs\(1)))) # (!stack_mode(0) & (\stack|S37|U1|dffs\(1))))) # (!\stack_en~regout\ & (((\stack|S35|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S37|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack|S35|U1|dffs\(1),
	combout => \stack|S36|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y16_N8
\stack|S36|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S36|U1|dffs[1]~feeder_combout\ = \stack|S36|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S36|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S36|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y16_N9
\stack|S36|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S36|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[36]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S36|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N8
\stack|S37|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S36|U1|dffs\(1)))) # (!stack_mode(0) & (\stack|S38|U1|dffs\(1))))) # (!\stack_en~regout\ & (((\stack|S36|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => stack_mode(0),
	datac => \stack|S38|U1|dffs\(1),
	datad => \stack|S36|U1|dffs\(1),
	combout => \stack|S37|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y16_N0
\stack|S37|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S37|U1|dffs[1]~feeder_combout\ = \stack|S37|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S37|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S37|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y16_N1
\stack|S37|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S37|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S37|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N28
\stack|S46|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S45|U1|dffs\(1)))) # (!stack_mode(0) & (\stack|S47|U1|dffs\(1))))) # (!\stack_en~regout\ & (((\stack|S45|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S47|U1|dffs\(1),
	datab => \stack|S45|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S46|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y16_N30
\stack|S46|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S46|U1|dffs[1]~feeder_combout\ = \stack|S46|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S46|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S46|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y16_N31
\stack|S46|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S46|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[46]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S46|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N16
\stack|S45|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S44|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S46|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S44|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S44|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S46|U1|dffs\(1),
	combout => \stack|S45|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y14_N6
\stack|S45|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S45|U1|dffs[1]~feeder_combout\ = \stack|S45|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S45|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S45|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y14_N7
\stack|S45|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S45|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[45]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S45|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N12
\stack|S44|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S43|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S45|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S43|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S43|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S45|U1|dffs\(1),
	combout => \stack|S44|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X22_Y21_N18
\stack|S44|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S44|U1|dffs[1]~feeder_combout\ = \stack|S44|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S44|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S44|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y21_N19
\stack|S44|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S44|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[44]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S44|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N10
\stack|S43|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S42|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S44|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S42|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S44|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S42|U1|dffs\(1),
	combout => \stack|S43|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X16_Y16_N20
\stack|S43|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S43|U1|dffs[1]~feeder_combout\ = \stack|S43|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S43|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S43|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X16_Y16_N21
\stack|S43|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S43|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[43]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S43|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N20
\stack|S42|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S41|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S43|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S41|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S41|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S43|U1|dffs\(1),
	combout => \stack|S42|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y15_N18
\stack|S42|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S42|U1|dffs[1]~feeder_combout\ = \stack|S42|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S42|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S42|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y15_N19
\stack|S42|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S42|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[42]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S42|U1|dffs\(1));

-- Location: LCCOMB_X22_Y21_N22
\stack|S41|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S40|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S42|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S40|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S40|U1|dffs\(1),
	datad => \stack|S42|U1|dffs\(1),
	combout => \stack|S41|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X22_Y15_N10
\stack|S41|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S41|U1|dffs[1]~feeder_combout\ = \stack|S41|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S41|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S41|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X22_Y15_N11
\stack|S41|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S41|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[41]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S41|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N26
\stack|S40|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S39|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S41|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S39|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S39|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack|S41|U1|dffs\(1),
	combout => \stack|S40|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y15_N12
\stack|S40|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S40|U1|dffs[1]~feeder_combout\ = \stack|S40|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S40|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S40|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y15_N13
\stack|S40|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S40|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[40]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S40|U1|dffs\(1));

-- Location: LCCOMB_X22_Y21_N12
\stack|S39|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S38|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S40|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S38|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S40|U1|dffs\(1),
	datad => \stack|S38|U1|dffs\(1),
	combout => \stack|S39|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y20_N26
\stack|S39|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S39|U1|dffs[1]~feeder_combout\ = \stack|S39|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S39|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S39|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y20_N27
\stack|S39|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S39|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[39]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S39|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N6
\stack|S38|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S37|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S39|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S37|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|S37|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack|S39|U1|dffs\(1),
	combout => \stack|S38|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X24_Y14_N8
\stack|S38|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S38|U1|dffs[1]~feeder_combout\ = \stack|S38|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S38|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S38|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X24_Y14_N9
\stack|S38|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S38|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[38]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S38|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N14
\stack|M0|auto_generated|_~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~137_combout\ = (card_addr(0) & (((\stack|S37|U1|dffs\(1)) # (card_addr(1))))) # (!card_addr(0) & (\stack|S36|U1|dffs\(1) & ((!card_addr(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S36|U1|dffs\(1),
	datab => \stack|S37|U1|dffs\(1),
	datac => card_addr(0),
	datad => card_addr(1),
	combout => \stack|M0|auto_generated|_~137_combout\);

-- Location: LCCOMB_X23_Y16_N28
\stack|M0|auto_generated|_~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~138_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~137_combout\ & ((\stack|S39|U1|dffs\(1)))) # (!\stack|M0|auto_generated|_~137_combout\ & (\stack|S38|U1|dffs\(1))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S38|U1|dffs\(1),
	datac => \stack|M0|auto_generated|_~137_combout\,
	datad => \stack|S39|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~138_combout\);

-- Location: LCCOMB_X22_Y16_N8
\stack|M0|auto_generated|_~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~139_combout\ = (!card_addr(3) & (card_addr(2) & (card_addr(5) & \stack|M0|auto_generated|_~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(2),
	datac => card_addr(5),
	datad => \stack|M0|auto_generated|_~138_combout\,
	combout => \stack|M0|auto_generated|_~139_combout\);

-- Location: LCCOMB_X21_Y13_N4
\stack|S33|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S32|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S34|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S32|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S32|U1|dffs\(1),
	datab => \stack|S34|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S33|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X20_Y13_N16
\stack|S33|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S33|U1|dffs[1]~feeder_combout\ = \stack|S33|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S33|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S33|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X20_Y13_N17
\stack|S33|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S33|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[33]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S33|U1|dffs\(1));

-- Location: LCCOMB_X21_Y16_N2
\stack|M0|auto_generated|_~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~140_combout\ = (card_addr(0) & (card_addr(1))) # (!card_addr(0) & ((card_addr(1) & ((\stack|S34|U1|dffs\(1)))) # (!card_addr(1) & (\stack|S32|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => card_addr(1),
	datac => \stack|S32|U1|dffs\(1),
	datad => \stack|S34|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~140_combout\);

-- Location: LCCOMB_X21_Y16_N4
\stack|M0|auto_generated|_~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~141_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|_~140_combout\ & ((\stack|S35|U1|dffs\(1)))) # (!\stack|M0|auto_generated|_~140_combout\ & (\stack|S33|U1|dffs\(1))))) # (!card_addr(0) & 
-- (((\stack|M0|auto_generated|_~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => \stack|S33|U1|dffs\(1),
	datac => \stack|S35|U1|dffs\(1),
	datad => \stack|M0|auto_generated|_~140_combout\,
	combout => \stack|M0|auto_generated|_~141_combout\);

-- Location: LCCOMB_X21_Y16_N30
\stack|M0|auto_generated|_~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~142_combout\ = (card_addr(5) & ((card_addr(4)) # ((\stack|M0|auto_generated|_~141_combout\ & \stack|M0|auto_generated|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(5),
	datab => card_addr(4),
	datac => \stack|M0|auto_generated|_~141_combout\,
	datad => \stack|M0|auto_generated|_~12_combout\,
	combout => \stack|M0|auto_generated|_~142_combout\);

-- Location: LCCOMB_X23_Y16_N18
\stack|M0|auto_generated|_~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~147_combout\ = (card_addr(1) & ((card_addr(0) & ((\stack|S43|U1|dffs\(1)))) # (!card_addr(0) & (\stack|S42|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S42|U1|dffs\(1),
	datac => card_addr(0),
	datad => \stack|S43|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~147_combout\);

-- Location: LCCOMB_X23_Y16_N4
\stack|M0|auto_generated|_~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~146_combout\ = (!card_addr(1) & ((card_addr(0) & ((\stack|S41|U1|dffs\(1)))) # (!card_addr(0) & (\stack|S40|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => card_addr(0),
	datac => \stack|S40|U1|dffs\(1),
	datad => \stack|S41|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~146_combout\);

-- Location: LCCOMB_X19_Y18_N6
\stack|S50|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S49|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S51|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S49|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S51|U1|dffs\(1),
	datab => \stack|S49|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S50|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y18_N8
\stack|S50|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S50|U1|dffs[1]~feeder_combout\ = \stack|S50|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S50|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S50|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y18_N9
\stack|S50|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S50|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[50]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S50|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N24
\stack|S49|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S48|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S50|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S48|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S50|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S48|U1|dffs\(1),
	combout => \stack|S49|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y18_N30
\stack|S49|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S49|U1|dffs[1]~feeder_combout\ = \stack|S49|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S49|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S49|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y18_N31
\stack|S49|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S49|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[49]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S49|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N22
\stack|S48|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S47|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S49|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S47|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack_en~regout\,
	datac => \stack|S49|U1|dffs\(1),
	datad => \stack|S47|U1|dffs\(1),
	combout => \stack|S48|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X19_Y18_N12
\stack|S48|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S48|U1|dffs[1]~feeder_combout\ = \stack|S48|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S48|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S48|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X19_Y18_N13
\stack|S48|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S48|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[48]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S48|U1|dffs\(1));

-- Location: LCCOMB_X19_Y16_N2
\stack|S47|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S46|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S48|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S46|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S46|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S48|U1|dffs\(1),
	combout => \stack|S47|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y16_N30
\stack|S47|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S47|U1|dffs[1]~feeder_combout\ = \stack|S47|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S47|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S47|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y16_N31
\stack|S47|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S47|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[47]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S47|U1|dffs\(1));

-- Location: LCCOMB_X23_Y16_N20
\stack|M0|auto_generated|_~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~144_combout\ = (card_addr(1) & ((card_addr(0) & (\stack|S47|U1|dffs\(1))) # (!card_addr(0) & ((\stack|S46|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S47|U1|dffs\(1),
	datac => \stack|S46|U1|dffs\(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~144_combout\);

-- Location: LCCOMB_X23_Y16_N2
\stack|M0|auto_generated|_~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~143_combout\ = (!card_addr(1) & ((card_addr(0) & (\stack|S45|U1|dffs\(1))) # (!card_addr(0) & ((\stack|S44|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => card_addr(0),
	datac => \stack|S45|U1|dffs\(1),
	datad => \stack|S44|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~143_combout\);

-- Location: LCCOMB_X23_Y16_N10
\stack|M0|auto_generated|_~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~145_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|_~144_combout\) # (\stack|M0|auto_generated|_~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datac => \stack|M0|auto_generated|_~144_combout\,
	datad => \stack|M0|auto_generated|_~143_combout\,
	combout => \stack|M0|auto_generated|_~145_combout\);

-- Location: LCCOMB_X23_Y16_N24
\stack|M0|auto_generated|_~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~148_combout\ = (\stack|M0|auto_generated|_~145_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|_~147_combout\) # (\stack|M0|auto_generated|_~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(2),
	datab => \stack|M0|auto_generated|_~147_combout\,
	datac => \stack|M0|auto_generated|_~146_combout\,
	datad => \stack|M0|auto_generated|_~145_combout\,
	combout => \stack|M0|auto_generated|_~148_combout\);

-- Location: LCCOMB_X22_Y16_N14
\stack|M0|auto_generated|_~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~149_combout\ = (\stack|M0|auto_generated|_~139_combout\) # ((\stack|M0|auto_generated|_~142_combout\) # ((\stack|M0|auto_generated|_~25_combout\ & \stack|M0|auto_generated|_~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~25_combout\,
	datab => \stack|M0|auto_generated|_~139_combout\,
	datac => \stack|M0|auto_generated|_~142_combout\,
	datad => \stack|M0|auto_generated|_~148_combout\,
	combout => \stack|M0|auto_generated|_~149_combout\);

-- Location: LCCOMB_X25_Y17_N6
\stack|S2|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & ((\stack|S1|U1|dffs\(1)))) # (!stack_mode(0) & (\stack|S3|U1|dffs\(1))))) # (!\stack_en~regout\ & (((\stack|S1|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(1),
	datab => \stack|S1|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S2|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X18_Y20_N24
\stack|S2|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S2|U1|dffs[1]~feeder_combout\ = \stack|S2|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S2|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S2|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X18_Y20_N25
\stack|S2|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S2|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S2|U1|dffs\(1));

-- Location: LCCOMB_X25_Y15_N28
\stack|S1|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S0|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S2|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S0|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S0|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S2|U1|dffs\(1),
	combout => \stack|S1|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X25_Y15_N18
\stack|S1|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S1|U1|dffs[1]~feeder_combout\ = \stack|S1|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S1|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S1|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X25_Y15_N19
\stack|S1|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S1|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S1|U1|dffs\(1));

-- Location: LCCOMB_X26_Y19_N24
\stack|S0|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\card_in~combout\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S1|U1|dffs\(1)))) # (!\stack_en~regout\ & (\card_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_in~combout\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S1|U1|dffs\(1),
	combout => \stack|S0|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X27_Y16_N10
\stack|S0|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S0|U1|dffs[1]~feeder_combout\ = \stack|S0|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S0|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S0|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X27_Y16_N11
\stack|S0|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S0|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[0]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S0|U1|dffs\(1));

-- Location: LCCOMB_X21_Y16_N26
\stack|M0|auto_generated|_~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~129_combout\ = (card_addr(0) & (card_addr(1))) # (!card_addr(0) & ((card_addr(1) & ((\stack|S2|U1|dffs\(1)))) # (!card_addr(1) & (\stack|S0|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(0),
	datab => card_addr(1),
	datac => \stack|S0|U1|dffs\(1),
	datad => \stack|S2|U1|dffs\(1),
	combout => \stack|M0|auto_generated|_~129_combout\);

-- Location: LCCOMB_X21_Y16_N0
\stack|M0|auto_generated|_~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~130_combout\ = (card_addr(0) & ((\stack|M0|auto_generated|_~129_combout\ & (\stack|S3|U1|dffs\(1))) # (!\stack|M0|auto_generated|_~129_combout\ & ((\stack|S1|U1|dffs\(1)))))) # (!card_addr(0) & 
-- (((\stack|M0|auto_generated|_~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(1),
	datab => card_addr(0),
	datac => \stack|S1|U1|dffs\(1),
	datad => \stack|M0|auto_generated|_~129_combout\,
	combout => \stack|M0|auto_generated|_~130_combout\);

-- Location: LCCOMB_X26_Y16_N20
\stack|S11|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S10|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S12|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S10|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S12|U1|dffs\(1),
	datab => \stack|S10|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S11|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X24_Y16_N30
\stack|S11|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S11|U1|dffs[1]~feeder_combout\ = \stack|S11|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S11|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S11|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X24_Y16_N31
\stack|S11|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S11|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S11|U1|dffs\(1));

-- Location: LCCOMB_X24_Y16_N14
\stack|S10|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S9|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S11|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S9|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S9|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack|S11|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S10|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X25_Y16_N26
\stack|S10|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S10|U1|dffs[1]~feeder_combout\ = \stack|S10|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S10|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S10|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X25_Y16_N27
\stack|S10|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S10|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S10|U1|dffs\(1));

-- Location: LCCOMB_X25_Y16_N18
\stack|S9|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S8|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S10|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S8|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S8|U1|dffs\(1),
	datab => stack_mode(0),
	datac => \stack_en~regout\,
	datad => \stack|S10|U1|dffs\(1),
	combout => \stack|S9|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X24_Y16_N24
\stack|S9|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S9|U1|dffs[1]~feeder_combout\ = \stack|S9|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S9|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S9|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X24_Y16_N25
\stack|S9|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S9|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S9|U1|dffs\(1));

-- Location: LCCOMB_X26_Y16_N22
\stack|S8|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S7|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S9|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S7|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S7|U1|dffs\(1),
	datac => \stack|S9|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S8|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X26_Y19_N4
\stack|S8|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S8|U1|dffs[1]~feeder_combout\ = \stack|S8|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S8|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S8|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X26_Y19_N5
\stack|S8|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S8|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S8|U1|dffs\(1));

-- Location: LCCOMB_X26_Y17_N4
\stack|S7|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (\stack|S6|U1|dffs\(1))) # (!stack_mode(0) & ((\stack_en~regout\ & ((\stack|S8|U1|dffs\(1)))) # (!\stack_en~regout\ & (\stack|S6|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S6|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S8|U1|dffs\(1),
	combout => \stack|S7|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X26_Y17_N26
\stack|S7|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S7|U1|dffs[1]~feeder_combout\ = \stack|S7|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|S7|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S7|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X26_Y17_N27
\stack|S7|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S7|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[7]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S7|U1|dffs\(1));

-- Location: LCCOMB_X25_Y17_N28
\stack|S4|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U0|$00000|auto_generated|result_node[1]~5_combout\ = (\stack_en~regout\ & ((stack_mode(0) & (\stack|S3|U1|dffs\(1))) # (!stack_mode(0) & ((\stack|S5|U1|dffs\(1)))))) # (!\stack_en~regout\ & (\stack|S3|U1|dffs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S3|U1|dffs\(1),
	datab => \stack|S5|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => stack_mode(0),
	combout => \stack|S4|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X25_Y17_N16
\stack|S4|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S4|U1|dffs[1]~feeder_combout\ = \stack|S4|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S4|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S4|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X25_Y17_N17
\stack|S4|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S4|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[4]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S4|U1|dffs\(1));

-- Location: LCCOMB_X26_Y17_N30
\stack|S5|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S4|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S6|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S4|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S6|U1|dffs\(1),
	datac => \stack_en~regout\,
	datad => \stack|S4|U1|dffs\(1),
	combout => \stack|S5|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X25_Y17_N26
\stack|S5|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S5|U1|dffs[1]~feeder_combout\ = \stack|S5|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S5|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S5|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X25_Y17_N27
\stack|S5|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S5|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[5]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S5|U1|dffs\(1));

-- Location: LCCOMB_X26_Y16_N2
\stack|S6|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S5|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S7|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S5|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stack_mode(0),
	datab => \stack|S7|U1|dffs\(1),
	datac => \stack|S5|U1|dffs\(1),
	datad => \stack_en~regout\,
	combout => \stack|S6|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X27_Y16_N24
\stack|S6|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S6|U1|dffs[1]~feeder_combout\ = \stack|S6|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S6|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S6|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X27_Y16_N25
\stack|S6|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S6|U1|dffs[1]~feeder_combout\,
	sdata => \stack|pop~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S6|U1|dffs\(1));

-- Location: LCCOMB_X26_Y16_N12
\stack|M0|auto_generated|_~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~127_combout\ = (card_addr(1) & (((card_addr(0))))) # (!card_addr(1) & ((card_addr(0) & (\stack|S5|U1|dffs\(1))) # (!card_addr(0) & ((\stack|S4|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S5|U1|dffs\(1),
	datab => \stack|S4|U1|dffs\(1),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|_~127_combout\);

-- Location: LCCOMB_X26_Y16_N10
\stack|M0|auto_generated|_~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|_~128_combout\ = (card_addr(1) & ((\stack|M0|auto_generated|_~127_combout\ & ((\stack|S7|U1|dffs\(1)))) # (!\stack|M0|auto_generated|_~127_combout\ & (\stack|S6|U1|dffs\(1))))) # (!card_addr(1) & 
-- (((\stack|M0|auto_generated|_~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S6|U1|dffs\(1),
	datac => \stack|S7|U1|dffs\(1),
	datad => \stack|M0|auto_generated|_~127_combout\,
	combout => \stack|M0|auto_generated|_~128_combout\);

-- Location: LCCOMB_X22_Y16_N24
\stack|M0|auto_generated|result_node[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~85_combout\ = (!card_addr(3) & ((card_addr(2) & ((\stack|M0|auto_generated|_~128_combout\))) # (!card_addr(2) & (\stack|M0|auto_generated|_~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(3),
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|_~130_combout\,
	datad => \stack|M0|auto_generated|_~128_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~85_combout\);

-- Location: LCCOMB_X25_Y16_N30
\stack|M0|auto_generated|result_node[1]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~90_combout\ = (!card_addr(0) & ((card_addr(1) & (\stack|S10|U1|dffs\(1))) # (!card_addr(1) & ((\stack|S8|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S10|U1|dffs\(1),
	datab => card_addr(1),
	datac => card_addr(0),
	datad => \stack|S8|U1|dffs\(1),
	combout => \stack|M0|auto_generated|result_node[1]~90_combout\);

-- Location: LCCOMB_X26_Y16_N18
\stack|S12|U0|$00000|auto_generated|result_node[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U0|$00000|auto_generated|result_node[1]~5_combout\ = (stack_mode(0) & (((\stack|S11|U1|dffs\(1))))) # (!stack_mode(0) & ((\stack_en~regout\ & (\stack|S13|U1|dffs\(1))) # (!\stack_en~regout\ & ((\stack|S11|U1|dffs\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(1),
	datab => \stack|S11|U1|dffs\(1),
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|S12|U0|$00000|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y14_N8
\stack|S12|U1|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|S12|U1|dffs[1]~feeder_combout\ = \stack|S12|U0|$00000|auto_generated|result_node[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stack|S12|U0|$00000|auto_generated|result_node[1]~5_combout\,
	combout => \stack|S12|U1|dffs[1]~feeder_combout\);

-- Location: LCFF_X23_Y14_N9
\stack|S12|U1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|S12|U1|dffs[1]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \stack|pop~1_combout\,
	ena => \stack|enableArray[12]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|S12|U1|dffs\(1));

-- Location: LCCOMB_X22_Y16_N2
\stack|M0|auto_generated|result_node[1]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~87_combout\ = (!card_addr(0) & ((card_addr(1) & ((\stack|S14|U1|dffs\(1)))) # (!card_addr(1) & (\stack|S12|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => card_addr(1),
	datab => \stack|S12|U1|dffs\(1),
	datac => \stack|S14|U1|dffs\(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[1]~87_combout\);

-- Location: LCCOMB_X26_Y16_N24
\stack|M0|auto_generated|result_node[1]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~86_combout\ = (card_addr(0) & ((card_addr(1) & ((\stack|S15|U1|dffs\(1)))) # (!card_addr(1) & (\stack|S13|U1|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|S13|U1|dffs\(1),
	datab => \stack|S15|U1|dffs\(1),
	datac => card_addr(1),
	datad => card_addr(0),
	combout => \stack|M0|auto_generated|result_node[1]~86_combout\);

-- Location: LCCOMB_X22_Y16_N12
\stack|M0|auto_generated|result_node[1]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~88_combout\ = (card_addr(2) & ((\stack|M0|auto_generated|result_node[1]~87_combout\) # (\stack|M0|auto_generated|result_node[1]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stack|M0|auto_generated|result_node[1]~87_combout\,
	datac => card_addr(2),
	datad => \stack|M0|auto_generated|result_node[1]~86_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~88_combout\);

-- Location: LCCOMB_X22_Y16_N18
\stack|M0|auto_generated|result_node[1]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~91_combout\ = (\stack|M0|auto_generated|result_node[1]~88_combout\) # ((!card_addr(2) & ((\stack|M0|auto_generated|result_node[1]~89_combout\) # (\stack|M0|auto_generated|result_node[1]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[1]~89_combout\,
	datab => card_addr(2),
	datac => \stack|M0|auto_generated|result_node[1]~90_combout\,
	datad => \stack|M0|auto_generated|result_node[1]~88_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~91_combout\);

-- Location: LCCOMB_X22_Y16_N28
\stack|M0|auto_generated|result_node[1]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~92_combout\ = (\stack|M0|auto_generated|result_node[5]~9_combout\ & ((\stack|M0|auto_generated|result_node[1]~85_combout\) # ((card_addr(3) & \stack|M0|auto_generated|result_node[1]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|result_node[5]~9_combout\,
	datab => card_addr(3),
	datac => \stack|M0|auto_generated|result_node[1]~85_combout\,
	datad => \stack|M0|auto_generated|result_node[1]~91_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~92_combout\);

-- Location: LCCOMB_X22_Y16_N4
\stack|M0|auto_generated|result_node[1]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|M0|auto_generated|result_node[1]~101_combout\ = (\stack|M0|auto_generated|result_node[1]~92_combout\) # ((\stack|M0|auto_generated|_~149_combout\ & (\stack|M0|auto_generated|_~155_combout\)) # (!\stack|M0|auto_generated|_~149_combout\ & 
-- ((\stack|M0|auto_generated|result_node[1]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|M0|auto_generated|_~155_combout\,
	datab => \stack|M0|auto_generated|result_node[1]~100_combout\,
	datac => \stack|M0|auto_generated|_~149_combout\,
	datad => \stack|M0|auto_generated|result_node[1]~92_combout\,
	combout => \stack|M0|auto_generated|result_node[1]~101_combout\);

-- Location: LCFF_X22_Y19_N11
\play_card_value[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \stack|M0|auto_generated|result_node[1]~101_combout\,
	sload => VCC,
	ena => \play_card_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => play_card_value(1));

-- Location: LCCOMB_X23_Y19_N14
\Mux46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (play_card_value(1) & state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => play_card_value(1),
	datac => state(2),
	combout => \Mux46~0_combout\);

-- Location: LCFF_X23_Y19_N15
\card_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux46~0_combout\,
	ena => \card_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_out[1]~reg0_regout\);

-- Location: LCFF_X22_Y19_N1
\play_card_value[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \stack|M0|auto_generated|result_node\(2),
	sload => VCC,
	ena => \play_card_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => play_card_value(2));

-- Location: LCCOMB_X23_Y19_N4
\Mux45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (state(2) & play_card_value(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => play_card_value(2),
	combout => \Mux45~0_combout\);

-- Location: LCFF_X23_Y19_N5
\card_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux45~0_combout\,
	ena => \card_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_out[2]~reg0_regout\);

-- Location: LCFF_X22_Y19_N3
\play_card_value[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|M0|auto_generated|result_node\(3),
	ena => \play_card_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => play_card_value(3));

-- Location: LCCOMB_X23_Y19_N2
\Mux44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (state(2) & play_card_value(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => play_card_value(3),
	combout => \Mux44~0_combout\);

-- Location: LCFF_X23_Y19_N3
\card_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux44~0_combout\,
	ena => \card_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_out[3]~reg0_regout\);

-- Location: LCFF_X22_Y19_N21
\play_card_value[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \stack|M0|auto_generated|result_node[4]~16_combout\,
	sload => VCC,
	ena => \play_card_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => play_card_value(4));

-- Location: LCCOMB_X23_Y19_N8
\Mux43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (state(2) & play_card_value(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => play_card_value(4),
	combout => \Mux43~0_combout\);

-- Location: LCFF_X23_Y19_N9
\card_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux43~0_combout\,
	ena => \card_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_out[4]~reg0_regout\);

-- Location: LCCOMB_X21_Y19_N8
\play_card_value[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \play_card_value[5]~feeder_combout\ = \stack|M0|auto_generated|result_node[5]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stack|M0|auto_generated|result_node[5]~49_combout\,
	combout => \play_card_value[5]~feeder_combout\);

-- Location: LCFF_X21_Y19_N9
\play_card_value[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \play_card_value[5]~feeder_combout\,
	ena => \play_card_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => play_card_value(5));

-- Location: LCCOMB_X23_Y19_N18
\Mux42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (state(2) & play_card_value(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(2),
	datad => play_card_value(5),
	combout => \Mux42~0_combout\);

-- Location: LCFF_X23_Y19_N19
\card_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux42~0_combout\,
	ena => \card_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_out[5]~reg0_regout\);

-- Location: LCCOMB_X16_Y20_N0
\stack|pop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|pop~0_combout\ = (stack_mode(0) & \stack_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => stack_mode(0),
	datad => \stack_en~regout\,
	combout => \stack|pop~0_combout\);

-- Location: LCCOMB_X16_Y20_N6
\stack|C0|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita0~combout\ = \stack|C0|auto_generated|safe_q\(0) $ (((VCC) # (!\stack|pop~0_combout\)))
-- \stack|C0|auto_generated|counter_comb_bita0~COUT\ = CARRY(\stack|C0|auto_generated|safe_q\(0) $ (!\stack|pop~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(0),
	datab => \stack|pop~0_combout\,
	datad => VCC,
	combout => \stack|C0|auto_generated|counter_comb_bita0~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X16_Y20_N8
\stack|C0|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita1~combout\ = (\stack|C0|auto_generated|counter_comb_bita0~COUT\ & (\stack|C0|auto_generated|safe_q\(1) $ (((\stack|pop~0_combout\) # (VCC))))) # (!\stack|C0|auto_generated|counter_comb_bita0~COUT\ & 
-- ((\stack|C0|auto_generated|safe_q\(1)) # ((GND))))
-- \stack|C0|auto_generated|counter_comb_bita1~COUT\ = CARRY((\stack|C0|auto_generated|safe_q\(1) $ (\stack|pop~0_combout\)) # (!\stack|C0|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(1),
	datab => \stack|pop~0_combout\,
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita0~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita1~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X16_Y20_N9
\stack|C0|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|C0|auto_generated|counter_comb_bita1~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \stack|C0|auto_generated|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(1));

-- Location: LCCOMB_X16_Y20_N10
\stack|C0|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita2~combout\ = (\stack|C0|auto_generated|counter_comb_bita1~COUT\ & (\stack|C0|auto_generated|safe_q\(2) & ((VCC)))) # (!\stack|C0|auto_generated|counter_comb_bita1~COUT\ & (\stack|C0|auto_generated|safe_q\(2) $ 
-- (((VCC) # (!\stack|pop~0_combout\)))))
-- \stack|C0|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\stack|C0|auto_generated|counter_comb_bita1~COUT\ & (\stack|C0|auto_generated|safe_q\(2) $ (!\stack|pop~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(2),
	datab => \stack|pop~0_combout\,
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita1~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita2~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X16_Y20_N12
\stack|C0|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita3~combout\ = (\stack|C0|auto_generated|counter_comb_bita2~COUT\ & (\stack|C0|auto_generated|safe_q\(3) $ (((\stack|pop~0_combout\) # (VCC))))) # (!\stack|C0|auto_generated|counter_comb_bita2~COUT\ & 
-- ((\stack|C0|auto_generated|safe_q\(3)) # ((GND))))
-- \stack|C0|auto_generated|counter_comb_bita3~COUT\ = CARRY((\stack|C0|auto_generated|safe_q\(3) $ (\stack|pop~0_combout\)) # (!\stack|C0|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(3),
	datab => \stack|pop~0_combout\,
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita2~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita3~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X16_Y20_N13
\stack|C0|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|C0|auto_generated|counter_comb_bita3~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \stack|C0|auto_generated|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(3));

-- Location: LCCOMB_X16_Y20_N26
\stack|C0|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~0_combout\ = (\stack|C0|auto_generated|safe_q\(0)) # ((\stack|C0|auto_generated|safe_q\(1)) # (\stack|C0|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(0),
	datac => \stack|C0|auto_generated|safe_q\(1),
	datad => \stack|C0|auto_generated|safe_q\(3),
	combout => \stack|C0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X16_Y20_N14
\stack|C0|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita4~combout\ = (\stack|C0|auto_generated|counter_comb_bita3~COUT\ & (((\stack|C0|auto_generated|safe_q\(4) & VCC)))) # (!\stack|C0|auto_generated|counter_comb_bita3~COUT\ & (\stack|C0|auto_generated|safe_q\(4) $ 
-- (((VCC) # (!\stack|pop~0_combout\)))))
-- \stack|C0|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\stack|C0|auto_generated|counter_comb_bita3~COUT\ & (\stack|pop~0_combout\ $ (!\stack|C0|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|pop~0_combout\,
	datab => \stack|C0|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \stack|C0|auto_generated|counter_comb_bita3~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita4~combout\,
	cout => \stack|C0|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X16_Y20_N15
\stack|C0|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|C0|auto_generated|counter_comb_bita4~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \stack|C0|auto_generated|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(4));

-- Location: LCFF_X16_Y20_N11
\stack|C0|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|C0|auto_generated|counter_comb_bita2~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \stack|C0|auto_generated|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(2));

-- Location: LCCOMB_X16_Y20_N28
\stack|C0|auto_generated|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~1_combout\ = (\stack|C0|auto_generated|safe_q\(5) & (((!\stack|C0|auto_generated|safe_q\(2)) # (!stack_mode(0))) # (!\stack|C0|auto_generated|safe_q\(4)))) # (!\stack|C0|auto_generated|safe_q\(5) & 
-- ((\stack|C0|auto_generated|safe_q\(4)) # ((stack_mode(0)) # (\stack|C0|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(5),
	datab => \stack|C0|auto_generated|safe_q\(4),
	datac => stack_mode(0),
	datad => \stack|C0|auto_generated|safe_q\(2),
	combout => \stack|C0|auto_generated|_~1_combout\);

-- Location: LCCOMB_X16_Y20_N2
\stack|C0|auto_generated|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|_~2_combout\ = (\stack_en~regout\ & ((\stack|C0|auto_generated|_~0_combout\) # (\stack|C0|auto_generated|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stack_en~regout\,
	datab => \stack|C0|auto_generated|_~0_combout\,
	datad => \stack|C0|auto_generated|_~1_combout\,
	combout => \stack|C0|auto_generated|_~2_combout\);

-- Location: LCFF_X16_Y20_N7
\stack|C0|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|C0|auto_generated|counter_comb_bita0~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \stack|C0|auto_generated|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(0));

-- Location: LCCOMB_X16_Y20_N16
\stack|C0|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \stack|C0|auto_generated|counter_comb_bita5~combout\ = \stack|C0|auto_generated|safe_q\(5) $ (\stack|C0|auto_generated|counter_comb_bita4~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stack|C0|auto_generated|safe_q\(5),
	cin => \stack|C0|auto_generated|counter_comb_bita4~COUT\,
	combout => \stack|C0|auto_generated|counter_comb_bita5~combout\);

-- Location: LCFF_X16_Y20_N17
\stack|C0|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stack|C0|auto_generated|counter_comb_bita5~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \stack|C0|auto_generated|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stack|C0|auto_generated|safe_q\(5));

-- Location: LCCOMB_X19_Y21_N2
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (state(4) & (state(0) & (!state(1) & !state(2)))) # (!state(4) & ((state(0) & (state(1) $ (state(2)))) # (!state(0) & (!state(1) & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(4),
	datab => state(0),
	datac => state(1),
	datad => state(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X19_Y21_N16
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\request_card~reg0_regout\ & ((state(3)) # (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \request_card~reg0_regout\,
	datad => state(3),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X19_Y21_N4
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\) # ((\state[1]~2_combout\ & (state(0) & state(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state[1]~2_combout\,
	datab => state(0),
	datac => \Mux0~1_combout\,
	datad => state(3),
	combout => \Mux0~2_combout\);

-- Location: LCFF_X19_Y21_N5
\request_card~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Mux0~2_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \request_card~reg0_regout\);

-- Location: LCCOMB_X23_Y21_N0
\done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \done~1_combout\ = (state(2) & (\done~reg0_regout\ & ((state(3)) # (state(1))))) # (!state(2) & ((state(3) & (state(1) & \done~reg0_regout\)) # (!state(3) & (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(3),
	datac => state(1),
	datad => \done~reg0_regout\,
	combout => \done~1_combout\);

-- Location: LCCOMB_X23_Y21_N26
\done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\reset~combout\ & (((!\done~reg0_regout\)))) # (!\reset~combout\ & ((state(4) & ((!\done~reg0_regout\))) # (!state(4) & (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \reset~combout\,
	datac => state(4),
	datad => \done~reg0_regout\,
	combout => \done~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\done~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \done~2_combout\ = (\done~1_combout\ & ((\done~reg0_regout\) # ((!state(2) & !\done~0_combout\)))) # (!\done~1_combout\ & (((\done~reg0_regout\ & !\done~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \done~1_combout\,
	datac => \done~reg0_regout\,
	datad => \done~0_combout\,
	combout => \done~2_combout\);

-- Location: LCFF_X23_Y21_N29
\done~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \done~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done~reg0_regout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\card_out[0]~I\ : cycloneii_io
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
	datain => \card_out[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_card_out(0));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\card_out[1]~I\ : cycloneii_io
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
	datain => \card_out[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_card_out(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\card_out[2]~I\ : cycloneii_io
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
	datain => \card_out[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_card_out(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\card_out[3]~I\ : cycloneii_io
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
	datain => \card_out[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_card_out(3));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\card_out[4]~I\ : cycloneii_io
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
	datain => \card_out[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_card_out(4));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\card_out[5]~I\ : cycloneii_io
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
	datain => \card_out[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_card_out(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num_cards[0]~I\ : cycloneii_io
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
	datain => \stack|C0|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num_cards(0));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num_cards[1]~I\ : cycloneii_io
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
	datain => \stack|C0|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num_cards(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num_cards[2]~I\ : cycloneii_io
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
	datain => \stack|C0|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num_cards(2));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num_cards[3]~I\ : cycloneii_io
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
	datain => \stack|C0|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num_cards(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num_cards[4]~I\ : cycloneii_io
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
	datain => \stack|C0|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num_cards(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\num_cards[5]~I\ : cycloneii_io
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
	datain => \stack|C0|auto_generated|safe_q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_num_cards(5));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\request_card~I\ : cycloneii_io
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
	datain => \request_card~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_request_card);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\done~I\ : cycloneii_io
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
	datain => \done~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_done);
END structure;


