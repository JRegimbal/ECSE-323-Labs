-- this circuit implements the IBM RANDU version of a linear congruential generator
--
-- entity name: g55_RANDU
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: February 3, 2017
-- R = mod(a*SEED + b, c)
library lpm;
use lpm.lpm_components.all;
library ieee;
use ieee.std_logic_1164.all;

entity g55_RANDU is
	port (
		seed : in std_logic_vector(31 downto 0);
		rand : out std_logic_vector(31 downto 0));
end g55_RANDU;

architecture archv1 of g55_RANDU is
	
	signal a : std_logic_vector(31 downto 0) := "10000000000000000000000000000011";
	signal b : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal c : std_logic_vector(31 downto 0) := "10000000000000000000000000000000";
	
	signal seedShift2 : std_logic_vector(31 downto 0);
	signal seedShift31 : std_logic_vector(31 downto 0);
	signal multiplytemp : std_logic_vector(31 downto 0);
	signal aSeed : std_logic_vector(31 downto 0); -- a*Seed
	signal floorterm : std_logic_vector(31 downto 0);
	signal ones : std_logic_vector(31 downto 0);
	signal twos : std_logic_vector(31 downto 0);
	
	
	begin
		seedShift2 <= seed sll 2;
		seedShift31 <= seed sll 31;
		floorterm(31) <= aSeed(31);
		floorterm(30 downto 0) <= "0000000000000000000000000000000";
		ones <= not floorterm;
		
		Adder1 : lpm_add_sub port map (dataa => seed, datab => seedShift2, result => multiplytemp);
		Adder2 : lpm_add_sub port map (dataa => multiplytemp, datab => seedShift31, result => aSeed);
		Adder3 : lpm_add_sub port map (dataa => aSeed, datab => twos, result => rand);
		Adder4 : lpm_add_sub port map (dataa => ones, datab => "00000000000000000000000000000001", result => twos);
end architecture;
	
