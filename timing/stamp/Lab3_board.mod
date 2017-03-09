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
_20.422__20.422__delay:		DELAY 20.422 20.422 ;
_21.361__21.361__delay:		DELAY 21.361 21.361 ;
_20.790__20.790__delay:		DELAY 20.790 20.790 ;
_21.314__21.314__delay:		DELAY 21.314 21.314 ;
_21.734__21.734__delay:		DELAY 21.734 21.734 ;
_21.642__21.642__delay:		DELAY 21.642 21.642 ;
_25.300__25.300__delay:		DELAY 25.300 25.300 ;
_25.703__25.703__delay:		DELAY 25.703 25.703 ;
_24.843__24.843__delay:		DELAY 24.843 24.843 ;
_24.875__24.875__delay:		DELAY 24.875 24.875 ;
_25.725__25.725__delay:		DELAY 25.725 25.725 ;
_25.659__25.659__delay:		DELAY 25.659 25.659 ;
_24.888__24.888__delay:		DELAY 24.888 24.888 ;
_19.682__19.682__delay:		DELAY 19.682 19.682 ;
_20.621__20.621__delay:		DELAY 20.621 20.621 ;
_20.050__20.050__delay:		DELAY 20.050 20.050 ;
_20.574__20.574__delay:		DELAY 20.574 20.574 ;
_20.994__20.994__delay:		DELAY 20.994 20.994 ;
_20.902__20.902__delay:		DELAY 20.902 20.902 ;
_24.560__24.560__delay:		DELAY 24.560 24.560 ;
_24.963__24.963__delay:		DELAY 24.963 24.963 ;
_24.103__24.103__delay:		DELAY 24.103 24.103 ;
_24.135__24.135__delay:		DELAY 24.135 24.135 ;
_24.985__24.985__delay:		DELAY 24.985 24.985 ;
_24.919__24.919__delay:		DELAY 24.919 24.919 ;
_24.148__24.148__delay:		DELAY 24.148 24.148 ;
_18.111__18.111__delay:		DELAY 18.111 18.111 ;
_19.050__19.050__delay:		DELAY 19.050 19.050 ;
_18.479__18.479__delay:		DELAY 18.479 18.479 ;
_19.003__19.003__delay:		DELAY 19.003 19.003 ;
_19.423__19.423__delay:		DELAY 19.423 19.423 ;
_19.063__19.331__delay:		DELAY 19.063 19.331 ;
_22.989__22.989__delay:		DELAY 22.989 22.989 ;
_23.392__23.392__delay:		DELAY 23.392 23.392 ;
_22.532__22.532__delay:		DELAY 22.532 22.532 ;
_22.564__22.564__delay:		DELAY 22.564 22.564 ;
_23.414__23.414__delay:		DELAY 23.414 23.414 ;
_23.348__23.348__delay:		DELAY 23.348 23.348 ;
_22.577__22.577__delay:		DELAY 22.577 22.577 ;
_18.613__18.613__delay:		DELAY 18.613 18.613 ;
_19.552__19.552__delay:		DELAY 19.552 19.552 ;
_18.981__18.981__delay:		DELAY 18.981 18.981 ;
_19.505__19.505__delay:		DELAY 19.505 19.505 ;
_19.925__19.925__delay:		DELAY 19.925 19.925 ;
_19.504__19.833__delay:		DELAY 19.504 19.833 ;
_23.491__23.491__delay:		DELAY 23.491 23.491 ;
_23.894__23.894__delay:		DELAY 23.894 23.894 ;
_23.034__23.034__delay:		DELAY 23.034 23.034 ;
_23.066__23.066__delay:		DELAY 23.066 23.066 ;
_23.916__23.916__delay:		DELAY 23.916 23.916 ;
_23.850__23.850__delay:		DELAY 23.850 23.850 ;
_23.079__23.079__delay:		DELAY 23.079 23.079 ;
_17.393__17.393__delay:		DELAY 17.393 17.393 ;
_18.332__18.332__delay:		DELAY 18.332 18.332 ;
_17.761__17.761__delay:		DELAY 17.761 17.761 ;
_18.285__18.285__delay:		DELAY 18.285 18.285 ;
_18.705__18.705__delay:		DELAY 18.705 18.705 ;
_18.613__18.054__delay:		DELAY 18.613 18.054 ;
_22.271__22.271__delay:		DELAY 22.271 22.271 ;
_22.674__22.674__delay:		DELAY 22.674 22.674 ;
_21.814__21.814__delay:		DELAY 21.814 21.814 ;
_21.846__21.846__delay:		DELAY 21.846 21.846 ;
_22.696__22.696__delay:		DELAY 22.696 22.696 ;
_22.630__22.630__delay:		DELAY 22.630 22.630 ;
_21.859__21.859__delay:		DELAY 21.859 21.859 ;
_17.192__17.192__delay:		DELAY 17.192 17.192 ;
_18.131__18.131__delay:		DELAY 18.131 18.131 ;
_17.560__17.560__delay:		DELAY 17.560 17.560 ;
_18.084__18.084__delay:		DELAY 18.084 18.084 ;
_18.504__18.504__delay:		DELAY 18.504 18.504 ;
_18.412__17.829__delay:		DELAY 18.412 17.829 ;
_22.070__22.070__delay:		DELAY 22.070 22.070 ;
_22.473__22.473__delay:		DELAY 22.473 22.473 ;
_21.613__21.613__delay:		DELAY 21.613 21.613 ;
_21.645__21.645__delay:		DELAY 21.645 21.645 ;
_22.495__22.495__delay:		DELAY 22.495 22.495 ;
_22.429__22.429__delay:		DELAY 22.429 22.429 ;
_21.658__21.658__delay:		DELAY 21.658 21.658 ;

ENDMODEL
