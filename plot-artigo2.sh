#
touch plots_artigo2.plt
rm plots_artigo2.plt
touch plots_artigo2.plt;
touch ./Plots/foo
rm ./Plots/*
cp ./Resultados/U_* .


#echo "reset" >> plots_artigo2.plt
#echo "set palette gray negative" >> plots_artigo2.plt
echo "Generating gnuplot source code..."
for i in U_1*;
do
echo "set term png font \"/Library/Fonts/Microsoft/Arial.ttf\" 28 size 2000, 1250
reset
#set output 'pm3d.7.png'
set border 4095 front linetype -1 linewidth 1.000
set view map
#set view 0,90,.6,1
set isosamples 100, 100
unset surface
set style data pm3d
set style function pm3d
set ticslevel 0
#set title \"Foraging ant density\"
#set xlabel \"x\"
#set ylabel \"y\"
unset clabel
unset xtics
unset ytics
set zrange [0.:*]
set pm3d implicit at b
set palette negative nops_allcF maxcolors 0 gamma 1.5 gray " >> plots_artigo2.plt
echo "set output \"./Plots/$i.png\"  " >> plots_artigo2.plt
#echo "set cbrange [0:.04]" >> plots_artigo2.plt   #cbrange = colorbox range
echo "splot \"$i\" using 2:1:3 matrix notitle w pm3d" >> plots_artigo2.plt;
done

for i in U_2*;
do
#echo "set terminal png  transparent enhanced size 1000, 350
echo "set term png font \"/Library/Fonts/Microsoft/Arial.ttf\" 28 size 2000, 1250
reset
#set output 'pm3d.7.png'
set border 4095 front linetype -1 linewidth 1.000
set view map
#set view 0,90,.6,1
set isosamples 100, 100
unset surface
set style data pm3d
set style function pm3d
set ticslevel 0
#set title \"Returning ant density\"
#set xlabel \"x\"
#set ylabel \"y\"
unset clabel
unset xtics
unset ytics
set zrange [0.:*]
set pm3d implicit at b
set palette negative nops_allcF maxcolors 0 gamma 1.5 gray " >> plots_artigo2.plt
echo "set output \"./Plots/$i.png\"  " >> plots_artigo2.plt
#echo "set cbrange [-0.:.0001]" >> plots_artigo2.plt   #cbrange = colorbox range
echo "splot \"$i\" using 2:1:3 matrix notitle w pm3d" >> plots_artigo2.plt;
#echo "set zrange [*:*]" >> plots_artigo2.plt;
done

for i in U_food_c*;
do
echo "set term png font \"/Library/Fonts/Microsoft/Arial.ttf\" 28 size 2000, 1250
reset
#set output 'pm3d.7.png'
set border 4095 front linetype -1 linewidth 1.000
set view map
#set view 0,90,.6,1
set isosamples 100, 100
unset surface
set style data pm3d
set style function pm3d
set ticslevel 0
#set title \"Food concentration\"
#set xlabel \"x\"
#set ylabel \"y\"
unset clabel
unset xtics
unset ytics
set zrange [0.:*]
set pm3d implicit at b
set palette negative nops_allcF maxcolors 0 gamma 1.5 gray " >> plots_artigo2.plt
echo "set output \"./Plots/$i.png\"  " >> plots_artigo2.plt
#echo "set cbrange [0:4]" >> plots_artigo2.plt   #cbrange = colorbox range
echo "splot \"$i\" using 2:1:3 matrix notitle w pm3d" >> plots_artigo2.plt;
done

for i in U_food_p*;
do
echo "set term png font \"/Library/Fonts/Microsoft/Arial.ttf\" 28 size 2000, 1250
reset
#set output 'pm3d.7.png'
set border 4095 front linetype -1 linewidth 1.000
set view map
#set view 0,90,.6,1
set isosamples 100, 100
unset surface
set style data pm3d
set style function pm3d
set ticslevel 0
#set title \"Pheromone concentration\"
#set xlabel \"x\"
#set ylabel \"y\"
unset xtics
unset ytics
set zrange [0.:*]
set pm3d implicit at b
set palette negative nops_allcF maxcolors 0 gamma 1.5 gray " >> plots_artigo2.plt
echo "set output \"./Plots/$i.png\"  " >> plots_artigo2.plt
#echo "set cbrange [0:.02]" >> plots_artigo2.plt   #cbrange = colorbox range
echo "splot \"$i\" using 2:1:3 matrix notitle w pm3d" >> plots_artigo2.plt;
done
#echo "Done"
echo "set term x11" >> plots_artigo2.plt
echo "Plotting..."
gnuplot plots_artigo2.plt;
rm U_*
#echo "Done"
echo "Building gifs..."
#convert -delay 2 -loop 0 ./Plots/U_1*.png ./Plots/myanimationU_1.gif;
#convert -delay 2 -loop 0 ./Plots/U_2*.png ./Plots/myanimationU_2.gif;
#convert -delay 2 -loop 0 ./Plots/U_food_c*.png ./Plots/myanimationU_food_conc.gif;
#convert -delay 2 -loop 0 ./Plots/U_food_p*.png ./Plots/myanimationU_food_phero.gif;
echo "Done"

#echo "Building movs..."
#convert  -delay 5 ./Plots/U_1*.png ./Plots/myanimationU_1.mov
#convert  -delay 5 ./Plots/U_2*.png ./Plots/myanimationU_2.mov
#convert  -delay 5 ./Plots/U_food_p*.png ./Plots/myanimationU_food_phero.mov
#echo "Done"
#echo "Copying files..."
#rm ./Resultados/*
#mv U_* ./Resultados
#rm ~/Dropbox/Formigas/*.mov
#cp ./Plots/*.mov ~/Dropbox/Formigas/
#cp ./Plots/*.mov ~/"Google Drive/"
#echo "Done"
echo "Finished!"
