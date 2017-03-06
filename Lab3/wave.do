view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 000001 -range 5 0 -starttime 0us -endtime 2us sim:/g55_lab3/addr 
WaveExpandAll -1
wave create -driver freeze -pattern counter -startvalue 000000 -endvalue 111111 -type Range -direction Up -period 40ns -step 1 -repeat forever -range 5 0 -starttime 0us -endtime 2us sim:/g55_lab3/data 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0us -endtime 2us sim:/g55_lab3/enable 
wave create -driver freeze -pattern constant -value 0 -starttime 0us -endtime 2us sim:/g55_lab3/rst 
wave create -driver freeze -pattern constant -value 11 -range 1 0 -starttime 0us -endtime 2us sim:/g55_lab3/mode 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0us -endtime 2us sim:/g55_lab3/clk 
wave modify -driver freeze -pattern constant -value 000100 -range 5 0 -starttime 0us -endtime 2us Edit:/g55_lab3/addr 
wave modify -driver freeze -pattern constant -value 1 -starttime 1us -endtime 2us Edit:/g55_lab3/rst 
wave modify -driver freeze -pattern constant -value 0 -starttime 0us -endtime 2us Edit:/g55_lab3/rst 
wave modify -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0us -endtime 2us Edit:/g55_lab3/mode 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 100ns -endtime 2000ns Edit:/g55_lab3/mode 
wave modify -driver freeze -pattern constant -value 11 -range 1 0 -starttime 100ns -endtime 2000ns Edit:/g55_lab3/mode 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 1000ns -endtime 2000ns Edit:/g55_lab3/mode 
wave modify -driver freeze -pattern constant -value 00 -range 1 0 -starttime 1500ns -endtime 2000ns Edit:/g55_lab3/mode 
wave modify -driver freeze -pattern constant -value 1 -starttime 1800ns -endtime 2000ns Edit:/g55_lab3/rst 
wave modify -driver freeze -pattern constant -value 0 -starttime 1750ns -endtime 2000ns Edit:/g55_lab3/enable 
wave modify -driver freeze -pattern constant -value 11 -range 1 0 -starttime 1600ns -endtime 2000ns Edit:/g55_lab3/mode 
{wave export -file waveout -starttime 0 -endtime 2000 -format force -designunit g55_lab3} 
WaveCollapseAll -1
wave clipboard restore
