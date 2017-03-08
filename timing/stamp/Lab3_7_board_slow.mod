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
 This file contains Slow Corner delays for the design using part EP2C20F484C7
 with speed grade 7, core voltage Auto, and temperature 2147483647 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "Lab3";
DATE "03/08/2017 10:29:44";
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
_21.932__21.932__delay:		DELAY 21.932 21.932 ;
_22.222__22.222__delay:		DELAY 22.222 22.222 ;
_21.983__21.983__delay:		DELAY 21.983 21.983 ;
_22.534__22.534__delay:		DELAY 22.534 22.534 ;
_22.222__22.222__delay:		DELAY 22.222 22.222 ;
_21.960__21.743__delay:		DELAY 21.960 21.743 ;
_25.281__25.281__delay:		DELAY 25.281 25.281 ;
_25.611__25.611__delay:		DELAY 25.611 25.611 ;
_25.870__25.870__delay:		DELAY 25.870 25.870 ;
_25.568__25.568__delay:		DELAY 25.568 25.568 ;
_25.611__25.611__delay:		DELAY 25.611 25.611 ;
_25.611__25.611__delay:		DELAY 25.611 25.611 ;
_25.578__25.578__delay:		DELAY 25.578 25.578 ;
_23.219__23.219__delay:		DELAY 23.219 23.219 ;
_23.509__23.509__delay:		DELAY 23.509 23.509 ;
_23.270__23.270__delay:		DELAY 23.270 23.270 ;
_23.821__23.821__delay:		DELAY 23.821 23.821 ;
_23.509__23.509__delay:		DELAY 23.509 23.509 ;
_23.247__23.247__delay:		DELAY 23.247 23.247 ;
_26.568__26.568__delay:		DELAY 26.568 26.568 ;
_26.898__26.898__delay:		DELAY 26.898 26.898 ;
_27.157__27.157__delay:		DELAY 27.157 27.157 ;
_26.855__26.855__delay:		DELAY 26.855 26.855 ;
_26.898__26.898__delay:		DELAY 26.898 26.898 ;
_26.898__26.898__delay:		DELAY 26.898 26.898 ;
_26.865__26.865__delay:		DELAY 26.865 26.865 ;
_21.652__21.652__delay:		DELAY 21.652 21.652 ;
_21.942__21.942__delay:		DELAY 21.942 21.942 ;
_21.703__21.703__delay:		DELAY 21.703 21.703 ;
_22.254__22.254__delay:		DELAY 22.254 22.254 ;
_21.942__21.942__delay:		DELAY 21.942 21.942 ;
_21.680__21.486__delay:		DELAY 21.680 21.486 ;
_25.001__25.001__delay:		DELAY 25.001 25.001 ;
_25.331__25.331__delay:		DELAY 25.331 25.331 ;
_25.590__25.590__delay:		DELAY 25.590 25.590 ;
_25.288__25.288__delay:		DELAY 25.288 25.288 ;
_25.331__25.331__delay:		DELAY 25.331 25.331 ;
_25.331__25.331__delay:		DELAY 25.331 25.331 ;
_25.298__25.298__delay:		DELAY 25.298 25.298 ;
_21.105__21.105__delay:		DELAY 21.105 21.105 ;
_21.395__21.395__delay:		DELAY 21.395 21.395 ;
_21.156__21.156__delay:		DELAY 21.156 21.156 ;
_21.707__21.707__delay:		DELAY 21.707 21.707 ;
_21.395__21.395__delay:		DELAY 21.395 21.395 ;
_20.927__21.133__delay:		DELAY 20.927 21.133 ;
_24.454__24.454__delay:		DELAY 24.454 24.454 ;
_24.784__24.784__delay:		DELAY 24.784 24.784 ;
_25.043__25.043__delay:		DELAY 25.043 25.043 ;
_24.741__24.741__delay:		DELAY 24.741 24.741 ;
_24.784__24.784__delay:		DELAY 24.784 24.784 ;
_24.784__24.784__delay:		DELAY 24.784 24.784 ;
_24.751__24.751__delay:		DELAY 24.751 24.751 ;
_19.544__19.544__delay:		DELAY 19.544 19.544 ;
_19.834__19.834__delay:		DELAY 19.834 19.834 ;
_19.595__19.595__delay:		DELAY 19.595 19.595 ;
_20.146__20.146__delay:		DELAY 20.146 20.146 ;
_19.834__19.834__delay:		DELAY 19.834 19.834 ;
_18.380__19.572__delay:		DELAY 18.380 19.572 ;
_22.893__22.893__delay:		DELAY 22.893 22.893 ;
_23.223__23.223__delay:		DELAY 23.223 23.223 ;
_23.482__23.482__delay:		DELAY 23.482 23.482 ;
_23.180__23.180__delay:		DELAY 23.180 23.180 ;
_23.223__23.223__delay:		DELAY 23.223 23.223 ;
_23.223__23.223__delay:		DELAY 23.223 23.223 ;
_23.190__23.190__delay:		DELAY 23.190 23.190 ;
_19.907__19.907__delay:		DELAY 19.907 19.907 ;
_20.197__20.197__delay:		DELAY 20.197 20.197 ;
_19.958__19.958__delay:		DELAY 19.958 19.958 ;
_20.509__20.509__delay:		DELAY 20.509 20.509 ;
_20.197__20.197__delay:		DELAY 20.197 20.197 ;
_19.314__19.935__delay:		DELAY 19.314 19.935 ;
_23.256__23.256__delay:		DELAY 23.256 23.256 ;
_23.586__23.586__delay:		DELAY 23.586 23.586 ;
_23.845__23.845__delay:		DELAY 23.845 23.845 ;
_23.543__23.543__delay:		DELAY 23.543 23.543 ;
_23.586__23.586__delay:		DELAY 23.586 23.586 ;
_23.586__23.586__delay:		DELAY 23.586 23.586 ;
_23.553__23.553__delay:		DELAY 23.553 23.553 ;

ENDMODEL
