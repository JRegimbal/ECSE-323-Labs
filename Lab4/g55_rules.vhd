-- Check if card played is legal
--
-- entity name: g55_rules
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 20, 2017
-- Worst-case maximum propogation delay: 19.023

library ieee;
use ieee.std_logic_1164.all;

entity g55_rules is
	port(
		play_pile_top_card : in std_logic_vector(5 downto 0);
		card_to_play : in std_logic_vector(5 downto 0);
		legal_play : out std_logic
	);
end g55_rules;

architecture behav of g55_rules is
	component g55_mod13_v2
		port(	
			A : in std_logic_vector(5 downto 0);
			Amod13 : out std_logic_vector(3 downto 0);
			floor13 : out std_logic_vector(2 downto 0)
		);
	end component;
	signal topSuit : std_logic_vector(2 downto 0);
	signal topValue : std_logic_vector(3 downto 0);
	signal playSuit : std_logic_vector(2 downto 0);
	signal playValue : std_logic_vector(3 downto 0);
	
begin
	DEC1 : g55_mod13_v2 port map (A=>play_pile_top_card, Amod13=>topValue, floor13=>topSuit);
	DEC2 : g55_mod13_v2 port map (A=>card_to_play, Amod13=>playValue, floor13=>playSuit);
	
	RULES : process (play_pile_top_card, card_to_play)
	begin	--note that all numeric values are one less than the card value
		if (playValue = "000111") then -- played card has a value of 8
			legal_play <= '1';
		elsif (topValue = "000111") then -- played on card that has a value of 8
			legal_play <= '1';
		elsif (topSuit = playSuit) then --played on card of the same suit
			legal_play <= '1';
		elsif (topValue = playValue) then --played on card of same value
			legal_play <= '1';
		else
			legal_play <= '0';
		end if;
	end process;
end architecture;