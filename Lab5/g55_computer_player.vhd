-- Computer Player FSM for Crazy Eights
--
-- entity name: g55_computer_player
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 2.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 30, 2017

library ieee;
library g55;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_computer_player is
	port(
		clock : in std_logic;
		turn : in std_logic;
		reset : in std_logic;
		card_received : in std_logic;
		top_card : in std_logic_vector(5 downto 0);
		card_in : in std_logic_vector(5 downto 0);
		deal : in std_logic;
		card_out : out std_logic_vector(5 downto 0);
		done : out std_logic;
		request_card : out std_logic;
		num_cards : out std_logic_vector(5 downto 0)
	);
end g55_computer_player;

architecture behav of g55_computer_player is
	signal cards_in_hand : std_logic_vector(5 downto 0) := "000000";
	signal legal_move : std_logic;
	signal card_selected : std_logic_vector(5 downto 0);
	signal stack_en : std_logic := '0';
	signal stack_mode : std_logic_vector(1 downto 0) := "00";
	signal num_selected : std_logic_vector(5 downto 0) := "000000";
	

begin
	stack : entity g55.g55_stack52
		port map (clk=>clock, rst=>reset, mode=>stack_mode, data=>card_in, addr=>num_selected, value=>card_selected, num=>cards_in_hand, enable=>stack_en);
	rules : entity g55.g55_rules port map (play_pile_top_card=>top_card, card_to_play=>card_selected, legal_play=>legal_move);
	
	num_cards <= cards_in_hand;
	
	process (clock, reset)
	variable state : std_logic_vector(2 downto 0) := "000";
	begin
		if (reset = '1') then --async reset
			state := "000";
		elsif (clock = '1') then --FSM
				case state is
					when "000" => -- first wait state (turn high)
						stack_en <= '0';
						stack_mode <= "00";
						request_card <= '0';
						done <= '1';
						if (turn = '0') then
							state := "001";
						end if;
					when "001" => -- second wait state (turn low)
						request_card <= '0';
						done <= '1';
						num_selected <= "000000";
						if (turn = '1') then -- computer's turn signaled
							state := "011";
						end if;
					when "011" => -- computer's turn begins, scan cards
						if (legal_move = '1' and deal = '0') then --card in hand can be played
							state := "010";
						elsif (legal_move = '0' and unsigned(num_selected) < unsigned(cards_in_hand) and deal = '0') then -- try next card
							num_selected <= std_logic_vector(unsigned(num_selected) + 1);
						else -- out of cards, draw from deck
							state := "111";
						end if;
					when "010" => -- play the card
						card_out <= card_selected;
						stack_mode <= "10"; --POP
						stack_en <= '1';
						state := "000"; -- end the turn
					when "111" => -- request another card
						request_card <= '1';
						if (card_received = '1') then 
							state := "101";
						end if;
					when "101" => -- add card to hand
						stack_mode <= "11"; --PUSH
						stack_en <= '1';
						state := "000"; -- end turn
					when others => state := "000";
				end case;	
		end if;
	end process;
end architecture;