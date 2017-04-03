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
		turn : out std_logic;
		computer_card : out std_logic_vector(5 downto 0);
		player_card : out std_logic_vector(5 downto 0);
		player_enable : out std_logic;
		request_deal : out std_logic;
		top_card_out : out std_logic_vector(5 downto 0);
		top_card_en : out std_logic;
		deck_mode : out std_logic_vector(1 downto 0);
		card_sent : out std_logic := '0'
	);
end g55_control;