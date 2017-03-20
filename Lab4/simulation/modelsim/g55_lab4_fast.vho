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

-- DATE "03/20/2017 09:38:49"

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

ENTITY 	g55_rules IS
    PORT (
	play_pile_top_card : IN std_logic_vector(5 DOWNTO 0);
	card_to_play : IN std_logic_vector(5 DOWNTO 0);
	legal_play : OUT std_logic
	);
END g55_rules;

-- Design Ports Information
-- legal_play	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- play_pile_top_card[5]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[3]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[4]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[2]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[0]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- play_pile_top_card[1]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_to_play[5]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_to_play[3]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_to_play[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_to_play[2]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_to_play[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- card_to_play[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g55_rules IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_play_pile_top_card : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_card_to_play : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_legal_play : std_logic;
SIGNAL \DEC1|A1|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \DEC1|A1|b2v_inst4|Cout~0_combout\ : std_logic;
SIGNAL \DEC1|A1|b2v_inst7|S~0_combout\ : std_logic;
SIGNAL \DEC2|A5|b2v_inst2|Cout~0_combout\ : std_logic;
SIGNAL \DEC2|A5|b2v_inst2|Cout~2_combout\ : std_logic;
SIGNAL \DEC1|A5|b2v_inst2|Cout~0_combout\ : std_logic;
SIGNAL \DEC1|A5|b2v_inst2|Cout~2_combout\ : std_logic;
SIGNAL \DEC1|A5|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \DEC1|A5|b2v_inst3|S~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ : std_logic;
SIGNAL \DEC1|A1|b2v_inst7|S~1_combout\ : std_logic;
SIGNAL \DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \DEC2|A1|b2v_inst3|Cout~0_combout\ : std_logic;
SIGNAL \DEC2|A1|b2v_inst4|Cout~0_combout\ : std_logic;
SIGNAL \DEC2|A1|b2v_inst6|S~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \DEC1|A5|b2v_inst2|Cout~1_combout\ : std_logic;
SIGNAL \DEC2|A1|b2v_inst7|S~0_combout\ : std_logic;
SIGNAL \DEC2|A1|b2v_inst7|S~1_combout\ : std_logic;
SIGNAL \DEC2|A5|b2v_inst2|Cout~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \DEC2|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\ : std_logic;
SIGNAL \DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \DEC1|A1|b2v_inst6|S~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \DEC2|A5|b2v_inst3|S~0_combout\ : std_logic;
SIGNAL \DEC2|A5|b2v_inst3|S~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \legal_play~0_combout\ : std_logic;
SIGNAL \play_pile_top_card~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \card_to_play~combout\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_play_pile_top_card <= play_pile_top_card;
ww_card_to_play <= card_to_play;
legal_play <= ww_legal_play;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X22_Y8_N16
\DEC1|A1|b2v_inst3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A1|b2v_inst3|Cout~0_combout\ = (\play_pile_top_card~combout\(3) & ((\play_pile_top_card~combout\(1)) # ((\play_pile_top_card~combout\(2) & \play_pile_top_card~combout\(0))))) # (!\play_pile_top_card~combout\(3) & (\play_pile_top_card~combout\(2) & 
-- (\play_pile_top_card~combout\(0) & \play_pile_top_card~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \play_pile_top_card~combout\(3),
	datac => \play_pile_top_card~combout\(0),
	datad => \play_pile_top_card~combout\(1),
	combout => \DEC1|A1|b2v_inst3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N26
\DEC1|A1|b2v_inst4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A1|b2v_inst4|Cout~0_combout\ = (\play_pile_top_card~combout\(2) & ((\play_pile_top_card~combout\(4)) # (\DEC1|A1|b2v_inst3|Cout~0_combout\))) # (!\play_pile_top_card~combout\(2) & (\play_pile_top_card~combout\(4) & 
-- \DEC1|A1|b2v_inst3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \play_pile_top_card~combout\(4),
	datac => \DEC1|A1|b2v_inst3|Cout~0_combout\,
	combout => \DEC1|A1|b2v_inst4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\DEC1|A1|b2v_inst7|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A1|b2v_inst7|S~0_combout\ = (\play_pile_top_card~combout\(2)) # ((\play_pile_top_card~combout\(3) & \play_pile_top_card~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \play_pile_top_card~combout\(3),
	datad => \play_pile_top_card~combout\(1),
	combout => \DEC1|A1|b2v_inst7|S~0_combout\);

-- Location: LCCOMB_X26_Y11_N20
\DEC2|A5|b2v_inst2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A5|b2v_inst2|Cout~0_combout\ = (\card_to_play~combout\(5) & (\card_to_play~combout\(4) $ (((!\card_to_play~combout\(3) & !\DEC2|A1|b2v_inst4|Cout~0_combout\))))) # (!\card_to_play~combout\(5) & (\card_to_play~combout\(4) & (\card_to_play~combout\(3) 
-- & \DEC2|A1|b2v_inst4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(5),
	datab => \card_to_play~combout\(4),
	datac => \card_to_play~combout\(3),
	datad => \DEC2|A1|b2v_inst4|Cout~0_combout\,
	combout => \DEC2|A5|b2v_inst2|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N16
\DEC2|A5|b2v_inst2|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A5|b2v_inst2|Cout~2_combout\ = (\DEC2|A5|b2v_inst2|Cout~0_combout\ & ((\card_to_play~combout\(2)) # (\DEC2|A5|b2v_inst2|Cout~1_combout\))) # (!\DEC2|A5|b2v_inst2|Cout~0_combout\ & (\card_to_play~combout\(2) & \DEC2|A5|b2v_inst2|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|A5|b2v_inst2|Cout~0_combout\,
	datac => \card_to_play~combout\(2),
	datad => \DEC2|A5|b2v_inst2|Cout~1_combout\,
	combout => \DEC2|A5|b2v_inst2|Cout~2_combout\);

-- Location: LCCOMB_X22_Y8_N8
\DEC1|A5|b2v_inst2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A5|b2v_inst2|Cout~0_combout\ = (\DEC1|A1|b2v_inst4|Cout~0_combout\ & (\play_pile_top_card~combout\(4) & ((\play_pile_top_card~combout\(5)) # (\play_pile_top_card~combout\(3))))) # (!\DEC1|A1|b2v_inst4|Cout~0_combout\ & 
-- (\play_pile_top_card~combout\(5) & (\play_pile_top_card~combout\(4) $ (!\play_pile_top_card~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst4|Cout~0_combout\,
	datab => \play_pile_top_card~combout\(4),
	datac => \play_pile_top_card~combout\(5),
	datad => \play_pile_top_card~combout\(3),
	combout => \DEC1|A5|b2v_inst2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\DEC1|A5|b2v_inst2|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A5|b2v_inst2|Cout~2_combout\ = (\play_pile_top_card~combout\(2) & ((\DEC1|A5|b2v_inst2|Cout~1_combout\) # (\DEC1|A5|b2v_inst2|Cout~0_combout\))) # (!\play_pile_top_card~combout\(2) & (\DEC1|A5|b2v_inst2|Cout~1_combout\ & 
-- \DEC1|A5|b2v_inst2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \DEC1|A5|b2v_inst2|Cout~1_combout\,
	datac => \DEC1|A5|b2v_inst2|Cout~0_combout\,
	combout => \DEC1|A5|b2v_inst2|Cout~2_combout\);

-- Location: LCCOMB_X22_Y8_N30
\DEC1|A5|b2v_inst3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A5|b2v_inst3|S~0_combout\ = (\play_pile_top_card~combout\(5) & ((\play_pile_top_card~combout\(4)) # ((\play_pile_top_card~combout\(2) & \DEC1|A1|b2v_inst3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \play_pile_top_card~combout\(5),
	datac => \DEC1|A1|b2v_inst3|Cout~0_combout\,
	datad => \play_pile_top_card~combout\(4),
	combout => \DEC1|A5|b2v_inst3|S~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\DEC1|A5|b2v_inst3|S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A5|b2v_inst3|S~1_combout\ = \DEC1|A5|b2v_inst2|Cout~2_combout\ $ (((\play_pile_top_card~combout\(3) & (!\play_pile_top_card~combout\(5))) # (!\play_pile_top_card~combout\(3) & ((\DEC1|A5|b2v_inst3|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A5|b2v_inst2|Cout~2_combout\,
	datab => \play_pile_top_card~combout\(3),
	datac => \play_pile_top_card~combout\(5),
	datad => \DEC1|A5|b2v_inst3|S~0_combout\,
	combout => \DEC1|A5|b2v_inst3|S~1_combout\);

-- Location: LCCOMB_X22_Y8_N10
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = \DEC2|A1|b2v_inst6|S~combout\ $ (\DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ $ (\DEC1|A1|b2v_inst6|S~combout\ $ (\DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|A1|b2v_inst6|S~combout\,
	datab => \DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\,
	datac => \DEC1|A1|b2v_inst6|S~combout\,
	datad => \DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[2]~I\ : cycloneii_io
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
	padio => ww_play_pile_top_card(2),
	combout => \play_pile_top_card~combout\(2));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[3]~I\ : cycloneii_io
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
	padio => ww_play_pile_top_card(3),
	combout => \play_pile_top_card~combout\(3));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[5]~I\ : cycloneii_io
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
	padio => ww_play_pile_top_card(5),
	combout => \play_pile_top_card~combout\(5));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[4]~I\ : cycloneii_io
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
	padio => ww_play_pile_top_card(4),
	combout => \play_pile_top_card~combout\(4));

-- Location: LCCOMB_X22_Y8_N22
\DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ = (\play_pile_top_card~combout\(5) & (\play_pile_top_card~combout\(4) & ((\play_pile_top_card~combout\(2)) # (\play_pile_top_card~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \play_pile_top_card~combout\(3),
	datac => \play_pile_top_card~combout\(5),
	datad => \play_pile_top_card~combout\(4),
	combout => \DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\);

-- Location: LCCOMB_X22_Y8_N2
\DEC1|A1|b2v_inst7|S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A1|b2v_inst7|S~1_combout\ = (\play_pile_top_card~combout\(4) & ((\DEC1|A1|b2v_inst7|S~0_combout\ & (!\play_pile_top_card~combout\(5) & \play_pile_top_card~combout\(3))) # (!\DEC1|A1|b2v_inst7|S~0_combout\ & (\play_pile_top_card~combout\(5) & 
-- !\play_pile_top_card~combout\(3))))) # (!\play_pile_top_card~combout\(4) & (((\play_pile_top_card~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst7|S~0_combout\,
	datab => \play_pile_top_card~combout\(4),
	datac => \play_pile_top_card~combout\(5),
	datad => \play_pile_top_card~combout\(3),
	combout => \DEC1|A1|b2v_inst7|S~1_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_to_play[4]~I\ : cycloneii_io
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
	padio => ww_card_to_play(4),
	combout => \card_to_play~combout\(4));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_to_play[3]~I\ : cycloneii_io
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
	padio => ww_card_to_play(3),
	combout => \card_to_play~combout\(3));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_to_play[5]~I\ : cycloneii_io
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
	padio => ww_card_to_play(5),
	combout => \card_to_play~combout\(5));

-- Location: LCCOMB_X26_Y11_N22
\DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ = (\card_to_play~combout\(4) & (\card_to_play~combout\(5) & ((\card_to_play~combout\(2)) # (\card_to_play~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(2),
	datab => \card_to_play~combout\(4),
	datac => \card_to_play~combout\(3),
	datad => \card_to_play~combout\(5),
	combout => \DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\);

-- Location: LCCOMB_X22_Y8_N4
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\DEC2|A1|b2v_inst7|S~1_combout\ & ((\DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ $ (\DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\)) # (!\DEC1|A1|b2v_inst7|S~1_combout\))) # (!\DEC2|A1|b2v_inst7|S~1_combout\ & 
-- ((\DEC1|A1|b2v_inst7|S~1_combout\) # (\DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\ $ (\DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|A1|b2v_inst7|S~1_combout\,
	datab => \DEC1|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\,
	datac => \DEC1|A1|b2v_inst7|S~1_combout\,
	datad => \DEC2|A1|b2v_inst7|SYNTHESIZED_WIRE_1~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_to_play[0]~I\ : cycloneii_io
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
	padio => ww_card_to_play(0),
	combout => \card_to_play~combout\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_to_play[1]~I\ : cycloneii_io
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
	padio => ww_card_to_play(1),
	combout => \card_to_play~combout\(1));

-- Location: LCCOMB_X26_Y11_N0
\DEC2|A1|b2v_inst3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A1|b2v_inst3|Cout~0_combout\ = (\card_to_play~combout\(3) & ((\card_to_play~combout\(1)) # ((\card_to_play~combout\(2) & \card_to_play~combout\(0))))) # (!\card_to_play~combout\(3) & (\card_to_play~combout\(2) & (\card_to_play~combout\(0) & 
-- \card_to_play~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(2),
	datab => \card_to_play~combout\(0),
	datac => \card_to_play~combout\(3),
	datad => \card_to_play~combout\(1),
	combout => \DEC2|A1|b2v_inst3|Cout~0_combout\);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\card_to_play[2]~I\ : cycloneii_io
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
	padio => ww_card_to_play(2),
	combout => \card_to_play~combout\(2));

-- Location: LCCOMB_X26_Y11_N10
\DEC2|A1|b2v_inst4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A1|b2v_inst4|Cout~0_combout\ = (\DEC2|A1|b2v_inst3|Cout~0_combout\ & ((\card_to_play~combout\(2)) # (\card_to_play~combout\(4)))) # (!\DEC2|A1|b2v_inst3|Cout~0_combout\ & (\card_to_play~combout\(2) & \card_to_play~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEC2|A1|b2v_inst3|Cout~0_combout\,
	datac => \card_to_play~combout\(2),
	datad => \card_to_play~combout\(4),
	combout => \DEC2|A1|b2v_inst4|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N12
\DEC2|A1|b2v_inst6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A1|b2v_inst6|S~combout\ = \card_to_play~combout\(4) $ (((\card_to_play~combout\(5) & ((\card_to_play~combout\(3)) # (\DEC2|A1|b2v_inst4|Cout~0_combout\))) # (!\card_to_play~combout\(5) & (\card_to_play~combout\(3) & 
-- \DEC2|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(5),
	datab => \card_to_play~combout\(4),
	datac => \card_to_play~combout\(3),
	datad => \DEC2|A1|b2v_inst4|Cout~0_combout\,
	combout => \DEC2|A1|b2v_inst6|S~combout\);

-- Location: LCCOMB_X22_Y8_N14
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Equal0~0_combout\ & (\DEC1|A1|b2v_inst6|S~combout\ $ (!\DEC2|A1|b2v_inst6|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst6|S~combout\,
	datac => \Equal0~0_combout\,
	datad => \DEC2|A1|b2v_inst6|S~combout\,
	combout => \Equal0~1_combout\);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[0]~I\ : cycloneii_io
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
	padio => ww_play_pile_top_card(0),
	combout => \play_pile_top_card~combout\(0));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\play_pile_top_card[1]~I\ : cycloneii_io
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
	padio => ww_play_pile_top_card(1),
	combout => \play_pile_top_card~combout\(1));

-- Location: LCCOMB_X22_Y8_N18
\DEC1|A5|b2v_inst2|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A5|b2v_inst2|Cout~1_combout\ = (\DEC1|A1|b2v_inst7|S~1_combout\ & (\play_pile_top_card~combout\(1) & ((\play_pile_top_card~combout\(0)) # (!\DEC1|A1|b2v_inst6|S~combout\)))) # (!\DEC1|A1|b2v_inst7|S~1_combout\ & (\DEC1|A1|b2v_inst6|S~combout\ & 
-- ((\play_pile_top_card~combout\(0)) # (\play_pile_top_card~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst6|S~combout\,
	datab => \DEC1|A1|b2v_inst7|S~1_combout\,
	datac => \play_pile_top_card~combout\(0),
	datad => \play_pile_top_card~combout\(1),
	combout => \DEC1|A5|b2v_inst2|Cout~1_combout\);

-- Location: LCCOMB_X26_Y11_N8
\DEC2|A1|b2v_inst7|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A1|b2v_inst7|S~0_combout\ = (\card_to_play~combout\(2)) # ((\card_to_play~combout\(3) & \card_to_play~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(2),
	datac => \card_to_play~combout\(3),
	datad => \card_to_play~combout\(1),
	combout => \DEC2|A1|b2v_inst7|S~0_combout\);

-- Location: LCCOMB_X26_Y11_N26
\DEC2|A1|b2v_inst7|S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A1|b2v_inst7|S~1_combout\ = (\card_to_play~combout\(5) & (((!\DEC2|A1|b2v_inst7|S~0_combout\ & !\card_to_play~combout\(3))) # (!\card_to_play~combout\(4)))) # (!\card_to_play~combout\(5) & (\DEC2|A1|b2v_inst7|S~0_combout\ & 
-- (\card_to_play~combout\(3) & \card_to_play~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(5),
	datab => \DEC2|A1|b2v_inst7|S~0_combout\,
	datac => \card_to_play~combout\(3),
	datad => \card_to_play~combout\(4),
	combout => \DEC2|A1|b2v_inst7|S~1_combout\);

-- Location: LCCOMB_X26_Y11_N6
\DEC2|A5|b2v_inst2|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A5|b2v_inst2|Cout~1_combout\ = (\DEC2|A1|b2v_inst7|S~1_combout\ & (\card_to_play~combout\(1) & ((\card_to_play~combout\(0)) # (!\DEC2|A1|b2v_inst6|S~combout\)))) # (!\DEC2|A1|b2v_inst7|S~1_combout\ & (\DEC2|A1|b2v_inst6|S~combout\ & 
-- ((\card_to_play~combout\(0)) # (\card_to_play~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|A1|b2v_inst6|S~combout\,
	datab => \DEC2|A1|b2v_inst7|S~1_combout\,
	datac => \card_to_play~combout\(0),
	datad => \card_to_play~combout\(1),
	combout => \DEC2|A5|b2v_inst2|Cout~1_combout\);

-- Location: LCCOMB_X22_Y8_N6
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = \play_pile_top_card~combout\(2) $ (\DEC1|A5|b2v_inst2|Cout~1_combout\ $ (\card_to_play~combout\(2) $ (\DEC2|A5|b2v_inst2|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(2),
	datab => \DEC1|A5|b2v_inst2|Cout~1_combout\,
	datac => \card_to_play~combout\(2),
	datad => \DEC2|A5|b2v_inst2|Cout~1_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X26_Y11_N14
\DEC2|A4|b2v_inst1|SYNTHESIZED_WIRE_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\ = (\card_to_play~combout\(5) & (((!\card_to_play~combout\(3) & !\DEC2|A1|b2v_inst4|Cout~0_combout\)) # (!\card_to_play~combout\(4)))) # (!\card_to_play~combout\(5) & ((\card_to_play~combout\(4)) # 
-- ((\card_to_play~combout\(3) & \DEC2|A1|b2v_inst4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(5),
	datab => \card_to_play~combout\(4),
	datac => \card_to_play~combout\(3),
	datad => \DEC2|A1|b2v_inst4|Cout~0_combout\,
	combout => \DEC2|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\);

-- Location: LCCOMB_X22_Y8_N12
\DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\ = (\play_pile_top_card~combout\(4) & (((!\DEC1|A1|b2v_inst4|Cout~0_combout\ & !\play_pile_top_card~combout\(3))) # (!\play_pile_top_card~combout\(5)))) # (!\play_pile_top_card~combout\(4) & 
-- ((\play_pile_top_card~combout\(5)) # ((\DEC1|A1|b2v_inst4|Cout~0_combout\ & \play_pile_top_card~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst4|Cout~0_combout\,
	datab => \play_pile_top_card~combout\(4),
	datac => \play_pile_top_card~combout\(5),
	datad => \play_pile_top_card~combout\(3),
	combout => \DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\);

-- Location: LCCOMB_X25_Y11_N2
\Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = \Equal1~4_combout\ $ (\Equal1~5_combout\ $ (\DEC2|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\ $ (\DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~5_combout\,
	datac => \DEC2|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\,
	datad => \DEC1|A4|b2v_inst1|SYNTHESIZED_WIRE_2~combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X22_Y8_N28
\DEC1|A1|b2v_inst6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC1|A1|b2v_inst6|S~combout\ = \play_pile_top_card~combout\(4) $ (((\DEC1|A1|b2v_inst4|Cout~0_combout\ & ((\play_pile_top_card~combout\(5)) # (\play_pile_top_card~combout\(3)))) # (!\DEC1|A1|b2v_inst4|Cout~0_combout\ & (\play_pile_top_card~combout\(5) & 
-- \play_pile_top_card~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst4|Cout~0_combout\,
	datab => \play_pile_top_card~combout\(4),
	datac => \play_pile_top_card~combout\(5),
	datad => \play_pile_top_card~combout\(3),
	combout => \DEC1|A1|b2v_inst6|S~combout\);

-- Location: LCCOMB_X26_Y11_N30
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = \play_pile_top_card~combout\(0) $ (\DEC1|A1|b2v_inst6|S~combout\ $ (\card_to_play~combout\(0) $ (\DEC2|A1|b2v_inst6|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(0),
	datab => \DEC1|A1|b2v_inst6|S~combout\,
	datac => \card_to_play~combout\(0),
	datad => \DEC2|A1|b2v_inst6|S~combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X26_Y11_N18
\DEC2|A5|b2v_inst3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A5|b2v_inst3|S~0_combout\ = (\card_to_play~combout\(5) & ((\card_to_play~combout\(4)) # ((\DEC2|A1|b2v_inst3|Cout~0_combout\ & \card_to_play~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(5),
	datab => \DEC2|A1|b2v_inst3|Cout~0_combout\,
	datac => \card_to_play~combout\(2),
	datad => \card_to_play~combout\(4),
	combout => \DEC2|A5|b2v_inst3|S~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\DEC2|A5|b2v_inst3|S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DEC2|A5|b2v_inst3|S~1_combout\ = \DEC2|A5|b2v_inst2|Cout~2_combout\ $ (((\card_to_play~combout\(3) & ((!\card_to_play~combout\(5)))) # (!\card_to_play~combout\(3) & (\DEC2|A5|b2v_inst3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|A5|b2v_inst2|Cout~2_combout\,
	datab => \DEC2|A5|b2v_inst3|S~0_combout\,
	datac => \card_to_play~combout\(3),
	datad => \card_to_play~combout\(5),
	combout => \DEC2|A5|b2v_inst3|S~1_combout\);

-- Location: LCCOMB_X25_Y11_N0
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Equal1~0_combout\ & (\DEC1|A5|b2v_inst3|S~1_combout\ $ (!\DEC2|A5|b2v_inst3|S~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A5|b2v_inst3|S~1_combout\,
	datab => \Equal1~0_combout\,
	datad => \DEC2|A5|b2v_inst3|S~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y11_N2
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\play_pile_top_card~combout\(0) & (((!\card_to_play~combout\(0) & \DEC2|A1|b2v_inst6|S~combout\)))) # (!\play_pile_top_card~combout\(0) & (\DEC1|A1|b2v_inst6|S~combout\ $ (((!\card_to_play~combout\(0) & 
-- \DEC2|A1|b2v_inst6|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \play_pile_top_card~combout\(0),
	datab => \DEC1|A1|b2v_inst6|S~combout\,
	datac => \card_to_play~combout\(0),
	datad => \DEC2|A1|b2v_inst6|S~combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X26_Y11_N24
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = \DEC1|A1|b2v_inst7|S~1_combout\ $ (\DEC2|A1|b2v_inst7|S~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEC1|A1|b2v_inst7|S~1_combout\,
	datad => \DEC2|A1|b2v_inst7|S~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y11_N28
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = \card_to_play~combout\(1) $ (\Equal1~2_combout\ $ (\Equal0~2_combout\ $ (\play_pile_top_card~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_to_play~combout\(1),
	datab => \Equal1~2_combout\,
	datac => \Equal0~2_combout\,
	datad => \play_pile_top_card~combout\(1),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X25_Y11_N28
\legal_play~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \legal_play~0_combout\ = (\Equal0~1_combout\) # ((!\Equal1~6_combout\ & (\Equal1~1_combout\ & !\Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	combout => \legal_play~0_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\legal_play~I\ : cycloneii_io
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
	datain => \legal_play~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_legal_play);
END structure;


