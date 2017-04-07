library ieee;
library g55;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_control_v2 is
	port(
		clock : in std_logic;
		reset : in std_logic;
		pci : in std_logic_vector(5 downto 0); -- player card in
		cci : in std_logic_vector(5 downto 0); -- computer card in
		pr : in std_logic; -- player request
		cr : in std_logic; -- computer request
		pd : in std_logic; -- player done
		cd : in std_logic; -- computer done
		pn : in std_logic_vector(5 downto 0); -- player hand number
		cn : in std_logic_vector(5 downto 0); -- computer hand number
		dci : in std_logic_vector(5 downto 0); -- deck card in
		dn : in std_logic_vector(5 downto 0); -- deck cards remaining
		tci : in std_logic_vector(5 downto 0); -- top card in
		
		turn_out : out std_logic;
		setup : out std_logic;
		pco : out std_logic_vector(5 downto 0); -- player card out
		cco : out std_logic_vector(5 downto 0); -- computer card out
		tco : out std_logic_vector(5 downto 0); -- top card out
		tce : out std_logic; -- top card enable
		win_cond : out std_logic_vector(1 downto 0); -- win conditions (ab | a is player wins, b is computer wins, either 10, 01, or 00)
		deck_req : out std_logic;
		deck_setup : out std_logic
	);
end g55_control_v2;

architecture behav of g55_control_v2 is
	signal turn : std_logic;
	signal state : std_logic_vector(3 downto 0) := "0000";
	signal last_deck : std_logic_vector(5 downto 0) := dci;
	signal last_player : std_logic_vector(5 downto 0) := pci;
	signal last_computer : std_logic_vector(5 downto 0) := cci;
	signal last_top : std_logic_vector(5 downto 0) := tci;
begin
	turn_out <= turn;
	process (clock, reset)
	constant starting_num : integer := 7;
	begin
		if (reset = '1') then
			state <= "0000";
		elsif (clock'event and clock = '1') then
			case state is -- FSM
				when "0000" => -- initial state, set up deck
					deck_setup <= '1';
					setup <= '1';
					turn <= '0';
					win_cond <= "00";
					deck_req <= '0';
					tce <= '0';
					tco <= "000000";
					if (dn = "110100") then -- deck initialized
						state <= "0001";
					end if;
					
				when "0001" => -- start dealing
					deck_setup <= '0';
					setup <= '1';
					win_cond <= "00";
					deck_req <= '0';
					if (turn = '0') then -- dealing to player
						if (unsigned(pn) < to_unsigned(starting_num, 6)) then -- more cards needed
							state <= "0010";
						else -- set top card
							state <= "0101";
						end if;
					else -- dealing to computer
						if (unsigned(cn) < to_unsigned(starting_num, 6)) then
							state <= "0010";
						else
							state <= "0101";
						end if;
					end if;
				
				when "0010" => -- request card from deck,
					setup <= '1';
					deck_req <= '1';
					win_cond <= "00";
					if (last_deck /= dci) then -- card received
						state <= "0100";
					end if;
					
				when "0100" => -- send card to player
					setup <= '1';
					deck_req <= '0';
					if (turn = '0') then
						pco <= dci;
						if (pd = '1') then -- card received
							turn <= turn xor '1';
							state <= "0001";
						end if;
					else
						cco <= dci;
						if (cd = '1') then -- card received
							turn <= turn xor '1';
							state <= "0001";
						end if;
					end if;
				
				when "0101" => -- set top card
					setup <= '1';
					deck_req <= '1';
					win_cond <= "00";
					if (last_deck /= dci) then
						state <= "0110";
					end if;
				
				when "0110" => -- set top card
					setup <= '1';
					deck_req <= '0';
					win_cond <= "00";
					tco <= dci;
					tce <= '1';
					if (last_top /= tci) then -- card received
						state <= "0111";
					end if;
				
				when "0111" => -- check state
					setup <= '0';
					deck_req <= '0';
					win_cond <= "00";
					turn <= turn xor '1';
					tce <= '0';
					if (pn = "000000") then -- player won
						win_cond <= "10";
						state <= "1111";
					elsif (dn = "000000") then -- computer won
						win_cond <= "01";
						state <= "1111";
					else
						state <= "1000";
					end if;
				
				when "1000" => -- wait on move
					setup <= '0';
					deck_req <= '0';
					win_cond <= "00";
					tce <= '0';
					if ((turn = '0' and pr = '1') or (turn = '1' and cr = '1')) then -- card requested
						state <= "1001";
					elsif ((turn = '0' and pd = '1') or (turn = '1' and cd = '1')) then -- card played
						state <= "1011";
					end if;
				
				when "1001" => -- draw card
					setup <= '0';
					deck_req <= '1';
					win_cond <= "00";
					tce <= '0';
					if (last_deck /= dci) then -- card received
						state <= "1010";
					end if;
				
				when "1010" => -- card received, send
					setup <= '0';
					deck_req <= '0';
					win_cond <= "00";
					tce <= '0';
					if (turn = '0') then -- player
						pco <= dci;
						if (pd = '1') then -- card received
							state <= "0111";
						end if;
					elsif (turn = '1') then -- computer
						cco <= dci;
						if (cd = '1') then -- card received
							state <= "0111";
						end if;
					end if;
					
				when "1011" => -- play a card
					setup <= '0';
					deck_req <= '0';
					win_cond <= "00";
					if (turn = '0') then
						tco <= pci;
					else
						tco <= cci;
					end if;
					tce <= '1';
					if (last_top /= tci) then -- card received
						state <= "0111";
					end if;
				
				when "1111" => null; -- game over, hold all outputs
				
				when others => state <= "0000"; -- reset FSM, this is an error
			end case;
			-- update stored values
			last_computer <= cci;
			last_player <= pci;
			last_top <= tci;
			last_deck <= dci;
		end if;
	end process;	
end architecture;