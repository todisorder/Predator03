#File plot-png.sh
touch plots.plt
rm plots.plt
touch plots.plt;
touch ./Plots/foo
rm ./Plots/*
mv ./Resultados/* . &&
echo "reset" >> plots.plt
#echo "set palette gray negative" >> plots.plt
echo "Generating gnuplot source code..."
for i in Prey*;
do
echo "set term png font \"arial,12\"  size 640, 640
unset xtics
unset ytics
#    set view 56,27,1,1
#set zrange [0.:6.]
set view map
#set view ,,3.; set view equal xy
#    set view equal
    set output \"./Plots/$i.png\"  " >> plots.plt
#echo "set cbrange [0:.04]" >> plots.plt   #cbrange = colorbox range
echo "splot \"$i\" matrix w pm3d" >> plots.plt;
done

for i in Predator*;
do
echo "set term png font \"arial,12\"  size 640, 640
unset xtics
unset ytics
#set view 0,270,1,1
#set view map
#set view equal
#set view 90,1
set zrange [*:*]
set output \"./Plots/$i.png\"  " >> plots.plt
#echo "set cbrange [-0.:.0001]" >> plots.plt   #cbrange = colorbox range
echo "splot \"$i\" matrix w pm3d" >> plots.plt;
echo "set zrange [*:*]" >> plots.plt;
done

for i in PreyPhero*;
do
echo "set term png font \"arial,12\"  size 640, 640
unset xtics
unset ytics
#set view 0,270,1,1
#set view map
#set view equal
set output \"./Plots/$i.png\"  " >> plots.plt
#echo "set cbrange [0:4]" >> plots.plt   #cbrange = colorbox range
echo "splot \"$i\" matrix w pm3d" >> plots.plt;
done

for i in PredatorPhero*;
do
echo "set term png font \"arial,12\"  size 640, 640
unset xtics
unset ytics
#set view 0,270,1,1
#set view map
#set view equal
#set view 90,1
set output \"./Plots/$i.png\"  " >> plots.plt
#echo "set cbrange [0:.02]" >> plots.plt   #cbrange = colorbox range
echo "splot \"$i\" matrix w pm3d" >> plots.plt;
done
#echo "Done"
echo "set term x11" >> plots.plt
echo "Plotting..."
gnuplot plots.plt;
#echo "Done"
#echo "Building gifs..."
#convert -delay 2 -loop 0 ./Plots/U_1*.png ./Plots/myanimationU_1.gif;
#convert -delay 2 -loop 0 ./Plots/U_2*.png ./Plots/myanimationU_2.gif;
#convert -delay 2 -loop 0 ./Plots/U_food_c*.png ./Plots/myanimationU_food_conc.gif;
#convert -delay 2 -loop 0 ./Plots/U_food_p*.png ./Plots/myanimationU_food_phero.gif;
#echo "Done"

#echo "Building movs..."
#convert  -delay 5 ./Plots/U_1*.png ./Plots/myanimationU_1.mov
#convert  -delay 5 ./Plots/U_2*.png ./Plots/myanimationU_2.mov
#convert  -delay 5 ./Plots/U_food_p*.png ./Plots/myanimationU_food_phero.mov
#echo "Done"
echo "Copying files..."
#rm ./Resultados/*
mv Pr* ./Resultados
#mv Vel_* ./Resultados
#rm ~/Dropbox/Formigas/*.mov
#cp ./Plots/*.mov ~/Dropbox/Formigas/
#cp ./Plots/*.mov ~/"Google Drive/"
#echo "Done"
echo "Finished!"
