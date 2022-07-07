if [[ $2 == "" ]]; then
    echo -e "\e[1;31m[!] No file name supplied, aborting ...\e[0m"
    exit 1
fi

if [ $1 = "gcc" ]; then
    #echo -e "for c: toolbox --container dev-tools run gcc -Wall -o $3 $2"
    toolbox --container dev-tools run gcc -Wall -o $3 $2
elif [ $1 = "g++" ]; then
    #echo -e "for c++: toolbox --container dev-tools run gcc-c++ -Wall -o $3 $2"
    toolbox --container dev-tools run c++ -Wall -o $3 $2
elif [ $1 = "jupyter-latex" ]; then
    toolbox --container dev-tools run $HOME/.local/bin/jupyter nbconvert $2 --to latex
elif [ $1 = "pyc" ]; then
    toolbox --container dev-tools run gcc -shared -Wl,-soname,adder -o $3 -fPIC $2
fi
