library ieee;
library g55;
use ieee.std_logic_1164.all;


entity g55_rand_sync is
	port(
		clock : in std_logic;
		rand : out std_logic_vector(31 downto 0)
	);
end g55_rand_sync;

architecture behav of g55_rand_sync is
	signal last_rand : std_logic_vector(31 downto 0) := "10010000101100001101000111100010"; -- arbitrary seed
	signal current : std_logic_vector(31 downto 0);

	begin
	RANDU : entity g55.g55_randu port map(seed=>last_rand, rand=>current);
	rand <= current;
		process (clock)
		begin
			if (clock = '1') then
				last_rand <= current;
			end if;
		end process;
end architecture;
		 