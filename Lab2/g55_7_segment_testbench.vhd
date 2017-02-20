-- Lab 2 top level design testbench
--
-- entity name: g55_7_segment_testbench
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 17, 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_7_segment_testbench is
end g55_7_segment_testbench;

architecture testbench of g55_7_segment_testbench is
	component g55_7_segment_decoder
		port (
			code : in std_logic_vector(3 downto 0);
			mode : in std_logic;
			segments_out : out std_logic_vector(6 downto 0));
	end component;
	
	signal xcode : std_logic_vector(4 downto 0);
	signal segments : std_logic_vector(6 downto 0);
	
begin
	U0 : g55_7_segment_decoder port map(code=>xcode(4 downto 1), mode=>xcode(0), segments_out=>segments);
	test : process
	begin
		for i in 0 to 31 loop
			xcode <= std_logic_vector(to_unsigned(i,5));
			wait for 10 ns;
		end loop;
	end process;
end architecture;