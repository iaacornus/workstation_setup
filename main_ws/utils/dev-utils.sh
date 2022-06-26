if [ $1 = "gcc" ]; then
    #echo -e "for c: toolbox --container dev-tools run gcc -Wall -o $3 $2"
    toolbox --container dev-tools run gcc -Wall -o $3 $2
elif [ $1 = "g++" ]; then
    #echo -e "for c++: toolbox --container dev-tools run gcc-c++ -Wall -o $3 $2"
    toolbox --container dev-tools run c++ -Wall -o $3 $2
elif [ $1 = "jupyter-latex" ]; then
    toolbox --container dev-tools run $HOME/.local/bin/jupyter nbconvert $2 --to latex
fi