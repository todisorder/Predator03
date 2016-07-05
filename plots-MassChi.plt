#//plots for gnuplot
#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//
#//		KdV
#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//#//
#//set xlabel "K" 0,1
#//set ylabel "Q error" 3.5,0
#//plot "T11/ErrofcKQdt.dat" tit "dt=0.00005" w linespoints ls 4, "dtmenos/T11/ErrofcKQdt.dat" tit "dt=0.0001" w linespoints ls 2
set term png font "arial,18" size 1200, 800
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
#set title "Food removal vs. chemotactical sensitivity"
set title ""
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


#set xlabel "x"

#set style line 1 lt rgb "black" lw 2

#plot "chi05/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "Chemotactic sensitivity = 5",\
#"chi10/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 10" ,\
#"chi15/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 15",\
#"chi20/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 20",\
#"chi25/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 25",\


#plot "chi01eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "Chemotactic sensitivity = 1",\
#"chi05eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 5" ,\
#"chi10eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 10" ,\
#"chi20eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 20" ,\
#"chi40eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 40" ,\
#"chi80eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 80" ,\
#"chi160eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 160" ,\
#"chi1000eps0p1/Mass.txt" using 7:4 w p lw 1 lt rgb "black" tit "= 1000"

set output "Food-MassChi-EPS0p01.png"

plot "chi10eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"



set output "Food-MassChi-EPS0p1.png"

plot "chi10eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"

set output "Food-MassChi-EPS0p5.png"

plot "chi10eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"



set output "Food-MassChi-EPS1.png"


plot "chi10eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"

set output "Food-MassChi-EPS5.png"


plot "chi10eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"


set output "Food-MassChi-EPS20.png"


plot "chi10eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"


set output "Food-MassChi-EPS100.png"


plot "chi10eps100/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Chemotactic sensitivity = 10",\
"chi20eps100/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20" ,\
"chi40eps100/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 40" ,\
"chi160eps100/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 160" ,\
"chi1000eps100/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1000"


set output "Food-MassEPS-Chi10.png"

plot "chi10eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Pheromone evaporation rate = 0.01",\
"chi10eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.1" ,\
"chi10eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.5" ,\
"chi10eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1" ,\
"chi10eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 5",\
"chi10eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20"

set output "Food-MassEPS-Chi20.png"

plot "chi20eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Pheromone evaporation rate = 0.01",\
"chi20eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.1" ,\
"chi20eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.5" ,\
"chi20eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1" ,\
"chi20eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 5",\
"chi20eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20"

set output "Food-MassEPS-Chi40.png"

plot "chi40eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Pheromone evaporation rate = 0.01",\
"chi40eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.1" ,\
"chi40eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.5" ,\
"chi40eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1" ,\
"chi40eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 5",\
"chi40eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20"

set output "Food-MassEPS-Chi80.png"

plot "chi80eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Pheromone evaporation rate = 0.01",\
"chi80eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.1" ,\
"chi80eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.5" ,\
"chi80eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1" ,\
"chi80eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 5",\
"chi80eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20"

set output "Food-MassEPS-Chi160.png"

plot "chi160eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Pheromone evaporation rate = 0.01",\
"chi160eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.1" ,\
"chi160eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.5" ,\
"chi160eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1" ,\
"chi160eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 5",\
"chi160eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20"

set output "Food-MassEPS-Chi1000.png"

plot "chi1000eps0p01/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "Pheromone evaporation rate = 0.01",\
"chi1000eps0p1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.1" ,\
"chi1000eps0p5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 0.5" ,\
"chi1000eps1/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 1" ,\
"chi1000eps5/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 5",\
"chi1000eps20/Mass.txt" using 7:4 w lp lw 1 lt rgb "black" ps 2 tit "= 20"



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


