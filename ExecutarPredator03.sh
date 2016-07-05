make &&
touch ./U_SoPaNaoChatearComErrosDoRM.txt
rm U_*;

echo "Results folder name:"
read Folder
rm -r "$Folder"
mkdir "$Folder"
cp predator03  "$Folder"
cp Predator-03.cpp  "$Folder"/CPPPredatorUsado.cpp
cp plot-png.sh  "$Folder"
cp plots-Mass.plt  "$Folder"
cd "$Folder"

./predator03 &&
mkdir Plots
mkdir Resultados
sh plot-png.sh &&
#gnuplot plots-Mass.plt
#cp ../LogsLast.txt .

echo "Done!"

#osascript -e 'tell app "System Events" to display dialog "Calculo terminado." with icon 1 with title "Formigas 12" '