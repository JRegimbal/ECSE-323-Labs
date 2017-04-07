library ieee;
library g55;
use ieee.std_logic_1164.all;

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
		deck_req : out std_logic
	);
end g55_control_v2;