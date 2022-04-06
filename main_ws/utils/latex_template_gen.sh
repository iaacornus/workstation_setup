#!/bin/bash

name=$1
template_dir="$HOME/Templates/latex_manscrpt_ppr_main_template.tex"

cp $template_dir $PWD/$1.tex
echo -e "\e[1;32m> Template created as $PWD/$1.tex\e[0m"