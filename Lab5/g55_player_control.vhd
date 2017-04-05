library ieee;
library g55;
use ieee.std_logic_1164.all;

entity g55_player_control is
	port(
		clock : in std_logic;
		card_in : in std_logic_vector(5 downto 0);
		top : in std_logic_vector(5 downto 0);
		choose : in std_logic;
		play_draw_sel : in std_logic; -- 1 play, 0 draw
		card_received : in std_logic;
		turn : in std_logic; -- 1 computer, 0 player
		deal : in std_logic;
		mode : out std_logic_vector(1 downto 0) := "00";
		done : out std_logic := '0';
		request_card : out std_logic := '0'
	);
end g55_player_control;

architecture behav of g55_player_control is
	signal legal : std_logic;
	signal card_wait : std_logic := '0';
begin
	rule : entity g55.g55_rules port map(play_pile_top_card=>top, card_to_play=>card_in, legal_play=>legal);
	request_card <= card_wait;
	process (clock)
	begin
		if (clock = '1' and turn = '0') then
			if (deal = '0') then	
				if (choose = '1') then
					if (play_draw_sel = '1' and legal = '1') then --legal move and chose to play
						mode <= "10"; -- POP
						done <= '1';
					elsif (play_draw_sel = '0') then --chose to draw a card_in
						card_wait <= '1';
					else
						mode <= "00";
					end if;
				else
					mode <= "00";
				end if;
			elsif (deal = '1') then --dealing cards
				card_wait <= '1';
			end if;
		
			if (card_received = '1' and card_wait = '1') then -- received new card
				mode <= "11"; -- PUSH
				card_wait <= '0';
				done <= '1';
			end if;
		elsif (clock = '1' and turn = '1') then
			mode <= "00";
			done <= '0';
			card_wait <= '0';
		end if;
	end process;
end architecture;