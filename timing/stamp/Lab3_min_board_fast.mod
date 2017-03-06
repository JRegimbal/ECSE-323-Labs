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
_7.906__7.906__delay:		DELAY 7.906 7.906 ;
_7.236__7.236__delay:		DELAY 7.236 7.236 ;
_8.138__8.138__delay:		DELAY 8.138 8.138 ;
_7.709__7.709__delay:		DELAY 7.709 7.709 ;
_7.319__7.319__delay:		DELAY 7.319 7.319 ;
_7.479__7.479__delay:		DELAY 7.479 7.479 ;
_7.896__7.896__delay:		DELAY 7.896 7.896 ;
_7.969__7.969__delay:		DELAY 7.969 7.969 ;
_8.165__8.165__delay:		DELAY 8.165 8.165 ;
_7.776__7.776__delay:		DELAY 7.776 7.776 ;
_7.894__7.894__delay:		DELAY 7.894 7.894 ;
_7.980__7.980__delay:		DELAY 7.980 7.980 ;
_7.482__6.940__delay:		DELAY 7.482 6.940 ;
_7.466__7.466__delay:		DELAY 7.466 7.466 ;
_7.370__7.370__delay:		DELAY 7.370 7.370 ;
_7.096__7.096__delay:		DELAY 7.096 7.096 ;
_7.367__7.367__delay:		DELAY 7.367 7.367 ;
_7.386__7.386__delay:		DELAY 7.386 7.386 ;
_6.789__6.789__delay:		DELAY 6.789 6.789 ;
_7.315__7.315__delay:		DELAY 7.315 7.315 ;
_7.219__7.219__delay:		DELAY 7.219 7.219 ;
_6.945__6.945__delay:		DELAY 6.945 6.945 ;
_7.216__7.216__delay:		DELAY 7.216 7.216 ;
_7.235__7.235__delay:		DELAY 7.235 7.235 ;
_6.531__6.152__delay:		DELAY 6.531 6.152 ;
_6.411__6.411__delay:		DELAY 6.411 6.411 ;
_6.387__6.387__delay:		DELAY 6.387 6.387 ;
_6.484__6.039__delay:		DELAY 6.484 6.039 ;
_6.382__6.382__delay:		DELAY 6.382 6.382 ;
_6.725__6.725__delay:		DELAY 6.725 6.725 ;
_7.000__6.242__delay:		DELAY 7.000 6.242 ;
_6.765__6.765__delay:		DELAY 6.765 6.765 ;
_6.771__6.771__delay:		DELAY 6.771 6.771 ;
_6.953__6.562__delay:		DELAY 6.953 6.562 ;
_6.765__6.765__delay:		DELAY 6.765 6.765 ;
_6.805__6.805__delay:		DELAY 6.805 6.805 ;

ENDMODEL
