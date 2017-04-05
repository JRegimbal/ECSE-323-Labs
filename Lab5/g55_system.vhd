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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed Apr  5 12:30:54 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g55_system IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		num_hand_sel :  IN  STD_LOGIC;
		player_choose :  IN  STD_LOGIC;
		player_sel :  IN  STD_LOGIC;
		player_card_sel :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		ss_nh_suit :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ss_nh_val :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ss_t_suit :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ss_t_val :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		win_pins :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END g55_system;

ARCHITECTURE bdf_type OF g55_system IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT busmux_0
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_0: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_0: COMPONENT IS true;

COMPONENT busmux_1
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_1: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_1: COMPONENT IS true;

COMPONENT g55_stack52
	PORT(enable : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 addr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 empty : OUT STD_LOGIC;
		 full : OUT STD_LOGIC;
		 num : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 value : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_computer_player
	PORT(clock : IN STD_LOGIC;
		 turn : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 card_received : IN STD_LOGIC;
		 deal : IN STD_LOGIC;
		 card_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 top_card : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 done : OUT STD_LOGIC;
		 request_card : OUT STD_LOGIC;
		 card_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 num_cards : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_control
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 computer_done : IN STD_LOGIC;
		 computer_request : IN STD_LOGIC;
		 player_request : IN STD_LOGIC;
		 player_done : IN STD_LOGIC;
		 deck_sent : IN STD_LOGIC;
		 cci : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 com_num : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 deck : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 pci : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 player_num : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 top_card_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 turn_out : OUT STD_LOGIC;
		 player_enable : OUT STD_LOGIC;
		 request_deal : OUT STD_LOGIC;
		 top_card_en : OUT STD_LOGIC;
		 card_sent : OUT STD_LOGIC;
		 deck_init : OUT STD_LOGIC;
		 computer_card : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 deck_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 player_card : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 top_card_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 win_cond : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_compare0
	PORT(dataa : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 alb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT g55_mod13_v2
	PORT(A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 Amod13 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 floor13 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_player_control
	PORT(clock : IN STD_LOGIC;
		 choose : IN STD_LOGIC;
		 play_draw_sel : IN STD_LOGIC;
		 card_received : IN STD_LOGIC;
		 turn : IN STD_LOGIC;
		 deal : IN STD_LOGIC;
		 card_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 top : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 done : OUT STD_LOGIC;
		 request_card : OUT STD_LOGIC;
		 mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_debouncer
	PORT(input : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 output : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT g55_dealer
	PORT(request_deal : IN STD_LOGIC;
		 rand_lt_num : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 stack_enable : OUT STD_LOGIC;
		 rand_enable : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT g55_randu
	PORT(seed : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rand : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_register
GENERIC (WIDTH : INTEGER
			);
	PORT(register_enable : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 next_value : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 register_value : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_7_segment_decoder
	PORT(mode : IN STD_LOGIC;
		 code : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 segments_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	card_sent :  STD_LOGIC;
SIGNAL	com_num :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	computer_done :  STD_LOGIC;
SIGNAL	deck_init :  STD_LOGIC;
SIGNAL	nh_suit :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	rand_num :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	t_suit :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	top_card :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	win_cond :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC_VECTOR(5 DOWNTO 0);


BEGIN 
SYNTHESIZED_WIRE_32 <= '1';
SYNTHESIZED_WIRE_53 <= '1';



b2v_deck : g55_stack52
PORT MAP(enable => SYNTHESIZED_WIRE_0,
		 rst => SYNTHESIZED_WIRE_47,
		 clk => clock,
		 addr => SYNTHESIZED_WIRE_48,
		 mode => SYNTHESIZED_WIRE_3,
		 num => SYNTHESIZED_WIRE_18,
		 value => SYNTHESIZED_WIRE_14);


b2v_inst : g55_computer_player
PORT MAP(clock => clock,
		 turn => SYNTHESIZED_WIRE_49,
		 reset => SYNTHESIZED_WIRE_47,
		 card_received => card_sent,
		 deal => deck_init,
		 card_in => SYNTHESIZED_WIRE_6,
		 top_card => top_card,
		 done => computer_done,
		 request_card => SYNTHESIZED_WIRE_9,
		 card_out => SYNTHESIZED_WIRE_13,
		 num_cards => com_num);


SYNTHESIZED_WIRE_0 <= deck_init OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_47 <= NOT(reset);



b2v_inst12 : g55_control
PORT MAP(clock => clock,
		 reset => SYNTHESIZED_WIRE_47,
		 computer_done => computer_done,
		 computer_request => SYNTHESIZED_WIRE_9,
		 player_request => SYNTHESIZED_WIRE_10,
		 player_done => SYNTHESIZED_WIRE_11,
		 deck_sent => SYNTHESIZED_WIRE_50,
		 cci => SYNTHESIZED_WIRE_13,
		 com_num => com_num,
		 deck => SYNTHESIZED_WIRE_14,
		 pci => SYNTHESIZED_WIRE_51,
		 player_num => SYNTHESIZED_WIRE_52,
		 top_card_in => top_card,
		 turn_out => SYNTHESIZED_WIRE_49,
		 player_enable => SYNTHESIZED_WIRE_40,
		 request_deal => SYNTHESIZED_WIRE_27,
		 top_card_en => SYNTHESIZED_WIRE_45,
		 card_sent => card_sent,
		 deck_init => deck_init,
		 computer_card => SYNTHESIZED_WIRE_6,
		 deck_mode => SYNTHESIZED_WIRE_3,
		 player_card => SYNTHESIZED_WIRE_43,
		 top_card_out => SYNTHESIZED_WIRE_46,
		 win_cond => win_cond);


b2v_inst13 : lpm_compare0
PORT MAP(dataa => SYNTHESIZED_WIRE_48,
		 datab => SYNTHESIZED_WIRE_18,
		 alb => SYNTHESIZED_WIRE_28);


b2v_inst15 : busmux_0
PORT MAP(sel => num_hand_sel,
		 dataa => SYNTHESIZED_WIRE_51,
		 datab => SYNTHESIZED_WIRE_52,
		 result => SYNTHESIZED_WIRE_21);


b2v_inst16 : g55_mod13_v2
PORT MAP(A => SYNTHESIZED_WIRE_21,
		 Amod13 => SYNTHESIZED_WIRE_39,
		 floor13 => nh_suit(2 DOWNTO 0));




b2v_inst20 : g55_mod13_v2
PORT MAP(A => top_card,
		 Amod13 => SYNTHESIZED_WIRE_37,
		 floor13 => t_suit(2 DOWNTO 0));



b2v_inst24 : g55_player_control
PORT MAP(clock => clock,
		 choose => SYNTHESIZED_WIRE_22,
		 play_draw_sel => player_sel,
		 card_received => card_sent,
		 turn => SYNTHESIZED_WIRE_49,
		 deal => deck_init,
		 card_in => SYNTHESIZED_WIRE_51,
		 top => top_card,
		 done => SYNTHESIZED_WIRE_11,
		 request_card => SYNTHESIZED_WIRE_10,
		 mode => SYNTHESIZED_WIRE_44);


b2v_inst25 : g55_debouncer
PORT MAP(input => SYNTHESIZED_WIRE_25,
		 aclr => SYNTHESIZED_WIRE_47,
		 clock => clock,
		 output => SYNTHESIZED_WIRE_22);


SYNTHESIZED_WIRE_25 <= NOT(player_choose);



b2v_inst3 : g55_dealer
PORT MAP(request_deal => SYNTHESIZED_WIRE_27,
		 rand_lt_num => SYNTHESIZED_WIRE_28,
		 reset => SYNTHESIZED_WIRE_47,
		 clock => clock,
		 stack_enable => SYNTHESIZED_WIRE_7,
		 rand_enable => SYNTHESIZED_WIRE_50);


b2v_inst6 : g55_randu
PORT MAP(seed => SYNTHESIZED_WIRE_30,
		 rand => rand_num);


b2v_inst7 : g55_register
GENERIC MAP(WIDTH => 6
			)
PORT MAP(register_enable => SYNTHESIZED_WIRE_50,
		 clock => clock,
		 next_value => rand_num(5 DOWNTO 0),
		 register_value => SYNTHESIZED_WIRE_48);


b2v_inst8 : g55_register
GENERIC MAP(WIDTH => 32
			)
PORT MAP(register_enable => SYNTHESIZED_WIRE_32,
		 clock => clock,
		 next_value => rand_num,
		 register_value => SYNTHESIZED_WIRE_30);


b2v_inst80 : busmux_1
PORT MAP(sel => SYNTHESIZED_WIRE_33,
		 dataa => SYNTHESIZED_WIRE_52,
		 datab => player_card_sel,
		 result => SYNTHESIZED_WIRE_42);



b2v_max_hand_sel : lpm_compare0
PORT MAP(dataa => player_card_sel,
		 datab => SYNTHESIZED_WIRE_52,
		 alb => SYNTHESIZED_WIRE_33);


b2v_nh_suit21 : g55_7_segment_decoder
PORT MAP(mode => SYNTHESIZED_WIRE_53,
		 code => t_suit,
		 segments_out => ss_t_suit);


b2v_nh_suit22 : g55_7_segment_decoder
PORT MAP(mode => nh_suit(3),
		 code => SYNTHESIZED_WIRE_37,
		 segments_out => ss_t_val);


b2v_nh_suit_inst : g55_7_segment_decoder
PORT MAP(mode => SYNTHESIZED_WIRE_53,
		 code => nh_suit,
		 segments_out => ss_nh_suit);


b2v_nh_value : g55_7_segment_decoder
PORT MAP(mode => nh_suit(3),
		 code => SYNTHESIZED_WIRE_39,
		 segments_out => ss_nh_val);


b2v_player_hand : g55_stack52
PORT MAP(enable => SYNTHESIZED_WIRE_40,
		 rst => SYNTHESIZED_WIRE_47,
		 clk => clock,
		 addr => SYNTHESIZED_WIRE_42,
		 data => SYNTHESIZED_WIRE_43,
		 mode => SYNTHESIZED_WIRE_44,
		 num => SYNTHESIZED_WIRE_52,
		 value => SYNTHESIZED_WIRE_51);


b2v_top_card_inst : g55_register
GENERIC MAP(WIDTH => 6
			)
PORT MAP(register_enable => SYNTHESIZED_WIRE_45,
		 clock => clock,
		 next_value => SYNTHESIZED_WIRE_46,
		 register_value => top_card);

win_pins <= win_cond;

nh_suit(3) <= '0';
t_suit(3) <= '0';
END bdf_type;