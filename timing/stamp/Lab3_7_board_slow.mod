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
DATE "03/06/2017 10:59:44";
PROGRAM "Quartus II 64-Bit";



INPUT clk;
INPUT addr[5];
INPUT addr[4];
INPUT addr[3];
INPUT addr[2];
INPUT addr[1];
INPUT addr[0];
INPUT mode[1];
INPUT mode[0];
INPUT enable;
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
_17.285__17.285__delay:		DELAY 17.285 17.285 ;
_15.653__15.653__delay:		DELAY 15.653 15.653 ;
_17.809__17.809__delay:		DELAY 17.809 17.809 ;
_16.564__16.564__delay:		DELAY 16.564 16.564 ;
_15.806__15.806__delay:		DELAY 15.806 15.806 ;
_16.222__16.222__delay:		DELAY 16.222 16.222 ;
_17.123__17.123__delay:		DELAY 17.123 17.123 ;
_17.210__17.210__delay:		DELAY 17.210 17.210 ;
_17.858__17.858__delay:		DELAY 17.858 17.858 ;
_16.834__16.834__delay:		DELAY 16.834 16.834 ;
_17.093__17.093__delay:		DELAY 17.093 17.093 ;
_17.413__17.413__delay:		DELAY 17.413 17.413 ;
_16.126__14.798__delay:		DELAY 16.126 14.798 ;
_16.017__15.991__delay:		DELAY 16.017 15.991 ;
_15.723__15.723__delay:		DELAY 15.723 15.723 ;
_14.850__14.850__delay:		DELAY 14.850 14.850 ;
_15.710__15.710__delay:		DELAY 15.710 15.710 ;
_15.853__15.853__delay:		DELAY 15.853 15.853 ;
_14.385__14.385__delay:		DELAY 14.385 14.385 ;
_15.611__15.611__delay:		DELAY 15.611 15.611 ;
_15.343__15.343__delay:		DELAY 15.343 15.343 ;
_14.470__14.470__delay:		DELAY 14.470 14.470 ;
_15.330__15.330__delay:		DELAY 15.330 15.330 ;
_15.473__15.473__delay:		DELAY 15.473 15.473 ;
_13.687__12.754__delay:		DELAY 13.687 12.754 ;
_13.268__13.268__delay:		DELAY 13.268 13.268 ;
_13.196__13.196__delay:		DELAY 13.196 13.196 ;
_13.355__12.125__delay:		DELAY 13.355 12.125 ;
_13.182__13.182__delay:		DELAY 13.182 13.182 ;
_14.226__14.226__delay:		DELAY 14.226 14.226 ;
_14.683__12.956__delay:		DELAY 14.683 12.956 ;
_14.192__14.192__delay:		DELAY 14.192 14.192 ;
_14.206__14.206__delay:		DELAY 14.206 14.206 ;
_14.351__13.572__delay:		DELAY 14.351 13.572 ;
_14.191__14.191__delay:		DELAY 14.191 14.191 ;
_14.423__14.423__delay:		DELAY 14.423 14.423 ;

ENDMODEL
