#!/usr/bin/env bash

cp $HOME/.config/mimeapps.list $HOME/Code/workstation_setup/main_ws/config/ &&\
cp -r $HOME/Templates/* $HOME/Code/workstation_setup/main_ws/Templates/ &&\
cp -r $HOME/.config/fish/* $HOME/Code/workstation_setup/main_ws/fish/ &&\
cp $HOME/.config/Code/User/keybindings.json $HOME/.config/Code/User/settings.json -t $HOME/.local/share/config/code/ &&\
cp $HOME/.local/share/config/code/* $HOME/Code/workstation_setup/main_ws/config/code/ &&\
cp -r $HOME/.local/share/icons/* $HOME/Code/workstation_setup/main_ws/icons/ &&\
cp -r $HOME/.local/share/applications/* $HOME/Code/workstation_setup/main_ws/applications/ &&\
cp -r $HOME/.config/Code/User/profiles/ $HOME/Code/workstation_setup/main_ws/config/code/ &&\
cp $HOME/.config/rstudio/rstudio-prefs.json $HOME/.local/share/config/rstudio/rstudio-prefs.json &&\
cp $HOME/.config/rstudio/rstudio-prefs.json $HOME/Code/workstation_setup/main_ws/config/rstudio/rstudio-prefs.json &&\
cp -r $HOME/.config/rstudio/keybindings/* $HOME/.local/share/config/rstudio/keybindings/ &&\
cp -r $HOME/.config/rstudio/keybindings/* $HOME/Code/workstation_setup/main_ws/config/rstudio/keybindings/ &&\
cp -r $HOME/.local/share/config/* $HOME/Code/workstation_setup/main_ws/lconfig/ &&\
cp -r $HOME/.mozilla/firefox/y6r42lsy.default-release/user.js* $HOME/Code/workstation_setup/main_ws/config/firefox &&\
cp $HOME/.config/starship.toml $HOME/Code/workstation_setup/main_ws/config/starship.toml &&\
cp $HOME/.var/app/org.texstudio.TeXstudio/config/texstudio/texstudio.ini $HOME/Code/workstation_setup/main_ws/config/
cp $HOME/.local/bin/*.sh $HOME/Code/workstation_setup/main_ws/sys/ &&\
cp $HOME/.var/app/com.github.xournalpp.xournalpp/config/xournalpp/settings.xml $HOME/Code/workstation_setup/main_ws/config/xournalpp/settings.xml &&\
cp $HOME/.var/app/com.github.xournalpp.xournalpp/config/xournalpp/palette.gpl $HOME/Code/workstation_setup/main_ws/config/xournalpp/palette.gpl &&\
cp -r $HOME/.local/share/applications/* $HOME/Code/workstation_setup/main_ws/applications/ &&\
cp -r $HOME/.local/share/icons/* $HOME/Code/workstation_setup/main_ws/icons/ &&\
cp $HOME/.var/app/org.texstudio.TeXstudio/config/texstudio/texstudio.ini $HOME/Code/workstation_setup/main_ws/config/

