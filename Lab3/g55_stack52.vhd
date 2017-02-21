library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g55_stack52 is
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
end g55_stack52;

architecture behav of g55_stack52 is

	type multi is array (51 downto 0) of std_logic_vector(5 downto 0);

	component g55_stack_slot
	    generic(
	       WIDTH : integer := 6;
	       INIT : integer
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
	component lpm_mux
		--type marray is array (LPM_SIZE-1 downto 0) of std_logic_vector(LPM_WIDTH-1 downto 0);
		generic(
			LPM_SIZE : integer;
			LPM_WIDTH : integer;
			LPM_WIDTHS : integer);
		port(
			data : in multi;
			clock : in std_logic;
			sel : in std_logic_vector(LPM_WIDTHS-1 downto 0);
			result : out std_logic_vector(LPM_WIDTH-1 downto 0)
		);
	end component;
	
	component g55_pop_enable
		port(
			N : in std_logic_vector(5 downto 0);
			clk : in std_logic;
			P_EN : out std_logic_vector(51 downto 0)
		);
	end component;
	
	component lpm_counter
		generic(
			LPM_WIDTH : integer;
			LPM_SVALUE : integer;
			LPM_AVALUE : integer
		);
		port(
			sset : in std_logic;
			updown : in std_logic;
			cnt_en : in std_logic;
			clock : in std_logic;
			aclr : in std_logic;
			q : out std_logic_vector(LPM_WIDTH-1 downto 0)
		);
	end component;
	
	signal pop : std_logic;
	signal push : std_logic;
	signal nop : std_logic;
	signal init : std_logic;
	signal q : multi;
	signal enableArray : std_logic_vector(51 downto 0);
	signal enableTemp : std_logic_vector(51 downto 0);
	signal numHold : std_logic_vector(5 downto 0) := "000000";
	signal enableNum : std_logic := '0';
	
	
	
begin
	nop <= not mode(1) and not mode(0);
	init <= not mode(1) and mode(0);
	pop <= mode(1) and not mode(0);
	push <= mode(1) and mode(0);
	
	num <= numHold;
	
	empty <= not numHold(5) and not numHold(4) and not numHold(3) and not numHold(2) and not numHold(1) and not numHold(0);
	full <= numHold(5) and numHold(4) and not numHold(3) and numHold(2) and not numHold(1) and not numHold(0); --check if it's 52, 110100
	
	--State system (set different enables based on input)
	process(enable, mode)
	begin
	case enable is -- do nothing based on mode input
		when '0' =>	
			enableArray <= std_logic_vector(to_unsigned(0, 52));
			enableNum <= '0';
		when others =>
			case mode is
				when "00" =>	-- nop
					enableNum <= '0';
					enableArray <= std_logic_vector(to_unsigned(0, 52));
				when "01" =>	-- init
					enableNum <= '1';
					enableArray <= not std_logic_vector(to_unsigned(0, 52));
				when "10" =>	-- pop
					enableNum <= '1';
					enableArray <= enableTemp; -- only set certain slots to shift
				when "11" =>	-- push
					enableNum <= '1';
					enableArray <= not std_logic_vector(to_unsigned(0, 52)); -- all must shift during push
				when others => null;
			end case;
   end case;
	end process;
	
	-- counter for num (increment/decrement)
	C0 : lpm_counter generic map(LPM_WIDTH => 6, LPM_SVALUE => 52, LPM_AVALUE => 0)
		port map(updown => push, sset => init, aclr => rst, cnt_en => enableNum, clock => clk, q => numHold);
	-- Pop_enable circuit from lab2 for setting enable on stack
	E0 : g55_pop_enable port map(N => addr, clk => clk, P_EN => enableTemp);
	-- muxer for outputting value of slot at addr
	M0 : lpm_mux generic map(LPM_SIZE => 52, LPM_WIDTH => 6, LPM_WIDTHS => 6)
		port map(data => q, clock => clk, sel => addr, result => value);
		
	--stack slots (0 through 51) each Sn resets to n on init, 
	S0 : g55_stack_slot generic map (WIDTH => 6, INIT => 0)
		port map (dataa => data, datab => q(1), sel => push, clk => clk, aclr => rst, enable => enableArray(0), sset => init, q => q(0));
	S1 : g55_stack_slot generic map (WIDTH => 6, INIT => 1)
		port map (dataa => q(0), datab => q(2), sel => push, clk => clk, aclr => rst, enable => enableArray(1), sset => init, q => q(1));
	S2 : g55_stack_slot generic map (WIDTH => 6, INIT => 2)
		port map (dataa => q(1), datab => q(3), sel => push, clk => clk, aclr => rst, enable => enableArray(2), sset => init, q => q(2));
	S3 : g55_stack_slot generic map (WIDTH => 6, INIT => 3)
		port map (dataa => q(2), datab => q(4), sel => push, clk => clk, aclr => rst, enable => enableArray(3), sset => init, q => q(3));
	S4 : g55_stack_slot generic map (WIDTH => 6, INIT => 4)
		port map (dataa => q(3), datab => q(5), sel => push, clk => clk, aclr => rst, enable => enableArray(4), sset => init, q => q(4));
	S5 : g55_stack_slot generic map (WIDTH => 6, INIT => 5)
		port map (dataa => q(4), datab => q(6), sel => push, clk => clk, aclr => rst, enable => enableArray(5), sset => init, q => q(5));
	S6 : g55_stack_slot generic map (WIDTH => 6, INIT => 6)
		port map (dataa => q(5), datab => q(7), sel => push, clk => clk, aclr => rst, enable => enableArray(6), sset => init, q => q(6));
	S7 : g55_stack_slot generic map (WIDTH => 6, INIT => 7)
		port map (dataa => q(6), datab => q(8), sel => push, clk => clk, aclr => rst, enable => enableArray(7), sset => init, q => q(7));
	S8 : g55_stack_slot generic map (WIDTH => 6, INIT => 8)
		port map (dataa => q(7), datab => q(9), sel => push, clk => clk, aclr => rst, enable => enableArray(8), sset => init, q => q(8));
	S9 : g55_stack_slot generic map (WIDTH => 6, INIT => 9)
		port map (dataa => q(8), datab => q(10), sel => push, clk => clk, aclr => rst, enable => enableArray(9), sset => init, q => q(9));
	S10 : g55_stack_slot generic map (WIDTH => 6, INIT => 10)
		port map (dataa => q(9), datab => q(11), sel => push, clk => clk, aclr => rst, enable => enableArray(10), sset => init, q => q(10));
	S11 : g55_stack_slot generic map (WIDTH => 6, INIT => 11)
		port map (dataa => q(10), datab => q(12), sel => push, clk => clk, aclr => rst, enable => enableArray(11), sset => init, q => q(11));
	S12 : g55_stack_slot generic map (WIDTH => 6, INIT => 12)
		port map (dataa => q(11), datab => q(13), sel => push, clk => clk, aclr => rst, enable => enableArray(12), sset => init, q => q(12));
	S13 : g55_stack_slot generic map (WIDTH => 6, INIT => 13)
		port map (dataa => q(12), datab => q(14), sel => push, clk => clk, aclr => rst, enable => enableArray(13), sset => init, q => q(13));
	S14 : g55_stack_slot generic map (WIDTH => 6, INIT => 14)
		port map (dataa => q(13), datab => q(15), sel => push, clk => clk, aclr => rst, enable => enableArray(14), sset => init, q => q(14));
	S15 : g55_stack_slot generic map (WIDTH => 6, INIT => 15)
		port map (dataa => q(14), datab => q(16), sel => push, clk => clk, aclr => rst, enable => enableArray(15), sset => init, q => q(15));
	S16 : g55_stack_slot generic map (WIDTH => 6, INIT => 16)
		port map (dataa => q(15), datab => q(17), sel => push, clk => clk, aclr => rst, enable => enableArray(16), sset => init, q => q(16));
	S17 : g55_stack_slot generic map (WIDTH => 6, INIT => 17)
		port map (dataa => q(16), datab => q(18), sel => push, clk => clk, aclr => rst, enable => enableArray(17), sset => init, q => q(17));
	S18 : g55_stack_slot generic map (WIDTH => 6, INIT => 18)
		port map (dataa => q(17), datab => q(19), sel => push, clk => clk, aclr => rst, enable => enableArray(18), sset => init, q => q(18));
	S19 : g55_stack_slot generic map (WIDTH => 6, INIT => 19)
		port map (dataa => q(18), datab => q(20), sel => push, clk => clk, aclr => rst, enable => enableArray(19), sset => init, q => q(19));
	S20 : g55_stack_slot generic map (WIDTH => 6, INIT => 20)
		port map (dataa => q(19), datab => q(21), sel => push, clk => clk, aclr => rst, enable => enableArray(20), sset => init, q => q(20));
	S21 : g55_stack_slot generic map (WIDTH => 6, INIT => 21)
		port map (dataa => q(20), datab => q(22), sel => push, clk => clk, aclr => rst, enable => enableArray(21), sset => init, q => q(21));
	S22 : g55_stack_slot generic map (WIDTH => 6, INIT => 22)
		port map (dataa => q(21), datab => q(23), sel => push, clk => clk, aclr => rst, enable => enableArray(22), sset => init, q => q(22));
	S23 : g55_stack_slot generic map (WIDTH => 6, INIT => 23)
		port map (dataa => q(22), datab => q(24), sel => push, clk => clk, aclr => rst, enable => enableArray(23), sset => init, q => q(23));
	S24 : g55_stack_slot generic map (WIDTH => 6, INIT => 24)
		port map (dataa => q(23), datab => q(25), sel => push, clk => clk, aclr => rst, enable => enableArray(24), sset => init, q => q(24));
	S25 : g55_stack_slot generic map (WIDTH => 6, INIT => 25)
		port map (dataa => q(24), datab => q(26), sel => push, clk => clk, aclr => rst, enable => enableArray(25), sset => init, q => q(25));
	S26 : g55_stack_slot generic map (WIDTH => 6, INIT => 26)
		port map (dataa => q(25), datab => q(27), sel => push, clk => clk, aclr => rst, enable => enableArray(26), sset => init, q => q(26));
	S27 : g55_stack_slot generic map (WIDTH => 6, INIT => 27)
		port map (dataa => q(26), datab => q(28), sel => push, clk => clk, aclr => rst, enable => enableArray(27), sset => init, q => q(27));
	S28 : g55_stack_slot generic map (WIDTH => 6, INIT => 28)
		port map (dataa => q(27), datab => q(29), sel => push, clk => clk, aclr => rst, enable => enableArray(28), sset => init, q => q(28));
	S29 : g55_stack_slot generic map (WIDTH => 6, INIT => 29)
		port map (dataa => q(28), datab => q(30), sel => push, clk => clk, aclr => rst, enable => enableArray(29), sset => init, q => q(29));
	S30 : g55_stack_slot generic map (WIDTH => 6, INIT => 30)
		port map (dataa => q(29), datab => q(31), sel => push, clk => clk, aclr => rst, enable => enableArray(30), sset => init, q => q(30));
	S31 : g55_stack_slot generic map (WIDTH => 6, INIT => 31)
		port map (dataa => q(30), datab => q(32), sel => push, clk => clk, aclr => rst, enable => enableArray(31), sset => init, q => q(31));
	S32 : g55_stack_slot generic map (WIDTH => 6, INIT => 32)
		port map (dataa => q(31), datab => q(33), sel => push, clk => clk, aclr => rst, enable => enableArray(32), sset => init, q => q(32));
	S33 : g55_stack_slot generic map (WIDTH => 6, INIT => 33)
		port map (dataa => q(32), datab => q(34), sel => push, clk => clk, aclr => rst, enable => enableArray(33), sset => init, q => q(33));
	S34 : g55_stack_slot generic map (WIDTH => 6, INIT => 34)
		port map (dataa => q(33), datab => q(35), sel => push, clk => clk, aclr => rst, enable => enableArray(34), sset => init, q => q(34));
	S35 : g55_stack_slot generic map (WIDTH => 6, INIT => 35)
		port map (dataa => q(34), datab => q(36), sel => push, clk => clk, aclr => rst, enable => enableArray(35), sset => init, q => q(35));
	S36 : g55_stack_slot generic map (WIDTH => 6, INIT => 36)
		port map (dataa => q(35), datab => q(37), sel => push, clk => clk, aclr => rst, enable => enableArray(36), sset => init, q => q(36));
	S37 : g55_stack_slot generic map (WIDTH => 6, INIT => 37)
		port map (dataa => q(36), datab => q(38), sel => push, clk => clk, aclr => rst, enable => enableArray(37), sset => init, q => q(37));
	S38 : g55_stack_slot generic map (WIDTH => 6, INIT => 38)
		port map (dataa => q(37), datab => q(39), sel => push, clk => clk, aclr => rst, enable => enableArray(38), sset => init, q => q(38));
	S39 : g55_stack_slot generic map (WIDTH => 6, INIT => 39)
		port map (dataa => q(38), datab => q(40), sel => push, clk => clk, aclr => rst, enable => enableArray(39), sset => init, q => q(39));
	S40 : g55_stack_slot generic map (WIDTH => 6, INIT => 40)
		port map (dataa => q(39), datab => q(41), sel => push, clk => clk, aclr => rst, enable => enableArray(40), sset => init, q => q(40));
	S41 : g55_stack_slot generic map (WIDTH => 6, INIT => 41)
		port map (dataa => q(40), datab => q(42), sel => push, clk => clk, aclr => rst, enable => enableArray(41), sset => init, q => q(41));
	S42 : g55_stack_slot generic map (WIDTH => 6, INIT => 42)
		port map (dataa => q(41), datab => q(43), sel => push, clk => clk, aclr => rst, enable => enableArray(42), sset => init, q => q(42));
	S43 : g55_stack_slot generic map (WIDTH => 6, INIT => 43)
		port map (dataa => q(42), datab => q(44), sel => push, clk => clk, aclr => rst, enable => enableArray(43), sset => init, q => q(43));
	S44 : g55_stack_slot generic map (WIDTH => 6, INIT => 44)
		port map (dataa => q(43), datab => q(45), sel => push, clk => clk, aclr => rst, enable => enableArray(44), sset => init, q => q(44));
	S45 : g55_stack_slot generic map (WIDTH => 6, INIT => 45)
		port map (dataa => q(44), datab => q(46), sel => push, clk => clk, aclr => rst, enable => enableArray(45), sset => init, q => q(45));
	S46 : g55_stack_slot generic map (WIDTH => 6, INIT => 46)
		port map (dataa => q(45), datab => q(47), sel => push, clk => clk, aclr => rst, enable => enableArray(46), sset => init, q => q(46));
	S47 : g55_stack_slot generic map (WIDTH => 6, INIT => 47)
		port map (dataa => q(46), datab => q(48), sel => push, clk => clk, aclr => rst, enable => enableArray(47), sset => init, q => q(47));
	S48 : g55_stack_slot generic map (WIDTH => 6, INIT => 48)
		port map (dataa => q(47), datab => q(49), sel => push, clk => clk, aclr => rst, enable => enableArray(48), sset => init, q => q(48));
	S49 : g55_stack_slot generic map (WIDTH => 6, INIT => 49)
		port map (dataa => q(48), datab => q(50), sel => push, clk => clk, aclr => rst, enable => enableArray(49), sset => init, q => q(49));
	S50 : g55_stack_slot generic map (WIDTH => 6, INIT => 50)
		port map (dataa => q(49), datab => q(51), sel => push, clk => clk, aclr => rst, enable => enableArray(50), sset => init, q => q(50));
	S51 : g55_stack_slot generic map (WIDTH => 6, INIT => 51)
		port map (dataa => q(50), datab => "000000", sel => push, clk => clk, aclr => rst, enable => enableArray(51), sset => init, q => q(51));
	
end architecture;