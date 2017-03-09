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
DATE "03/09/2017 11:38:09";
PROGRAM "Quartus II 64-Bit";



INPUT clk;
INPUT addr[5];
INPUT addr[4];
INPUT addr[3];
INPUT addr[2];
INPUT addr[1];
INPUT addr[0];
INPUT en;
INPUT mode[1];
INPUT mode[0];
INPUT rst;
OUTPUT segments_mod[0];
OUTPUT segments_mod[1];
OUTPUT segments_mod[2];
OUTPUT segments_mod[3];
OUTPUT segments_mod[4];
OUTPUT segments_mod[5];
OUTPUT segments_mod[6];
OUTPUT segments_floor[0];
OUTPUT segments_floor[1];
OUTPUT segments_floor[2];
OUTPUT segments_floor[3];
OUTPUT segments_floor[4];
OUTPUT segments_floor[5];
OUTPUT segments_floor[6];
OUTPUT empty;
OUTPUT full;
OUTPUT debounceState[0];
OUTPUT debounceState[1];
OUTPUT debounceState[2];
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
pos_en__clk__setup:		SETUP (POSEDGE) en clk ;
pos_mode[0]__clk__setup:		SETUP (POSEDGE) mode[0] clk ;
pos_mode[1]__clk__setup:		SETUP (POSEDGE) mode[1] clk ;
pos_addr[0]__clk__hold:		HOLD (POSEDGE) addr[0] clk ;
pos_addr[1]__clk__hold:		HOLD (POSEDGE) addr[1] clk ;
pos_addr[2]__clk__hold:		HOLD (POSEDGE) addr[2] clk ;
pos_addr[3]__clk__hold:		HOLD (POSEDGE) addr[3] clk ;
pos_addr[4]__clk__hold:		HOLD (POSEDGE) addr[4] clk ;
pos_addr[5]__clk__hold:		HOLD (POSEDGE) addr[5] clk ;
pos_en__clk__hold:		HOLD (POSEDGE) en clk ;
pos_mode[0]__clk__hold:		HOLD (POSEDGE) mode[0] clk ;
pos_mode[1]__clk__hold:		HOLD (POSEDGE) mode[1] clk ;
pos_clk__debounceState[0]__delay:		DELAY (POSEDGE) clk debounceState[0] ;
pos_clk__debounceState[1]__delay:		DELAY (POSEDGE) clk debounceState[1] ;
pos_clk__debounceState[2]__delay:		DELAY (POSEDGE) clk debounceState[2] ;
pos_clk__empty__delay:		DELAY (POSEDGE) clk empty ;
pos_clk__full__delay:		DELAY (POSEDGE) clk full ;
pos_clk__num[0]__delay:		DELAY (POSEDGE) clk num[0] ;
pos_clk__num[1]__delay:		DELAY (POSEDGE) clk num[1] ;
pos_clk__num[2]__delay:		DELAY (POSEDGE) clk num[2] ;
pos_clk__num[3]__delay:		DELAY (POSEDGE) clk num[3] ;
pos_clk__num[4]__delay:		DELAY (POSEDGE) clk num[4] ;
pos_clk__num[5]__delay:		DELAY (POSEDGE) clk num[5] ;
pos_clk__segments_floor[0]__delay:		DELAY (POSEDGE) clk segments_floor[0] ;
pos_clk__segments_floor[2]__delay:		DELAY (POSEDGE) clk segments_floor[2] ;
pos_clk__segments_floor[3]__delay:		DELAY (POSEDGE) clk segments_floor[3] ;
pos_clk__segments_floor[4]__delay:		DELAY (POSEDGE) clk segments_floor[4] ;
pos_clk__segments_floor[5]__delay:		DELAY (POSEDGE) clk segments_floor[5] ;
pos_clk__segments_floor[6]__delay:		DELAY (POSEDGE) clk segments_floor[6] ;
pos_clk__segments_mod[0]__delay:		DELAY (POSEDGE) clk segments_mod[0] ;
pos_clk__segments_mod[1]__delay:		DELAY (POSEDGE) clk segments_mod[1] ;
pos_clk__segments_mod[2]__delay:		DELAY (POSEDGE) clk segments_mod[2] ;
pos_clk__segments_mod[3]__delay:		DELAY (POSEDGE) clk segments_mod[3] ;
pos_clk__segments_mod[4]__delay:		DELAY (POSEDGE) clk segments_mod[4] ;
pos_clk__segments_mod[5]__delay:		DELAY (POSEDGE) clk segments_mod[5] ;
pos_clk__segments_mod[6]__delay:		DELAY (POSEDGE) clk segments_mod[6] ;
_8.180__8.180__delay:		DELAY 8.180 8.180 ;
_8.511__8.511__delay:		DELAY 8.511 8.511 ;
_8.336__8.336__delay:		DELAY 8.336 8.336 ;
_8.490__8.490__delay:		DELAY 8.490 8.490 ;
_8.658__8.658__delay:		DELAY 8.658 8.658 ;
_8.610__8.610__delay:		DELAY 8.610 8.610 ;
_9.946__9.946__delay:		DELAY 9.946 9.946 ;
_10.061__10.061__delay:		DELAY 10.061 10.061 ;
_9.781__9.781__delay:		DELAY 9.781 9.781 ;
_9.805__9.805__delay:		DELAY 9.805 9.805 ;
_10.082__10.082__delay:		DELAY 10.082 10.082 ;
_10.092__10.092__delay:		DELAY 10.092 10.092 ;
_9.832__9.832__delay:		DELAY 9.832 9.832 ;
_7.988__7.988__delay:		DELAY 7.988 7.988 ;
_8.319__8.319__delay:		DELAY 8.319 8.319 ;
_8.144__8.144__delay:		DELAY 8.144 8.144 ;
_8.298__8.298__delay:		DELAY 8.298 8.298 ;
_8.466__8.466__delay:		DELAY 8.466 8.466 ;
_8.418__8.418__delay:		DELAY 8.418 8.418 ;
_9.754__9.754__delay:		DELAY 9.754 9.754 ;
_9.869__9.869__delay:		DELAY 9.869 9.869 ;
_9.589__9.589__delay:		DELAY 9.589 9.589 ;
_9.613__9.613__delay:		DELAY 9.613 9.613 ;
_9.890__9.890__delay:		DELAY 9.890 9.890 ;
_9.900__9.900__delay:		DELAY 9.900 9.900 ;
_9.640__9.640__delay:		DELAY 9.640 9.640 ;
_7.346__7.346__delay:		DELAY 7.346 7.346 ;
_7.677__7.677__delay:		DELAY 7.677 7.677 ;
_7.502__7.502__delay:		DELAY 7.502 7.502 ;
_7.656__7.656__delay:		DELAY 7.656 7.656 ;
_7.824__7.824__delay:		DELAY 7.824 7.824 ;
_7.694__7.776__delay:		DELAY 7.694 7.776 ;
_9.112__9.112__delay:		DELAY 9.112 9.112 ;
_9.227__9.227__delay:		DELAY 9.227 9.227 ;
_8.947__8.947__delay:		DELAY 8.947 8.947 ;
_8.971__8.971__delay:		DELAY 8.971 8.971 ;
_9.248__9.248__delay:		DELAY 9.248 9.248 ;
_9.258__9.258__delay:		DELAY 9.258 9.258 ;
_8.998__8.998__delay:		DELAY 8.998 8.998 ;
_7.567__7.567__delay:		DELAY 7.567 7.567 ;
_7.898__7.898__delay:		DELAY 7.898 7.898 ;
_7.723__7.723__delay:		DELAY 7.723 7.723 ;
_7.877__7.877__delay:		DELAY 7.877 7.877 ;
_8.045__8.045__delay:		DELAY 8.045 8.045 ;
_7.869__7.997__delay:		DELAY 7.869 7.997 ;
_9.333__9.333__delay:		DELAY 9.333 9.333 ;
_9.448__9.448__delay:		DELAY 9.448 9.448 ;
_9.168__9.168__delay:		DELAY 9.168 9.168 ;
_9.192__9.192__delay:		DELAY 9.192 9.192 ;
_9.469__9.469__delay:		DELAY 9.469 9.469 ;
_9.479__9.479__delay:		DELAY 9.479 9.479 ;
_9.219__9.219__delay:		DELAY 9.219 9.219 ;
_7.104__7.104__delay:		DELAY 7.104 7.104 ;
_7.435__7.435__delay:		DELAY 7.435 7.435 ;
_7.260__7.260__delay:		DELAY 7.260 7.260 ;
_7.414__7.414__delay:		DELAY 7.414 7.414 ;
_7.582__7.582__delay:		DELAY 7.582 7.582 ;
_7.534__7.351__delay:		DELAY 7.534 7.351 ;
_8.870__8.870__delay:		DELAY 8.870 8.870 ;
_8.985__8.985__delay:		DELAY 8.985 8.985 ;
_8.705__8.705__delay:		DELAY 8.705 8.705 ;
_8.729__8.729__delay:		DELAY 8.729 8.729 ;
_9.006__9.006__delay:		DELAY 9.006 9.006 ;
_9.016__9.016__delay:		DELAY 9.016 9.016 ;
_8.756__8.756__delay:		DELAY 8.756 8.756 ;
_7.032__7.032__delay:		DELAY 7.032 7.032 ;
_7.363__7.363__delay:		DELAY 7.363 7.363 ;
_7.188__7.188__delay:		DELAY 7.188 7.188 ;
_7.342__7.342__delay:		DELAY 7.342 7.342 ;
_7.510__7.510__delay:		DELAY 7.510 7.510 ;
_7.462__7.258__delay:		DELAY 7.462 7.258 ;
_8.798__8.798__delay:		DELAY 8.798 8.798 ;
_8.913__8.913__delay:		DELAY 8.913 8.913 ;
_8.633__8.633__delay:		DELAY 8.633 8.633 ;
_8.657__8.657__delay:		DELAY 8.657 8.657 ;
_8.934__8.934__delay:		DELAY 8.934 8.934 ;
_8.944__8.944__delay:		DELAY 8.944 8.944 ;
_8.684__8.684__delay:		DELAY 8.684 8.684 ;

ENDMODEL
