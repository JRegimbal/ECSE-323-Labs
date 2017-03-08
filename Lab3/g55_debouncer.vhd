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
	
	signal count : std_logic_vector(20 downto 0);
	signal enable : std_logic := '0';
	signal sigout : std_logic := '0';
	
begin
	C0 : lpm_counter generic map (LPM_AVALUE=>0, LPM_DIRECTION=>"UP", LPM_WIDTH=>21)
		port map(clock=>clock, aclr=>aclr, q=>count, cnt_en=>enable);
	F0 : lpm_ff generic map (LPM_AVALUE=>0, LPM_FFTYPE=>"DFF", LPM_WIDTH=>1)
		port map(aclr=>aclr, clock=>clock, sset=>sigout, q(0)=>output);

		STATE : process (count, input, enable)
		begin
			case count is
				when "000000000000000000000" => --either at beginning or end
					case enable is
						when '0' =>	-- not counting - at beginning
							case input is
								when '1' =>	-- start cycle
									enable <= '1';
									sigout <= '1';
								when others =>	-- do nothing
									enable <= '0';
									sigout <= '0';
							end case;
						when '1' =>  -- counting - at end
							enable <= '0';
							sigout <= '0';
						when others => null;
					end case; --enable
				when "000000000000000000001" => -- stop pulse
					sigout <= '0';
				when others => null;
			end case; --count
		end process STATE;
								
								
end architecture;