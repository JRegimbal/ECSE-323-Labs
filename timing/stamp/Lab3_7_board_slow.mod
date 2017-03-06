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
_16.929__16.929__delay:		DELAY 16.929 16.929 ;
_16.965__16.965__delay:		DELAY 16.965 16.965 ;
_17.517__17.517__delay:		DELAY 17.517 17.517 ;
_17.972__17.972__delay:		DELAY 17.972 17.972 ;
_16.678__16.678__delay:		DELAY 16.678 16.678 ;
_16.189__16.189__delay:		DELAY 16.189 16.189 ;
_16.540__16.540__delay:		DELAY 16.540 16.540 ;
_16.806__16.806__delay:		DELAY 16.806 16.806 ;
_18.163__18.163__delay:		DELAY 18.163 18.163 ;
_17.740__17.740__delay:		DELAY 17.740 17.740 ;
_16.550__16.550__delay:		DELAY 16.550 16.550 ;
_15.810__15.810__delay:		DELAY 15.810 15.810 ;
_13.955__15.044__delay:		DELAY 13.955 15.044 ;
_14.803__14.803__delay:		DELAY 14.803 14.803 ;
_15.904__15.904__delay:		DELAY 15.904 15.904 ;
_16.002__16.002__delay:		DELAY 16.002 16.002 ;
_15.511__15.511__delay:		DELAY 15.511 15.511 ;
_14.681__14.681__delay:		DELAY 14.681 14.681 ;
_14.058__12.515__delay:		DELAY 14.058 12.515 ;
_14.434__12.785__delay:		DELAY 14.434 12.785 ;
_13.733__13.733__delay:		DELAY 13.733 13.733 ;
_13.922__13.828__delay:		DELAY 13.922 13.828 ;
_14.071__14.071__delay:		DELAY 14.071 14.071 ;
_13.877__13.241__delay:		DELAY 13.877 13.241 ;
_13.367__12.757__delay:		DELAY 13.367 12.757 ;
_14.139__12.903__delay:		DELAY 14.139 12.903 ;
_14.142__13.974__delay:		DELAY 14.142 13.974 ;
_14.336__13.482__delay:		DELAY 14.336 13.482 ;
_14.355__14.355__delay:		DELAY 14.355 14.355 ;
_14.249__13.527__delay:		DELAY 14.249 13.527 ;
_11.806__11.806__delay:		DELAY 11.806 11.806 ;
_12.470__12.322__delay:		DELAY 12.470 12.322 ;
_13.274__13.274__delay:		DELAY 13.274 13.274 ;
_13.016__13.016__delay:		DELAY 13.016 13.016 ;
_13.135__13.135__delay:		DELAY 13.135 13.135 ;
_12.580__12.098__delay:		DELAY 12.580 12.098 ;

ENDMODEL
