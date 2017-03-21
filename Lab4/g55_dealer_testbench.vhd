-- simple testbench for g55_dealer
--
-- entity name: g55_dealer_testbench
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 21, 2017

library ieee;
use ieee.std_logic_1164.all;

entity g55_dealer_testbench is
	port(
		clock : in std_logic;
		reset : in std_logic;
		raw_deal : in std_logic;
		stack_mode : out std_logic_vector(1 downto 0);
		segments_out : out std_logic_vector(6 downto 0)
	);
end g55_dealer_testbench;

architecture behav of g55_dealer_testbench is
	component g55_dealer
	port(
		request_deal : in std_logic;
		rand_lt_num : in std_logic;
		reset : in std_logic;
		clock : in std_logic;
		stack_enable : out std_logic;
		rand_enable : out std_logic
	);
	end component;
	
	component g55_mod13_v2
	PORT
	(
		A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		Amod13 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		floor13 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
	end component;
	
	component g55_register
	generic(WIDTH : integer);
	port(
		register_enable : in std_logic;
		next_value : in std_logic_vector(WIDTH-1 downto 0);
		clock : in std_logic;
		register_value : out std_logic_vector(WIDTH-1 downto 0)
	);
	end component;
	
	component g55_randu
	port (
		seed : in std_logic_vector(31 downto 0);
		rand : out std_logic_vector(31 downto 0));
	end component;
	
	component g55_stack52
	port (
		data : in std_logic_vector(5 downto 0);
		mode : in std_logic_vector(1 downto 0); -- 00 NOP, 01 INIT, 10 POP, 11 PUSH
		addr : in std_logic_vector(5 downto 0);
		enable : in std_logic;
		rst : in std_logic;
		clk : in std_logic;
		value : out std_logic_vector(5 downto 0);
		empty : buffer std_logic;
		full : buffer std_logic;
		num : out std_logic_vector(5 downto 0)
	);
	end component;
	
	component g55_debouncer
	port(
		input : in std_logic;
		aclr : in std_logic;
		clock : in std_logic; -- 50MHz
		output : out std_logic
	);
	end component;
	
	component g55_comp6
	PORT(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC
	);
	end component;
	
	component g55_7_segment_decoder
	port(
		code : in std_logic_vector(3 downto 0);
		mode : in std_logic;
		segments_out : out std_logic_vector(6 downto 0)
	);
	end component;
	
	signal randcomp : std_logic;
	signal stack_enable : std_logic;
	signal rand_enable : std_logic;
	signal request_deal : std_logic;
	signal stack_num : std_logic_vector(5 downto 0);
	signal stored_rand : std_logic_vector(5 downto 0);
	signal temp_rand : std_logic_vector(5 downto 0);
	signal card_raw : std_logic_vector(5 downto 0);
	signal card_number : std_logic_vector(3 downto 0)
	signal card_suit : std_logic_vector(2 downto 0);
	
begin	
	dealer : g55_dealer port map (clock=>clock, reset=>reset, rand_lt_num=>randcomp, stack_enable=>stack_enable, rand_enable=>rand_enable, request_deal=>request_deal);
	comp : g55_comp6 port map (A=>stack_num, B=>stored_rand, AeqB=>randcomp);
	reg : g55_register port map (clock=>clock, register_enable=>rand_enable, next_value=>temp_rand, register_value=>stored_rand) generic map (WIDTH=>6);
	seg : g55_7_segment_decoder port map(code=>card_number, mode=>'0', segments_out=>segments_out);
	randu : g55_randu port map(seed=>, rand=>temp_rand);
	stack : g55_stack52 port map (clk=>clock, mode=>stack_mode, addr=>stored_rand, enable=>stack_enable, num=>stack_num, value=>card_raw, rst=>reset, data=>"000000");
	deal_debounce : g55_debouncer port map (input=>not raw_deal, clock=>clock, aclr=>reset, output=>request_deal);
	modulo : g55_mod13_v2 port map (A=>card_raw, Amod13=>card_number, floor13=>card_suit);