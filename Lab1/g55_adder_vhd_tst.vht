library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_adder_vhd_tst is
end g55_adder_vhd_tst;

architecture g55_adder_arch of g55_adder_vhd_tst is
-- Signals
signal A : std_logic_vector(7 downto 0);
signal B : std_logic_vector(7 downto 0);
signal Sum : std_logic_vector(8 downto 0);

component g55_adder_single
	port(
		A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		S : out std_logic;
		Cout : out std_logic
	);
end component;

signal C : std_logic_vector(6 downto 0);
signal Zero : std_logic := '0';

begin
	I0 : g55_adder_single port map (A(0), B(0), Zero, Sum(0), C(0));
	I1 : g55_adder_single port map (A(1), B(1), C(0), Sum(1), C(1));
	I2 : g55_adder_single port map (A(2), B(2), C(1), Sum(2), C(2));
	I3 : g55_adder_single port map (A(3), B(3), C(2), Sum(3), C(3));
	I4 : g55_adder_single port map (A(4), B(4), C(3), Sum(4), C(4));
	I5 : g55_adder_single port map (A(5), B(5), C(4), Sum(5), C(5));
	I6 : g55_adder_single port map (A(6), B(6), C(5), Sum(6), C(6));
	I7 : g55_adder_single port map (A(7), B(7), C(6), Sum(7), Sum(8));
	
	generate_test : process
	begin
		for i in 0 to 255 loop
			A <= std_logic_vector(to_unsigned(i,8));
			for j in i to 255 loop
				B <= std_logic_vector(to_unsigned(i, 8));
				wait for 10 ns;
			end loop;
		end loop;
		
		wait;
	end process generate_test;
end architecture g55_adder_arch;