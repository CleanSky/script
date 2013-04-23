#!/bin/bash
gnuplot <<CMDS
#DBTHBP_Delay
set title "DBTHBP_Delay"
set xlabel "Simulation Time(s)"
set ylabel "Delay_Time(s)"
set terminal gif
set output "DBTHBP_delay.gif"
plot "DBTHBP_delay_10nodes" with lp lt 1 lw 2 pt 1 ps 2, "DBTHBP_delay_20nodes" with lp lt 2 lw 2 pt 2 ps 2, "DBTHBP_delay_30nodes" with lp lt 3 lw 2 pt 3 ps 2, "DBTHBP_delay_40nodes" with lp lt 4 lw 2 pt 4 ps 2, "DBTHBP_delay_50nodes" with lp lt 5 lw 2 pt 5 ps 2, "DBTHBP_delay_100nodes" with lp lt 6 lw 2 pt 6 ps 2

#DBTHBP_Cover
set title "DBTHBP_Cover_Rate"
set xlabel "Node Number"
set ylabel "Cover Rate(%)"
set terminal gif
set output "DBTHBP_cover_rate.gif"
plot "DBTHBP_cover_10nodes" with p pt 1 ps 2, "DBTHBP_cover_20nodes" with p pt 2 ps 2, "DBTHBP_cover_30nodes" with p pt 3 ps 2, "DBTHBP_cover_40nodes" with p pt 4 ps 2, "DBTHBP_cover_50nodes" with p pt 5 ps 2, "DBTHBP_cover_100nodes" with p pt 6 ps 2, "DBTHBP_cover" with l lt 3 lw 2

#DBTHBP_Jitter
set title "DBTHBP_Jitter"
set xlabel "Simulation Time(s)"
set ylabel "Jitter(%)"
set terminal gif
set output "DBTHBP_jitter.gif"
plot "DBTHBP_jitter_10nodes" with lp lt 1 lw 2 pt 1 ps 2, "DBTHBP_jitter_20nodes" with lp lt 2 lw 2 pt 2 ps 2, "DBTHBP_jitter_30nodes" with lp lt 3 lw 2 pt 3 ps 2, "DBTHBP_jitter_40nodes" with lp lt 4 lw 2 pt 4 ps 2, "DBTHBP_jitter_50nodes" with lp lt 5 lw 2 pt 5 ps 2, "DBTHBP_jitter_100nodes" with lp lt 6 lw 2 pt 6 ps 2

#DBTHBP_Throughput
set title "DBTHBP_Throughput"
set xlabel "Simulation Time(s)"
set ylabel "Throughput(Kbit/s)"
set terminal gif
set output "DBTHBP_throughput.gif"
plot "DBTHBP_throughput_10nodes" with lp lt 1 lw 2 pt 1 ps 2, "DBTHBP_throughput_20nodes" with lp lt 2 lw 2 pt 2 ps 2, "DBTHBP_throughput_30nodes" with lp lt 3 lw 2 pt 3 ps 2, "DBTHBP_throughput_40nodes" with lp lt 4 lw 2 pt 4 ps 2, "DBTHBP_throughput_50nodes" with lp lt 5 lw 2 pt 5 ps 2, "DBTHBP_throughput_100nodes" with lp lt 6 lw 2 pt 6 ps 2

#DBTHBP_reduncy
set title "DBTHBP_Reduncy"
set xlabel "Node Number"
set ylabel "Reduncy Rate(%)"
set terminal gif
set output "DBTHBP_reduncy.gif"
plot "DBTHBP_reduncy_10nodes" with p pt 1 ps 2, "DBTHBP_reduncy_20nodes" with p pt 2 ps 2, "DBTHBP_reduncy_30nodes" with p pt 3 ps 2, "DBTHBP_reduncy_40nodes" with p pt 4 ps 2, "DBTHBP_reduncy_50nodes" with p pt 5 ps 2, "DBTHBP_reduncy_100nodes" with p pt 6 ps 2, "DBTHBP_reduncy" with l lt 3 lw 2

#DBTHBP_repeat_area
set title "DBTHBP_Repeat_Area_Rate"
set xlabel "Node Number"
set ylabel "Repeat Area Rate(%)"
set terminal gif
set output "DBTHBP_repeat_area_rate.gif"
plot "DBTHBP_repeat_area_10nodes" with p pt 1 ps 2, "DBTHBP_repeat_area_20nodes" with p pt 2 ps 2, "DBTHBP_repeat_area_30nodes" with p pt 3 ps 2, "DBTHBP_repeat_area_40nodes" with p pt 4 ps 2, "DBTHBP_repeat_area_50nodes" with p pt 5 ps 2, "DBTHBP_repeat_area_100nodes" with p pt 6 ps 2, "DBTHBP_repeat_area" with l lt 3 lw 2

quit
CMDS
