-- 7 segment decoder -> to hex or to card value ; active low ; mode = 1 -> card, mode = 0 -> hex
--
-- entity name: g55_7_segment_decoder
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 17, 2017
library ieee;
use ieee.std_logic_1164.all;

entity g55_7_segment_decoder is
	port(
		code : in std_logic_vector(3 downto 0);
		mode : in std_logic;
		segments_out : out std_logic_vector(6 downto 0)
	);
end g55_7_segment_decoder;

architecture behav of g55_7_segment_decoder is
	signal xcode : std_logic_vector(4 downto 0);
	begin
		xcode(4 downto 1) <= code;
		xcode(0) <= mode;
		with xcode select
		segments_out <=
			"1000000" when "00000", -- code = 0, mode = 0
			"0000100" when "00001", -- "A"
			"1111001" when "00010", -- 1
			"0100100" when "00011", -- 2
			"0100100" when "00100", -- 2
			"0110000" when "00101", -- 3
			"0110000" when "00110", -- 3
			"0011001" when "00111", -- 4
			"0011001" when "01000",
			"0010010" when "01001", -- 5
			"0010010" when "01010",
			"0000010" when "01011", -- 6
			"0000010" when "01100",
			"1111000" when "01101", --7
			"1111000" when "01110",
			"0000000" when "01111", -- 8
			"0000000" when "10000",
			"0010000" when "10001", -- 9
			"0010000" when "10010",
			"1000000" when "10011", -- 0
			"0001000" when "10100", -- A
			"1100001" when "10101", -- J
			"0000011" when "10110", -- b
			"1100011" when "10111", -- o
			"1000110" when "11000", -- C
			"0001001" when "11001", -- K
			"0100001" when "11010", -- d
			"0111111" when "11011", -- -
			"0000110" when "11100", -- E
			"0111111" when "11101", -- -
			"0001110" when "11110", -- F
			"0111111" when "11111", -- -
			"XXXXXXX" when others;
end architecture;