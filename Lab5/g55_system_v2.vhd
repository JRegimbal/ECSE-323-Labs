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
-- CREATED		"Sun Apr  9 15:39:15 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g55_system_v2 IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		play_req_sel :  IN  STD_LOGIC;
		make_move_raw :  IN  STD_LOGIC;
		card_sel :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		player_legal :  OUT  STD_LOGIC;
		player_num :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		ss_pd_suit :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ss_pd_val :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ss_td_suit :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		ss_td_val :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		win_out :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END g55_system_v2;

ARCHITECTURE bdf_type OF g55_system_v2 IS 

COMPONENT g55_control_v2
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 pr : IN STD_LOGIC;
		 cr : IN STD_LOGIC;
		 pd : IN STD_LOGIC;
		 cd : IN STD_LOGIC;
		 cci : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 cn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 dci : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 dn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 pci : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 pn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 tci : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 turn_out : OUT STD_LOGIC;
		 setup : OUT STD_LOGIC;
		 tce : OUT STD_LOGIC;
		 deck_req : OUT STD_LOGIC;
		 deck_setup : OUT STD_LOGIC;
		 cco : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 pco : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 tco : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 win_cond : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_deck
	PORT(clock : IN STD_LOGIC;
		 card_request : IN STD_LOGIC;
		 setup : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 card_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 remaining : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_computer_player
	PORT(clock : IN STD_LOGIC;
		 turn : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 setup : IN STD_LOGIC;
		 card_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 top_card : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 done : OUT STD_LOGIC;
		 request_card : OUT STD_LOGIC;
		 card_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 num_cards : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_player_module
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 play_req_sel : IN STD_LOGIC;
		 make_move_raw : IN STD_LOGIC;
		 turn : IN STD_LOGIC;
		 setup : IN STD_LOGIC;
		 card_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 card_sel : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 top_card : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 request_card : OUT STD_LOGIC;
		 done : OUT STD_LOGIC;
		 legal_play : OUT STD_LOGIC;
		 card_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 card_sel_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 num_remaining : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_mod13_v2
	PORT(A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 Amod13 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 floor13 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT g55_7_segment_decoder
	PORT(mode : IN STD_LOGIC;
		 code : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 segments_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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

SIGNAL	deck_card :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	deck_num :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	deck_req :  STD_LOGIC;
SIGNAL	play_suit :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	player_card :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	top_card :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	top_suit :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
player_num <= SYNTHESIZED_WIRE_8;
SYNTHESIZED_WIRE_30 <= '0';



b2v_controller : g55_control_v2
PORT MAP(clock => clock,
		 reset => SYNTHESIZED_WIRE_27,
		 pr => SYNTHESIZED_WIRE_1,
		 cr => SYNTHESIZED_WIRE_2,
		 pd => SYNTHESIZED_WIRE_3,
		 cd => SYNTHESIZED_WIRE_4,
		 cci => SYNTHESIZED_WIRE_5,
		 cn => SYNTHESIZED_WIRE_6,
		 dci => deck_card,
		 dn => deck_num,
		 pci => SYNTHESIZED_WIRE_7,
		 pn => SYNTHESIZED_WIRE_8,
		 tci => top_card,
		 turn_out => SYNTHESIZED_WIRE_28,
		 setup => SYNTHESIZED_WIRE_29,
		 tce => SYNTHESIZED_WIRE_22,
		 deck_req => deck_req,
		 deck_setup => SYNTHESIZED_WIRE_9,
		 cco => SYNTHESIZED_WIRE_14,
		 pco => SYNTHESIZED_WIRE_18,
		 tco => SYNTHESIZED_WIRE_23,
		 win_cond => win_out);


b2v_deck : g55_deck
PORT MAP(clock => clock,
		 card_request => deck_req,
		 setup => SYNTHESIZED_WIRE_9,
		 reset => SYNTHESIZED_WIRE_27,
		 card_out => deck_card,
		 remaining => deck_num);


b2v_inst1 : g55_computer_player
PORT MAP(clock => clock,
		 turn => SYNTHESIZED_WIRE_28,
		 reset => SYNTHESIZED_WIRE_27,
		 setup => SYNTHESIZED_WIRE_29,
		 card_in => SYNTHESIZED_WIRE_14,
		 top_card => top_card,
		 done => SYNTHESIZED_WIRE_4,
		 request_card => SYNTHESIZED_WIRE_2,
		 card_out => SYNTHESIZED_WIRE_5,
		 num_cards => SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_27 <= NOT(reset);





b2v_inst3 : g55_player_module
PORT MAP(clock => clock,
		 reset => SYNTHESIZED_WIRE_27,
		 play_req_sel => play_req_sel,
		 make_move_raw => make_move_raw,
		 turn => SYNTHESIZED_WIRE_28,
		 setup => SYNTHESIZED_WIRE_29,
		 card_in => SYNTHESIZED_WIRE_18,
		 card_sel => card_sel,
		 top_card => top_card,
		 request_card => SYNTHESIZED_WIRE_1,
		 done => SYNTHESIZED_WIRE_3,
		 legal_play => player_legal,
		 card_out => SYNTHESIZED_WIRE_7,
		 card_sel_out => player_card,
		 num_remaining => SYNTHESIZED_WIRE_8);


b2v_inst6 : g55_mod13_v2
PORT MAP(A => top_card,
		 Amod13 => SYNTHESIZED_WIRE_26,
		 floor13 => top_suit(2 DOWNTO 0));


b2v_inst7 : g55_mod13_v2
PORT MAP(A => player_card,
		 Amod13 => SYNTHESIZED_WIRE_21,
		 floor13 => play_suit(2 DOWNTO 0));



b2v_play_dec_suit : g55_7_segment_decoder
PORT MAP(mode => SYNTHESIZED_WIRE_30,
		 code => play_suit,
		 segments_out => ss_pd_suit);


b2v_play_dec_val : g55_7_segment_decoder
PORT MAP(mode => SYNTHESIZED_WIRE_30,
		 code => SYNTHESIZED_WIRE_21,
		 segments_out => ss_pd_val);


b2v_top_card_inst : g55_register
GENERIC MAP(WIDTH => 6
			)
PORT MAP(register_enable => SYNTHESIZED_WIRE_22,
		 clock => clock,
		 next_value => SYNTHESIZED_WIRE_23,
		 register_value => top_card);


b2v_top_dec_suit : g55_7_segment_decoder
PORT MAP(mode => SYNTHESIZED_WIRE_30,
		 code => top_suit,
		 segments_out => ss_td_suit);


b2v_top_dec_val : g55_7_segment_decoder
PORT MAP(mode => SYNTHESIZED_WIRE_30,
		 code => SYNTHESIZED_WIRE_26,
		 segments_out => ss_td_val);


play_suit(3) <= '0';
top_suit(3) <= '0';
END bdf_type;