
set labelCount 6                                              
set uniqueLabel 284437752

############################Common TCL Procedures################################

proc IntegerToBinary  {intValue width} {
	set nextvaltmp ""
	set nextval ""
	for {set i $width} {$i > 0 } {set i [expr {$i - 1}]} {
		if {[expr {$intValue % 2}] == 0} { 
			append nextvaltmp "0"
		} else {
			append nextvaltmp "1" 
		}
		set intValue [expr {$intValue / 2}]
	}
	for {set i [expr {$width - 1}]} {$i >=  0 } {set i [expr {$i - 1}]} {
		append nextval [string range $nextvaltmp $i $i]
	}
	return $nextval
}
proc CreateRangeUpCounter {startValue loopCount step curTime period unit width driveType signal} {
     global uniqueLabel labelCount
     set absTime ""
     append absTime "@" $curTime 
     set value $startValue 
     set label $uniqueLabel 

     for {set i 0 } {$i <= $loopCount} {incr i} {
             set labelCount [expr {$labelCount + 1}]
             append label "_"
             append label $labelCount

             if {$absTime != "@0" && $::now != $curTime} {
                     when -label $label "\$now = $absTime $unit" " 
                             set whenArray($label) $label
                             noforce $signal
                             force -$driveType $signal [eval IntegerToBinary $value $width] 0 
                     "
             }
             if {$step < [expr pow(2, $width)]} {
             	set value [expr {$value + $step}]
             }
             set curTime [expr {$period + $curTime}] 
             set absTime ""
             append absTime "@" $curTime 
             set label $uniqueLabel
     }
}

#################################################################################


##Editing for Signal sim:/g55_lab3/addr
# "Constant Pattern"
# Start Time = 0 ps, End Time = 2 us, Period = 0 ps
#################################################################################

        noforce sim:/g55_lab3/addr
        force -freeze sim:/g55_lab3/addr 000100 0 ps 

        noforce sim:/g55_lab3/addr
        force -freeze sim:/g55_lab3/addr  000100 0 ps

when -label 284437752_1 {$now = @2000 ps} {
        set whenArray(284437752_1) 284437752_1
        noforce sim:/g55_lab3/addr
        force -freeze sim:/g55_lab3/addr 000100 0 ps
}


##Editing for Signal sim:/g55_lab3/clk
# "Clock Pattern" : dutyCycle = 50
# Start Time = 0 ps, End Time = 2 us, Period = 20 ns
#################################################################################


noforce sim:/g55_lab3/clk
force -freeze sim:/g55_lab3/clk 0 0 ps,1 10000 ps  -repeat 20000 ps -cancel @2000000 ps

when -label 284437752_2 {$now = @2000 ps} {
        set whenArray(284437752_2) 284437752_2
        noforce sim:/g55_lab3/clk
        force -freeze sim:/g55_lab3/clk 0 0 ps
}


##Editing for Signal sim:/g55_lab3/mode
# "Constant Pattern"
# Start Time = 1600 ps, End Time = 2 us, Period = 0 ps
#################################################################################

        noforce sim:/g55_lab3/mode
        force -freeze sim:/g55_lab3/mode  01 0 ps, 11 100000 ps, 10 1000000 ps, 00 1500000 ps, 11 1600000 ps

when -label 284437752_3 {$now = @2000 ps} {
        set whenArray(284437752_3) 284437752_3
        noforce sim:/g55_lab3/mode
        force -freeze sim:/g55_lab3/mode 01 0 ps
}


##Editing for Signal sim:/g55_lab3/rst
# "Constant Pattern"
# Start Time = 1800 ps, End Time = 2 us, Period = 0 ps
#################################################################################

        noforce sim:/g55_lab3/rst
        force -freeze sim:/g55_lab3/rst  0 0 ps, 1 1800000 ps

when -label 284437752_4 {$now = @2000 ps} {
        set whenArray(284437752_4) 284437752_4
        noforce sim:/g55_lab3/rst
        force -freeze sim:/g55_lab3/rst 0 0 ps
}


##Editing for Signal sim:/g55_lab3/enable
# "Constant Pattern"
# Start Time = 1750 ps, End Time = 2 us, Period = 0 ps
#################################################################################

        noforce sim:/g55_lab3/enable
        force -freeze sim:/g55_lab3/enable  1 0 ps, 0 1750000 ps

when -label 284437752_5 {$now = @2000 ps} {
        set whenArray(284437752_5) 284437752_5
        noforce sim:/g55_lab3/enable
        force -freeze sim:/g55_lab3/enable 1 0 ps
}


##Editing for Signal sim:/g55_lab3/data
# "Counter Pattern"(Range-Up) : step = 1 Range(000000-111111)
# Start Time = 0 ps, End Time = 2 us, Period = 40 ns
#################################################################################
        noforce sim:/g55_lab3/data
        force -freeze sim:/g55_lab3/data [eval IntegerToBinary 0 6] 0

when -label 284437752_6 {$now = @2000 ps} {
        set whenArray(284437752_6) 284437752_6
        noforce sim:/g55_lab3/data
        force -freeze sim:/g55_lab3/data 000000 0 ps
}
