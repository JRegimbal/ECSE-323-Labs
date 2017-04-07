library ieee;
library g55;
use ieee.std_logic_1164.all;

entity g55_deck is
	port(
		clock : in std_logic;
		card_request : in std_logic;
		setup : in std_logic;
		reset : in std_logic;
		card_out : out std_logic_vector(5 downto 0);
		remaining : out std_logic_vector(5 downto 0)
	);
end g55_deck;

architecture behav of g55_deck is
	component g55_rand_sync
		port(
			clock : in std_logic;
			rand : out std_logic_vector(31 downto 0)
		);
	end component;
	component lpm_compare0
		port(
			dataa : in std_logic_vector(5 downto 0);
			datab : in std_logic_vector(5 downto 0);
			alb : out std_logic
		);
	end component;
	signal request_deal, stack_en, stack_enable, rand_enable, alb : std_logic;
	signal stack_num, card_val : std_logic_vector(5 downto 0);
	signal stack_mode : std_logic_vector(1 downto 0);
	signal rand_raw : std_logic_vector(31 downto 0);
begin
	dealer : entity g55.g55_dealer port map(request_deal=>card_request, rand_lt_num=>alb, reset=>reset, clock=>clock, stack_enable=>stack_enable, rand_enable=>rand_enable);
	comp : lpm_compare0 port map(dataa=>rand_raw(31 downto 26), datab=>stack_num, alb=>alb);
	stack : entity g55.g55_stack52 port map(data=>"000000", mode=>stack_mode, clk=>clock, rst=>reset, enable=>stack_en or stack_enable, addr=>rand_raw(31 downto 26), value=>card_val, num=>stack_num);
	rand : g55_rand_sync port map(clock=>clock, rand=>rand_raw);
	remaining <= stack_num;
	process (clock)
	variable last_setup : std_logic := setup;
	begin			
		if rising_edge(clock) then
			if (setup = '1') then
				stack_mode <= "01"; -- INIT
				stack_en <= '1'; -- OR with stack_enable, will always be high when setup
			else
				stack_mode <= "10"; -- POP
				stack_en <= '0';
			end if;
			
			if (alb = '1' and stack_enable = '1' and setup = '0') then
				card_out <= card_val;
			end if;
			last_setup := setup;
		end if;
	end process;
end architecture;	