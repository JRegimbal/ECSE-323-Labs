library ieee;
library lpm;

use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity g55_debouncer is -- debounce 40ms (2 000 000 count)
	port(
		input : in std_logic;
		aclr : in std_logic;
		clock : in std_logic; -- 50MHz
		output : out std_logic
	--	stateOut : out std_logic_vector(2 downto 0)
	);
end g55_debouncer;

architecture behav of g55_debouncer is
	component lpm_counter
		generic (
			LPM_AVALUE : integer;
			LPM_DIRECTION : string;
			LPM_WIDTH : integer
		);
		port (
			aclr : in std_logic;
			clock : in std_logic;
			cnt_en : in std_logic;
			q : out std_logic_vector(LPM_WIDTH-1 downto 0)
		);
	end component;
	
	component lpm_ff
		generic (
			LPM_AVALUE : integer;
			LPM_FFTYPE : string;
			LPM_WIDTH : integer
		);
		port (
			aclr : in std_logic;
			sset : in std_logic;
			clock : in std_logic;
			q : out std_logic_vector(LPM_WIDTH-1 downto 0)
		);
	end component;
	
	signal count : std_logic_vector(22 downto 0);
	signal enable : std_logic := '0';
	signal state : std_logic_vector(2 downto 0) := "001";
	
begin
	C0 : lpm_counter generic map (LPM_AVALUE=>0, LPM_DIRECTION=>"UP", LPM_WIDTH=>23)
		port map(clock=>clock, aclr=>state(0), q=>count, cnt_en=>enable);

		process (clock, aclr)
		begin
		if (clock'event and clock = '1') then
			if (state = "001" and input = '1') then
				state <= "010";
				enable <= '0';
			elsif (state = "010") then --only in this for one clock cycle
				state <= "100";
				enable <= '1';
			elsif (state = "100" and count = "11111111111111111111111") then -- counter done
				state <= "001";
				enable <= '0';
			elsif (state /= "001" and state /= "010" and state /= "100") then --prevent stuck state
				state <= "001";
			end if;
		end if;
		end process;
		--stateOut <= state;
		output <= not state(2) and state(1) and not state(0); --only high for state 010
								
end architecture;