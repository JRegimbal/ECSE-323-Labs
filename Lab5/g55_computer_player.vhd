-- Computer Player FSM for Crazy Eights
--
-- entity name: g55_computer_player
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 27, 2017
library ieee;
library g55;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_computer_player is
	port(
		turn : in std_logic;
		reset : in std_logic;
		clock : in std_logic;
		top_card : in std_logic_vector(5 downto 0);
		card_in : in std_logic_vector(5 downto 0);
		card_out : out std_logic_vector(5 downto 0);
		num_cards: out std_logic_vector(5 downto 0);
		request_card : out std_logic;
		done : out std_logic
	);
end g55_computer_player;

architecture behav of g55_computer_player is	
	signal current_card : std_logic_vector(5 downto 0);
	signal card_addr : std_logic_vector(5 downto 0);
	signal legal_move : std_logic;
	signal stack_num : std_logic_vector(5 downto 0);
	signal stack_mode : std_logic_vector(1 downto 0) := "00"; --initialize to NOP
	signal stack_en : std_logic := '0';
	signal last_card_input : std_logic_vector(5 downto 0);
	signal input_change : std_logic;
	
begin

	stack : g55.g55_stack52 port map(clk=>clock, rst=>reset, mode=>stack_mode, data=>card_in,
		addr=>card_addr, value=>current_card, num=>stack_num, enable=>stack_en);
	rules : g55.g55_rules port map(play_pile_top_card=>top_card, card_to_play=>current_card, legal_play=>legal_move);
	
	input_change <= '0' when (last_card_input xor card_in) = ("000000") else '1';
	num_cards <= stack_num;
	
	process (clock, reset, input_change)
	variable state : std_logic_vector(4 downto 0) := "00001";
	variable card_num : integer := 0;
	variable play_card_value : std_logic_vector(5 downto 0);
	begin
		if (reset = '1') then --asynchronous reset
			state := "00001";
		elsif clock'event and clock = '1' then
			last_card_input <= card_in;
			case state is
				when "00001" => -- wait state
					request_card <= '0';
					card_num := 0;
					done <= '1';
					stack_mode <= "00";
					stack_en <= '0';
					if (turn = '1') then --computer turn
						state := "00010";
					end if;
				when "00010" => --scan state
					card_out <= "000000";
					request_card <= '0';
					done <= '0';
					card_addr <= std_logic_vector(to_unsigned(card_num, 6));
					if (legal_move = '1') then	--card is legal to play
						state := "00100";
						card_num := 0;
						play_card_value := current_card;
					elsif (legal_move = '0' and to_unsigned(card_num+1, 6) >= unsigned(stack_num)) then -- illegal, out of cards
						state := "01000";
						card_num := 0;
					elsif (legal_move = '0') then --illegal move, more cards available
						card_num := card_num + 1;
					end if;
				when "01000" => --get new card
					card_out <= "000000";
					request_card <= '1';
					done <= '0';
					if (input_change = '1') then
						state := "10000";
					end if;
				when "00100" => --play card
					card_out <= play_card_value;
					request_card <= '0';
					done <= '0';
					stack_en <= '1';
					stack_mode <= "10"; --POP
					state := "00001"; --end turn
				when "10000"=> --push
					request_card <= '0';
					stack_en <= '1';
					stack_mode <= "11"; --push
					state := "00001"; --end turn
				when others => state := "00001"; --return to wait in case of an error
			end case;
		end if;
	end process;
end architecture;