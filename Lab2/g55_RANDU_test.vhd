-- this is a testbench of the IBM RANDU version of a linear congruential generator
--
-- entity name: g55_RANDU_test
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 6, 2017
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_RANDU_test is
end g55_RANDU_test;

architecture test of g55_RANDU_test is
	signal seed : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
	signal rand : std_logic_vector(31 downto 0);
	component g55_RANDU
		port(
			seed : in std_logic_vector(31 downto 0);
			rand : out std_logic_vector(31 downto 0)
		);
	end component;
	begin
	  
	U1 : g55_RANDU port map (seed => seed, rand => rand);
    generate_test : process
   	variable temp : unsigned(31 downto 0);
    begin
	for i in 0 to 4 loop
		wait for 10 ns;
		temp := unsigned(rand);
		seed <= std_logic_vector(temp);
	end loop;
	end process;
	
end architecture;