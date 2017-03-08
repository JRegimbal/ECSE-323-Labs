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
DATE "03/08/2017 10:26:41";
PROGRAM "Quartus II 64-Bit";



INPUT clk;
INPUT addr[5];
INPUT addr[4];
INPUT addr[3];
INPUT addr[2];
INPUT addr[1];
INPUT addr[0];
INPUT mode[1];
INPUT rst;
INPUT en;
INPUT mode[0];
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
pos_mode[0]__clk__setup:		SETUP (POSEDGE) mode[0] clk ;
pos_mode[1]__clk__setup:		SETUP (POSEDGE) mode[1] clk ;
pos_en__g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[0]__setup:		SETUP (POSEDGE) en g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[0] ;
pos_en__g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[10]__setup:		SETUP (POSEDGE) en g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[10] ;
pos_addr[0]__clk__hold:		HOLD (POSEDGE) addr[0] clk ;
pos_addr[1]__clk__hold:		HOLD (POSEDGE) addr[1] clk ;
pos_addr[2]__clk__hold:		HOLD (POSEDGE) addr[2] clk ;
pos_addr[3]__clk__hold:		HOLD (POSEDGE) addr[3] clk ;
pos_addr[4]__clk__hold:		HOLD (POSEDGE) addr[4] clk ;
pos_addr[5]__clk__hold:		HOLD (POSEDGE) addr[5] clk ;
pos_mode[0]__clk__hold:		HOLD (POSEDGE) mode[0] clk ;
pos_mode[1]__clk__hold:		HOLD (POSEDGE) mode[1] clk ;
pos_en__g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[0]__hold:		HOLD (POSEDGE) en g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[0] ;
pos_en__g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[10]__hold:		HOLD (POSEDGE) en g55_debouncer:DEB|lpm_counter:C0|cntr_juj:auto_generated|safe_q[10] ;
pos_clk__empty__delay:		DELAY (POSEDGE) clk empty ;
pos_clk__full__delay:		DELAY (POSEDGE) clk full ;
pos_clk__num[0]__delay:		DELAY (POSEDGE) clk num[0] ;
pos_clk__num[1]__delay:		DELAY (POSEDGE) clk num[1] ;
pos_clk__num[2]__delay:		DELAY (POSEDGE) clk num[2] ;
pos_clk__num[3]__delay:		DELAY (POSEDGE) clk num[3] ;
pos_clk__num[4]__delay:		DELAY (POSEDGE) clk num[4] ;
pos_clk__num[5]__delay:		DELAY (POSEDGE) clk num[5] ;
pos_clk__segments_floor[1]__delay:		DELAY (POSEDGE) clk segments_floor[1] ;
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
_9.736__9.736__delay:		DELAY 9.736 9.736 ;
_9.849__9.849__delay:		DELAY 9.849 9.849 ;
_9.783__9.783__delay:		DELAY 9.783 9.783 ;
_9.984__9.984__delay:		DELAY 9.984 9.984 ;
_9.849__9.849__delay:		DELAY 9.849 9.849 ;
_9.758__9.699__delay:		DELAY 9.758 9.699 ;
_10.926__10.926__delay:		DELAY 10.926 10.926 ;
_11.076__11.076__delay:		DELAY 11.076 11.076 ;
_11.157__11.157__delay:		DELAY 11.157 11.157 ;
_11.042__11.042__delay:		DELAY 11.042 11.042 ;
_11.097__11.097__delay:		DELAY 11.097 11.097 ;
_11.069__11.069__delay:		DELAY 11.069 11.069 ;
_11.055__11.055__delay:		DELAY 11.055 11.055 ;
_10.286__10.286__delay:		DELAY 10.286 10.286 ;
_10.399__10.399__delay:		DELAY 10.399 10.399 ;
_10.333__10.333__delay:		DELAY 10.333 10.333 ;
_10.534__10.534__delay:		DELAY 10.534 10.534 ;
_10.399__10.399__delay:		DELAY 10.399 10.399 ;
_10.308__10.308__delay:		DELAY 10.308 10.308 ;
_11.476__11.476__delay:		DELAY 11.476 11.476 ;
_11.626__11.626__delay:		DELAY 11.626 11.626 ;
_11.707__11.707__delay:		DELAY 11.707 11.707 ;
_11.592__11.592__delay:		DELAY 11.592 11.592 ;
_11.647__11.647__delay:		DELAY 11.647 11.647 ;
_11.619__11.619__delay:		DELAY 11.619 11.619 ;
_11.605__11.605__delay:		DELAY 11.605 11.605 ;
_9.579__9.579__delay:		DELAY 9.579 9.579 ;
_9.692__9.692__delay:		DELAY 9.692 9.692 ;
_9.626__9.626__delay:		DELAY 9.626 9.626 ;
_9.827__9.827__delay:		DELAY 9.827 9.827 ;
_9.692__9.692__delay:		DELAY 9.692 9.692 ;
_9.601__9.501__delay:		DELAY 9.601 9.501 ;
_10.769__10.769__delay:		DELAY 10.769 10.769 ;
_10.919__10.919__delay:		DELAY 10.919 10.919 ;
_11.000__11.000__delay:		DELAY 11.000 11.000 ;
_10.885__10.885__delay:		DELAY 10.885 10.885 ;
_10.940__10.940__delay:		DELAY 10.940 10.940 ;
_10.912__10.912__delay:		DELAY 10.912 10.912 ;
_10.898__10.898__delay:		DELAY 10.898 10.898 ;
_9.339__9.339__delay:		DELAY 9.339 9.339 ;
_9.452__9.452__delay:		DELAY 9.452 9.452 ;
_9.386__9.386__delay:		DELAY 9.386 9.386 ;
_9.587__9.587__delay:		DELAY 9.587 9.587 ;
_9.452__9.452__delay:		DELAY 9.452 9.452 ;
_9.339__9.361__delay:		DELAY 9.339 9.361 ;
_10.529__10.529__delay:		DELAY 10.529 10.529 ;
_10.679__10.679__delay:		DELAY 10.679 10.679 ;
_10.760__10.760__delay:		DELAY 10.760 10.760 ;
_10.645__10.645__delay:		DELAY 10.645 10.645 ;
_10.700__10.700__delay:		DELAY 10.700 10.700 ;
_10.672__10.672__delay:		DELAY 10.672 10.672 ;
_10.658__10.658__delay:		DELAY 10.658 10.658 ;
_8.746__8.746__delay:		DELAY 8.746 8.746 ;
_8.859__8.859__delay:		DELAY 8.859 8.859 ;
_8.793__8.793__delay:		DELAY 8.793 8.793 ;
_8.994__8.994__delay:		DELAY 8.994 8.994 ;
_8.859__8.859__delay:		DELAY 8.859 8.859 ;
_8.308__8.768__delay:		DELAY 8.308 8.768 ;
_9.936__9.936__delay:		DELAY 9.936 9.936 ;
_10.086__10.086__delay:		DELAY 10.086 10.086 ;
_10.167__10.167__delay:		DELAY 10.167 10.167 ;
_10.052__10.052__delay:		DELAY 10.052 10.052 ;
_10.107__10.107__delay:		DELAY 10.107 10.107 ;
_10.079__10.079__delay:		DELAY 10.079 10.079 ;
_10.065__10.065__delay:		DELAY 10.065 10.065 ;
_8.932__8.932__delay:		DELAY 8.932 8.932 ;
_9.045__9.045__delay:		DELAY 9.045 9.045 ;
_8.979__8.979__delay:		DELAY 8.979 8.979 ;
_9.180__9.180__delay:		DELAY 9.180 9.180 ;
_9.045__9.045__delay:		DELAY 9.045 9.045 ;
_8.709__8.954__delay:		DELAY 8.709 8.954 ;
_10.122__10.122__delay:		DELAY 10.122 10.122 ;
_10.272__10.272__delay:		DELAY 10.272 10.272 ;
_10.353__10.353__delay:		DELAY 10.353 10.353 ;
_10.238__10.238__delay:		DELAY 10.238 10.238 ;
_10.293__10.293__delay:		DELAY 10.293 10.293 ;
_10.265__10.265__delay:		DELAY 10.265 10.265 ;
_10.251__10.251__delay:		DELAY 10.251 10.251 ;

ENDMODEL
