--- Full Testbench for 6-input comparator circuit
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g55_lab1_vhd_tst is
end g55_lab1_vhd_tst;

architecture g55_lab1_arch of g55_lab1_vhd_tst is
-- signals
signal A : std_logic_vector(5 downto 0);
signal AeqB : std_logic;
signal B : std_logic_vector(5 downto 0);

component g55_lab1
	port(
	A : in std_logic_vector(5 downto 0);
	AeqB : out std_logic;
	B : in std_logic_vector(5 downto 0)
	);
end component;
begin
	i1 : g55_lab1 port map (A => A, AeqB => AeqB, B => B);
	
generate_test : PROCESS
begin
	for i in 0 to 63 loop -- loop over A values
	A <= std_logic_vector(to_unsigned(i, 6)); --converts i t std_logic_vector
	for j in 0 to 63 loop -- loop over B values
	B <= std_logic_vector(to_unsigned(j,6));
	wait for 10 ns;
	end loop;
	end loop;
	
	wait;
	
end process generate_test;

end g55_lab1_arch;