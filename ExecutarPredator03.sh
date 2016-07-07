make &&

echo "Results folder name:"
read Folder
Version="-03"
[ -d "$Folder" ] && rm -r "$Folder"
mkdir "$Folder"
cp predator"$Version"  "$Folder"
cp Predator"$Version".cpp  "$Folder"/CPPPredatorUsado.cpp
cp plot-png.sh  "$Folder"
cp PlotMass.plt  "$Folder"
cd "$Folder"

./predator"$Version" &&
mkdir Plots
mkdir Resultados
sh plot-png.sh &&
gnuplot PlotMass.plt
#cp ../LogsLast.txt .

[ ! -d ../LastResult ] && mkdir ../LastResult
touch ../LastResult/Paranaochatearcomerrosdorm.txt
rm -r ../LastResult/*
cp -r * ../LastResult/

echo "Done!"

#osascript -e 'tell app "System Events" to display dialog "Calculo terminado." with icon 1 with title "Formigas 12" '
