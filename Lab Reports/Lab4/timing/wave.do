view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/g55_dealer/reset 
wave create -driver freeze -pattern constant -value 1 -starttime 10ns -endtime 100ns sim:/g55_dealer/request_deal 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 20ns Edit:/g55_dealer/request_deal 
wave modify -driver freeze -pattern constant -value 0 -starttime 60ns -endtime 1000ns Edit:/g55_dealer/request_deal 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/g55_dealer/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 2ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/g55_dealer/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 1ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/g55_dealer/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/g55_dealer/rand_lt_num 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ns -endtime 200ns Edit:/g55_dealer/rand_lt_num 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 4ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/g55_dealer/clock 
WaveCollapseAll -1
wave clipboard restore
