-- Stack slot - Individual space to be put into a stack
--
-- entity name: g55_stack_slot
-- Copyright (C) 2017 Juliette Regimbal, Qingzhou Yang
-- Version 1.0
-- Author: Juliette Regimbal (juliette.regimbal@mail.mcgill.ca), Qingzhou Yang (qingzhou.yang@mail.mcgill.ca)
-- Date: March 9, 2017
library ieee;
library lpm;

use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity g55_stack_slot is
	generic(
		WIDTH : integer := 6;
		INIT : integer := 1
	);
	port(
		dataa : in std_logic_vector(5 downto 0);
		datab : in std_logic_vector(5 downto 0);
		sel : in std_logic;
		clk : in std_logic;
		sset : in std_logic;
		aclr : in std_logic;
		enable : in std_logic;
		q : out std_logic_vector(5 downto 0)
	);
end g55_stack_slot;

architecture behav of g55_stack_slot is

	component busmux
		generic (
			WIDTH : integer
		);
		port(
			dataa : in std_logic_vector(WIDTH-1 downto 0);
			datab : in std_logic_vector(WIDTH-1 downto 0);
			sel : in std_logic;
			result : out std_logic_vector(WIDTH-1 downto 0)
		);
	end component;
	
	component lpm_ff
		generic (
			LPM_AVALUE : integer;
			LPM_FFTYPE : string;
			LPM_SVALUE : integer;
			LPM_WIDTH : integer
		);
		port (
			sset : in std_logic;
			data : in std_logic_vector(LPM_WIDTH-1 downto 0);
			clock : in std_logic;
			enable : in std_logic;
			aclr : in std_logic;
			q : out std_logic_vector(LPM_WIDTH-1 downto 0)
		);
	end component;
	signal dataconnect : std_logic_vector(WIDTH-1 downto 0);
		
begin
	U0 : busmux generic map(WIDTH=>WIDTH)
			port map (dataa=>dataa, datab=>datab, sel=>sel, result=> dataconnect);
	U1 : lpm_ff generic map(LPM_AVALUE => 0, LPM_FFTYPE => "DFF", LPM_SVALUE => INIT, LPM_WIDTH => WIDTH)
			port map (sset => sset, aclr => aclr, enable => enable, clock => clk, data => dataconnect, q => q);
end architecture;
		