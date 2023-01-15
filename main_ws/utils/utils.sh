#!/usr/bin/env bash

if [[ $1 == *"tex-gen"* ]]; then
    #* passed
    if [[ $2 == "" ]]; then
        echo -e "\033[1;31mERROR\033[0m\t No file name supplied, aborting ..."
        exit 1
    fi

    template_dir="$HOME/Templates/latex_manscrpt_ppr_main_template.tex"
    cp $template_dir $PWD/$2.tex
    echo -e "\033[1;32mPASS\033[0m\t Template created in: \033[36m$PWD/$2.tex\033[0m."
elif [[ $1 == *"ptex-gen"* ]]; then
    #* passed
    if [[ $2 == "" ]]; then
        echo -e "\033[1;31mERROR\033[0m\t No file name supplied, aborting ..."
        exit 1
    fi

    template_dir="$HOME/Templates/latex_presentation_main_template.tex"
    cp $template_dir $PWD/$2.tex
    echo -e "\033[1;32mPASS\033[0m\t Template created in: \033[36m$PWD/$2.tex\033[0m."
elif [[ $1 == *"clean-up"* ]]; then
    echo -e "\033[34mINFO\033[0m\t Cleaning up the system."
    echo -e "\033[34mINFO\033[0m\t Removing journal files with size of: \033[36m$(journalctl --disk-usage)\033[0m ..."

    sudo journalctl --vacuum-time=3d

    echo -e "\033[34mINFO\033[0m\t Removing \033[36m$HOME/.cache\033[0m with size of: \033[36m$(du -sh $HOME/.cache)\033[0m ..."
    rm -rf $HOME/.cache/*

    echo -e "\033[1;32mPASS\033[0m\t Cleaning done."
elif [[ $1 == *"project-init"* ]]; then
    echo -e "\033[34mINFO\033[0m\t Initiating project: \033[36m$2\033[0m in \033[36m$PWD\033[0m ..."

    if [[ $2 == "" ]]; then
        echo -e "\033[1;31mERROR\033[0m\t No project name supplied, aborting ..."
        exit 1
    fi

    if [ -d "$PWD/$2" ]; then
        echo -e "\033[1;31mERROR\033[0m\t Directory: \033[36m$PWD/$2\033[0m already exists, aborting ..."
        exit 1
    fi

    mkdir $PWD/$2
    mkdir $PWD/$2/manscrpt
    mkdir $PWD/$2/presentation
    template_dir="$HOME/Templates/"
    cp $template_dir/latex_manscrpt_ppr_main_template.tex $PWD/$2/manscrpt/$2_ppr_main.tex
    cp $template_dir/latex_presentation_main_template.tex $PWD/$2/presentation/$2_presentation_main.tex
    echo -e "\033[1;32mPASS\033[0m\t Project initiated in: \033[36mPWD/$2\033[0m."
fi
