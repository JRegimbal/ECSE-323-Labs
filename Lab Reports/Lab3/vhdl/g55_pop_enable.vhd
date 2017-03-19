--Pop enable circuit  
--
-- entity name: g55_pop_enable
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 14, 2017

library lpm;
use lpm.lpm_components.all;
library ieee;
use ieee.std_logic_1164.all;

entity g55_pop_enable is
	port ( N : in std_logic_vector(5 downto 0);
			 clk : in std_logic;
			P_EN : out std_logic_vector(51 downto 0));
end g55_pop_enable;

architecture behav of g55_pop_enable is

	signal crc_of_x : std_logic_vector(51 downto 0);

	component g55_lpm_rom
		port (
			clock : in std_logic;
			address : in std_logic_vector(5 downto 0);
			q : out std_logic_vector(51 downto 0)
		);
	end component;
	
begin
	crc_table : g55_lpm_rom
		port map (clock => clk, address => N, q => crc_of_x);
		P_EN <= crc_of_x;
end architecture;