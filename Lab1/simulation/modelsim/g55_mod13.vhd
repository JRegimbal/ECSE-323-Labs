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
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Jan 30 11:47:55 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g55_mod13 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		Amod13 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		floor13 :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END g55_mod13;

ARCHITECTURE bdf_type OF g55_mod13 IS 

COMPONENT g55_adder
	PORT(A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Sum : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	A6 :  STD_LOGIC;
SIGNAL	A7 :  STD_LOGIC;
SIGNAL	APad :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	ConstOne :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	FloorMultThirteen :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	MultAdd :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	MultFive :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	Ones :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Out :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SecondMultFive :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	ShiftFloor :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	ShiftThree :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	ShiftTwo :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	Twos :  STD_LOGIC_VECTOR(8 DOWNTO 0);

SIGNAL	GDFX_TEMP_SIGNAL_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN 

GDFX_TEMP_SIGNAL_0 <= (A7 & A6 & A(5) & A(4) & A(3) & A(2) & A(1) & A(0));


b2v_inst : g55_adder
PORT MAP(A => ShiftTwo,
		 B => APad,
		 Sum => MultFive);


Ones(1) <= NOT(FloorMultThirteen(1));



Ones(0) <= NOT(FloorMultThirteen(0));



Ones(4) <= NOT(FloorMultThirteen(4));



Ones(5) <= NOT(FloorMultThirteen(5));



Ones(6) <= NOT(FloorMultThirteen(6));



Ones(7) <= NOT(FloorMultThirteen(7));



b2v_inst16 : g55_adder
PORT MAP(A => Ones,
		 B => ConstOne,
		 Sum => Twos);



b2v_inst4 : g55_adder
PORT MAP(A => MultAdd,
		 B => ShiftFloor,
		 Sum => SecondMultFive);


b2v_inst5 : g55_adder
PORT MAP(A => SecondMultFive(7 DOWNTO 0),
		 B => ShiftThree,
		 Sum => FloorMultThirteen);


b2v_inst6 : g55_adder
PORT MAP(A => GDFX_TEMP_SIGNAL_0,
		 B => Twos(7 DOWNTO 0));



Ones(3) <= NOT(FloorMultThirteen(3));



Ones(2) <= NOT(FloorMultThirteen(2));


floor13(2 DOWNTO 0) <= MultFive(8 DOWNTO 6);

APad(5 DOWNTO 0) <= A;
ConstOne(0) <= '1';
END bdf_type;