
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_adder_test is
end g55_adder_test;

architecture g55_adder_arch of g55_adder_test is
-- Signals
signal A : std_logic_vector(7 downto 0);
signal B : std_logic_vector(7 downto 0);
signal Sum : std_logic_vector(8 downto 0);

component g55_adder
	port(
		A : in std_logic_vector(7 downto 0);
		B : in std_logic_vector(7 downto 0);
		Sum : out std_logic_vector(8 downto 0)
	);
end component;

begin
	Adder0 : g55_adder port map(A=>A, B=>B, Sum=>Sum);
	
	generate_test : process
	begin
		for i in 0 to 255 loop
			A <= std_logic_vector(to_unsigned(i,8));
			for j in i to 255 loop
				B <= std_logic_vector(to_unsigned(j, 8));
				wait for 10 ns;
			end loop;
		end loop;
		    
		wait;
	end process generate_test;
end architecture g55_adder_arch;