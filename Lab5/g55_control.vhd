-- Control for crazy eights - handles sending cards, managing turns, etc.
--
-- entity name: g55_control
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: April 3, 2017
library ieee;
use ieee.std_logic_1164.all;

entity g55_control is
	port (
		clock : in std_logic;
		reset : in std_logic;
		computer_done : in std_logic;
		pci : in std_logic_vector(5 downto 0); -- player card in
		cci : in std_logic_vector(5 downto 0); -- computer card in
		computer_request : in std_logic;
		player_request : in std_logic;
		deck : in std_logic_vector(5 downto 0);
		top_card_in : in std_logic_vector(5 downto 0);
		player_done : in std_logic;
		com_num : in std_logic_vector(5 downto 0);
		player_num : in std_logic_vector(5 downto 0);
		deck_sent : in std_logic;
		turn_out : out std_logic;
		computer_card : out std_logic_vector(5 downto 0);
		player_card : out std_logic_vector(5 downto 0);
		player_enable : out std_logic;
		request_deal : out std_logic;
		top_card_out : out std_logic_vector(5 downto 0);
		top_card_en : out std_logic;
		deck_mode : out std_logic_vector(1 downto 0);
		card_sent : out std_logic := '0';
		deck_init : out std_logic;
		win_cond : out std_logic_vector(1 downto 0) := "00"
	);
end g55_control;

architecture behav of g55_control is
	signal turn : std_logic := '0';
begin
	turn_out <= turn;
	process (clock, reset)
	variable state : std_logic_vector(3 downto 0) := "0000";
	variable init_state : std_logic_vector(3 downto 0) := "0000";
	variable i : integer := 0;
	begin
		if (clock = '1') then
			case state is
				when "0000" =>	-- begin init
					case init_state is
					when "0000" =>
						deck_mode <= "01"; -- init
						deck_init <= '1';
						card_sent <= '0';
						request_deal <= '1';
						--top_card_out <= "111111";
						--top_card_en <= '1';
						turn <= '1';
						player_enable <= '0';
						i := 0;
						state := "0000";
						init_state := "0001";
					when "0001" =>	--get card from deck
						deck_mode <= "10"; --POP
						if (deck_sent = '1') then
							request_deal <= '0';
							if (i /= 14) then
								init_state := "0011";
							else
								init_state := "0101";
							end if;
						end if;
					when "0011" =>	-- signal player/computer that they will receive a card
						if (turn = '1') then --computer deal
							computer_card <= deck;
						elsif (turn = '0') then --player deal
							player_card <= deck;
						end if;
						card_sent <= '1';
						
						init_state := "0010";
					when "0010" =>	-- confirmation received from player/computer
						if ((turn = '1' and computer_done = '1') or (turn = '0' and player_done = '1') or i = 14) then
							i := i + 1; --increment
							if (i < 13) then --still dealing
								turn <= not turn;
								init_state := "0001";
							elsif (i = 14) then --place top card
								init_state := "0001";
							else -- done dealing -> start game
								turn <= '0';
								state := "0001";
							end if;
						end if;
					
					when "0101" =>
						top_card_en <= '1';
						top_card_out <= deck;
						state := "0010";
						
					when others => null;
					end case;

-- ***************************************************************************************

				when "0001" => -- check
					top_card_en <= '0';
					deck_mode <= "10"; --POP
					if (player_num = "000000" or com_num = "000000") then	
						state := "1001"; --game over someone won
					else
						state := "0011";
					end if;
					
				when "0011" => -- signal player
					if (turn = '1') then --computer
						if (computer_request = '1') then --card will be drawn
							state := "0010";
						elsif (computer_done = '1') then --legal card should be played
							top_card_out <= cci;
							top_card_en <= '1';
							state := "0111";
						end if;
					else -- player
						if (player_request = '1') then --card will be drawn
							state := "0010";
						elsif (player_done = '1') then
							top_card_out <= pci;
							top_card_en <= '1';
							state := "0111";
						end if;
					end if;
					
				when "0010" => -- draw a card
					request_deal <= '1';
					if (deck_sent = '1') then
						request_deal <= '0';
						state := "0110";
					end if;
					
				when "0110" => --send to player
					card_sent <= '1';
					if (turn = '1') then
						computer_card <= deck;
					else
						player_card <= deck;
					end if;
					
					if ((turn = '1' and computer_done = '1') or (turn = '0' and player_done = '1')) then	-- turn over
						state := "0001";
					end if;
				
				when "0111" => -- legal card sent
					top_card_en <= '1';
					state := "0001"; -- end turn
				
				when "1001" => -- game over
					if (com_num = "000000") then
						win_cond <= "01";
					else -- player won
						win_cond <= "10";
					end if;
				
				when others =>
					state := "0000";
					init_state := "0000";
				end case;
			
		elsif (reset = '1') then
			state := "0000";
			init_state := "0000";
		end if;
	end process;
end architecture;