#//plots for gnuplot
#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//
#//		KdV
#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//
#//set xlabel "K" 0,1
#//set ylabel "Q error" 3.5,0
#//plot "T11/ErrofcKQdt.dat" tit "dt=0.00005" w linespoints ls 4, "dtmenos/T11/ErrofcKQdt.dat" tit "dt=0.0001" w linespoints ls 2
set term png font "/Library/Fonts/Microsoft/Arial.ttf" 18 size 1200, 800
#//set yrange [-.5:1]
reset
#set output ""
#set style line 1 lt rgb "black" lw 1
#set palette gray
#set title "Miura transform of solution, (c,eps)=(-1,-2) and (-1/4,1/4); 10000 and 50000 points, dt = 0.001, T = 10 (zoom)"

#
#set title "Miura transform of solution, (c,eps)=(-1,-2) and (-1/4,1/4); 150,000 points on [-1000,1000], h=0.0133, dt = 0.0001, T = 5 (zoom)"
#

#//set title "Miura transform of solution, c=-1, c=-5, c=-20, c=-500, 30000 points, dt = 0.001, h = 1/30, T = 5 (zoom)"
#//set logscale y 
unset logscale y
#set grid
unset grid
set title "Food removal vs. Pheromone evaporation"
#plot "LOGKDV.txt" using 2:8 w lp tit "Relative L^2 error" lw 4 ps 2 pt 4
set xlabel "Time (hours)"
set ylabel "Food mass"
#set output "Plot-k2.pdf"
#set title "Relative L^2-L^2 error, T = 10, tau = .0001, eta = 1, k = 2 (mKdV)"
#plot "LOGKDV-k2.txt" using 2:8 w lp tit "Relative L^2 error" lw 4 ps 2 pt 4
#set logscale xy
#set output "Plot-k2-log.pdf"
#plot "LOGKDV-k2.txt" using 2:8 w lp tit "Relative L^2 error" lw 4 ps 2 pt 4
#set output "Plot-k1-log.pdf"
#plot "LOGKDV.txt" using 2:8 w lp tit "Relative L^2 error" lw 4 ps 2 pt 4

set output "Food-MassEps.png"
#set xlabel "x"

#set style line 1 lt rgb "black" lw 2

plot "eps200/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "Evaporation coefficient = 2." ,\
"eps100/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 1.",\
"eps050/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= .5",\
"eps025/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= .25",\
"eps010/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= .1"


#plot "Miura -.25-.25/SolUUMiura.txt" w l lw 3 tit "(c,eps)=(-1/4,1/4)", "Miura -1-2/SolUUMiura.txt" w l lw 3 tit "(c,eps)=(-1,-2)"
#set output "Plot-Miura-2.pdf"
set xrange [*:*]
set yrange [-0.3:0.2]
unset grid
#plot "Miura -.25-.25/SolUUMiura.txt" w l tit "(c,eps)=(-1/4,1/4)"

set xrange [-30:20]
set yrange [*:*]
#set output "Plot-Miura-3.pdf"
#plot "Miura10000/SolUUMIURA.txt" w l lw 3 tit "10000 points", "Miura -.25-.25/SolUUMiura.txt" w l lw 3 tit "150000 points"

#//plot "LOGSk2.txt" using (40/$2):(sqrt($5)) w lp tit "Relative L^2 error, k=2" lw 4 ps 2 pt 4
#//plot "LOGS.txt" using (40/$2):(sqrt($5)) w lp tit "Relative L^2 error, k=1" lw 4 ps 2 pt 4
#//plot "LOGS-3.txt" using 3:5 w lp tit "Relative L^2 error, k=1" lw 4 ps 2 pt 4 

#//plot  "Box-k1-01/SolUU.txt" w l linew 2.5 tit "T = 0.01"
#//plot  "Box-k1-05/SolUU.txt" w l linew 2.5 tit "T = 0.05"
#//plot  "Box-k1/SolUU.txt" w l linew 2.5 tit "T = 0.1"
#//plot "Sol-uu-Schr-Ini.txt" w l linew 2.5 tit "Initial data" 

#//plot "Sols-Miura-Geral/Sols-Miura-C1/SolUUMIURA.txt" w l linew 2.5 tit "c=-1", "Sols-Miura-Geral/Sols-Miura-C5/SolUUMIURA.txt" w l linew 2.5 tit "c=-5", "Sols-Miura-Geral/Sols-Miura-C20/SolUUMIURA.txt" w l linew 2.5 tit "c=-20", "Sols-Miura-Geral/Sols-Miura-C500/SolUUMIURA.txt" w l linew 2.5 tit "c=-500"
#//plot "Sols-Miura-SpecialA/SolUUMIURA.txt" w l linew 2.5 tit "c=-1, eps=-2", "Sols-Miura-SpecialB/SolUUMIURA.txt" w l linew 2.5 tit "c=-1/4, eps=1/4"
#//plot "MiuraC1-30000/SolUUMIURA.txt" w l linew 2.5 tit "c=-1", "MiuraC5-30000/SolUUMIURA.txt" w l linew 2.5 tit "c=-5", "MiuraC20-30000/SolUUMIURA.txt" w l linew 2.5 tit "c=-20", "MiuraC500-30000/SolUUMIURA.txt" w l linew 2.5 tit "c=-500"
#plot "MiuraB-50000/SolUUMIURA.txt" w l linew 2.5 tit "c=-1/4, eps=1/4, 50000 pts", "MiuraB-10000/SolUUMIURA.txt" w l linew 2.5 tit "c=-1/4, eps=1/4, 10000 pts", "Miura-50000/SolUUMIURA.txt" w l linew 2.5 tit "c=-1, eps=-2, 50000 pts", "Miura-10000/SolUUMIURA.txt" w l linew 2.5 tit "c=-1, eps=-2, 10000 pts"
#set term pdf
#set term aqua
set term x11


