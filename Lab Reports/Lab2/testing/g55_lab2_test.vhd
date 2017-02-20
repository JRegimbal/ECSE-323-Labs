-- Lab 2 top level design testbench
--
-- entity name: g55_lab2_test
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 17, 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_lab2_test is
end g55_lab2_test;

architecture behav of g55_lab2_test is
	component g55_lab2
		port(
		N : in std_logic_vector(5 downto 0);
		clk : in std_logic;
		P_EN : out std_logic_vector(51 downto 0);
		code : in std_logic_vector(3 downto 0);
		mode : in std_logic;
		segments_out : out std_logic_vector(6 downto 0));
	end component;
	
	signal clock : std_logic := '0';
	signal xcode : std_logic_vector(4 downto 0);
	signal N : std_logic_vector(5 downto 0);
	signal P_EN : std_logic_vector(51 downto 0);
	signal segments : std_logic_vector(6 downto 0);
	
	shared variable clock_finished : boolean := false;
	
begin

	U0 : g55_lab2 port map(N=>N, clk=>clock, P_EN=>P_EN, code=>xcode(4 downto 1), mode=>xcode(0), segments_out=>segments);
	
	clock_proc : process
	begin
		while clock_finished=false loop
			clock <= not clock;
			wait for 2 ns;
		end loop;
	end process clock_proc;

	testbench_enable : process
	begin
		for i in 0 to 63 loop
			N <= std_logic_vector(to_unsigned(i, 6));
			wait for 8 ns;
		end loop;
		clock_finished := true;
	end process testbench_enable;
	
	testbench_segment : process
	begin
		for i in 0 to 31 loop
			xcode <= std_logic_vector(to_unsigned(i, 5));
			wait for 10 ns;
		end loop;
	end process testbench_segment;
end architecture;
	