 set terminal png  transparent enhanced font "arial,10"  size 1000, 350
reset
 set output 'pm3d.7.png'
set border 4095 front linetype -1 linewidth 1.000
set view map
#set view 0,90,.6,1
set isosamples 100, 100
unset surface
set style data pm3d
set style function pm3d
set ticslevel 0
set title "gray map, negative" 
set xlabel "x" 
#set xrange [ -15.0000 : 15.0000 ] noreverse nowriteback
set ylabel "y" 
#set yrange [ -15.0000 : 15.0000 ] noreverse nowriteback
#set zrange [ -0.250000 : 1.00000 ] noreverse nowriteback
set pm3d implicit at b
set palette negative nops_allcF maxcolors 0 gamma 1.5 gray
#splot sin(sqrt(x**2+y**2))/sqrt(x**2+y**2)
#unset clabel
unset xtics
unset ytics
splot "Resultados/U_1-T-352000.txt" matrix using 2:1:3 notitle  w pm3d