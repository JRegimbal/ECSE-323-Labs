library ieee;
use ieee.std_logic_1164.all;

entity g55_lab3 is
	port(
		data : in std_logic_vector(5 downto 0);
		mode : in std_logic_vector(1 downto 0);
		addr : in std_logic_vector(5 downto 0);
		enable : in std_logic;
		rst : in std_logic;
		clk : in std_logic;
		value : out std_logic_vector(5 downto 0);
		empty : out std_logic;
		full : out std_logic;
		num : out std_logic_vector(5 downto 0)
	);
end g55_lab3;

architecture behav of g55_lab3 is
	component g55_stack52
			port (
				data : in std_logic_vector(5 downto 0);
				mode : in std_logic_vector(1 downto 0); -- 00 NOP, 01 INIT, 10 POP, 11 PUSH
				addr : in std_logic_vector(5 downto 0);
				enable : in std_logic;
				rst : in std_logic;
				clk : in std_logic;
				value : out std_logic_vector(5 downto 0);
				empty : out std_logic;
				full : out std_logic;
				num : out std_logic_vector(5 downto 0)
			);
	end component;
begin
	U0 : g55_stack52 port map (data => data, mode => mode, addr => addr, enable => enable, rst => rst, clk => clk, value => value, empty => empty, full => full, num => num);
end architecture;