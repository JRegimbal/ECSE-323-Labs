-- Shuffled card dealer
--
-- entity name: g55_dealer
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 20, 2017

library ieee;
use ieee.std_logic_1164.all;

entity g55_dealer is
	port(
		request_deal : in std_logic;
		rand_lt_num : in std_logic;
		reset : in std_logic;
		clock : in std_logic;
		stack_enable : out std_logic;
		rand_enable : out std_logic
	);
end g55_dealer;

architecture behav of g55_dealer is
begin
	process (clock, reset) is
	variable state : std_logic_vector(1 downto 0) := "00";
	begin
		if rising_edge(clock) then	
			case state is
				when "00" =>
					if (request_deal = '0') then
						stack_enable <= '0';
						rand_enable <= '0';
						state := "01";
					end if;
				when "01" =>
					if (request_deal = '1') then
						stack_enable <= '0';
						rand_enable <= '0';
						state := "11";
					end if;
				when "11" =>
					if (rand_lt_num = '1') then
						stack_enable <= '0';
						rand_enable <= '1';
						state := "10";
					end if;
				when "10" => 
					stack_enable <= '1';
					rand_enable <= '0';
					state := "00";
				when others => state := "00";
			end case;
		end if;
		if (reset = '1') then
			state := "00";
		end if;
	end process;
end architecture;