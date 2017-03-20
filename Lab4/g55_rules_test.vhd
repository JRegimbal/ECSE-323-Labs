-- Simulation testbench for g55_rules
--
-- entity name: g55_rules_test
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 20, 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_rules_test is
end g55_rules_test;

architecture behav of g55_rules_test is
	component g55_rules
		port(
			play_pile_top_card : in std_logic_vector(5 downto 0);
			card_to_play : in std_logic_vector(5 downto 0);
			legal_play : out std_logic
		);
	end component;

	signal topCard : std_logic_vector(5 downto 0);
	signal playCard : std_logic_vector(5 downto 0);
	signal legal : std_logic;
	
begin
		U1 : g55_rules port map(play_pile_top_card=>topCard, card_to_play=>playCard, legal_play=>legal);
		
end architecture;
			