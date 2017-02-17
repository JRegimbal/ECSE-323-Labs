--Pop enable testbench  
--
-- entity name: g55_pop_enable_test
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 17, 2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_pop_enable_test is
end g55_pop_enable_test;

architecture behav of g55_pop_enable_test is
	signal add_in : std_logic_vector(5 downto 0);
	signal output : std_logic_vector(51 downto 0);
	component g55_pop_enable
		port(
			N : in std_logic_vector(5 downto 0);
			P_EN : out std_logic_vector(51 downto 0)
		);
	end component;
	
	begin
	U1 : g55_pop_enable port map(N => add_in, P_EN => output);
	testbench : process
	begin
		for i in 0 to 63 loop
			wait for 20 ns;
			add_in <= std_logic_vector(to_unsigned(i, 6));
		end loop;
	end process;
end architecture;
	