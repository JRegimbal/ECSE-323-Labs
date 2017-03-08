library ieee;
use ieee.std_logic_1164.all;

entity g55_lab3_v2 is
	port(
		mode : in std_logic_vector(1 downto 0);
		addr : in std_logic_vector(5 downto 0);
		en : in std_logic;
		rst : in std_logic;
		clk : in std_logic;
		--value : out std_logic_vector(5 downto 0);
		segments_mod : out std_logic_vector(6 downto 0);
		segments_floor : out std_logic_vector(6 downto 0);
		empty : out std_logic;
		full : out std_logic;
		num : out std_logic_vector(5 downto 0)
	);
end g55_lab3_v2;

architecture behav of g55_lab3_v2 is
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
	component g55_debouncer
		port (
			clock : in std_logic;
			input : in std_logic;
			output : out std_logic;
			aclr : in std_logic
		);
	end component;
	component g55_mod13_v2
		port (
			A : in std_logic_vector(5 downto 0);
			Amod13 : out std_logic_vector(3 downto 0);
			floor13 : out std_logic_vector(2 downto 0)
		);
	end component;
	component g55_7_segment_decoder
		port (
			code : in std_logic_vector(3 downto 0);
			mode : in std_logic;
			segments_out : out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal enable : std_logic;
	signal amod13 : std_logic_vector(3 downto 0);
	signal floor13 : std_logic_vector(3 downto 0);
	signal data : std_logic_vector(5 downto 0) := "000100";
	signal value : std_logic_vector(5 downto 0);
	
begin
	floor13(3) <= '0';
	DEB : g55_debouncer port map(clock => clk, input => en, output => enable, aclr => rst);
	MOD13 : g55_mod13_v2 port map(A => value, Amod13 => amod13, floor13 => floor13(2 downto 0));
	SEG_MOD : g55_7_segment_decoder port map(code => amod13, mode => '0', segments_out => segments_mod);
	SEG_FLOOR : g55_7_segment_decoder port map(code => floor13, mode => '0', segments_out => segments_floor);
	STACK : g55_stack52 port map (data => data, mode => mode, addr => addr, enable => enable, rst => rst, clk => clk, value => value, empty => empty, full => full, num => num);
	
end architecture;