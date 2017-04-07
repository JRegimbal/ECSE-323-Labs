library ieee;
library g55;
library lpm;
use ieee.std_logic_1164.all;
use lpm.lpm_components.all;

entity g55_player_module is
	port(
		clock : in std_logic;
		reset : in std_logic;
		card_sel : in std_logic_vector(5 downto 0);
		play_req_sel : in std_logic; --play card/request card select), 0 for play, 1 for request
		make_move_raw : in std_logic;
		top_card : in std_logic_vector(5 downto 0);
		card_in : in std_logic_vector(5 downto 0);
		turn : in std_logic;
		setup : in std_logic;
		request_card : out std_logic;
		done : out std_logic;
		legal_play : out std_logic;
		card_out : out std_logic_vector(5 downto 0);
		card_sel_out : out std_logic_vector(5 downto 0);
		num_remaining : out std_logic_vector(5 downto 0)
	);
end g55_player_module;

architecture behav of g55_player_module is
	component lpm_compare0
		port(
			dataa : in std_logic_vector(5 downto 0);
			datab : in std_logic_vector(5 downto 0);
			alb : out std_logic
		);
	end component;
	component busmux
		generic(
			WIDTH : integer := 6
		);
		port(
			dataa : in std_logic_vector(WIDTH-1 downto 0);
			datab : in std_logic_vector(WIDTH-1 downto 0);
			sel : in std_logic;
			result : out std_logic_vector(WIDTH-1 downto 0)
		);
	end component;
	
	signal state : std_logic_vector(2 downto 0) := "000";
	signal make_move, legal, stack_en, mux_sel : std_logic;
	signal stack_mode : std_logic_vector(1 downto 0);
	signal remaining, card_val, card_sel_cap : std_logic_vector(5 downto 0);
begin
	num_remaining <= remaining;
	legal_play <= legal;

	stack : entity g55.g55_stack52 port map(data=>card_in, mode=>stack_mode, addr=>card_sel_cap, enable=>stack_en, rst=>reset, clk=>clock, value=>card_val, num=>remaining);
	rules : entity g55.g55_rules port map(play_pile_top_card=>top_card, card_to_play=>card_val, legal_play=>legal);
	debounce : entity g55.g55_debouncer port map(input=>not make_move_raw, aclr=>reset, clock=>clock, output=>make_move);
	mux : busmux generic map (WIDTH=>6) port map (dataa=>remaining, datab=>card_sel, sel=>mux_sel, result=>card_sel_cap);
	comp : lpm_compare0 port map(dataa=>card_sel, datab=>remaining, alb=>mux_sel);
	
	process(clock, reset)
	variable last_input : std_logic_vector(5 downto 0) := card_in;
	begin
		if (reset = '1') then
			state <= "000";		
		elsif (clock'event and clock = '1') then
			case state is
				when "000" => -- wait
					card_out <= "000000";
					request_card <= '0';
					done <= '0';
					stack_en <= '0';
					stack_mode <= "00";
					if (turn = '0') then
						state <= "001";
					end if;
				when "001" => -- make move, player turn
					request_card <= '0';
					done <= '0';
					stack_en <= '0';
					stack_mode <= "00";
					if (setup = '1') then -- cards being dealt
						state <= "011";
					else -- player can make a move
						if (make_move = '1') then
							if (play_req_sel = '0' and legal = '1') then -- card chosen is a legal move - play it
								state <= "101";
							elsif (play_req_sel = '1') then -- draw a card
								state <= "011";
							end if;
						end if;
					end if;
				when "101" => -- legal play
					card_out <= card_val;
					done <= '0';
					request_card <= '0';
					stack_mode <= "10"; -- POP
					stack_en <= '1';
					state <= "100";
				when "100" =>
					card_out <= card_val;
					done <= '1';
					request_card <= '0';
					stack_mode <= "00";
					stack_en <= '1';
					if (turn = '1') then	-- wait for controller to finish and go to next turn
						state <= "000";
					end if;
				when "011" => --draw card
					request_card <= '1';
					done <= '0';
					stack_mode <= "00";
					stack_en <= '0';
					if (last_input /= card_in) then -- new card received
						state <= "010";
					end if;
				when "010" => --add card to hand
					request_card <= '0';
					done <= '1';
					stack_mode <= "11"; -- PUSH
					stack_en <= '1';
					if (turn = '1') then
						state <= "000";
					end if;
				when others => state <= "000";					
			end case;
			last_input := card_in;
		end if;
	end process;
end architecture;