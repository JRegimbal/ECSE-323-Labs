-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Mon Jan 30 17:12:41 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g55_adder IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Sum :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END g55_adder;

ARCHITECTURE bdf_type OF g55_adder IS 

COMPONENT g55_adder_single
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	C :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	Sum_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	Zero :  STD_LOGIC := '0';


BEGIN 



b2v_inst : g55_adder_single
PORT MAP(A => A(0),
		 B => B(0),
		 Cin => Zero,
		 S => Sum_ALTERA_SYNTHESIZED(0),
		 Cout => C(0));


b2v_inst1 : g55_adder_single
PORT MAP(A => A(1),
		 B => B(1),
		 Cin => C(0),
		 S => Sum_ALTERA_SYNTHESIZED(1),
		 Cout => C(1));


b2v_inst2 : g55_adder_single
PORT MAP(A => A(2),
		 B => B(2),
		 Cin => C(1),
		 S => Sum_ALTERA_SYNTHESIZED(2),
		 Cout => C(2));


b2v_inst3 : g55_adder_single
PORT MAP(A => A(3),
		 B => B(3),
		 Cin => C(2),
		 S => Sum_ALTERA_SYNTHESIZED(3),
		 Cout => C(3));


b2v_inst4 : g55_adder_single
PORT MAP(A => A(4),
		 B => B(4),
		 Cin => C(3),
		 S => Sum_ALTERA_SYNTHESIZED(4),
		 Cout => C(4));


b2v_inst5 : g55_adder_single
PORT MAP(A => A(5),
		 B => B(5),
		 Cin => C(4),
		 S => Sum_ALTERA_SYNTHESIZED(5),
		 Cout => C(5));


b2v_inst6 : g55_adder_single
PORT MAP(A => A(6),
		 B => B(6),
		 Cin => C(5),
		 S => Sum_ALTERA_SYNTHESIZED(6),
		 Cout => C(6));


b2v_inst7 : g55_adder_single
PORT MAP(A => A(7),
		 B => B(7),
		 Cin => C(6),
		 S => Sum_ALTERA_SYNTHESIZED(7),
		 Cout => Sum_ALTERA_SYNTHESIZED(8));


Sum <= Sum_ALTERA_SYNTHESIZED;

END bdf_type;