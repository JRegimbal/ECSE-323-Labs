-- Testbench for mod13 circuit --
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_mod13_tst_vht is
end g55_mod13_tst_vht;


architecture g55_mod13_arch of g55_mod13_tst_vht is
	signal A : std_logic_vector(5 downto 0);
	signal Amod13 : std_logic_vector(3 downto 0);
	signal floor13 : std_logic_vector(2 downto 0);
	
	component g55_mod13_v2
		port( A : in std_logic_vector(5 downto 0);
				Amod13 : out std_logic_vector(3 downto 0);
				floor13 : out std_logic_vector(2 downto 0));
	end component;
	
	begin
		mod13_imp : g55_mod13_v2 port map(A => A, Amod13 => Amod13, floor13 => floor13);
		
		test : process
		begin
			A <= std_logic_vector(to_unsigned(0, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(3, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(7, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(13, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(19, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(27, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(30, 6));
			wait for 10 ns;
			A <= std_logic_vector(to_unsigned(9, 6));
			wait for 10 ns;
			
		end process test;
end architecture g55_mod13_arch;
	
			