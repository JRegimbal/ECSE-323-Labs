/*
 Copyright (C) 1991-2013 Altera Corporation
 Your use of Altera Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Altera Program License 
 Subscription Agreement, Altera MegaCore Function License 
 Agreement, or other applicable license agreement, including, 
 without limitation, that your use is for the sole purpose of 
 programming logic devices manufactured by Altera and sold by 
 Altera or its authorized distributors.  Please refer to the 
 applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Fast Corner delays for the design using part EP2C20F484C7
 with speed grade M, core voltage Auto, and temperature 2147483647 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "Lab3";
DATE "02/28/2017 14:39:28";
PROGRAM "Quartus II 64-Bit";



INPUT clk;
INPUT addr[5];
INPUT addr[4];
INPUT addr[3];
INPUT addr[2];
INPUT addr[1];
INPUT addr[0];
INPUT mode[1];
INPUT enable;
INPUT mode[0];
INPUT rst;
INPUT data[0];
INPUT data[1];
INPUT data[2];
INPUT data[3];
INPUT data[4];
INPUT data[5];
OUTPUT value[0];
OUTPUT value[1];
OUTPUT value[2];
OUTPUT value[3];
OUTPUT value[4];
OUTPUT value[5];
OUTPUT empty;
OUTPUT full;
OUTPUT num[0];
OUTPUT num[1];
OUTPUT num[2];
OUTPUT num[3];
OUTPUT num[4];
OUTPUT num[5];
OUTPUT ~LVDS91p/nCEO~;

/*Arc definitions start here*/
pos_addr[0]__clk__setup:		SETUP (POSEDGE) addr[0] clk ;
pos_addr[1]__clk__setup:		SETUP (POSEDGE) addr[1] clk ;
pos_addr[2]__clk__setup:		SETUP (POSEDGE) addr[2] clk ;
pos_addr[3]__clk__setup:		SETUP (POSEDGE) addr[3] clk ;
pos_addr[4]__clk__setup:		SETUP (POSEDGE) addr[4] clk ;
pos_addr[5]__clk__setup:		SETUP (POSEDGE) addr[5] clk ;
pos_data[0]__clk__setup:		SETUP (POSEDGE) data[0] clk ;
pos_data[1]__clk__setup:		SETUP (POSEDGE) data[1] clk ;
pos_data[2]__clk__setup:		SETUP (POSEDGE) data[2] clk ;
pos_data[3]__clk__setup:		SETUP (POSEDGE) data[3] clk ;
pos_data[4]__clk__setup:		SETUP (POSEDGE) data[4] clk ;
pos_data[5]__clk__setup:		SETUP (POSEDGE) data[5] clk ;
pos_enable__clk__setup:		SETUP (POSEDGE) enable clk ;
pos_mode[0]__clk__setup:		SETUP (POSEDGE) mode[0] clk ;
pos_mode[1]__clk__setup:		SETUP (POSEDGE) mode[1] clk ;
pos_addr[0]__clk__hold:		HOLD (POSEDGE) addr[0] clk ;
pos_addr[1]__clk__hold:		HOLD (POSEDGE) addr[1] clk ;
pos_addr[2]__clk__hold:		HOLD (POSEDGE) addr[2] clk ;
pos_addr[3]__clk__hold:		HOLD (POSEDGE) addr[3] clk ;
pos_addr[4]__clk__hold:		HOLD (POSEDGE) addr[4] clk ;
pos_addr[5]__clk__hold:		HOLD (POSEDGE) addr[5] clk ;
pos_data[0]__clk__hold:		HOLD (POSEDGE) data[0] clk ;
pos_data[1]__clk__hold:		HOLD (POSEDGE) data[1] clk ;
pos_data[2]__clk__hold:		HOLD (POSEDGE) data[2] clk ;
pos_data[3]__clk__hold:		HOLD (POSEDGE) data[3] clk ;
pos_data[4]__clk__hold:		HOLD (POSEDGE) data[4] clk ;
pos_data[5]__clk__hold:		HOLD (POSEDGE) data[5] clk ;
pos_enable__clk__hold:		HOLD (POSEDGE) enable clk ;
pos_mode[0]__clk__hold:		HOLD (POSEDGE) mode[0] clk ;
pos_mode[1]__clk__hold:		HOLD (POSEDGE) mode[1] clk ;
pos_clk__empty__delay:		DELAY (POSEDGE) clk empty ;
pos_clk__full__delay:		DELAY (POSEDGE) clk full ;
pos_clk__num[0]__delay:		DELAY (POSEDGE) clk num[0] ;
pos_clk__num[1]__delay:		DELAY (POSEDGE) clk num[1] ;
pos_clk__num[2]__delay:		DELAY (POSEDGE) clk num[2] ;
pos_clk__num[3]__delay:		DELAY (POSEDGE) clk num[3] ;
pos_clk__num[4]__delay:		DELAY (POSEDGE) clk num[4] ;
pos_clk__num[5]__delay:		DELAY (POSEDGE) clk num[5] ;
pos_clk__value[0]__delay:		DELAY (POSEDGE) clk value[0] ;
pos_clk__value[1]__delay:		DELAY (POSEDGE) clk value[1] ;
pos_clk__value[2]__delay:		DELAY (POSEDGE) clk value[2] ;
pos_clk__value[3]__delay:		DELAY (POSEDGE) clk value[3] ;
pos_clk__value[4]__delay:		DELAY (POSEDGE) clk value[4] ;
pos_clk__value[5]__delay:		DELAY (POSEDGE) clk value[5] ;
_7.697__7.697__delay:		DELAY 7.697 7.697 ;
_7.815__7.815__delay:		DELAY 7.815 7.815 ;
_7.986__7.986__delay:		DELAY 7.986 7.986 ;
_8.208__8.208__delay:		DELAY 8.208 8.208 ;
_7.708__7.708__delay:		DELAY 7.708 7.708 ;
_7.505__7.505__delay:		DELAY 7.505 7.505 ;
_7.629__7.629__delay:		DELAY 7.629 7.629 ;
_7.769__7.769__delay:		DELAY 7.769 7.769 ;
_8.214__8.214__delay:		DELAY 8.214 8.214 ;
_8.136__8.136__delay:		DELAY 8.136 8.136 ;
_7.683__7.683__delay:		DELAY 7.683 7.683 ;
_7.355__7.355__delay:		DELAY 7.355 7.355 ;
_6.694__7.033__delay:		DELAY 6.694 7.033 ;
_7.046__7.046__delay:		DELAY 7.046 7.046 ;
_7.433__7.433__delay:		DELAY 7.433 7.433 ;
_7.474__7.474__delay:		DELAY 7.474 7.474 ;
_7.314__7.314__delay:		DELAY 7.314 7.314 ;
_6.976__6.976__delay:		DELAY 6.976 6.976 ;
_6.743__6.098__delay:		DELAY 6.743 6.098 ;
_6.928__6.222__delay:		DELAY 6.928 6.222 ;
_6.591__6.591__delay:		DELAY 6.591 6.591 ;
_6.673__6.601__delay:		DELAY 6.673 6.601 ;
_6.718__6.718__delay:		DELAY 6.718 6.718 ;
_6.668__6.380__delay:		DELAY 6.668 6.380 ;
_6.453__6.167__delay:		DELAY 6.453 6.167 ;
_6.801__6.308__delay:		DELAY 6.801 6.308 ;
_6.783__6.660__delay:		DELAY 6.783 6.660 ;
_6.859__6.468__delay:		DELAY 6.859 6.468 ;
_6.853__6.853__delay:		DELAY 6.853 6.853 ;
_6.822__6.519__delay:		DELAY 6.822 6.519 ;
_5.794__5.794__delay:		DELAY 5.794 5.794 ;
_6.090__5.994__delay:		DELAY 6.090 5.994 ;
_6.367__6.367__delay:		DELAY 6.367 6.367 ;
_6.244__6.244__delay:		DELAY 6.244 6.244 ;
_6.319__6.319__delay:		DELAY 6.319 6.319 ;
_6.111__5.904__delay:		DELAY 6.111 5.904 ;

ENDMODEL
