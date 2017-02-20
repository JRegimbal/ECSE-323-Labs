-- Lab 2 top level design 
--
-- entity name: g55_lab2
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 17, 2017
library ieee;
use ieee.std_logic_1164.all;

entity g55_lab2 is
	port(
		N : in std_logic_vector(5 downto 0);
		clk : in std_logic;
		P_EN : out std_logic_vector(51 downto 0);
		code : in std_logic_vector(3 downto 0);
		mode : in std_logic;
		segments_out : out std_logic_vector(6 downto 0));
end g55_lab2;

architecture behav of g55_lab2 is
	component g55_pop_enable
		port(
			N : in std_logic_vector(5 downto 0);
			clk : in std_logic;
			P_EN : out std_logic_vector(51 downto 0)
		);
	end component;
	
	component g55_7_segment_decoder
		port (
			code : in std_logic_vector(3 downto 0);
			mode : in std_logic;
			segments_out : out std_logic_vector(6 downto 0)
		);
	end component;
begin
	U0 : g55_pop_enable port map(N=>N, clk=>clk, P_EN=>P_EN);
	U1 : g55_7_segment_decoder port map(code=>code, mode=>mode, segments_out=>segments_out);
end architecture;	