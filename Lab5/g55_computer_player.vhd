-- Computer Player FSM for Crazy Eights
--
-- entity name: g55_computer_player
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 27, 2017
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_computer_player is
	port(
		turn : in std_logic;
		reset : in std_logic;
		clock : in std_logic;
		card_in : in std_logic_vector(5 downto 0);
		card_out : out std_logic_vector(5 downto 0);
		request_card : out std_logic;
		done : out std_logic
	);
end g55_computer_player;

architecture behav of g55_computer_player is

	signal current_card : std_logic_vector(5 downto 0);
	signal legal_move : std_logic;
	signal stack_num : std_logic_vector(5 downto 0);
	signal stack_mode : std_logic_vector(1 downto 0) := "00"; --initialize to NOP
begin
	process (clock, reset)
	variable state : std_logic_vector(3 downto 0) := "0001";
	variable card_num : integer := 0;
	variable play_card_value : std_logic_vector(5 downto 0);
	begin
		if clock'event then
			case state is
				when "0001" => -- wait state
					request_card <= '0';
					done <= '1';
					stack_mode <= "00";
					if (turn = '1') then --computer turn
						state := "0010";
					end if;
				when "0010" => --scan state
					card_out <= "000000";
					request_card <= '0';
					done <= '0';
					if (legal_move = '1') then	--card is legal to play
						state := "0100";
						card_num := 0;
						play_card_value := current_card;
					elsif (legal_move = '0' and std_logic_vector(to_unsigned(card_num+1, 6)) = stack_num) then -- illegal, out of cards
						state := "1000";
						card_num := 0;
					elsif (legal_move = '0') then --illegal move, more cards available
						card_num := card_num + 1;
					end if;
				when "1000" => --get new card
					card_out <= "000000";
					request_card <= '1';
					done <= '0';
					wait until (card_in'event); --wait to be dealt a new card
					request_card <= '0';
					stack_mode <= "11"; --push
					state := "0001"; --end turn
				when "0100" => --play card
					card_out <= play_card_value;
					request_card <= '0';
					done <= '0';
					stack_mode <= "10"; --POP
					state := "0001"; --end turn
				when others => state := "0001"; --return to wait in case of an error
			end case;
		elsif (reset = '1') then	--reset state machine
			state := "0001";
			card_num := 0;
		end if;
	end process;
end architecture;