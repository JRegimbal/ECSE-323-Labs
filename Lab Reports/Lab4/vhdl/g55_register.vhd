-- Register
--
-- entity name: g55_register
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 20, 2017

library ieee;
use ieee.std_logic_1164.all;

entity g55_register is
	generic(WIDTH : integer := 6);
	port(
		register_enable : in std_logic;
		next_value : in std_logic_vector(WIDTH-1 downto 0);
		clock : in std_logic;
		register_value : out std_logic_vector(WIDTH-1 downto 0)
	);
end g55_register;

architecture behav of g55_register is
begin
	process (clock)
	variable register_store : std_logic_vector(WIDTH-1 downto 0);
	begin
		if (register_enable = '1') then
			register_store := next_value;
		end if;
		register_value <= register_store;
	end process;
end architecture;
			