-- Computer Player FSM for Crazy Eights TEST
--
-- entity name: g55_computer_player_test
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 30, 2017
library ieee;
use ieee.std_logic_1164.all;

entity g55_computer_player_test is
end g55_computer_player_test;

architecture behav of g55_computer_player_test is
component g55_computer_player
	port(
		turn : in std_logic;
		reset : in std_logic;
		clock : in std_logic;
		card_received : in std_logic;
		top_card : in std_logic_vector(5 downto 0);
		card_in : in std_logic_vector(5 downto 0);
		card_out : out std_logic_vector(5 downto 0);
		num_cards: out std_logic_vector(5 downto 0);
		request_card : out std_logic;
		done : out std_logic
	);
end component;

constant clock_time : time :=  10 ns;

signal turn, reset, request_card, done, card_received : std_logic := '0';
signal top_card, card_in, card_out, num_cards : std_logic_vector(5 downto 0) := "000000";
signal clock : std_logic := '0';

begin

clock <= not clock after clock_time/2;
CPM : g55_computer_player port map (card_received=> card_received, turn=>turn, reset=>reset, clock=>clock, top_card=>top_card, card_in=>card_in, card_out=>card_out, num_cards=>num_cards, request_card=>request_card, done=>done);

process
begin
	-- Start in wait, turn = 0, go for a few clock cycles and then transition to scan
	top_card <= "000110"; --value 7
	turn <= '0';
	wait for 3*clock_time;
	assert (done = '1' and request_card = '0') report "Failed to stay in wait state" severity error;
	assert (num_cards = "000000" and card_out = "000000") report "Number of cards/Output card not zeroed" severity failure;
	--transition to scan state, turn = 1
	turn <= '1';
	wait until (done = '0') for 3*clock_time;
	assert (done = '0' and request_card = '0') report "Failed to enter in scan state" severity error;
	--should now draw a card and end turn
	card_in <= "000001";
	wait until (request_card = '1') for 5*clock_time;
	assert (request_card = '1' and done = '0') report "Failed to recognize need to draw a card" severity error;
	card_received <= '1';
	--assert (num_cards = "000001") report "Failed to draw a card" severity error;
	--return to wait, end turn
	wait until (done = '1') for 5*clock_time;
	assert (done = '1' and num_cards = "000001") report "Failed to draw a card" severity error;
	turn <= '0';
	wait for clock_time;
	assert (done = '1' and request_card = '0');
	
	top_card <= "000111"; --value 8
	wait for 3*clock_time;
	turn <= '1';
	wait until (done = '1');
	assert (card_out /= "000000") report "Failed to play a card" severity error;
	assert (num_cards = "000000") report "Failed to pop card from hand" severity error;
	
	wait;
end process;
end architecture;